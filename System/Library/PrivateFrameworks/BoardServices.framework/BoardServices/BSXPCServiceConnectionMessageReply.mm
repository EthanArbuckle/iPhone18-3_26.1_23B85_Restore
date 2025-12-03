@interface BSXPCServiceConnectionMessageReply
- (BSXPCServiceConnectionMessageReply)initWithMessage:(id)message;
@end

@implementation BSXPCServiceConnectionMessageReply

- (BSXPCServiceConnectionMessageReply)initWithMessage:(id)message
{
  messageCopy = message;
  v5 = messageCopy;
  if (messageCopy)
  {
    reply = xpc_dictionary_create_reply(messageCopy);
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