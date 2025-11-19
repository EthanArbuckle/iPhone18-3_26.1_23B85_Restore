@interface GTXPCDispatcher
- (GTXPCDispatcher)initWithProtocolMethods:(id)a3;
- (void)dispatchMessage:(id)a3 replyConnection:(id)a4;
@end

@implementation GTXPCDispatcher

- (GTXPCDispatcher)initWithProtocolMethods:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = GTXPCDispatcher;
  v5 = [(GTXPCDispatcher *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v4];
    protocolMethods = v5->_protocolMethods;
    v5->_protocolMethods = v6;
  }

  return v5;
}

- (void)dispatchMessage:(id)a3 replyConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  string = xpc_dictionary_get_string(v6, "_cmd");
  if (string)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
    if ([(NSSet *)self->_protocolMethods containsObject:v9])
    {
      v10 = [v9 stringByReplacingOccurrencesOfString:@":" withString:@"_"];
      v11 = [v10 stringByAppendingString:@":replyConnection:"];

      [(GTXPCDispatcher *)self performSelector:NSSelectorFromString(v11) withObject:v6 withObject:v7];
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