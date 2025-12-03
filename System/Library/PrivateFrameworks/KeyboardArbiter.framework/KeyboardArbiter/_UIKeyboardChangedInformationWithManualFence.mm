@interface _UIKeyboardChangedInformationWithManualFence
+ (void)pushFence:(id)fence;
@end

@implementation _UIKeyboardChangedInformationWithManualFence

+ (void)pushFence:(id)fence
{
  fenceCopy = fence;
  v4 = _fenceList;
  v7 = fenceCopy;
  if (!_fenceList)
  {
    array = [MEMORY[0x277CBEB18] array];
    v6 = _fenceList;
    _fenceList = array;

    fenceCopy = v7;
    v4 = _fenceList;
  }

  [v4 addObject:fenceCopy];
}

@end