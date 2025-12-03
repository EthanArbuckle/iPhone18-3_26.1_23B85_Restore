@interface IDSDIncomingMessage
- (IDSDIncomingMessage)initWithMessage:(id)message fromID:(id)d topic:(id)topic guid:(id)guid isLocal:(BOOL)local;
@end

@implementation IDSDIncomingMessage

- (IDSDIncomingMessage)initWithMessage:(id)message fromID:(id)d topic:(id)topic guid:(id)guid isLocal:(BOOL)local
{
  localCopy = local;
  messageCopy = message;
  dCopy = d;
  topicCopy = topic;
  guidCopy = guid;
  v19.receiver = self;
  v19.super_class = IDSDIncomingMessage;
  v16 = [(IDSDIncomingMessage *)&v19 init];
  v17 = v16;
  if (v16)
  {
    [(IDSDIncomingMessage *)v16 setMessage:messageCopy];
    [(IDSDIncomingMessage *)v17 setFromID:dCopy];
    [(IDSDIncomingMessage *)v17 setTopic:topicCopy];
    [(IDSDIncomingMessage *)v17 setGuid:guidCopy];
    [(IDSDIncomingMessage *)v17 setIsLocal:localCopy];
    [(IDSDIncomingMessage *)v17 setExpirationDate:0];
    [(IDSDIncomingMessage *)v17 setControlCategory:0];
  }

  return v17;
}

@end