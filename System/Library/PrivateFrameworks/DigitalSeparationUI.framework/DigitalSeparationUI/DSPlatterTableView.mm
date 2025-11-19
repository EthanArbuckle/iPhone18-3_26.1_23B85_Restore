@interface DSPlatterTableView
+ (id)bannerWithPresentingViewController:(id)a3;
+ (id)cellWithPresentingViewController:(id)a3;
- (UIViewController)presentingViewController;
- (id)_descriptionWithAlignment:(int64_t)a3 style:(id)a4 color:(id)a5;
- (id)_lockImage;
- (id)attributedTextWithString:(id)a3 alignment:(int64_t)a4 style:(id)a5 bold:(BOOL)a6;
- (id)contentWithAlignment:(int64_t)a3 axis:(int64_t)a4 imageSeparator:(float)a5 textSeparator:(float)a6 textAlignment:(int64_t)a7;
- (id)platterTextWithAlignment:(int64_t)a3 stackAlignment:(int64_t)a4 customSpacing:(float)a5;
- (id)stackWithAlignment:(int64_t)a3 axis:(int64_t)a4;
- (id)textView:(id)a3 primaryActionForTextItem:(id)a4 defaultAction:(id)a5;
- (void)_pinBackgroundColor:(id)a3 cornerRadius:(BOOL)a4;
- (void)_updateAppearanceForTraitCollectionChange;
@end

@implementation DSPlatterTableView

+ (id)bannerWithPresentingViewController:(id)a3
{
  v3 = a3;
  v4 = [DSPlatterTableView alloc];
  v5 = [MEMORY[0x277D75348] systemGray5Color];
  v6 = [(DSPlatterTableView *)v4 initWithController:v3 color:v5 softCorner:0];

  LODWORD(v7) = 12.0;
  v8 = [(DSPlatterTableView *)v6 contentWithAlignment:0 axis:0 imageSeparator:4 textSeparator:v7 textAlignment:0.0];
  [(DSPlatterTableView *)v6 addSubview:v8];
  v9 = [v8 topAnchor];
  v10 = [(DSPlatterTableView *)v6 topAnchor];
  v11 = [v9 constraintEqualToAnchor:v10 constant:16.0];
  [v11 setActive:1];

  v12 = [v8 bottomAnchor];
  v13 = [(DSPlatterTableView *)v6 bottomAnchor];
  v14 = [v12 constraintEqualToAnchor:v13 constant:-16.0];
  [v14 setActive:1];

  v15 = [v8 leadingAnchor];
  v16 = [(DSPlatterTableView *)v6 leadingAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 constant:16.0];
  [v17 setActive:1];

  v18 = [v8 trailingAnchor];
  v19 = [(DSPlatterTableView *)v6 trailingAnchor];
  v20 = [v18 constraintEqualToAnchor:v19 constant:-16.0];
  [v20 setActive:1];

  return v6;
}

+ (id)cellWithPresentingViewController:(id)a3
{
  v3 = a3;
  v4 = [DSPlatterTableView alloc];
  v5 = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
  v6 = [(DSPlatterTableView *)v4 initWithController:v3 color:v5 softCorner:1];

  LODWORD(v7) = 8.0;
  LODWORD(v8) = 2.0;
  v9 = [(DSPlatterTableView *)v6 contentWithAlignment:3 axis:1 imageSeparator:1 textSeparator:v7 textAlignment:v8];
  [(DSPlatterTableView *)v6 addSubview:v9];
  v10 = [v9 topAnchor];
  v11 = [(DSPlatterTableView *)v6 topAnchor];
  v12 = [v10 constraintEqualToAnchor:v11 constant:16.0];
  [v12 setActive:1];

  v13 = [v9 bottomAnchor];
  v14 = [(DSPlatterTableView *)v6 bottomAnchor];
  v15 = [v13 constraintEqualToAnchor:v14 constant:-16.0];
  [v15 setActive:1];

  v16 = [v9 leadingAnchor];
  v17 = [(DSPlatterTableView *)v6 leadingAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:16.0];
  [v18 setActive:1];

  v19 = [v9 trailingAnchor];
  v20 = [(DSPlatterTableView *)v6 trailingAnchor];
  v21 = [v19 constraintEqualToAnchor:v20 constant:-16.0];
  [v21 setActive:1];

  return v6;
}

