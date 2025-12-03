@interface IDSSessionDeclineReceivedMetric
- (IDSSessionDeclineReceivedMetric)initWithGuid:(id)guid;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSSessionDeclineReceivedMetric

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  guid = [(IDSSessionDeclineReceivedMetric *)self guid];
  if (guid)
  {
    CFDictionarySetValue(v3, @"guid", guid);
  }

  return v3;
}

- (IDSSessionDeclineReceivedMetric)initWithGuid:(id)guid
{
  guidCopy = guid;
  v9.receiver = self;
  v9.super_class = IDSSessionDeclineReceivedMetric;
  v6 = [(IDSSessionDeclineReceivedMetric *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_guid, guid);
  }

  return v7;
}

@end