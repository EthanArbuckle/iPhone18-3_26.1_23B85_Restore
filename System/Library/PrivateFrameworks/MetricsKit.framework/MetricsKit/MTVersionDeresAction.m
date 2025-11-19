@interface MTVersionDeresAction
- (MTVersionDeresAction)initWithField:(id)a3 configDictionary:(id)a4;
- (id)performAction:(id)a3 context:(id)a4;
@end

@implementation MTVersionDeresAction

- (MTVersionDeresAction)initWithField:(id)a3 configDictionary:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = MTVersionDeresAction;
  v7 = [(MTTreatmentAction *)&v11 initWithField:a3 configDictionary:v6];
  if (v7)
  {
    v8 = [v6 objectForKeyedSubscript:@"precision"];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) && [v8 length])
    {
      v9 = [v8 integerValue];
    }

    else
    {
      v9 = -1;
    }

    [(MTVersionDeresAction *)v7 setPrecision:v9];
  }

  return v7;
}

- (id)performAction:(id)a3 context:(id)a4
{
  v10.receiver = self;
  v10.super_class = MTVersionDeresAction;
  v5 = [(MTTreatmentAction *)&v10 performAction:a3 context:a4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 componentsSeparatedByString:@"."];
    if ([v6 count] <= self->_precision)
    {
      v8 = v5;
    }

    else
    {
      v7 = [v6 subarrayWithRange:0];

      v8 = [v7 componentsJoinedByString:@"."];
      v6 = v7;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end