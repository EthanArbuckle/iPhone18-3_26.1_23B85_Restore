@interface CKQuickActionPinButton
- (UIEdgeInsets)contentEdgeInsetsForState:(unint64_t)state;
- (double)animationDurationForState:(unint64_t)state;
- (id)buttonImageForState:(unint64_t)state;
@end

@implementation CKQuickActionPinButton

- (double)animationDurationForState:(unint64_t)state
{
  result = 0.05;
  if (state != 2)
  {
    result = 0.0;
  }

  if (state == 3)
  {
    return 0.15;
  }

  return result;
}

- (id)buttonImageForState:(unint64_t)state
{
  if (state >= 3)
  {
    if (state != 3)
    {
      quickPinButtonImage = 0;
      goto LABEL_7;
    }

    v3 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"pin"];
    v5 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:6 weight:16.0];
    quickPinButtonImage = [v3 imageWithSymbolConfiguration:v5];
  }

  else
  {
    v3 = +[CKUIBehavior sharedBehaviors];
    quickPinButtonImage = [v3 quickPinButtonImage];
  }

LABEL_7:

  return quickPinButtonImage;
}

- (UIEdgeInsets)contentEdgeInsetsForState:(unint64_t)state
{
  if (state > 2)
  {
    v5 = *MEMORY[0x1E69DDCE0];
    v7 = *(MEMORY[0x1E69DDCE0] + 8);
    v9 = *(MEMORY[0x1E69DDCE0] + 16);
    v11 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  else
  {
    v3 = +[CKUIBehavior sharedBehaviors];
    [v3 quickActionPinButtonImageInsets];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
  }

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.right = v15;
  result.bottom = v14;
  result.left = v13;
  result.top = v12;
  return result;
}

@end