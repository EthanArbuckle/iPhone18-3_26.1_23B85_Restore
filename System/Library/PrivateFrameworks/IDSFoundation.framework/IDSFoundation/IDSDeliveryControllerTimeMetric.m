@interface IDSDeliveryControllerTimeMetric
- (IDSDeliveryControllerTimeMetric)initWithStartDate:(id)a3 endDate:(id)a4 endpointCount:(int64_t)a5 usedPipeline:(BOOL)a6 usedMMCS:(BOOL)a7 responseCode:(int64_t)a8;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSDeliveryControllerTimeMetric

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = MEMORY[0x1E696AD98];
  [(IDSDeliveryControllerTimeMetric *)self timeToSend];
  v5 = [v4 numberWithDouble:?];
  if (v5)
  {
    CFDictionarySetValue(v3, @"TimeToSend", v5);
  }

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[IDSDeliveryControllerTimeMetric endpointCount](self, "endpointCount")}];
  if (v6)
  {
    CFDictionarySetValue(v3, @"EndpointCount", v6);
  }

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[IDSDeliveryControllerTimeMetric usedPipeline](self, "usedPipeline")}];
  if (v7)
  {
    CFDictionarySetValue(v3, @"UsedPipeline", v7);
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[IDSDeliveryControllerTimeMetric usedMMCS](self, "usedMMCS")}];
  if (v8)
  {
    CFDictionarySetValue(v3, @"UsedMMCS", v8);
  }

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:{-[IDSDeliveryControllerTimeMetric responseCode](self, "responseCode")}];
  if (v9)
  {
    CFDictionarySetValue(v3, @"ResponseCode", v9);
  }

  CFDictionarySetValue(v3, @"Version", &unk_1F1B20378);

  return v3;
}

- (IDSDeliveryControllerTimeMetric)initWithStartDate:(id)a3 endDate:(id)a4 endpointCount:(int64_t)a5 usedPipeline:(BOOL)a6 usedMMCS:(BOOL)a7 responseCode:(int64_t)a8
{
  v14 = a3;
  v15 = a4;
  v19.receiver = self;
  v19.super_class = IDSDeliveryControllerTimeMetric;
  v16 = [(IDSDeliveryControllerTimeMetric *)&v19 init];
  if (v16)
  {
    [v15 timeIntervalSinceDate:v14];
    v16->_timeToSend = v17;
    v16->_endpointCount = a5;
    v16->_usedPipeline = a6;
    v16->_usedMMCS = a7;
    v16->_responseCode = a8;
  }

  return v16;
}

@end