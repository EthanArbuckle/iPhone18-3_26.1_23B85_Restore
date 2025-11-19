@interface _EARSpeechMessagesContext
- (_EARSpeechMessagesContext)initWithSender:(id)a3 messages:(id)a4;
@end

@implementation _EARSpeechMessagesContext

- (_EARSpeechMessagesContext)initWithSender:(id)a3 messages:(id)a4
{
  v6 = a3;
  v7 = a4;
  sender = self->_sender;
  self->_sender = v6;
  v9 = v6;

  messages = self->_messages;
  self->_messages = v7;

  return self;
}

@end