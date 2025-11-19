@interface FBSXPCMessage
+ (id)message;
+ (id)messageWithBSXPCMessage:(id)a3 ownReply:(BOOL)a4;
+ (id)messageWithPacker:(id)a3;
+ (id)messageWithPayload:(id)a3;
- (FBSXPCMessage)init;
- (FBSXPCMessage)initWithMessagePacker:(id)a3;
- (FBSXPCMessage)initWithMessagePayload:(id)a3;
- (void)sendReplyMessageWithPacker:(id)a3;
@end

@implementation FBSXPCMessage

- (FBSXPCMessage)init
{
  v3 = xpc_dictionary_create(0, 0, 0);
  v4 = [(FBSXPCMessage *)self initWithMessagePayload:v3];

  return v4;
}

+ (id)message
{
  v2 = objc_alloc_init(a1);

  return v2;
}

+ (id)messageWithPayload:(id)a3
{
  v3 = a3;
  v4 = [[FBSXPCMessage alloc] initWithMessagePayload:v3];

  return v4;
}

+ (id)messageWithPacker:(id)a3
{
  v3 = a3;
  v4 = [[FBSXPCMessage alloc] initWithMessagePacker:v3];

  return v4;
}

+ (id)messageWithBSXPCMessage:(id)a3 ownReply:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [v5 decodeXPCObjectOfType:MEMORY[0x1E69E9E80] forKey:@"fbs_message"];
  v7 = [[FBSXPCMessage alloc] initWithMessagePayload:v6];
  if (v4)
  {
    v8 = [v5 createReply];
    reply = v7->_reply;
    v7->_reply = v8;
  }

  return v7;
}

- (FBSXPCMessage)initWithMessagePayload:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FBSXPCMessage;
  v6 = [(FBSXPCMessage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_payload, a3);
  }

  return v7;
}

- (FBSXPCMessage)initWithMessagePacker:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(FBSXPCMessage *)a2 initWithMessagePacker:?];
  }

  v6 = v5;
  v7 = [(FBSXPCMessage *)self init];
  v8 = v7;
  if (v7)
  {
    (v6)[2](v6, v7->_payload);
  }

  return v8;
}

- (void)sendReplyMessageWithPacker:(id)a3
{
  v4 = a3;
  if (self->_reply)
  {
    v7 = v4;
    v5 = xpc_dictionary_create(0, 0, 0);
    if (v7)
    {
      v7[2](v7, v5);
    }

    [(BSXPCServiceConnectionMessage *)self->_reply encodeXPCObject:v5 forKey:@"fbs_message"];
    [(BSXPCServiceConnectionMessage *)self->_reply send];
    reply = self->_reply;
    self->_reply = 0;

    v4 = v7;
  }
}

- (void)initWithMessagePacker:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"packer"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"FBSXPCMessage.m";
    v16 = 1024;
    v17 = 51;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
}

@end