@interface DSPlatterTableView
+ (id)bannerWithPresentingViewController:(id)controller;
+ (id)cellWithPresentingViewController:(id)controller;
- (UIViewController)presentingViewController;
- (id)_descriptionWithAlignment:(int64_t)alignment style:(id)style color:(id)color;
- (id)_lockImage;
- (id)attributedTextWithString:(id)string alignment:(int64_t)alignment style:(id)style bold:(BOOL)bold;
- (id)contentWithAlignment:(int64_t)alignment axis:(int64_t)axis imageSeparator:(float)separator textSeparator:(float)textSeparator textAlignment:(int64_t)textAlignment;
- (id)platterTextWithAlignment:(int64_t)alignment stackAlignment:(int64_t)stackAlignment customSpacing:(float)spacing;
- (id)stackWithAlignment:(int64_t)alignment axis:(int64_t)axis;
- (id)textView:(id)view primaryActionForTextItem:(id)item defaultAction:(id)action;
- (void)_pinBackgroundColor:(id)color cornerRadius:(BOOL)radius;
- (void)_updateAppearanceForTraitCollectionChange;
@end

@implementation DSPlatterTableView

+ (id)bannerWithPresentingViewController:(id)controller
{
  controllerCopy = controller;
  v4 = [DSPlatterTableView alloc];
  systemGray5Color = [MEMORY[0x277D75348] systemGray5Color];
  v6 = [(DSPlatterTableView *)v4 initWithController:controllerCopy color:systemGray5Color softCorner:0];

  LODWORD(v7) = 12.0;
  v8 = [(DSPlatterTableView *)v6 contentWithAlignment:0 axis:0 imageSeparator:4 textSeparator:v7 textAlignment:0.0];
  [(DSPlatterTableView *)v6 addSubview:v8];
  topAnchor = [v8 topAnchor];
  topAnchor2 = [(DSPlatterTableView *)v6 topAnchor];
  v11 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:16.0];
  [v11 setActive:1];

  bottomAnchor = [v8 bottomAnchor];
  bottomAnchor2 = [(DSPlatterTableView *)v6 bottomAnchor];
  v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-16.0];
  [v14 setActive:1];

  leadingAnchor = [v8 leadingAnchor];
  leadingAnchor2 = [(DSPlatterTableView *)v6 leadingAnchor];
  v17 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  [v17 setActive:1];

  trailingAnchor = [v8 trailingAnchor];
  trailingAnchor2 = [(DSPlatterTableView *)v6 trailingAnchor];
  v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
  [v20 setActive:1];

  return v6;
}

+ (id)cellWithPresentingViewController:(id)controller
{
  controllerCopy = controller;
  v4 = [DSPlatterTableView alloc];
  secondarySystemBackgroundColor = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
  v6 = [(DSPlatterTableView *)v4 initWithController:controllerCopy color:secondarySystemBackgroundColor softCorner:1];

  LODWORD(v7) = 8.0;
  LODWORD(v8) = 2.0;
  v9 = [(DSPlatterTableView *)v6 contentWithAlignment:3 axis:1 imageSeparator:1 textSeparator:v7 textAlignment:v8];
  [(DSPlatterTableView *)v6 addSubview:v9];
  topAnchor = [v9 topAnchor];
  topAnchor2 = [(DSPlatterTableView *)v6 topAnchor];
  v12 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:16.0];
  [v12 setActive:1];

  bottomAnchor = [v9 bottomAnchor];
  bottomAnchor2 = [(DSPlatterTableView *)v6 bottomAnchor];
  v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-16.0];
  [v15 setActive:1];

  leadingAnchor = [v9 leadingAnchor];
  leadingAnchor2 = [(DSPlatterTableView *)v6 leadingAnchor];
  v18 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  [v18 setActive:1];

  trailingAnchor = [v9 trailingAnchor];
  trailingAnchor2 = [(DSPlatterTableView *)v6 trailingAnchor];
  v21 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
  [v21 setActive:1];

  return v6;
}

