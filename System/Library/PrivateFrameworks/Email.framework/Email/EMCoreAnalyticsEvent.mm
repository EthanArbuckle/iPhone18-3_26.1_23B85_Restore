@interface EMCoreAnalyticsEvent
- (EMCoreAnalyticsEvent)initWithEventName:(id)name collectionData:(id)data;
@end

@implementation EMCoreAnalyticsEvent

- (EMCoreAnalyticsEvent)initWithEventName:(id)name collectionData:(id)data
{
  nameCopy = name;
  dataCopy = data;
  v14.receiver = self;
  v14.super_class = EMCoreAnalyticsEvent;
  v9 = [(EMCoreAnalyticsEvent *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, name);
    v11 = [dataCopy copy];
    data = v10->_data;
    v10->_data = v11;
  }

  return v10;
}

@end