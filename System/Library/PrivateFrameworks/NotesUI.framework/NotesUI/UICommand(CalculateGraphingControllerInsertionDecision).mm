@interface UICommand(CalculateGraphingControllerInsertionDecision)
- (id)calculateGraphingControllerInsertionDecision;
@end

@implementation UICommand(CalculateGraphingControllerInsertionDecision)

- (id)calculateGraphingControllerInsertionDecision
{
  objc_opt_class();
  propertyList = [self propertyList];
  v3 = ICDynamicCast();

  v4 = [v3 objectForKeyedSubscript:@"cacheKey"];
  if (v4)
  {
    v5 = +[ICCalculateGraphingControllerInsertionDecision cache];
    v6 = [v5 objectForKey:v4];
  }

  else
  {
    v6 = 0;
  }

  v7 = [v3 objectForKeyedSubscript:@"graphableVariable"];
  [v6 setGraphableVariable:v7];

  return v6;
}

@end