- (void)_pinBackgroundColor:(id)color cornerRadius:(BOOL)radius
{
  radiusCopy = radius;
  v6 = MEMORY[0x277D75D18];
  colorCopy = color;
  v22 = objc_alloc_init(v6);
  [v22 setBackgroundColor:colorCopy];

  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  if (radiusCopy)
  {
    if (+[DSFeatureFlags isNaturalUIEnabled])
    {
      v8 = 16.0;
    }

    else
    {
      v8 = 8.0;
    }

    layer = [v22 layer];
    [layer setCornerRadius:v8];
  }

  [(DSPlatterTableView *)self addSubview:v22];
  topAnchor = [v22 topAnchor];
  topAnchor2 = [(DSPlatterTableView *)self topAnchor];
  v12 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v12 setActive:1];

  bottomAnchor = [v22 bottomAnchor];
  bottomAnchor2 = [(DSPlatterTableView *)self bottomAnchor];
  v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v15 setActive:1];

  leadingAnchor = [v22 leadingAnchor];
  leadingAnchor2 = [(DSPlatterTableView *)self leadingAnchor];
  v18 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v18 setActive:1];

  trailingAnchor = [v22 trailingAnchor];
  trailingAnchor2 = [(DSPlatterTableView *)self trailingAnchor];
  v21 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v21 setActive:1];
}

- (id)contentWithAlignment:(int64_t)alignment axis:(int64_t)axis imageSeparator:(float)separator textSeparator:(float)textSeparator textAlignment:(int64_t)textAlignment
{
  v12 = [(DSPlatterTableView *)self stackWithAlignment:alignment axis:axis];
  v13 = objc_opt_new();
  [(DSPlatterTableView *)self setImageView:v13];

  imageView = [(DSPlatterTableView *)self imageView];
  [imageView setContentMode:4];

  imageView2 = [(DSPlatterTableView *)self imageView];
  [imageView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  _lockImage = [(DSPlatterTableView *)self _lockImage];
  imageView3 = [(DSPlatterTableView *)self imageView];
  [imageView3 setImage:_lockImage];

  imageView4 = [(DSPlatterTableView *)self imageView];
  [v12 addArrangedSubview:imageView4];

  imageView5 = [(DSPlatterTableView *)self imageView];
  [v12 setCustomSpacing:imageView5 afterView:separator];

  imageView6 = [(DSPlatterTableView *)self imageView];
  widthAnchor = [imageView6 widthAnchor];
  v22 = [widthAnchor constraintEqualToConstant:34.0];
  [v22 setActive:1];

  *&v23 = textSeparator;
  v24 = [(DSPlatterTableView *)self platterTextWithAlignment:textAlignment stackAlignment:alignment customSpacing:v23];
  [v12 addArrangedSubview:v24];

  return v12;
}

- (id)_lockImage
{
  v3 = [MEMORY[0x277D755D0] configurationWithPointSize:34.0];
  v4 = MEMORY[0x277D755B8];
  v5 = DSUIBundle();
  v6 = [v4 imageNamed:@"lock.and.ring.2" inBundle:v5 withConfiguration:v3];

  traitCollection = [(DSPlatterTableView *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle == 2)
  {
    systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
    v10 = [v6 imageWithTintColor:systemWhiteColor];

    v6 = v10;
  }

  return v6;
}

- (id)platterTextWithAlignment:(int64_t)alignment stackAlignment:(int64_t)stackAlignment customSpacing:(float)spacing
{
  if (+[DSFeatureFlags isNaturalUIEnabled])
  {
    v9 = *MEMORY[0x277D769D0];
    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    spacingCopy = 0.0;
    alignment = 4;
    stackAlignment = 1;
    v12 = v9;
  }

  else
  {
    v12 = *MEMORY[0x277D76968];
    secondaryLabelColor = [MEMORY[0x277D75348] labelColor];
    spacingCopy = spacing;
    v9 = *MEMORY[0x277D769D0];
  }

  v13 = [(DSPlatterTableView *)self stackWithAlignment:stackAlignment axis:1];
  v14 = objc_opt_new();
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v14 setAdjustsFontForContentSizeCategory:1];
  [v14 setNumberOfLines:0];
  v15 = DSUIDTOLocStringForKey(@"WARNING_PLATTER_TITLE");
  v16 = [(DSPlatterTableView *)self attributedTextWithString:v15 alignment:alignment style:v9 bold:1];
  [v14 setAttributedText:v16];

  [v13 addArrangedSubview:v14];
  [v13 setCustomSpacing:v14 afterView:spacingCopy];
  v17 = [(DSPlatterTableView *)self _descriptionWithAlignment:alignment style:v12 color:secondaryLabelColor];
  [v13 addArrangedSubview:v17];

  return v13;
}

- (id)_descriptionWithAlignment:(int64_t)alignment style:(id)style color:(id)color
{
  colorCopy = color;
  styleCopy = style;
  v10 = DSUIDTOLocStringForKey(@"WARNING_PLATTER_BODY");
  v11 = [(DSPlatterTableView *)self attributedTextWithString:v10 alignment:alignment style:styleCopy bold:0];

  v12 = DSUIDTOLocStringForKey(@"WARNING_PLATTER_LEARN_MORE");
  string = [v11 string];
  v14 = [string rangeOfString:v12];
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

  [v11 addAttribute:*MEMORY[0x277D740C0] value:colorCopy range:{0, objc_msgSend(v11, "length")}];
  v21 = objc_alloc_init(MEMORY[0x277D75C40]);
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v21 setAdjustsFontForContentSizeCategory:1];
  textContainer = [v21 textContainer];
  [textContainer setLineFragmentPadding:0.0];

  [v21 setScrollEnabled:0];
  [v21 setEditable:0];
  [v21 setDelegate:self];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [v21 setBackgroundColor:clearColor];

  [v21 setAttributedText:v11];

  return v21;
}

