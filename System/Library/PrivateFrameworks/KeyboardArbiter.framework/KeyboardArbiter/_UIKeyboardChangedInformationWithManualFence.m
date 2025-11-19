@interface _UIKeyboardChangedInformationWithManualFence
+ (void)pushFence:(id)a3;
@end

@implementation _UIKeyboardChangedInformationWithManualFence

+ (void)pushFence:(id)a3
{
  v3 = a3;
  v4 = _fenceList;
  v7 = v3;
  if (!_fenceList)
  {
    v5 = [MEMORY[0x277CBEB18] array];
    v6 = _fenceList;
    _fenceList = v5;

    v3 = v7;
    v4 = _fenceList;
  }

  [v4 addObject:v3];
}

@end