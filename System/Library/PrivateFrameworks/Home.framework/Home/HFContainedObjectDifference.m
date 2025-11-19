@interface HFContainedObjectDifference
+ (id)containedObjectDifferenceWithKey:(id)a3 comparisonResult:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilder;
@end

@implementation HFContainedObjectDifference

+ (id)containedObjectDifferenceWithKey:(id)a3 comparisonResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 differences];
  v9 = [v8 na_any:&__block_literal_global_105_0];

  if (v9)
  {
    v10 = [[a1 alloc] initWithKey:v6 priority:2];
    [v10 setContainedObjectResult:v7];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v11.receiver = self;
  v11.super_class = HFContainedObjectDifference;
  v4 = [(HFDifference *)&v11 copyWithZone:a3];
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

  v8 = [(HFContainedObjectDifference *)self containedObjectResult];
  v9 = [v8 copy];
  [v7 setContainedObjectResult:v9];

  return v7;
}

- (id)descriptionBuilder
{
  v7.receiver = self;
  v7.super_class = HFContainedObjectDifference;
  v3 = [(HFDifference *)&v7 descriptionBuilder];
  v4 = [(HFContainedObjectDifference *)self containedObjectResult];
  v5 = [v3 appendObject:v4 withName:@"result"];

  return v3;
}

@end