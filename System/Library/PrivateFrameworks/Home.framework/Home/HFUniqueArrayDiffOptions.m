@interface HFUniqueArrayDiffOptions
- (HFUniqueArrayDiffOptions)init;
@end

@implementation HFUniqueArrayDiffOptions

- (HFUniqueArrayDiffOptions)init
{
  v3.receiver = self;
  v3.super_class = HFUniqueArrayDiffOptions;
  result = [(HFUniqueArrayDiffOptions *)&v3 init];
  if (result)
  {
    result->_allowMoves = 1;
  }

  return result;
}

@end