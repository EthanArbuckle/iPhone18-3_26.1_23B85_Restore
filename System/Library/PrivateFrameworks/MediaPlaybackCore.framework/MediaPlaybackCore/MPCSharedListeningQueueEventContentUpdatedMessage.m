@interface MPCSharedListeningQueueEventContentUpdatedMessage
- (MPCSharedListeningQueueEventContentUpdatedMessage)initWithLocalizedTitle:(id)a3 localizedMessage:(id)a4;
@end

@implementation MPCSharedListeningQueueEventContentUpdatedMessage

- (MPCSharedListeningQueueEventContentUpdatedMessage)initWithLocalizedTitle:(id)a3 localizedMessage:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MPCSharedListeningQueueEventContentUpdatedMessage;
  v9 = [(MPCSharedListeningQueueEventContentUpdatedMessage *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_localizedTitle, a3);
    objc_storeStrong(&v10->_localizedMessage, a4);
  }

  return v10;
}

@end