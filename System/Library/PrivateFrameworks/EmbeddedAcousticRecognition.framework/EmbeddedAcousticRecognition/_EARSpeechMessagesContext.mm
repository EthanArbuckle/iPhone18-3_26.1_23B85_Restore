@interface _EARSpeechMessagesContext
- (_EARSpeechMessagesContext)initWithSender:(id)sender messages:(id)messages;
@end

@implementation _EARSpeechMessagesContext

- (_EARSpeechMessagesContext)initWithSender:(id)sender messages:(id)messages
{
  senderCopy = sender;
  messagesCopy = messages;
  sender = self->_sender;
  self->_sender = senderCopy;
  v9 = senderCopy;

  messages = self->_messages;
  self->_messages = messagesCopy;

  return self;
}

@end