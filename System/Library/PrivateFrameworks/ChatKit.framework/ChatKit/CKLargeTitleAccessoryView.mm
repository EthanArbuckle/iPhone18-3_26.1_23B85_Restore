@interface CKLargeTitleAccessoryView
+ (id)newComposeButton;
+ (id)newOptionsButton;
- (CGSize)_intrinsicSizeWithinSize:(CGSize)size;
- (void)layoutSubviews;
- (void)setAccessoryButtons:(id)buttons;
@end

@implementation CKLargeTitleAccessoryView

- (void)layoutSubviews
{
  v30 = *MEMORY[0x1E69E9840];
  v28.receiver = self;
  v28.super_class = CKLargeTitleAccessoryView;
  [(CKLargeTitleAccessoryView *)&v28 layoutSubviews];
  [(CKLargeTitleAccessoryView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = self->_accessoryButtons;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v25;
    v15 = v4;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v24 + 1) + 8 * i);
        [v17 bounds];
        v19 = v18;
        v21 = v20;
        v31.origin.x = v4;
        v31.origin.y = v6;
        v31.size.width = v8;
        v31.size.height = v10;
        [v17 setFrame:{v15, CGRectGetMidY(v31) + v21 * -0.5, v19, v21}];
        v22 = +[CKUIBehavior sharedBehaviors];
        [v22 conversationListComposeButtonSpacing];
        v15 = v15 + v19 + v23;
      }

      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v13);
  }
}

- (CGSize)_intrinsicSizeWithinSize:(CGSize)size
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = self->_accessoryButtons;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  v6 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  if (v5)
  {
    v9 = v5;
    v10 = *v20;
    do
    {
      v11 = 0;
      do
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v19 + 1) + 8 * v11) bounds];
        v8 = fmax(v12, v8);
        v7 = v7 + v13;
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  if ([(NSArray *)self->_accessoryButtons count])
  {
    v14 = [(NSArray *)self->_accessoryButtons count]- 1;
    v15 = +[CKUIBehavior sharedBehaviors];
    [v15 conversationListComposeButtonSpacing];
    v6 = v16 * v14;
  }

  v17 = v7 + v6;
  v18 = v8;
  result.height = v18;
  result.width = v17;
  return result;
}

- (void)setAccessoryButtons:(id)buttons
{
  v27 = *MEMORY[0x1E69E9840];
  buttonsCopy = buttons;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = self->_accessoryButtons;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      v9 = 0;
      do
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v21 + 1) + 8 * v9++) removeFromSuperview];
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v7);
  }

  v10 = [buttonsCopy copy];
  accessoryButtons = self->_accessoryButtons;
  self->_accessoryButtons = v10;

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = buttonsCopy;
  v13 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(CKLargeTitleAccessoryView *)self addSubview:*(*(&v17 + 1) + 8 * v16++), v17];
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v14);
  }
}

+ (id)newComposeButton
{
  v2 = [MEMORY[0x1E69DC738] buttonWithType:0];
  imageView = [v2 imageView];
  [imageView setContentMode:4];

  v4 = +[CKUIBehavior sharedBehaviors];
  newComposeImage = [v4 newComposeImage];
  [v2 setImage:newComposeImage forState:0];

  v6 = +[CKUIBehavior sharedBehaviors];
  theme = [v6 theme];
  appTintColor = [theme appTintColor];
  [v2 setBackgroundColor:appTintColor];

  systemWhiteColor = [MEMORY[0x1E69DC888] systemWhiteColor];
  [v2 setTintColor:systemWhiteColor];

  [v2 setAccessibilityIdentifier:@"composeButton"];
  [v2 setTitle:0 forState:0];
  [v2 setBounds:{0.0, 0.0, 30.0, 30.0}];
  if (CKMainScreenScale_once_0 != -1)
  {
    +[CKLargeTitleAccessoryView newComposeButton];
  }

  v10 = *&CKMainScreenScale_sMainScreenScale_0;
  if (*&CKMainScreenScale_sMainScreenScale_0 == 0.0)
  {
    v10 = 1.0;
  }

  v11 = round(v10 * 15.0) / v10;
  layer = [v2 layer];
  [layer setCornerRadius:v11];

  [v2 setShowsLargeContentViewer:1];
  v13 = CKFrameworkBundle();
  v14 = [v13 localizedStringForKey:@"COMPOSE" value:&stru_1F04268F8 table:@"ChatKit"];
  [v2 setLargeContentTitle:v14];

  v15 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"square.and.pencil"];
  [v2 setLargeContentImage:v15];

  [v2 setScalesLargeContentImage:1];
  return v2;
}

+ (id)newOptionsButton
{
  v2 = [MEMORY[0x1E69DC738] buttonWithType:0];
  imageView = [v2 imageView];
  [imageView setContentMode:4];

  v4 = +[CKUIBehavior sharedBehaviors];
  optionsImage = [v4 optionsImage];
  [v2 setImage:optionsImage forState:0];

  secondarySystemFillColor = [MEMORY[0x1E69DC888] secondarySystemFillColor];
  [v2 setBackgroundColor:secondarySystemFillColor];

  v7 = +[CKUIBehavior sharedBehaviors];
  theme = [v7 theme];
  appTintColor = [theme appTintColor];
  [v2 setTintColor:appTintColor];

  [v2 setAccessibilityIdentifier:@"optionsButton"];
  [v2 setTitle:0 forState:0];
  [v2 setBounds:{0.0, 0.0, 30.0, 30.0}];
  if (CKMainScreenScale_once_0 != -1)
  {
    +[CKLargeTitleAccessoryView newComposeButton];
  }

  v10 = *&CKMainScreenScale_sMainScreenScale_0;
  if (*&CKMainScreenScale_sMainScreenScale_0 == 0.0)
  {
    v10 = 1.0;
  }

  v11 = round(v10 * 15.0) / v10;
  layer = [v2 layer];
  [layer setCornerRadius:v11];

  [v2 setShowsLargeContentViewer:1];
  v13 = CKFrameworkBundle();
  v14 = [v13 localizedStringForKey:@"MORE" value:&stru_1F04268F8 table:@"ChatKit"];
  [v2 setLargeContentTitle:v14];

  return v2;
}

@end