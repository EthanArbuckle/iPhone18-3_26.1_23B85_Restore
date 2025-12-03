@interface CKInputView
+ (CGSize)defaultContentSize;
+ (CGSize)defaultContentSizeLargerThanKeyboard:(BOOL *)keyboard;
- (CGSize)intrinsicContentSize;
- (CGSize)lastContentSize;
@end

@implementation CKInputView

- (CGSize)intrinsicContentSize
{
  [(CKInputView *)self lastContentSize];
  v5 = v4 == *MEMORY[0x1E695F060] && v3 == *(MEMORY[0x1E695F060] + 8);
  if (v5 || (v6 = [(CKInputView *)self lastContentSizeInterfaceOrientation], v6 != CKNonFlatDeviceOrientation()))
  {
    [(CKInputView *)self invalidateIntrinsicContentSize];
    [objc_opt_class() defaultContentSize];
    v10 = v9;
    v12 = v11;
    [(CKInputView *)self setLastContentSize:?];
    [(CKInputView *)self setLastContentSizeInterfaceOrientation:CKNonFlatDeviceOrientation()];
    v7 = v10;
    v8 = v12;
  }

  else
  {

    [(CKInputView *)self lastContentSize];
  }

  result.height = v8;
  result.width = v7;
  return result;
}

+ (CGSize)defaultContentSize
{
  [self defaultContentSizeLargerThanKeyboard:0];
  result.height = v3;
  result.width = v2;
  return result;
}

+ (CGSize)defaultContentSizeLargerThanKeyboard:(BOOL *)keyboard
{
  v4 = CKNonFlatDeviceOrientation();
  [MEMORY[0x1E69DCBB8] sizeForInterfaceOrientation:v4 ignoreInputView:1];
  v6 = v5;
  if (v4 - 1 > 1 || ([MEMORY[0x1E69DC938] currentDevice], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "userInterfaceIdiom"), v7, (v8 & 0xFFFFFFFFFFFFFFFBLL) == 1))
  {
    if (keyboard)
    {
      v9 = 0;
LABEL_11:
      *keyboard = v9;
    }
  }

  else
  {
    keyWindow = [MEMORY[0x1E69DD2E8] keyWindow];
    [keyWindow safeAreaInsets];
    v12 = v11 + 247.0;

    v13 = v12 <= v6;
    if (v12 >= v6)
    {
      v6 = v12;
    }

    if (keyboard)
    {
      v9 = !v13;
      goto LABEL_11;
    }
  }

  v14 = *MEMORY[0x1E69DE788];
  v15 = v6;
  result.height = v15;
  result.width = v14;
  return result;
}

- (CGSize)lastContentSize
{
  width = self->_lastContentSize.width;
  height = self->_lastContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end