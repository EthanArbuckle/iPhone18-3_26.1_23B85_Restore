@interface IDSSessionAcceptSentMetric
- (IDSSessionAcceptSentMetric)initWithGuid:(id)a3;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSSessionAcceptSentMetric

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(IDSSessionAcceptSentMetric *)self guid];
  if (v4)
  {
    CFDictionarySetValue(v3, @"guid", v4);
  }

  return v3;
}

- (IDSSessionAcceptSentMetric)initWithGuid:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IDSSessionAcceptSentMetric;
  v6 = [(IDSSessionAcceptSentMetric *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_guid, a3);
  }

  return v7;
}

@end