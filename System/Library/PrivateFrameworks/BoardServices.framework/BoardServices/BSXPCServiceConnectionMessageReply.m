@interface BSXPCServiceConnectionMessageReply
- (BSXPCServiceConnectionMessageReply)initWithMessage:(id)a3;
@end

@implementation BSXPCServiceConnectionMessageReply

- (BSXPCServiceConnectionMessageReply)initWithMessage:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    reply = xpc_dictionary_create_reply(v4);
    if (reply)
    {
      v8.receiver = self;
      v8.super_class = BSXPCServiceConnectionMessageReply;
      self = [(BSXPCServiceConnectionMessage *)&v8 initWithMessage:reply];

      reply = self;
    }
  }

  else
  {
    reply = 0;
  }

  return reply;
}

@end