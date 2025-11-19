@interface ABLegacyActionsResult
- (ABLegacyActionsResult)init;
@end

@implementation ABLegacyActionsResult

- (ABLegacyActionsResult)init
{
  v3.receiver = self;
  v3.super_class = ABLegacyActionsResult;
  result = [(ABLegacyActionsResult *)&v3 init];
  if (result)
  {
    result->_highestChangeID = -1;
  }

  return result;
}

@end