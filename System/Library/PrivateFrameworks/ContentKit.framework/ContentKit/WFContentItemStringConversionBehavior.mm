@interface WFContentItemStringConversionBehavior
+ (id)accessingProperty:(id)property;
+ (id)coercingToStringWithDescription:(id)description;
- (WFContentItemStringConversionBehavior)initWithProperty:(id)property description:(id)description;
@end

@implementation WFContentItemStringConversionBehavior

- (WFContentItemStringConversionBehavior)initWithProperty:(id)property description:(id)description
{
  propertyCopy = property;
  descriptionCopy = description;
  if (!descriptionCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFContentItemStringConversionBehavior.m" lineNumber:16 description:{@"Invalid parameter not satisfying: %@", @"description"}];
  }

  v17.receiver = self;
  v17.super_class = WFContentItemStringConversionBehavior;
  v10 = [(WFContentItemStringConversionBehavior *)&v17 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_property, property);
    v12 = [descriptionCopy copy];
    behaviorDescription = v11->_behaviorDescription;
    v11->_behaviorDescription = v12;

    v14 = v11;
  }

  return v11;
}

+ (id)coercingToStringWithDescription:(id)description
{
  descriptionCopy = description;
  v5 = [[self alloc] initWithProperty:0 description:descriptionCopy];

  return v5;
}

+ (id)accessingProperty:(id)property
{
  propertyCopy = property;
  if (!propertyCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFContentItemStringConversionBehavior.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"property"}];
  }

  v6 = [self alloc];
  localizedName = [propertyCopy localizedName];
  v8 = [v6 initWithProperty:propertyCopy description:localizedName];

  return v8;
}

@end