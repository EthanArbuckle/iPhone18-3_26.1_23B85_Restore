@interface WFContentItemStringConversionBehavior
+ (id)accessingProperty:(id)a3;
+ (id)coercingToStringWithDescription:(id)a3;
- (WFContentItemStringConversionBehavior)initWithProperty:(id)a3 description:(id)a4;
@end

@implementation WFContentItemStringConversionBehavior

- (WFContentItemStringConversionBehavior)initWithProperty:(id)a3 description:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"WFContentItemStringConversionBehavior.m" lineNumber:16 description:{@"Invalid parameter not satisfying: %@", @"description"}];
  }

  v17.receiver = self;
  v17.super_class = WFContentItemStringConversionBehavior;
  v10 = [(WFContentItemStringConversionBehavior *)&v17 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_property, a3);
    v12 = [v9 copy];
    behaviorDescription = v11->_behaviorDescription;
    v11->_behaviorDescription = v12;

    v14 = v11;
  }

  return v11;
}

+ (id)coercingToStringWithDescription:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithProperty:0 description:v4];

  return v5;
}

+ (id)accessingProperty:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:a1 file:@"WFContentItemStringConversionBehavior.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"property"}];
  }

  v6 = [a1 alloc];
  v7 = [v5 localizedName];
  v8 = [v6 initWithProperty:v5 description:v7];

  return v8;
}

@end