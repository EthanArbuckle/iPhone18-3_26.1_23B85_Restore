@interface GTLoopbackReplyStream
- (GTLoopbackReplyStream)initWithCallback:(id)a3;
- (void)dispatchMessage:(id)a3 replyConnection:(id)a4;
@end

@implementation GTLoopbackReplyStream

- (GTLoopbackReplyStream)initWithCallback:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = GTLoopbackReplyStream;
  v5 = [(GTLoopbackReplyStream *)&v9 init];
  if (v5)
  {
    v6 = MEMORY[0x253034A70](v4);
    callback = v5->_callback;
    v5->_callback = v6;
  }

  return v5;
}

- (void)dispatchMessage:(id)a3 replyConnection:(id)a4
{
  xdict = a3;
  v6 = a4;
  nsdictionary_any = xpc_dictionary_get_nsdictionary_any(xdict, "data");
  (*(self->_callback + 2))();
  if (MessageHasReply(xdict))
  {
    v8 = gt_xpc_dictionary_create_reply(xdict);
    [v6 sendMessage:v8];
  }

  if (xpc_dictionary_get_BOOL(xdict, "_endOfStream"))
  {
    [v6 deregisterDispatcher:self->dispatcherId];
  }
}

@end