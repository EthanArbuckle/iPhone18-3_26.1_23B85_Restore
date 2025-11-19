@interface UIFont(IC)
+ (id)dc_preferredFontForTextStyle:()IC adjustedForDefaultSize:maxSize:;
@end

@implementation UIFont(IC)

+ (id)dc_preferredFontForTextStyle:()IC adjustedForDefaultSize:maxSize:
{
  v7 = a5;
  v8 = CTFontDescriptorCreateWithTextStyle();
  [v8 pointSize];
  v10 = a1 - v9;
  v11 = [MEMORY[0x277D74300] preferredFontForTextStyle:v7];

  [v11 pointSize];
  v13 = v10 + v12;
  if (v13 >= a2)
  {
    v13 = a2;
  }

  v14 = [v11 fontWithSize:ceil(v13)];

  return v14;
}

@end