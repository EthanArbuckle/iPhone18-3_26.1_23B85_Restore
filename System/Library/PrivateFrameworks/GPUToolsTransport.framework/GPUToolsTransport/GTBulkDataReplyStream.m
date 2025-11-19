@interface GTBulkDataReplyStream
- (GTBulkDataReplyStream)initWithCallback:(id)a3;
- (void)dispatchMessage:(id)a3 replyConnection:(id)a4;
@end

@implementation GTBulkDataReplyStream

- (GTBulkDataReplyStream)initWithCallback:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = GTBulkDataReplyStream;
  v5 = [(GTBulkDataReplyStream *)&v9 init];
  if (v5)
  {
    v6 = MEMORY[0x253034A70](v4);
    callback = v5->_callback;
    v5->_callback = v6;

    v5->_dispatcherId = 0;
  }

  return v5;
}

- (void)dispatchMessage:(id)a3 replyConnection:(id)a4
{
  xdict = a3;
  v6 = a4;
  if (MessageHasReply(xdict))
  {
    v7 = gt_xpc_dictionary_create_reply(xdict);
    [v6 sendMessage:v7];
  }

  nsdata = xpc_dictionary_get_nsdata(xdict, "chunk");
  v9 = xpc_dictionary_get_BOOL(xdict, "isFinalChunk");
  nserror = xpc_dictionary_get_nserror(xdict, "error");
  (*(self->_callback + 2))();
  if (!nsdata || v9 || nserror)
  {
    [v6 deregisterDispatcher:{-[GTBulkDataReplyStream dispatcherId](self, "dispatcherId")}];
  }
}

@end