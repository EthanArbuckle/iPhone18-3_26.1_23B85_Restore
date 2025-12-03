@interface IDSQueryForceQueryDebouncedMetric
- (IDSQueryForceQueryDebouncedMetric)initWithServiceIdentifier:(id)identifier queryReason:(id)reason uriCount:(unint64_t)count preventQuery:(BOOL)query;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSQueryForceQueryDebouncedMetric

- (IDSQueryForceQueryDebouncedMetric)initWithServiceIdentifier:(id)identifier queryReason:(id)reason uriCount:(unint64_t)count preventQuery:(BOOL)query
{
  identifierCopy = identifier;
  reasonCopy = reason;
  v16.receiver = self;
  v16.super_class = IDSQueryForceQueryDebouncedMetric;
  v13 = [(IDSQueryForceQueryDebouncedMetric *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_serviceIdentifier, identifier);
    objc_storeStrong(&v14->_queryReason, reason);
    v14->_uriCount = count;
    v14->_preventedQueryFromFlighting = query;
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