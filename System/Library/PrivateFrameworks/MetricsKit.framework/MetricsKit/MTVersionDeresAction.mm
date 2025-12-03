@interface MTVersionDeresAction
- (MTVersionDeresAction)initWithField:(id)field configDictionary:(id)dictionary;
- (id)performAction:(id)action context:(id)context;
@end

@implementation MTVersionDeresAction

- (MTVersionDeresAction)initWithField:(id)field configDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = MTVersionDeresAction;
  v7 = [(MTTreatmentAction *)&v11 initWithField:field configDictionary:dictionaryCopy];
  if (v7)
  {
    v8 = [dictionaryCopy objectForKeyedSubscript:@"precision"];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) && [v8 length])
    {
      integerValue = [v8 integerValue];
    }

    else
    {
      integerValue = -1;
    }

    [(MTVersionDeresAction *)v7 setPrecision:integerValue];
  }

  return v7;
}

- (id)performAction:(id)action context:(id)context
{
  v10.receiver = self;
  v10.super_class = MTVersionDeresAction;
  v5 = [(MTTreatmentAction *)&v10 performAction:action context:context];
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