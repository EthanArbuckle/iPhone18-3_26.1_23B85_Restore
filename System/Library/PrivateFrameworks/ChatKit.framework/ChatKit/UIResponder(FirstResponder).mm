@interface UIResponder(FirstResponder)
+ (id)currentFirstResponder;
@end

@implementation UIResponder(FirstResponder)

+ (id)currentFirstResponder
{
  objc_storeWeak(&currentFirstResponder, 0);
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  [mEMORY[0x1E69DC668] sendAction:sel_findFirstResponder_ to:0 from:0 forEvent:0];

  WeakRetained = objc_loadWeakRetained(&currentFirstResponder);

  return WeakRetained;
}

@end