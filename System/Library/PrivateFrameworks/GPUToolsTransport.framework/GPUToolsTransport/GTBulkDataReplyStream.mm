@interface GTBulkDataReplyStream
- (GTBulkDataReplyStream)initWithCallback:(id)callback;
- (void)dispatchMessage:(id)message replyConnection:(id)connection;
@end

@implementation GTBulkDataReplyStream

- (GTBulkDataReplyStream)initWithCallback:(id)callback
{
  callbackCopy = callback;
  v9.receiver = self;
  v9.super_class = GTBulkDataReplyStream;
  v5 = [(GTBulkDataReplyStream *)&v9 init];
  if (v5)
  {
    v6 = MEMORY[0x253034A70](callbackCopy);
    callback = v5->_callback;
    v5->_callback = v6;

    v5->_dispatcherId = 0;
  }

  return v5;
}

- (void)dispatchMessage:(id)message replyConnection:(id)connection
{
  xdict = message;
  connectionCopy = connection;
  if (MessageHasReply(xdict))
  {
    v7 = gt_xpc_dictionary_create_reply(xdict);
    [connectionCopy sendMessage:v7];
  }

  nsdata = xpc_dictionary_get_nsdata(xdict, "chunk");
  v9 = xpc_dictionary_get_BOOL(xdict, "isFinalChunk");
  nserror = xpc_dictionary_get_nserror(xdict, "error");
  (*(self->_callback + 2))();
  if (!nsdata || v9 || nserror)
  {
    [connectionCopy deregisterDispatcher:{-[GTBulkDataReplyStream dispatcherId](self, "dispatcherId")}];
  }
}

@end