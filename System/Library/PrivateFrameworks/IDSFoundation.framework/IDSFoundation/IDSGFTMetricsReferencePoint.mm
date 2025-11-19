@interface IDSGFTMetricsReferencePoint
- (IDSGFTMetricsReferencePoint)initWithFromType:(id)a3 fromUniqueID:(id)a4 anonymizer:(id)a5 templateDictionary:(id)a6;
- (id)collectForTimeBase:(double)a3 anonymize:(BOOL)a4;
- (id)instanceForID:(id)a3;
- (void)event:(id)a3 uniqueID:(id)a4 reason:(id)a5;
- (void)event:(id)a3 uniqueID:(id)a4 reason:(id)a5 time:(double)a6;
@end

@implementation IDSGFTMetricsReferencePoint

- (IDSGFTMetricsReferencePoint)initWithFromType:(id)a3 fromUniqueID:(id)a4 anonymizer:(id)a5 templateDictionary:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v23.receiver = self;
  v23.super_class = IDSGFTMetricsReferencePoint;
  v15 = [(IDSGFTMetricsReferencePoint *)&v23 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_fromType, a3);
    objc_storeStrong(&v16->_fromUniqueID, a4);
    objc_storeStrong(&v16->_anonymizer, a5);
    objc_storeStrong(&v16->_template, a6);
    v17 = [MEMORY[0x1E695DF90] dictionary];
    attributes = v16->_attributes;
    v16->_attributes = v17;

    v19 = [MEMORY[0x1E695DF90] dictionary];
    times = v16->_times;
    v16->_times = v19;

    v16->_lock._os_unfair_lock_opaque = 0;
    v21 = v16;
  }

  return v16;
}

- (id)instanceForID:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_times objectForKeyedSubscript:v4];
  if (!v5)
  {
    v5 = [MEMORY[0x1E695DF90] dictionary];
    [(NSMutableDictionary *)self->_times setObject:v5 forKeyedSubscript:v4];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (void)event:(id)a3 uniqueID:(id)a4 reason:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  [(IDSGFTMetricsReferencePoint *)self event:v10 uniqueID:v9 reason:v8 time:ids_monotonic_time()];
}

- (void)event:(id)a3 uniqueID:(id)a4 reason:(id)a5 time:(double)a6
{
  v16 = a3;
  v10 = a5;
  v11 = [(IDSGFTMetricsReferencePoint *)self instanceForID:a4];
  os_unfair_lock_lock(&self->_lock);
  v12 = [v11 objectForKeyedSubscript:v16];

  if (!v12)
  {
    v13 = [IDSGFTMetricsReferencePointEvent alloc];
    v14 = [MEMORY[0x1E696AD98] numberWithDouble:a6];
    v15 = [(IDSGFTMetricsReferencePointEvent *)v13 initWithTime:v14 reason:v10];
    [v11 setObject:v15 forKeyedSubscript:v16];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)collectForTimeBase:(double)a3 anonymize:(BOOL)a4
{
  v55 = *MEMORY[0x1E69E9840];
  v37 = [MEMORY[0x1E695DF70] array];
  [(IDSGFTMetricsReferencePoint *)self referenceTimeForTimeBase:a3];
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
        if (a4)
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

        v14 = [MEMORY[0x1E695DF70] array];
        [v11 setObject:v14 forKeyedSubscript:@"events"];

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
              v19 = [v18 time];
              [v19 doubleValue];
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
              v28 = [v27 reason];
              v29 = [v28 intValue];

              self = v23;
              v8 = v22;
              if (v29)
              {
                v30 = [*(v22 + 3776) stringWithFormat:@"%@.%@-reason", self->_fromType, v17];
                v31 = [v15 objectForKeyedSubscript:v17];
                v32 = [v31 reason];
                [v11 setObject:v32 forKeyedSubscript:v30];
              }
            }

            v41 = [v15 countByEnumeratingWithState:&v43 objects:v53 count:16];
          }

          while (v41);
        }

        [v37 addObject:v11];

        v9 = v39 + 1;
      }

      while (v39 + 1 != v38);
      v38 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v47 objects:v54 count:16];
    }

    while (v38);
  }

  os_unfair_lock_unlock(&self->_lock);

  return v37;
}

@end