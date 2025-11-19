@interface UIAlertController(IC)
+ (void)ic_showAlertWithTitle:()IC message:viewController:;
@end

@implementation UIAlertController(IC)

+ (void)ic_showAlertWithTitle:()IC message:viewController:
{
  v7 = a5;
  v8 = [MEMORY[0x1E69DC650] alertControllerWithTitle:a3 message:a4 preferredStyle:1];
  v9 = MEMORY[0x1E69DC648];
  v10 = __ICLocalizedFrameworkString_impl(@"OK", @"OK", 0, 1);
  v11 = [v9 actionWithTitle:v10 style:0 handler:0];
  [v8 addAction:v11];

  v14 = v7;
  v15 = v8;
  v12 = v8;
  v13 = v7;
  performBlockOnMainThread();
}

@end