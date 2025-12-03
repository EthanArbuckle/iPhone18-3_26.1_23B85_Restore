@interface IDSHandleListUpdatedMetric
- (IDSHandleListUpdatedMetric)initWithService:(id)service;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSHandleListUpdatedMetric

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  service = self->_service;
  if (service)
  {
    CFDictionarySetValue(v3, @"service", service);
  }

  return v4;
}

- (IDSHandleListUpdatedMetric)initWithService:(id)service
{
  serviceCopy = service;
  v9.receiver = self;
  v9.super_class = IDSHandleListUpdatedMetric;
  v6 = [(IDSHandleListUpdatedMetric *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_service, service);
  }

  return v7;
}

@end