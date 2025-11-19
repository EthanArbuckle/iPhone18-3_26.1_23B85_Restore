@interface UINavigationItem(IC)
- (void)ic_setTitle:()IC andSubtitle:;
@end

@implementation UINavigationItem(IC)

- (void)ic_setTitle:()IC andSubtitle:
{
  v16[2] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69DCC10];
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(v6);
  v10 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD40]];
  [v9 setFont:v10];

  [v9 setAdjustsFontForContentSizeCategory:1];
  [v9 setText:v8];

  v11 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  v12 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD10]];
  [v11 setFont:v12];

  [v11 setAdjustsFontForContentSizeCategory:1];
  [v11 setText:v7];

  v13 = objc_alloc(MEMORY[0x1E69DCF90]);
  v16[0] = v9;
  v16[1] = v11;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v15 = [v13 initWithArrangedSubviews:v14];

  [v15 setDistribution:4];
  [v15 setAlignment:3];
  [v15 setAxis:1];
  [a1 setTitleView:v15];
}

@end