@interface CPAnalyticsConditional
- (CPAnalyticsConditional)initWithConfig:(id)a3;
- (id)_validateAndParseConfig:(id)a3 forKey:(id)a4;
@end

@implementation CPAnalyticsConditional

- (id)_validateAndParseConfig:(id)a3 forKey:(id)a4
{
  v4 = [a3 objectForKey:a4];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 length])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CPAnalyticsConditional)initWithConfig:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = CPAnalyticsConditional;
  v5 = [(CPAnalyticsConditional *)&v14 init];
  if (!v5)
  {
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_11:
    v12 = 0;
    goto LABEL_12;
  }

  v6 = [(CPAnalyticsConditional *)v5 _validateAndParseConfig:v4 forKey:@"property"];
  v7 = [(CPAnalyticsConditional *)v5 _validateAndParseConfig:v4 forKey:@"predicate"];
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9 || (objc_storeStrong(&v5->_property, v6), [MEMORY[0x277CCAC30] predicateWithFormat:v8], (v10 = objc_claimAutoreleasedReturnValue()) == 0))
  {

    goto LABEL_11;
  }

  predicate = v5->_predicate;
  v5->_predicate = v10;

LABEL_9:
  v12 = v5;
LABEL_12:

  return v12;
}

@end