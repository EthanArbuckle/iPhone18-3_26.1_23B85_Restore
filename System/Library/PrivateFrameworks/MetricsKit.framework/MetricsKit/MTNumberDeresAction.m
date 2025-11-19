@interface MTNumberDeresAction
- (MTNumberDeresAction)initWithField:(id)a3 configDictionary:(id)a4;
- (id)performAction:(id)a3 context:(id)a4;
@end

@implementation MTNumberDeresAction

- (MTNumberDeresAction)initWithField:(id)a3 configDictionary:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v24.receiver = self;
  v24.super_class = MTNumberDeresAction;
  v7 = [(MTTreatmentAction *)&v24 initWithField:a3 configDictionary:v6];
  if (v7)
  {
    v8 = [v6 objectForKeyedSubscript:@"precision"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 doubleValue];
      [(MTNumberDeresAction *)v7 setPrecision:?];
    }

    v9 = [v6 objectForKeyedSubscript:@"buckets"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v10 = v9;
      v11 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
      v9 = v10;
      if (v11)
      {
        v12 = v11;
        v13 = *v21;
        while (2)
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v21 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v20 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v16 = [v15 objectForKeyedSubscript:{@"start", v20}];

              if (v16)
              {
                continue;
              }
            }

            v9 = 0;
            goto LABEL_16;
          }

          v12 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }

        v9 = v10;
      }

LABEL_16:

      v17 = [v9 sortedArrayUsingComparator:&__block_literal_global_6];
      [(MTNumberDeresAction *)v7 setBuckets:v17];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)performAction:(id)a3 context:(id)a4
{
  v23[1] = *MEMORY[0x277D85DE8];
  v21.receiver = self;
  v21.super_class = MTNumberDeresAction;
  v5 = [(MTTreatmentAction *)&v21 performAction:a3 context:a4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(MTNumberDeresAction *)self buckets];
    if (![v6 count])
    {
      goto LABEL_12;
    }

    v22 = @"start";
    v23[0] = v5;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v8 = [v6 indexOfObject:v7 inSortedRange:0 options:objc_msgSend(v6 usingComparator:{"count"), 1536, &__block_literal_global_6}];

    if (v8 && v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = [v6 objectAtIndexedSubscript:v8 - 1];
      v10 = [v9 objectForKeyedSubscript:@"value"];
      v11 = v10;
      if (v10)
      {
        v12 = v10;
      }

      else
      {
        v12 = [v9 objectForKeyedSubscript:@"start"];
      }

      v14 = v12;

      v5 = v14;
    }

    v13 = 0;
    if (v8)
    {
      if (v8 != 0x7FFFFFFFFFFFFFFFLL)
      {
LABEL_12:
        if (self->_precision == 0.0)
        {
          v18 = v5;
          v5 = v18;
        }

        else
        {
          [v5 doubleValue];
          v16 = v15;
          [(MTNumberDeresAction *)self precision];
          if (v17 > 0.0)
          {
            v16 = v17 * floor(v16 / v17);
          }

          v18 = [MEMORY[0x277CCABB0] numberWithDouble:v16];
        }

        v13 = v18;
      }
    }
  }

  else
  {
    v13 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v13;
}

@end