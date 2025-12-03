@interface BMDistributedContextTranslatedEventMessage
- (BMDistributedContextTranslatedEventMessage)initWithStreamIdentifier:(id)identifier eventData:(id)data eventDataVersion:(id)version;
@end

@implementation BMDistributedContextTranslatedEventMessage

- (BMDistributedContextTranslatedEventMessage)initWithStreamIdentifier:(id)identifier eventData:(id)data eventDataVersion:(id)version
{
  identifierCopy = identifier;
  dataCopy = data;
  versionCopy = version;
  v15.receiver = self;
  v15.super_class = BMDistributedContextTranslatedEventMessage;
  v12 = [(BMDistributedContextTranslatedEventMessage *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_streamIdentifier, identifier);
    objc_storeStrong(&v13->_eventData, data);
    objc_storeStrong(&v13->_eventDataVersion, version);
  }

  return v13;
}

@end