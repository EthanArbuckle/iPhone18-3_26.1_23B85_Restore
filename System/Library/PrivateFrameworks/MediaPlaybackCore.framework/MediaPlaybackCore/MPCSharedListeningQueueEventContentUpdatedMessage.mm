@interface MPCSharedListeningQueueEventContentUpdatedMessage
- (MPCSharedListeningQueueEventContentUpdatedMessage)initWithLocalizedTitle:(id)title localizedMessage:(id)message;
@end

@implementation MPCSharedListeningQueueEventContentUpdatedMessage

- (MPCSharedListeningQueueEventContentUpdatedMessage)initWithLocalizedTitle:(id)title localizedMessage:(id)message
{
  titleCopy = title;
  messageCopy = message;
  v12.receiver = self;
  v12.super_class = MPCSharedListeningQueueEventContentUpdatedMessage;
  v9 = [(MPCSharedListeningQueueEventContentUpdatedMessage *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_localizedTitle, title);
    objc_storeStrong(&v10->_localizedMessage, message);
  }

  return v10;
}

@end