@interface IDSOffGridEntryMetric
- (IDSOffGridEntryMetric)initWithService:(id)a3 source:(id)a4 date:(id)a5 success:(BOOL)a6;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSOffGridEntryMetric

- (IDSOffGridEntryMetric)initWithService:(id)a3 source:(id)a4 date:(id)a5 success:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = IDSOffGridEntryMetric;
  v14 = [(IDSOffGridEntryMetric *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_service, a3);
    objc_storeStrong(&v15->_source, a4);
    objc_storeStrong(&v15->_date, a5);
    v15->_success = a6;
  }

  return v15;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  service = self->_service;
  if (service)
  {
    CFDictionarySetValue(v3, @"service", service);
  }

  source = self->_source;
  if (source)
  {
    CFDictionarySetValue(v4, @"source", source);
  }

  v7 = MEMORY[0x1E696AD98];
  [(NSDate *)self->_date timeIntervalSince1970];
  v8 = [v7 numberWithDouble:?];
  if (v8)
  {
    CFDictionarySetValue(v4, @"date", v8);
  }

  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_success];
  if (v9)
  {
    CFDictionarySetValue(v4, @"success", v9);
  }

  return v4;
}

@end