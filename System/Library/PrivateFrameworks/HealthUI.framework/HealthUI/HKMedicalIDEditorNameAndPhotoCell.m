@interface HKMedicalIDEditorNameAndPhotoCell
- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5;
- (CGRect)_separatorFrame;
- (CGSize)sizeThatFits:(CGSize)a3;
- (HKMedicalIDEditorNameAndPhotoCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_adjustEditPhotoButtonFontSizeIfNecessary;
- (void)_contentSizeCategoryDidChange:(id)a3;
- (void)_largeTextLayoutSubviews;
- (void)_regularLayoutSubviews;
- (void)layoutSubviews;
- (void)setName:(id)a3;
- (void)setPhoto:(id)a3;
@end

@implementation HKMedicalIDEditorNameAndPhotoCell

- (HKMedicalIDEditorNameAndPhotoCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v47.receiver = self;
  v47.super_class = HKMedicalIDEditorNameAndPhotoCell;
  v4 = [(HKMedicalIDEditorMultilineStringCell *)&v47 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E69DC738]);
    editPhotoButton = v4->_editPhotoButton;
    v4->_editPhotoButton = v5;

    v7 = objc_alloc_init(MEMORY[0x1E69DC738]);
    editPhotoLabelButton = v4->_editPhotoLabelButton;
    v4->_editPhotoLabelButton = v7;

    v9 = objc_alloc_init(MEMORY[0x1E69DD250]);
    nameBottomSeparator = v4->_nameBottomSeparator;
    v4->_nameBottomSeparator = v9;

    v11 = [(HKMedicalIDEditorMultilineStringCell *)v4 textView];
    [v11 setAutocorrectionType:1];

    v12 = [(HKMedicalIDEditorMultilineStringCell *)v4 textView];
    [v12 setAutocapitalizationType:1];

    v13 = [(HKMedicalIDEditorMultilineStringCell *)v4 textView];
    [v13 setReturnKeyType:9];

    v14 = [(HKMedicalIDEditorMultilineStringCell *)v4 textView];
    [v14 setDelegate:v4];

    v15 = [MEMORY[0x1E69DC888] labelColor];
    v16 = [(HKMedicalIDEditorMultilineStringCell *)v4 textView];
    [v16 setTextColor:v15];

    v17 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v18 = [v17 localizedStringForKey:@"name" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    [(HKMedicalIDEditorMultilineStringCell *)v4 setPlaceholder:v18];

    [(HKMedicalIDEditorMultilineStringCell *)v4 setTextViewExtraMargins:26.0, 58.0, 0.0, 0.0];
    v19 = [MEMORY[0x1E69DC888] tableSeparatorColor];
    [(UIView *)v4->_nameBottomSeparator setBackgroundColor:v19];

    v20 = [(UIButton *)v4->_editPhotoButton imageView];
    v21 = [v20 layer];
    [v21 setMasksToBounds:1];

    v22 = [(UIButton *)v4->_editPhotoButton imageView];
    [v22 setContentMode:2];

    v23 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v24 = [v23 CGColor];
    v25 = [(UIButton *)v4->_editPhotoButton layer];
    [v25 setBorderColor:v24];

    v26 = [(UIButton *)v4->_editPhotoButton titleLabel];
    [v26 setTextAlignment:1];

    v27 = [(UIButton *)v4->_editPhotoButton titleLabel];
    [v27 setLineBreakMode:0];

    v28 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v29 = [v28 localizedStringForKey:@"edit_photo_accessibility" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    [(UIButton *)v4->_editPhotoButton setAccessibilityLabel:v29];

    v30 = v4->_editPhotoButton;
    v31 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v32 = [v31 localizedStringForKey:@"add_photo" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    [(UIButton *)v30 setTitle:v32 forState:0];

    v33 = v4->_editPhotoButton;
    v34 = HKHealthKeyColor();
    [(UIButton *)v33 setTitleColor:v34 forState:0];

    [(HKMedicalIDEditorNameAndPhotoCell *)v4 _adjustEditPhotoButtonFontSizeIfNecessary];
    [(UIButton *)v4->_editPhotoLabelButton setHidden:1];
    v35 = [(UIButton *)v4->_editPhotoLabelButton titleLabel];
    [v35 setTextAlignment:1];

    v36 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v37 = [v36 localizedStringForKey:@"edit_photo_accessibility" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    [(UIButton *)v4->_editPhotoLabelButton setAccessibilityLabel:v37];

    v38 = v4->_editPhotoLabelButton;
    v39 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v40 = [v39 localizedStringForKey:@"edit_photo" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    [(UIButton *)v38 setTitle:v40 forState:0];

    v41 = v4->_editPhotoLabelButton;
    v42 = HKHealthKeyColor();
    [(UIButton *)v41 setTitleColor:v42 forState:0];

    v43 = [(HKMedicalIDEditorNameAndPhotoCell *)v4 contentView];
    [v43 addSubview:v4->_editPhotoButton];

    v44 = [(HKMedicalIDEditorNameAndPhotoCell *)v4 contentView];
    [v44 addSubview:v4->_editPhotoLabelButton];

    v45 = [(HKMedicalIDEditorNameAndPhotoCell *)v4 contentView];
    [v45 addSubview:v4->_nameBottomSeparator];

    [(HKMedicalIDEditorNameAndPhotoCell *)v4 _contentSizeCategoryDidChange:0];
  }

  return v4;
}

- (void)_contentSizeCategoryDidChange:(id)a3
{
  v6.receiver = self;
  v6.super_class = HKMedicalIDEditorNameAndPhotoCell;
  [(HKMedicalIDEditorMultilineStringCell *)&v6 _contentSizeCategoryDidChange:a3];
  v4 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  v5 = [(UIButton *)self->_editPhotoLabelButton titleLabel];
  [v5 setFont:v4];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = HKMedicalIDEditorNameAndPhotoCell;
  [(HKMedicalIDEditorMultilineStringCell *)&v3 layoutSubviews];
  if (HKUIApplicationIsUsingAccessibilityContentSizeCategory())
  {
    [(HKMedicalIDEditorNameAndPhotoCell *)self _largeTextLayoutSubviews];
  }

  else
  {
    [(HKMedicalIDEditorNameAndPhotoCell *)self _regularLayoutSubviews];
  }
}

- (void)_regularLayoutSubviews
{
  [(HKMedicalIDEditorMultilineStringCell *)self setTextViewExtraMargins:26.0, 58.0, 0.0, 0.0];
  v3 = [(UIView *)self hk_isLeftToRight];
  v4 = [(HKMedicalIDEditorNameAndPhotoCell *)self contentView];
  [v4 bounds];
  v6 = v5;

  if (v3)
  {
    v7 = 16.0;
  }

  else
  {
    v7 = v6 + -60.0 + -16.0;
  }

  v8 = [(HKMedicalIDEditorNameAndPhotoCell *)self photo];

  if (v8)
  {
    v9 = [(UIButton *)self->_editPhotoLabelButton titleLabel];
    [v9 intrinsicContentSize];
    v11 = v10;
    v39 = v12;

    v13 = [(UIButton *)self->_editPhotoLabelButton titleLabel];
    v14 = [v13 font];

    [v14 _scaledValueForValue:16.5];
    [v14 ascender];
    v15 = 0x404E000000000000;
    if (v3)
    {
      v16 = 16.0;
      v17 = 26.0;
    }

    else
    {
      v17 = 26.0;
      v16 = v6 + -60.0 + -16.0;
    }

    v18 = 0x404E000000000000;
    CGRectGetMidX(*(&v15 - 2));
    UIRoundToViewScale();
    v19 = v21;
    v41.size.width = 60.0;
    v41.origin.y = 26.0;
    v41.origin.x = v7;
    v41.size.height = 60.0;
    CGRectGetMaxY(v41);
    UIRoundToViewScale();
    v20 = v22;
  }

  else
  {
    v19 = *MEMORY[0x1E695F058];
    v20 = *(MEMORY[0x1E695F058] + 8);
    v11 = *(MEMORY[0x1E695F058] + 16);
    v39 = *(MEMORY[0x1E695F058] + 24);
  }

  UIRoundToViewScale();
  v24 = v23;
  v25 = [(HKMedicalIDEditorMultilineStringCell *)self textView];
  [v25 frame];
  v27 = v26;

  v28 = [(HKMedicalIDEditorNameAndPhotoCell *)self photo];

  if (v28)
  {
    v29 = [(UIButton *)self->_editPhotoButton layer];
    [v29 setBorderWidth:0.0];

    v30 = [(UIButton *)self->_editPhotoButton layer];
    [v30 setCornerRadius:0.0];

    v31 = [(UIButton *)self->_editPhotoButton imageView];
    v32 = [v31 layer];
    [v32 setCornerRadius:30.0];
  }

  else
  {
    UIRoundToViewScale();
    v34 = v33;
    v35 = [(UIButton *)self->_editPhotoButton layer];
    [v35 setBorderWidth:v34];

    v31 = [(UIButton *)self->_editPhotoButton layer];
    [v31 setCornerRadius:30.0];
  }

  if (v3)
  {
    v36 = v7 + 76.0;
  }

  else
  {
    v36 = v7 + -16.0 - (v7 + -16.0);
  }

  if (v3)
  {
    v37 = v6 - (v7 + 76.0);
  }

  else
  {
    v37 = v7 + -16.0;
  }

  [(UIButton *)self->_editPhotoButton setFrame:v7];
  [(UIButton *)self->_editPhotoLabelButton setFrame:v19, v20, v11, v39];
  nameBottomSeparator = self->_nameBottomSeparator;

  [(UIView *)nameBottomSeparator setFrame:v36, v27 - v24 + -4.0 + 26.0, v37, v24];
}

- (void)_largeTextLayoutSubviews
{
  [(HKMedicalIDEditorNameAndPhotoCell *)self _adjustEditPhotoButtonFontSizeIfNecessary];
  v3 = 0.0;
  [(HKMedicalIDEditorMultilineStringCell *)self setTextViewExtraMargins:26.0, 0.0, 0.0, 0.0];
  v4 = [(UIView *)self hk_isLeftToRight];
  v5 = [(HKMedicalIDEditorNameAndPhotoCell *)self contentView];
  [v5 bounds];
  v7 = v6;

  v65 = v7;
  v8 = (v7 + -120.0) * 0.5;
  v9 = [(HKMedicalIDEditorNameAndPhotoCell *)self photo];

  if (v9)
  {
    v10 = [(UIButton *)self->_editPhotoLabelButton titleLabel];
    [v10 intrinsicContentSize];
    v12 = v11;
    v14 = v13;

    v15 = [(UIButton *)self->_editPhotoLabelButton titleLabel];
    v16 = [v15 font];

    [v16 _scaledValueForValue:16.5];
    [v16 ascender];
    v70.origin.y = 26.0;
    v70.origin.x = (v7 + -120.0) * 0.5;
    v70.size.width = 120.0;
    v70.size.height = 120.0;
    v17 = v14;
    CGRectGetMidX(v70);
    UIRoundToViewScale();
    v19 = v18;
    v71.origin.y = 26.0;
    v71.origin.x = (v7 + -120.0) * 0.5;
    v71.size.width = 120.0;
    v71.size.height = 120.0;
    CGRectGetMaxY(v71);
    UIRoundToViewScale();
    v21 = v20;
  }

  else
  {
    v19 = *MEMORY[0x1E695F058];
    v21 = *(MEMORY[0x1E695F058] + 8);
    v12 = *(MEMORY[0x1E695F058] + 16);
    v17 = *(MEMORY[0x1E695F058] + 24);
  }

  v22 = [(HKMedicalIDEditorMultilineStringCell *)self textView];
  [v22 frame];
  v66 = v23;
  v67 = v24;
  v26 = v25;

  v27 = [(HKMedicalIDEditorNameAndPhotoCell *)self photo];
  v28 = v27;
  v63 = v21;
  v64 = v19;
  if (v27)
  {
    v29 = v19;
  }

  else
  {
    v29 = v8;
  }

  if (v27)
  {
    v30 = v21;
  }

  else
  {
    v30 = 26.0;
  }

  v31 = 120.0;
  if (v27)
  {
    v32 = v12;
  }

  else
  {
    v32 = 120.0;
  }

  if (v27)
  {
    v31 = v17;
  }

  v33 = CGRectGetMaxY(*&v29) + 5.0;

  v34 = [(HKMedicalIDEditorMultilineStringCell *)self placeholderLabel];
  [v34 frame];
  v59 = v35;
  v60 = v36;
  v61 = v37;

  if (v4)
  {
    [(HKMedicalIDEditorNameAndPhotoCell *)self separatorInset];
    v3 = v38;
  }

  [(HKMedicalIDEditorNameAndPhotoCell *)self separatorInset];
  v58 = v39;
  v72.origin.x = v66;
  *&v72.size.height = v67;
  v72.origin.y = v33;
  v62 = v26;
  v72.size.width = v26;
  MaxY = CGRectGetMaxY(v72);
  v41 = [(HKMedicalIDEditorMultilineStringCell *)self textView];
  v42 = [v41 font];
  [v42 lineHeight];
  v44 = v43;

  v45 = [(HKMedicalIDEditorNameAndPhotoCell *)self photo];

  if (v45)
  {
    v46 = [(UIButton *)self->_editPhotoButton layer];
    [v46 setBorderWidth:0.0];

    v47 = [(UIButton *)self->_editPhotoButton layer];
    [v47 setCornerRadius:0.0];

    v48 = [(UIButton *)self->_editPhotoButton imageView];
    v49 = [v48 layer];
    [v49 setCornerRadius:60.0];
  }

  else
  {
    UIRoundToViewScale();
    v50 = v8;
    v51 = v17;
    v52 = v3;
    v54 = v53;
    v55 = [(UIButton *)self->_editPhotoButton layer];
    v56 = v54;
    v3 = v52;
    v17 = v51;
    v8 = v50;
    [v55 setBorderWidth:v56];

    v48 = [(UIButton *)self->_editPhotoButton layer];
    [v48 setCornerRadius:60.0];
  }

  [(UIButton *)self->_editPhotoButton setFrame:v8, 26.0, 120.0, 120.0];
  [(UIButton *)self->_editPhotoLabelButton setFrame:v64, v63, v12, v17];
  [(UIView *)self->_nameBottomSeparator setFrame:v3, MaxY + -1.0 + v44 * -0.5 + 26.0, v65 - v58, 1.0];
  v57 = [(HKMedicalIDEditorMultilineStringCell *)self textView];
  [v57 setFrame:{v66, v33, v62, *&v67}];

  v68 = [(HKMedicalIDEditorMultilineStringCell *)self placeholderLabel];
  [v68 setFrame:{v59, v33, v61, v60}];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v11.receiver = self;
  v11.super_class = HKMedicalIDEditorNameAndPhotoCell;
  [(HKMedicalIDEditorMultilineStringCell *)&v11 sizeThatFits:a3.width, a3.height];
  v5 = v4;
  v7 = v6;
  [(UIButton *)self->_editPhotoLabelButton frame];
  v8 = CGRectGetMaxY(v13) + 4.0;
  if (v7 >= v8)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = v5;
  result.height = v9;
  result.width = v10;
  return result;
}

- (void)setName:(id)a3
{
  v4 = [a3 copy];
  [(HKMedicalIDEditorMultilineStringCell *)self setStringValue:v4];
}

- (void)setPhoto:(id)a3
{
  v11 = a3;
  v4 = [(HKMedicalIDEditorNameAndPhotoCell *)self photo];

  v6 = v11;
  if (v4 != v11)
  {
    [(UIButton *)self->_editPhotoButton setImage:v11 forState:0];
    editPhotoButton = self->_editPhotoButton;
    if (v11)
    {
      [(UIButton *)self->_editPhotoButton setTitle:0 forState:0];
      [(UIButton *)self->_editPhotoButton setContentVerticalAlignment:3];
      [(UIButton *)self->_editPhotoButton setContentHorizontalAlignment:3];
    }

    else
    {
      v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v9 = [v8 localizedStringForKey:@"add_photo" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      [(UIButton *)editPhotoButton setTitle:v9 forState:0];

      [(UIButton *)self->_editPhotoButton setContentVerticalAlignment:0];
      [(UIButton *)self->_editPhotoButton setContentHorizontalAlignment:0];
      v10 = [(UIButton *)self->_editPhotoButton titleLabel];
      [v10 setTextAlignment:1];
    }

    [(UIButton *)self->_editPhotoLabelButton setHidden:v11 == 0];
    v5 = [(HKMedicalIDEditorNameAndPhotoCell *)self setNeedsLayout];
    v6 = v11;
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (void)_adjustEditPhotoButtonFontSizeIfNecessary
{
  v26[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v4 = [v3 localizedStringForKey:@"add_photo" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  IsUsingAccessibilityContentSizeCategory = HKUIApplicationIsUsingAccessibilityContentSizeCategory();
  v6 = 1.0;
  if (IsUsingAccessibilityContentSizeCategory)
  {
    v6 = 2.0;
  }

  v7 = v6 * 14.0;
  if (v6 * 14.0 >= 10.0)
  {
    v8 = v6 * 60.0;
    v9 = *MEMORY[0x1E69DB648];
    v24 = v6 * 60.0 * 0.5 * (v6 * 60.0 * 0.5);
    do
    {
      v10 = [MEMORY[0x1E69DB878] systemFontOfSize:{v7, *&v24, v9}];
      v26[0] = v10;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
      [v4 boundingRectWithSize:1 options:v11 attributes:0 context:{v8, v8}];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;

      v27.origin.x = v13;
      v27.origin.y = v15;
      v27.size.width = v17;
      v27.size.height = v19;
      v20 = CGRectGetWidth(v27) * 0.5;
      v28.origin.x = v13;
      v28.origin.y = v15;
      v28.size.width = v17;
      v28.size.height = v19;
      Height = CGRectGetHeight(v28);
      if (v20 * v20 + Height * 0.5 * (Height * 0.5) <= v24)
      {
        break;
      }

      v7 = v7 + -0.5;
    }

    while (v7 >= 10.0);
  }

  v22 = [MEMORY[0x1E69DB878] systemFontOfSize:v7];
  v23 = [(UIButton *)self->_editPhotoButton titleLabel];
  [v23 setFont:v22];
}

- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a3;
  v10 = a5;
  if ([v10 length])
  {
    if ([v10 length] != 1)
    {
      v21 = 0;
      v12 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"\n+" options:1 error:&v21];
      v13 = [v12 stringByReplacingMatchesInString:v10 options:0 range:0 withTemplate:{objc_msgSend(v10, "length"), @" "}];
      v14 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
      v15 = [v13 stringByTrimmingCharactersInSet:v14];

      v16 = [v9 beginningOfDocument];
      v17 = [v9 positionFromPosition:v16 offset:location];
      v18 = [v9 positionFromPosition:v17 offset:length];
      v19 = [v9 textRangeFromPosition:v17 toPosition:v18];
      [v9 replaceRange:v19 withText:v15];
      [(HKMedicalIDEditorMultilineStringCell *)self textViewDidChangeSelection:v9];

      goto LABEL_7;
    }

    if ([v10 isEqualToString:@"\n"])
    {
      [v9 resignFirstResponder];
LABEL_7:
      v11 = 0;
      goto LABEL_8;
    }
  }

  v11 = 1;
LABEL_8:

  return v11;
}

- (CGRect)_separatorFrame
{
  v2 = *MEMORY[0x1E695F058];
  v3 = *(MEMORY[0x1E695F058] + 8);
  v4 = *(MEMORY[0x1E695F058] + 16);
  v5 = *(MEMORY[0x1E695F058] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end