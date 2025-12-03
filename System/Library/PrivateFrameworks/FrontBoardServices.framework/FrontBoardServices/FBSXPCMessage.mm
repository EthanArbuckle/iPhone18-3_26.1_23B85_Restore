@interface FBSXPCMessage
+ (id)message;
+ (id)messageWithBSXPCMessage:(id)message ownReply:(BOOL)reply;
+ (id)messageWithPacker:(id)packer;
+ (id)messageWithPayload:(id)payload;
- (FBSXPCMessage)init;
- (FBSXPCMessage)initWithMessagePacker:(id)packer;
- (FBSXPCMessage)initWithMessagePayload:(id)payload;
- (void)sendReplyMessageWithPacker:(id)packer;
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
  v2 = objc_alloc_init(self);

  return v2;
}

+ (id)messageWithPayload:(id)payload
{
  payloadCopy = payload;
  v4 = [[FBSXPCMessage alloc] initWithMessagePayload:payloadCopy];

  return v4;
}

+ (id)messageWithPacker:(id)packer
{
  packerCopy = packer;
  v4 = [[FBSXPCMessage alloc] initWithMessagePacker:packerCopy];

  return v4;
}

+ (id)messageWithBSXPCMessage:(id)message ownReply:(BOOL)reply
{
  replyCopy = reply;
  messageCopy = message;
  v6 = [messageCopy decodeXPCObjectOfType:MEMORY[0x1E69E9E80] forKey:@"fbs_message"];
  v7 = [[FBSXPCMessage alloc] initWithMessagePayload:v6];
  if (replyCopy)
  {
    createReply = [messageCopy createReply];
    reply = v7->_reply;
    v7->_reply = createReply;
  }

  return v7;
}

- (FBSXPCMessage)initWithMessagePayload:(id)payload
{
  payloadCopy = payload;
  v9.receiver = self;
  v9.super_class = FBSXPCMessage;
  v6 = [(FBSXPCMessage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_payload, payload);
  }

  return v7;
}

- (FBSXPCMessage)initWithMessagePacker:(id)packer
{
  packerCopy = packer;
  if (!packerCopy)
  {
    [(FBSXPCMessage *)a2 initWithMessagePacker:?];
  }

  v6 = packerCopy;
  v7 = [(FBSXPCMessage *)self init];
  v8 = v7;
  if (v7)
  {
    (v6)[2](v6, v7->_payload);
  }

  return v8;
}

- (void)sendReplyMessageWithPacker:(id)packer
{
  packerCopy = packer;
  if (self->_reply)
  {
    v7 = packerCopy;
    v5 = xpc_dictionary_create(0, 0, 0);
    if (v7)
    {
      v7[2](v7, v5);
    }

    [(BSXPCServiceConnectionMessage *)self->_reply encodeXPCObject:v5 forKey:@"fbs_message"];
    [(BSXPCServiceConnectionMessage *)self->_reply send];
    reply = self->_reply;
    self->_reply = 0;

    packerCopy = v7;
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