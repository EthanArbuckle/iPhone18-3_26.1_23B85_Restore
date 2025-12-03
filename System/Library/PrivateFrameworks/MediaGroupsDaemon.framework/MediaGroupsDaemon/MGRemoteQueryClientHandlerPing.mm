@interface MGRemoteQueryClientHandlerPing
+ (id)handler;
- (NSString)description;
- (id)handleCompleteResponse:(id)response jsonPayload:(id)payload;
@end

@implementation MGRemoteQueryClientHandlerPing

+ (id)handler
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p>", v5, self];

  return v6;
}

- (id)handleCompleteResponse:(id)response jsonPayload:(id)payload
{
  v13 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_6;
  }

  if (!payloadCopy)
  {
LABEL_6:
    v6 = 0;
    goto LABEL_7;
  }

  v6 = payloadCopy;
  if (![payloadCopy count])
  {
    v7 = 0;
    v6 = payloadCopy;
    goto LABEL_10;
  }

LABEL_7:
  v8 = MGLogForCategory(6);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v11 = 134217984;
    selfCopy = self;
    _os_log_error_impl(&dword_25863A000, v8, OS_LOG_TYPE_ERROR, "%p client handler received malformed ping payload content", &v11, 0xCu);
  }

  v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:94 userInfo:0];
LABEL_10:

  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

@end