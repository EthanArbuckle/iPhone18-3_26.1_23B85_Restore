@interface IDSQueryCacheClearMetric
- (IDSQueryCacheClearMetric)initWithServiceIdentifier:(id)a3 clearReason:(id)a4 uriCount:(unint64_t)a5;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSQueryCacheClearMetric

- (IDSQueryCacheClearMetric)initWithServiceIdentifier:(id)a3 clearReason:(id)a4 uriCount:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = IDSQueryCacheClearMetric;
  v11 = [(IDSQueryCacheClearMetric *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_serviceIdentifier, a3);
    objc_storeStrong(&v12->_clearReason, a4);
    v12->_uriCount = a5;
  }

  return v12;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  serviceIdentifier = self->_serviceIdentifier;
  if (serviceIdentifier)
  {
    CFDictionarySetValue(v3, @"service", serviceIdentifier);
  }

  clearReason = self->_clearReason;
  if (clearReason)
  {
    CFDictionarySetValue(v4, @"clearReason", clearReason);
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_uriCount];
  if (v7)
  {
    CFDictionarySetValue(v4, @"uriCount", v7);
  }

  return v4;
}

@end