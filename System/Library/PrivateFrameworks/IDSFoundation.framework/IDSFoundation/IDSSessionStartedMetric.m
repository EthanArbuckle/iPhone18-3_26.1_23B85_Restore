@interface IDSSessionStartedMetric
- (IDSSessionStartedMetric)initWithGuid:(id)a3 protocolVersionNumber:(id)a4 serviceName:(id)a5 clientType:(unsigned int)a6;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSSessionStartedMetric

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(IDSSessionStartedMetric *)self guid];
  if (v4)
  {
    CFDictionarySetValue(v3, @"guid", v4);
  }

  v5 = [(IDSSessionStartedMetric *)self protocolVersionNumber];
  if (v5)
  {
    CFDictionarySetValue(v3, @"protocolVersionNumber", v5);
  }

  v6 = [(IDSSessionStartedMetric *)self serviceName];
  if (v6)
  {
    CFDictionarySetValue(v3, @"serviceName", v6);
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[IDSSessionStartedMetric clientType](self, "clientType")}];
  if (v7)
  {
    CFDictionarySetValue(v3, @"clientType", v7);
  }

  return v3;
}

- (IDSSessionStartedMetric)initWithGuid:(id)a3 protocolVersionNumber:(id)a4 serviceName:(id)a5 clientType:(unsigned int)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = IDSSessionStartedMetric;
  v14 = [(IDSSessionStartedMetric *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_guid, a3);
    objc_storeStrong(&v15->_protocolVersionNumber, a4);
    objc_storeStrong(&v15->_serviceName, a5);
    v15->_clientType = a6;
  }

  return v15;
}

@end