@interface IDSSessionAcceptSentMetric
- (IDSSessionAcceptSentMetric)initWithGuid:(id)guid;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSSessionAcceptSentMetric

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  guid = [(IDSSessionAcceptSentMetric *)self guid];
  if (guid)
  {
    CFDictionarySetValue(v3, @"guid", guid);
  }

  return v3;
}

- (IDSSessionAcceptSentMetric)initWithGuid:(id)guid
{
  guidCopy = guid;
  v9.receiver = self;
  v9.super_class = IDSSessionAcceptSentMetric;
  v6 = [(IDSSessionAcceptSentMetric *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_guid, guid);
  }

  return v7;
}

@end