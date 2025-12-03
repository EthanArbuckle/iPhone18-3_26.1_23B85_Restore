@interface FCSectionSupergroupKnobs
- (FCSectionSupergroupKnobs)initWithJSONData:(id)data;
- (FCSectionSupergroupKnobs)initWithJSONString:(id)string;
@end

@implementation FCSectionSupergroupKnobs

- (FCSectionSupergroupKnobs)initWithJSONString:(id)string
{
  v4 = [string dataUsingEncoding:4];
  v5 = [(FCSectionSupergroupKnobs *)self initWithJSONData:v4];

  return v5;
}

- (FCSectionSupergroupKnobs)initWithJSONData:(id)data
{
  dataCopy = data;
  if (dataCopy)
  {
    v27 = 0;
    v5 = [MEMORY[0x1E696ACB0] JSONObjectWithData:dataCopy options:0 error:&v27];
    v6 = v27;
    if (!v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v26.receiver = self;
        v26.super_class = FCSectionSupergroupKnobs;
        v7 = [(FCSectionSupergroupKnobs *)&v26 init];
        if (v7)
        {
          v8 = [v5 objectForKeyedSubscript:@"isEligible"];

          if (v8)
          {
            v9 = [v5 objectForKeyedSubscript:@"isEligible"];
            v7->_isEligible = [v9 BOOLValue];
          }

          else
          {
            v7->_isEligible = 1;
          }

          v15 = [v5 objectForKeyedSubscript:@"nameOverride"];

          if (v15)
          {
            v16 = [v5 objectForKeyedSubscript:@"nameOverride"];
            stringValue = [v16 stringValue];
            nameOverride = v7->_nameOverride;
            v7->_nameOverride = stringValue;
          }

          else
          {
            v16 = v7->_nameOverride;
            v7->_nameOverride = 0;
          }

          v19 = [v5 objectForKeyedSubscript:@"rankMultiplier"];

          if (v19)
          {
            v20 = [v5 objectForKeyedSubscript:@"rankMultiplier"];
            [v20 doubleValue];
            v22 = v21;

            if (v22 <= 0.0)
            {
              v7->_rankMultiplier = 0.0;
            }

            else
            {
              v23 = [v5 objectForKeyedSubscript:@"rankMultiplier"];
              [v23 doubleValue];
              v7->_rankMultiplier = v24;
            }
          }

          else
          {
            v7->_rankMultiplier = 1.0;
          }
        }

        v13 = v7;

        goto LABEL_11;
      }
    }
  }

  v25.receiver = self;
  v25.super_class = FCSectionSupergroupKnobs;
  v10 = [(FCSectionSupergroupKnobs *)&v25 init];
  v11 = v10;
  if (v10)
  {
    v10->_isEligible = 1;
    v12 = v10->_nameOverride;
    v10->_nameOverride = 0;

    v11->_rankMultiplier = 1.0;
  }

  v13 = v11;
LABEL_11:

  return v13;
}

@end