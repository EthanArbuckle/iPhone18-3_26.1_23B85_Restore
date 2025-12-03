@interface UISwitch(MobileSafariExtras)
- (void)sf_initWithOn:()MobileSafariExtras valueChangeHandler:;
@end

@implementation UISwitch(MobileSafariExtras)

- (void)sf_initWithOn:()MobileSafariExtras valueChangeHandler:
{
  v6 = a4;
  v7 = MEMORY[0x1E69DC628];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __65__UISwitch_MobileSafariExtras__sf_initWithOn_valueChangeHandler___block_invoke;
  v14[3] = &unk_1E721C2E8;
  v15 = v6;
  v8 = v6;
  v9 = [v7 actionWithHandler:v14];
  v10 = [self initWithFrame:v9 primaryAction:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  v11 = v10;
  if (v10)
  {
    [v10 setOn:a3];
    v12 = v11;
  }

  return v11;
}

@end