@interface IDSGFTMetricsReferencePoint
- (IDSGFTMetricsReferencePoint)initWithFromType:(id)type fromUniqueID:(id)d anonymizer:(id)anonymizer templateDictionary:(id)dictionary;
- (id)collectForTimeBase:(double)base anonymize:(BOOL)anonymize;
- (id)instanceForID:(id)d;
- (void)event:(id)event uniqueID:(id)d reason:(id)reason;
- (void)event:(id)event uniqueID:(id)d reason:(id)reason time:(double)time;
@end

@implementation IDSGFTMetricsReferencePoint

- (IDSGFTMetricsReferencePoint)initWithFromType:(id)type fromUniqueID:(id)d anonymizer:(id)anonymizer templateDictionary:(id)dictionary
{
  typeCopy = type;
  dCopy = d;
  anonymizerCopy = anonymizer;
  dictionaryCopy = dictionary;
  v23.receiver = self;
  v23.super_class = IDSGFTMetricsReferencePoint;
  v15 = [(IDSGFTMetricsReferencePoint *)&v23 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_fromType, type);
    objc_storeStrong(&v16->_fromUniqueID, d);
    objc_storeStrong(&v16->_anonymizer, anonymizer);
    objc_storeStrong(&v16->_template, dictionary);
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    attributes = v16->_attributes;
    v16->_attributes = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    times = v16->_times;
    v16->_times = dictionary2;

    v16->_lock._os_unfair_lock_opaque = 0;
    v21 = v16;
  }

  return v16;
}

- (id)instanceForID:(id)d
{
  dCopy = d;
  if (!dCopy)
  {
    dCopy = [MEMORY[0x1E695DFB0] null];
  }

  os_unfair_lock_lock(&self->_lock);
  dictionary = [(NSMutableDictionary *)self->_times objectForKeyedSubscript:dCopy];
  if (!dictionary)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [(NSMutableDictionary *)self->_times setObject:dictionary forKeyedSubscript:dCopy];
  }

  os_unfair_lock_unlock(&self->_lock);

  return dictionary;
}

- (void)event:(id)event uniqueID:(id)d reason:(id)reason
{
  reasonCopy = reason;
  dCopy = d;
  eventCopy = event;
  [(IDSGFTMetricsReferencePoint *)self event:eventCopy uniqueID:dCopy reason:reasonCopy time:ids_monotonic_time()];
}

- (void)event:(id)event uniqueID:(id)d reason:(id)reason time:(double)time
{
  eventCopy = event;
  reasonCopy = reason;
  v11 = [(IDSGFTMetricsReferencePoint *)self instanceForID:d];
  os_unfair_lock_lock(&self->_lock);
  v12 = [v11 objectForKeyedSubscript:eventCopy];

  if (!v12)
  {
    v13 = [IDSGFTMetricsReferencePointEvent alloc];
    v14 = [MEMORY[0x1E696AD98] numberWithDouble:time];
    v15 = [(IDSGFTMetricsReferencePointEvent *)v13 initWithTime:v14 reason:reasonCopy];
    [v11 setObject:v15 forKeyedSubscript:eventCopy];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)collectForTimeBase:(double)base anonymize:(BOOL)anonymize
{
  v55 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  [(IDSGFTMetricsReferencePoint *)self referenceTimeForTimeBase:base];
  v7 = v6;
  os_unfair_lock_lock(&self->_lock);
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = self->_times;
  v38 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v47 objects:v54 count:16];
  if (v38)
  {
    v35 = *v48;
    v8 = 0x1E696A000uLL;
    do
    {
      v9 = 0;
      do
      {
        if (*v48 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v47 + 1) + 8 * v9);
        v11 = [(NSDictionary *)self->_template mutableCopy];
        [v11 addEntriesFromDictionary:self->_attributes];
        v39 = v9;
        if (anonymize)
        {
          v12 = [(IDSGFTMetricsAnonymizer *)self->_anonymizer anonymizeID:self->_fromUniqueID];
          [v11 setObject:v12 forKeyedSubscript:@"fromID"];

          v13 = [(IDSGFTMetricsAnonymizer *)self->_anonymizer anonymizeID:v10];
          [v11 setObject:v13 forKeyedSubscript:@"toID"];
        }

        else
        {
          [v11 setObject:self->_fromUniqueID forKeyedSubscript:@"fromID"];
          [v11 setObject:v10 forKeyedSubscript:@"toID"];
        }

        array2 = [MEMORY[0x1E695DF70] array];
        [v11 setObject:array2 forKeyedSubscript:@"events"];

        v15 = [(NSMutableDictionary *)self->_times objectForKeyedSubscript:v10];
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v41 = [v15 countByEnumeratingWithState:&v43 objects:v53 count:16];
        if (v41)
        {
          v40 = *v44;
          do
          {
            for (i = 0; i != v41; ++i)
            {
              if (*v44 != v40)
              {
                objc_enumerationMutation(v15);
              }

              v17 = *(*(&v43 + 1) + 8 * i);
              v18 = [v15 objectForKeyedSubscript:v17];
              time = [v18 time];
              [time doubleValue];
              v21 = round((v20 - v7) * 1000.0 / 5.0) * 5.0;

              v42 = [*(v8 + 3776) stringWithFormat:@"%@.%@", self->_fromType, v17];
              v51[0] = @"name";
              v51[1] = @"interval";
              v52[0] = v42;
              [MEMORY[0x1E696AD98] numberWithDouble:v21];
              v22 = v8;
              v24 = v23 = self;
              v52[1] = v24;
              v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:v51 count:2];

              v26 = [v11 objectForKeyedSubscript:@"events"];
              [v26 addObject:v25];

              v27 = [v15 objectForKeyedSubscript:v17];
              reason = [v27 reason];
              intValue = [reason intValue];

              self = v23;
              v8 = v22;
              if (intValue)
              {
                v30 = [*(v22 + 3776) stringWithFormat:@"%@.%@-reason", self->_fromType, v17];
                v31 = [v15 objectForKeyedSubscript:v17];
                reason2 = [v31 reason];
                [v11 setObject:reason2 forKeyedSubscript:v30];
              }
            }

            v41 = [v15 countByEnumeratingWithState:&v43 objects:v53 count:16];
          }

          while (v41);
        }

        [array addObject:v11];

        v9 = v39 + 1;
      }

      while (v39 + 1 != v38);
      v38 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v47 objects:v54 count:16];
    }

    while (v38);
  }

  os_unfair_lock_unlock(&self->_lock);

  return array;
}

@end