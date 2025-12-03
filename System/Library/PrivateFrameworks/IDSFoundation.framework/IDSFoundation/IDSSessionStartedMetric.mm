@interface IDSSessionStartedMetric
- (IDSSessionStartedMetric)initWithGuid:(id)guid protocolVersionNumber:(id)number serviceName:(id)name clientType:(unsigned int)type;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSSessionStartedMetric

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  guid = [(IDSSessionStartedMetric *)self guid];
  if (guid)
  {
    CFDictionarySetValue(v3, @"guid", guid);
  }

  protocolVersionNumber = [(IDSSessionStartedMetric *)self protocolVersionNumber];
  if (protocolVersionNumber)
  {
    CFDictionarySetValue(v3, @"protocolVersionNumber", protocolVersionNumber);
  }

  serviceName = [(IDSSessionStartedMetric *)self serviceName];
  if (serviceName)
  {
    CFDictionarySetValue(v3, @"serviceName", serviceName);
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[IDSSessionStartedMetric clientType](self, "clientType")}];
  if (v7)
  {
    CFDictionarySetValue(v3, @"clientType", v7);
  }

  return v3;
}

- (IDSSessionStartedMetric)initWithGuid:(id)guid protocolVersionNumber:(id)number serviceName:(id)name clientType:(unsigned int)type
{
  guidCopy = guid;
  numberCopy = number;
  nameCopy = name;
  v17.receiver = self;
  v17.super_class = IDSSessionStartedMetric;
  v14 = [(IDSSessionStartedMetric *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_guid, guid);
    objc_storeStrong(&v15->_protocolVersionNumber, number);
    objc_storeStrong(&v15->_serviceName, name);
    v15->_clientType = type;
  }

  return v15;
}

@end