@interface HFContainedObjectDifference
+ (id)containedObjectDifferenceWithKey:(id)key comparisonResult:(id)result;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilder;
@end

@implementation HFContainedObjectDifference

+ (id)containedObjectDifferenceWithKey:(id)key comparisonResult:(id)result
{
  keyCopy = key;
  resultCopy = result;
  differences = [resultCopy differences];
  v9 = [differences na_any:&__block_literal_global_105_0];

  if (v9)
  {
    v10 = [[self alloc] initWithKey:keyCopy priority:2];
    [v10 setContainedObjectResult:resultCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v11.receiver = self;
  v11.super_class = HFContainedObjectDifference;
  v4 = [(HFDifference *)&v11 copyWithZone:zone];
  objc_opt_class();
  v5 = v4;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  containedObjectResult = [(HFContainedObjectDifference *)self containedObjectResult];
  v9 = [containedObjectResult copy];
  [v7 setContainedObjectResult:v9];

  return v7;
}

- (id)descriptionBuilder
{
  v7.receiver = self;
  v7.super_class = HFContainedObjectDifference;
  descriptionBuilder = [(HFDifference *)&v7 descriptionBuilder];
  containedObjectResult = [(HFContainedObjectDifference *)self containedObjectResult];
  v5 = [descriptionBuilder appendObject:containedObjectResult withName:@"result"];

  return descriptionBuilder;
}

@end