@interface UIButtonConfiguration(ChatKitAdditions)
+ (id)ckCreateButtonConfigurationWithType:()ChatKitAdditions withImage:withTitle:withFont:;
@end

@implementation UIButtonConfiguration(ChatKitAdditions)

+ (id)ckCreateButtonConfigurationWithType:()ChatKitAdditions withImage:withTitle:withFont:
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = 0;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v13 = [MEMORY[0x1E69DC740] tintedButtonConfiguration];
    }

    else
    {
      if (a3 != 3)
      {
        goto LABEL_11;
      }

      v13 = [MEMORY[0x1E69DC740] filledButtonConfiguration];
    }
  }

  else if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_11;
    }

    v13 = [MEMORY[0x1E69DC740] grayButtonConfiguration];
  }

  else
  {
    v13 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
  }

  v12 = v13;
LABEL_11:
  if (v9)
  {
    [v12 setImage:v9];
  }

  if (v10)
  {
    if (v11)
    {
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObject:v11 forKey:*MEMORY[0x1E69DB648]];
      v15 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v10 attributes:v14];
      [v12 setAttributedTitle:v15];
    }

    else
    {
      [v12 setTitle:v10];
    }
  }

  return v12;
}

@end