- (void)_pinBackgroundColor:(id)a3 cornerRadius:(BOOL)a4
{
  v4 = a4;
  v6 = MEMORY[0x277D75D18];
  v7 = a3;
  v22 = objc_alloc_init(v6);
  [v22 setBackgroundColor:v7];

  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  if (v4)
  {
    if (+[DSFeatureFlags isNaturalUIEnabled])
    {
      v8 = 16.0;
    }

    else
    {
      v8 = 8.0;
    }

    v9 = [v22 layer];
    [v9 setCornerRadius:v8];
  }

  [(DSPlatterTableView *)self addSubview:v22];
  v10 = [v22 topAnchor];
  v11 = [(DSPlatterTableView *)self topAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  [v12 setActive:1];

  v13 = [v22 bottomAnchor];
  v14 = [(DSPlatterTableView *)self bottomAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  [v15 setActive:1];

  v16 = [v22 leadingAnchor];
  v17 = [(DSPlatterTableView *)self leadingAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];
  [v18 setActive:1];

  v19 = [v22 trailingAnchor];
  v20 = [(DSPlatterTableView *)self trailingAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];
  [v21 setActive:1];
}

- (id)contentWithAlignment:(int64_t)a3 axis:(int64_t)a4 imageSeparator:(float)a5 textSeparator:(float)a6 textAlignment:(int64_t)a7
{
  v12 = [(DSPlatterTableView *)self stackWithAlignment:a3 axis:a4];
  v13 = objc_opt_new();
  [(DSPlatterTableView *)self setImageView:v13];

  v14 = [(DSPlatterTableView *)self imageView];
  [v14 setContentMode:4];

  v15 = [(DSPlatterTableView *)self imageView];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

  v16 = [(DSPlatterTableView *)self _lockImage];
  v17 = [(DSPlatterTableView *)self imageView];
  [v17 setImage:v16];

  v18 = [(DSPlatterTableView *)self imageView];
  [v12 addArrangedSubview:v18];

  v19 = [(DSPlatterTableView *)self imageView];
  [v12 setCustomSpacing:v19 afterView:a5];

  v20 = [(DSPlatterTableView *)self imageView];
  v21 = [v20 widthAnchor];
  v22 = [v21 constraintEqualToConstant:34.0];
  [v22 setActive:1];

  *&v23 = a6;
  v24 = [(DSPlatterTableView *)self platterTextWithAlignment:a7 stackAlignment:a3 customSpacing:v23];
  [v12 addArrangedSubview:v24];

  return v12;
}

- (id)_lockImage
{
  v3 = [MEMORY[0x277D755D0] configurationWithPointSize:34.0];
  v4 = MEMORY[0x277D755B8];
  v5 = DSUIBundle();
  v6 = [v4 imageNamed:@"lock.and.ring.2" inBundle:v5 withConfiguration:v3];

  v7 = [(DSPlatterTableView *)self traitCollection];
  v8 = [v7 userInterfaceStyle];

  if (v8 == 2)
  {
    v9 = [MEMORY[0x277D75348] systemWhiteColor];
    v10 = [v6 imageWithTintColor:v9];

    v6 = v10;
  }

  return v6;
}

- (id)platterTextWithAlignment:(int64_t)a3 stackAlignment:(int64_t)a4 customSpacing:(float)a5
{
  if (+[DSFeatureFlags isNaturalUIEnabled])
  {
    v9 = *MEMORY[0x277D769D0];
    v10 = [MEMORY[0x277D75348] secondaryLabelColor];
    v11 = 0.0;
    a3 = 4;
    a4 = 1;
    v12 = v9;
  }

  else
  {
    v12 = *MEMORY[0x277D76968];
    v10 = [MEMORY[0x277D75348] labelColor];
    v11 = a5;
    v9 = *MEMORY[0x277D769D0];
  }

  v13 = [(DSPlatterTableView *)self stackWithAlignment:a4 axis:1];
  v14 = objc_opt_new();
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v14 setAdjustsFontForContentSizeCategory:1];
  [v14 setNumberOfLines:0];
  v15 = DSUIDTOLocStringForKey(@"WARNING_PLATTER_TITLE");
  v16 = [(DSPlatterTableView *)self attributedTextWithString:v15 alignment:a3 style:v9 bold:1];
  [v14 setAttributedText:v16];

  [v13 addArrangedSubview:v14];
  [v13 setCustomSpacing:v14 afterView:v11];
  v17 = [(DSPlatterTableView *)self _descriptionWithAlignment:a3 style:v12 color:v10];
  [v13 addArrangedSubview:v17];

  return v13;
}

- (id)_descriptionWithAlignment:(int64_t)a3 style:(id)a4 color:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = DSUIDTOLocStringForKey(@"WARNING_PLATTER_BODY");
  v11 = [(DSPlatterTableView *)self attributedTextWithString:v10 alignment:a3 style:v9 bold:0];

  v12 = DSUIDTOLocStringForKey(@"WARNING_PLATTER_LEARN_MORE");
  v13 = [v11 string];
  v14 = [v13 rangeOfString:v12];
  v16 = v15;

  if (v14 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = DSLog_8;
    if (os_log_type_enabled(DSLog_8, OS_LOG_TYPE_ERROR))
    {
      [DSPlatterTableView _descriptionWithAlignment:v17 style:? color:?];
    }

    v18 = [v11 length];
    v14 = v18 - [v12 length];
    v16 = [v12 length];
  }

  v19 = *MEMORY[0x277D740E8];
  v20 = DSUIDTOLocStringForKey(@"WARNING_PLATTER_LEARN_MORE_URL");
  [v11 addAttribute:v19 value:v20 range:{v14, v16}];

  [v11 addAttribute:*MEMORY[0x277D740C0] value:v8 range:{0, objc_msgSend(v11, "length")}];
  v21 = objc_alloc_init(MEMORY[0x277D75C40]);
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v21 setAdjustsFontForContentSizeCategory:1];
  v22 = [v21 textContainer];
  [v22 setLineFragmentPadding:0.0];

  [v21 setScrollEnabled:0];
  [v21 setEditable:0];
  [v21 setDelegate:self];
  v23 = [MEMORY[0x277D75348] clearColor];
  [v21 setBackgroundColor:v23];

  [v21 setAttributedText:v11];

  return v21;
}