- (id)attributedTextWithString:(id)string alignment:(int64_t)alignment style:(id)style bold:(BOOL)bold
{
  boldCopy = bold;
  v9 = MEMORY[0x277CCAB48];
  styleCopy = style;
  stringCopy = string;
  v12 = [[v9 alloc] initWithString:stringCopy];
  v13 = objc_opt_new();
  [v13 setAlignment:alignment];
  v14 = [stringCopy length];

  v15 = [MEMORY[0x277D74300] preferredFontForTextStyle:styleCopy];

  if (boldCopy)
  {
    v16 = MEMORY[0x277D74300];
    fontDescriptor = [v15 fontDescriptor];
    v18 = [fontDescriptor fontDescriptorWithSymbolicTraits:2];
    [v15 pointSize];
    v19 = [v16 fontWithDescriptor:v18 size:?];

    v15 = v19;
  }

  [v12 addAttribute:*MEMORY[0x277D74118] value:v13 range:{0, v14}];
  [v12 addAttribute:*MEMORY[0x277D740A8] value:v15 range:{0, v14}];

  return v12;
}

- (id)stackWithAlignment:(int64_t)alignment axis:(int64_t)axis
{
  v6 = objc_opt_new();
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 setAlignment:alignment];
  [v6 setAxis:axis];

  return v6;
}

- (void)_updateAppearanceForTraitCollectionChange
{
  _lockImage = [(DSPlatterTableView *)self _lockImage];
  imageView = [(DSPlatterTableView *)self imageView];
  [imageView setImage:_lockImage];

  [(DSPlatterTableView *)self layoutSubviews];
}

- (id)textView:(id)view primaryActionForTextItem:(id)item defaultAction:(id)action
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__DSPlatterTableView_textView_primaryActionForTextItem_defaultAction___block_invoke;
  v7[3] = &unk_278F75B20;
  v7[4] = self;
  v5 = [MEMORY[0x277D750C8] actionWithHandler:{v7, item, action}];

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