@interface GTXPCDispatcher
- (GTXPCDispatcher)initWithProtocolMethods:(id)methods;
- (void)dispatchMessage:(id)message replyConnection:(id)connection;
@end

@implementation GTXPCDispatcher

- (GTXPCDispatcher)initWithProtocolMethods:(id)methods
{
  methodsCopy = methods;
  v9.receiver = self;
  v9.super_class = GTXPCDispatcher;
  v5 = [(GTXPCDispatcher *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:methodsCopy];
    protocolMethods = v5->_protocolMethods;
    v5->_protocolMethods = v6;
  }

  return v5;
}

- (void)dispatchMessage:(id)message replyConnection:(id)connection
{
  messageCopy = message;
  connectionCopy = connection;
  string = xpc_dictionary_get_string(messageCopy, "_cmd");
  if (string)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
    if ([(NSSet *)self->_protocolMethods containsObject:v9])
    {
      v10 = [v9 stringByReplacingOccurrencesOfString:@":" withString:@"_"];
      v11 = [v10 stringByAppendingString:@":replyConnection:"];

      [(GTXPCDispatcher *)self performSelector:NSSelectorFromString(v11) withObject:messageCopy withObject:connectionCopy];
    }

    goto LABEL_9;
  }

  if (!GTCoreLogUseOsLog())
  {
    v13 = *MEMORY[0x277D85E08];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Malformed message: missing selector"];
    fprintf(v13, "%s\n", [v9 UTF8String]);
LABEL_9:

    goto LABEL_10;
  }

  v12 = gt_tagged_log(0x10u);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [GTXPCDispatcher dispatchMessage:v12 replyConnection:?];
  }

LABEL_10:
}

@end