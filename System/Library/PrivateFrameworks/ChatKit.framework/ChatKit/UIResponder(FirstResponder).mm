@interface UIResponder(FirstResponder)
+ (id)currentFirstResponder;
@end

@implementation UIResponder(FirstResponder)

+ (id)currentFirstResponder
{
  objc_storeWeak(&currentFirstResponder, 0);
  v0 = [MEMORY[0x1E69DC668] sharedApplication];
  [v0 sendAction:sel_findFirstResponder_ to:0 from:0 forEvent:0];

  WeakRetained = objc_loadWeakRetained(&currentFirstResponder);

  return WeakRetained;
}

@end