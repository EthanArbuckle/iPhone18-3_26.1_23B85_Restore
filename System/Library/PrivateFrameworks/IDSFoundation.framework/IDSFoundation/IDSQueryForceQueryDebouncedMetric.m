@interface IDSQueryForceQueryDebouncedMetric
- (IDSQueryForceQueryDebouncedMetric)initWithServiceIdentifier:(id)a3 queryReason:(id)a4 uriCount:(unint64_t)a5 preventQuery:(BOOL)a6;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSQueryForceQueryDebouncedMetric

- (IDSQueryForceQueryDebouncedMetric)initWithServiceIdentifier:(id)a3 queryReason:(id)a4 uriCount:(unint64_t)a5 preventQuery:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v16.receiver = self;
  v16.super_class = IDSQueryForceQueryDebouncedMetric;
  v13 = [(IDSQueryForceQueryDebouncedMetric *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_serviceIdentifier, a3);
    objc_storeStrong(&v14->_queryReason, a4);
    v14->_uriCount = a5;
    v14->_preventedQueryFromFlighting = a6;
  }

  return v14;
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

  queryReason = self->_queryReason;
  if (queryReason)
  {
    CFDictionarySetValue(v4, @"queryReason", queryReason);
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_uriCount];
  if (v7)
  {
    CFDictionarySetValue(v4, @"uriCount", v7);
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_preventedQueryFromFlighting];
  if (v8)
  {
    CFDictionarySetValue(v4, @"preventedQuery", v8);
  }

  return v4;
}

@end