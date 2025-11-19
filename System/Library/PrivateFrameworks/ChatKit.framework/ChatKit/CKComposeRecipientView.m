@interface CKComposeRecipientView
- (CKComposeRecipientView)initWithFrame:(CGRect)a3;
- (CKComposeRecipientViewDelegate)layoutDelegate;
- (UIEdgeInsets)layoutMargins;
- (UIEdgeInsets)safeAreaInsets;
- (void)atomTextViewDidBecomeFirstResponder:(id)a3;
- (void)layoutSubviews;
- (void)reset;
- (void)setFrame:(CGRect)a3;
@end

@implementation CKComposeRecipientView

- (CKComposeRecipientView)initWithFrame:(CGRect)a3
{
  v16.receiver = self;
  v16.super_class = CKComposeRecipientView;
  v3 = [(CNComposeRecipientTextView *)&v16 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CNComposeRecipientTextView *)v3 setExpandRecipientsInNamedGroups:0];
    v5 = [(CNComposeRecipientTextView *)v4 textView];
    [v5 setAccessibilityIdentifier:@"To:"];

    v6 = +[CKUIBehavior sharedBehaviors];
    [v6 toFieldInternalMarginInsets];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    [(CKComposeRecipientView *)v4 setOverrideContentMargins:v8, v10, v12, v14];
  }

  return v4;
}

- (void)layoutSubviews
{
  v2.receiver = self;
  v2.super_class = CKComposeRecipientView;
  [(CNComposeRecipientTextView *)&v2 layoutSubviews];
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(CKComposeRecipientView *)self traitCollection];
  [v8 displayScale];
  v10 = round(x * v9) / v9;
  v11 = round(y * v9) / v9;
  v12 = round(width * v9) / v9;
  v13 = round(height * v9) / v9;

  v14.receiver = self;
  v14.super_class = CKComposeRecipientView;
  [(CNComposeRecipientTextView *)&v14 setFrame:v10, v11, v12, v13];
}

- (void)reset
{
  v3 = [MEMORY[0x1E695DEC8] array];
  [(CNComposeRecipientTextView *)self setRecipients:v3];

  v4 = [MEMORY[0x1E695DEC8] array];
  [(CNComposeRecipientTextView *)self setAddresses:v4];

  [(CNComposeRecipientTextView *)self clearText];
}

- (void)atomTextViewDidBecomeFirstResponder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CKComposeRecipientView;
  [(CNComposeRecipientTextView *)&v5 atomTextViewDidBecomeFirstResponder:a3];
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:@"com.apple.ChatKit.CKComposeRecipientView.BecameFirstResponder" object:self];
}

- (UIEdgeInsets)safeAreaInsets
{
  v22.receiver = self;
  v22.super_class = CKComposeRecipientView;
  [(CKComposeRecipientView *)&v22 safeAreaInsets];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v3;
  if (v6 > 0.0 || v3 > 0.0)
  {
    v11 = [(CKComposeRecipientView *)self window];
    v12 = [v11 windowScene];

    if (v12 && ([v12 interfaceOrientation] - 3) <= 1)
    {
      v13 = +[CKUIBehavior sharedBehaviors];
      [v13 landscapeKeyboardInsets];
      v15 = v14;
      v17 = v16;

      if (v7 > 0.0)
      {
        v7 = v15;
      }

      if (v10 > 0.0)
      {
        v10 = v17;
      }
    }
  }

  v18 = v5;
  v19 = v7;
  v20 = v9;
  v21 = v10;
  result.right = v21;
  result.bottom = v20;
  result.left = v19;
  result.top = v18;
  return result;
}

- (UIEdgeInsets)layoutMargins
{
  [(CKComposeRecipientView *)self safeAreaInsets];
  v3 = [(CKComposeRecipientView *)self layoutDelegate];
  [v3 layoutMarginsForComposeRecipientView:self];

  UIEdgeInsetsAdd();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(CKComposeRecipientView *)self traitCollection];
  [v12 displayScale];
  if (v13 == 0.0)
  {
    if (CKMainScreenScale_once_48 != -1)
    {
      [CKComposeRecipientView layoutMargins];
    }

    v14 = *&CKMainScreenScale_sMainScreenScale_48;
    if (*&CKMainScreenScale_sMainScreenScale_48 == 0.0)
    {
      v14 = 1.0;
    }

    v15 = floor(v5 * v14) / v14;
    v16 = *&CKMainScreenScale_sMainScreenScale_48;
    if (*&CKMainScreenScale_sMainScreenScale_48 == 0.0)
    {
      v16 = 1.0;
    }

    v17 = floor(v7 * v16) / v16;
    v18 = *&CKMainScreenScale_sMainScreenScale_48;
    if (*&CKMainScreenScale_sMainScreenScale_48 == 0.0)
    {
      v18 = 1.0;
    }

    v19 = floor(v9 * v18) / v18;
    v13 = *&CKMainScreenScale_sMainScreenScale_48;
    if (*&CKMainScreenScale_sMainScreenScale_48 == 0.0)
    {
      v13 = 1.0;
    }
  }

  else
  {
    v15 = floor(v5 * v13) / v13;
    v17 = floor(v7 * v13) / v13;
    v19 = floor(v9 * v13) / v13;
  }

  v20 = floor(v11 * v13) / v13;

  v21 = v15;
  v22 = v17;
  v23 = v19;
  v24 = v20;
  result.right = v24;
  result.bottom = v23;
  result.left = v22;
  result.top = v21;
  return result;
}

- (CKComposeRecipientViewDelegate)layoutDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->layoutDelegate);

  return WeakRetained;
}

@end