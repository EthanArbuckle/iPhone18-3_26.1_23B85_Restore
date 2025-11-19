@interface BMDistributedContextTranslatedEventMessage
- (BMDistributedContextTranslatedEventMessage)initWithStreamIdentifier:(id)a3 eventData:(id)a4 eventDataVersion:(id)a5;
@end

@implementation BMDistributedContextTranslatedEventMessage

- (BMDistributedContextTranslatedEventMessage)initWithStreamIdentifier:(id)a3 eventData:(id)a4 eventDataVersion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = BMDistributedContextTranslatedEventMessage;
  v12 = [(BMDistributedContextTranslatedEventMessage *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_streamIdentifier, a3);
    objc_storeStrong(&v13->_eventData, a4);
    objc_storeStrong(&v13->_eventDataVersion, a5);
  }

  return v13;
}

@end