- (id)attributedTextWithString:(id)a3 alignment:(int64_t)a4 style:(id)a5 bold:(BOOL)a6
{
  v6 = a6;
  v9 = MEMORY[0x277CCAB48];
  v10 = a5;
  v11 = a3;
  v12 = [[v9 alloc] initWithString:v11];
  v13 = objc_opt_new();
  [v13 setAlignment:a4];
  v14 = [v11 length];

  v15 = [MEMORY[0x277D74300] preferredFontForTextStyle:v10];

  if (v6)
  {
    v16 = MEMORY[0x277D74300];
    v17 = [v15 fontDescriptor];
    v18 = [v17 fontDescriptorWithSymbolicTraits:2];
    [v15 pointSize];
    v19 = [v16 fontWithDescriptor:v18 size:?];

    v15 = v19;
  }

  [v12 addAttribute:*MEMORY[0x277D74118] value:v13 range:{0, v14}];
  [v12 addAttribute:*MEMORY[0x277D740A8] value:v15 range:{0, v14}];

  return v12;
}

- (id)stackWithAlignment:(int64_t)a3 axis:(int64_t)a4
{
  v6 = objc_opt_new();
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 setAlignment:a3];
  [v6 setAxis:a4];

  return v6;
}

- (void)_updateAppearanceForTraitCollectionChange
{
  v3 = [(DSPlatterTableView *)self _lockImage];
  v4 = [(DSPlatterTableView *)self imageView];
  [v4 setImage:v3];

  [(DSPlatterTableView *)self layoutSubviews];
}

- (id)textView:(id)a3 primaryActionForTextItem:(id)a4 defaultAction:(id)a5
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__DSPlatterTableView_textView_primaryActionForTextItem_defaultAction___block_invoke;
  v7[3] = &unk_278F75B20;
  v7[4] = self;
  v5 = [MEMORY[0x277D750C8] actionWithHandler:{v7, a4, a5}];

  return v5;
}

void __70__DSPlatterTableView_textView_primaryActionForTextItem_defaultAction___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) presentingViewController];
  v1 = DSUIDTOLocStringForKey(@"WARNING_PLATTER_LEARN_MORE_URL");
  [DSSafetyCheck showlearnMoreForPresentingViewController:v2 withURL:v1];
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end