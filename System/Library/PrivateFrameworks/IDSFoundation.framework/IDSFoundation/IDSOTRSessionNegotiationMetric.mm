@interface IDSOTRSessionNegotiationMetric
- (IDSOTRSessionNegotiationMetric)initWithService:(id)a3 priority:(unint64_t)a4 duration:(unint64_t)a5 result:(unsigned int)a6;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSOTRSessionNegotiationMetric

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  service = self->_service;
  if (service)
  {
    CFDictionarySetValue(v3, @"service", service);
  }

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[IDSOTRSessionNegotiationMetric priority](self, "priority")}];
  if (v6)
  {
    CFDictionarySetValue(v4, @"priority", v6);
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[IDSOTRSessionNegotiationMetric duration](self, "duration")}];
  if (v7)
  {
    CFDictionarySetValue(v4, @"duration", v7);
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[IDSOTRSessionNegotiationMetric result](self, "result")}];
  if (v8)
  {
    CFDictionarySetValue(v4, @"result", v8);
  }

  return v4;
}

- (IDSOTRSessionNegotiationMetric)initWithService:(id)a3 priority:(unint64_t)a4 duration:(unint64_t)a5 result:(unsigned int)a6
{
  v11 = a3;
  v15.receiver = self;
  v15.super_class = IDSOTRSessionNegotiationMetric;
  v12 = [(IDSOTRSessionNegotiationMetric *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_service, a3);
    v13->_priority = a4;
    v13->_duration = a5;
    v13->_result = a6;
  }

  return v13;
}

@end