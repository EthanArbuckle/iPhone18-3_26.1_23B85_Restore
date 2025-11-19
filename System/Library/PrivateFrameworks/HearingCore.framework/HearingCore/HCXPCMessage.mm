@interface HCXPCMessage
+ (id)messageWithPayload:(id)a3;
+ (id)messageWithPayload:(id)a3 xpcMessage:(id)a4 andClient:(id)a5;
- (BOOL)hasEntitlement:(id)a3;
- (HCXPCClient)client;
- (HCXPCMessage)initWithPayload:(id)a3;
- (id)description;
- (id)replyMessageWithPayload:(id)a3;
- (void)dealloc;
@end

@implementation HCXPCMessage

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = HCXPCMessage;
  v4 = [(HCXPCMessage *)&v11 description];
  v5 = [(HCXPCMessage *)self error];
  v6 = [(HCXPCMessage *)self payload];
  v7 = [(HCXPCMessage *)self error];
  v8 = [(HCXPCMessage *)self client];
  v9 = [v3 stringWithFormat:@"%@ [%d | %@] {%@} - Client: %@", v4, v5 == 0, v6, v7, v8];

  return v9;
}

- (HCXPCClient)client
{
  WeakRetained = objc_loadWeakRetained(&self->_client);

  return WeakRetained;
}

- (void)dealloc
{
  [(HCXPCMessage *)self setPayload:0];
  [(HCXPCMessage *)self setError:0];
  [(HCXPCMessage *)self setXpcMessage:0];
  v3.receiver = self;
  v3.super_class = HCXPCMessage;
  [(HCXPCMessage *)&v3 dealloc];
}

+ (id)messageWithPayload:(id)a3 xpcMessage:(id)a4 andClient:(id)a5
{
  if (a5)
  {
    v7 = a5;
    v8 = a4;
    v9 = a3;
    v10 = [[HCXPCMessage alloc] initWithPayload:v9];

    [(HCXPCMessage *)v10 setXpcMessage:v8];
    [(HCXPCMessage *)v10 setClient:v7];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)messageWithPayload:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithPayload:v3];

  return v4;
}

- (HCXPCMessage)initWithPayload:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7.receiver = self;
    v7.super_class = HCXPCMessage;
    v5 = [(HCXPCMessage *)&v7 init];
    self = v5;
    if (v5)
    {
      [(HCXPCMessage *)v5 setPayload:v4];
    }
  }

  return self;
}

- (id)replyMessageWithPayload:(id)a3
{
  v4 = a3;
  v5 = [(HCXPCMessage *)self xpcMessage];
  v6 = [(HCXPCMessage *)self client];
  v7 = [HCXPCMessage messageWithPayload:v4 xpcMessage:v5 andClient:v6];

  return v7;
}

- (BOOL)hasEntitlement:(id)a3
{
  v4 = a3;
  v5 = [(HCXPCMessage *)self client];
  v6 = [v5 xpcConnection];

  if (v6 && (v15 = 0u, v16 = 0u, xpc_connection_get_audit_token(), memset(&cf, 0, sizeof(cf)), (v7 = SecTaskCreateWithAuditToken(0, &cf)) != 0))
  {
    v8 = v7;
    *cf.val = 0;
    v9 = SecTaskCopyValueForEntitlement(v7, v4, &cf);
    if (*cf.val)
    {
      v10 = HCLogHearingAids();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(HCXPCMessage *)&cf hasEntitlement:v10];
      }

      CFRelease(*cf.val);
    }

    if (v9)
    {
      v11 = CFGetTypeID(v9);
      v12 = v11 == CFBooleanGetTypeID() && CFBooleanGetValue(v9) != 0;
      CFRelease(v9);
    }

    else
    {
      v12 = 0;
    }

    CFRelease(v8);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)hasEntitlement:(uint64_t *)a1 .cold.1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_1D952C000, a2, OS_LOG_TYPE_ERROR, "Unable to get entitlements for client task. Error: %@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

@end