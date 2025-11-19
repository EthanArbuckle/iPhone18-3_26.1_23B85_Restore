@interface MKHTTPServerTiming
- (id)value;
@end

@implementation MKHTTPServerTiming

- (id)value
{
  v26 = *MEMORY[0x277D85DE8];
  v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (self->_response > 0.0)
  {
    v3 = [[MKHTTPServerTimingMetric alloc] initWithDuration:self->_response];
    [v19 setObject:v3 forKeyedSubscript:@"response"];
  }

  if (self->_import > 0.0)
  {
    v4 = [[MKHTTPServerTimingMetric alloc] initWithDuration:self->_import];
    [v19 setObject:v4 forKeyedSubscript:@"import"];
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [v19 allKeys];
  v6 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v21;
    do
    {
      v10 = 0;
      v11 = v8;
      do
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v24[0] = *(*(&v20 + 1) + 8 * v10);
        v12 = [v19 objectForKeyedSubscript:?];
        v13 = [v12 value];
        v24[1] = v13;
        v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
        v8 = [v14 componentsJoinedByString:@""];;

        [v5 addObject:v8];
        ++v10;
        v11 = v8;
      }

      while (v7 != v10);
      v7 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v7);
  }

  v15 = [v5 componentsJoinedByString:{@", "}];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

@end