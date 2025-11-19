@interface IDSCachedQueryCompletionMetric
- (IDSCachedQueryCompletionMetric)initWithService:(id)a3 queryURITypes:(unsigned int)a4 queryReason:(id)a5 uriCount:(unint64_t)a6;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSCachedQueryCompletionMetric

- (IDSCachedQueryCompletionMetric)initWithService:(id)a3 queryURITypes:(unsigned int)a4 queryReason:(id)a5 uriCount:(unint64_t)a6
{
  v11 = a3;
  v12 = a5;
  v16.receiver = self;
  v16.super_class = IDSCachedQueryCompletionMetric;
  v13 = [(IDSCachedQueryCompletionMetric *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_serviceIdentifier, a3);
    v14->_queryURITypes = a4;
    objc_storeStrong(&v14->_queryReason, a5);
    v14->_uriCount = a6;
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

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_queryURITypes];
  if (v6)
  {
    CFDictionarySetValue(v4, @"queryURITypes", v6);
  }

  queryReason = self->_queryReason;
  if (queryReason)
  {
    CFDictionarySetValue(v4, @"queryReason", queryReason);
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_uriCount];
  if (v8)
  {
    CFDictionarySetValue(v4, @"uriCount", v8);
  }

  return v4;
}

@end