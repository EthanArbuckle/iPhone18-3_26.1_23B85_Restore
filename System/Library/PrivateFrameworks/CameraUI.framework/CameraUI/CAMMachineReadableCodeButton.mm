@interface CAMMachineReadableCodeButton
- (CAMMachineReadableCodeButton)initWithFrame:(CGRect)frame;
- (CAMMachineReadableCodeButtonDelegate)delegate;
- (void)layoutSubviews;
- (void)sendAction:(SEL)action to:(id)to forEvent:(id)event;
- (void)setAttributedTitleWithTitle:(id)title image:(id)image;
- (void)setDismissable:(BOOL)dismissable;
- (void)updateConfiguration;
@end

@implementation CAMMachineReadableCodeButton

- (CAMMachineReadableCodeButton)initWithFrame:(CGRect)frame
{
  v18[1] = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = CAMMachineReadableCodeButton;
  v3 = [(CAMMachineReadableCodeButton *)&v17 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    filledButtonConfiguration = [MEMORY[0x1E69DC740] filledButtonConfiguration];
    [filledButtonConfiguration setCornerStyle:4];
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    [filledButtonConfiguration setBaseForegroundColor:blackColor];

    systemYellowColor = [MEMORY[0x1E69DC888] systemYellowColor];
    [filledButtonConfiguration setBaseBackgroundColor:systemYellowColor];

    [filledButtonConfiguration setImagePlacement:8];
    [filledButtonConfiguration setTitleLineBreakMode:4];
    objc_initWeak(&location, v3);
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __46__CAMMachineReadableCodeButton_initWithFrame___block_invoke;
    v14 = &unk_1E76F87F8;
    objc_copyWeak(&v15, &location);
    [filledButtonConfiguration setImageColorTransformer:&v11];
    [(CAMMachineReadableCodeButton *)v3 setConfiguration:filledButtonConfiguration, v11, v12, v13, v14];
    titleLabel = [(CAMMachineReadableCodeButton *)v3 titleLabel];
    [titleLabel setTextAlignment:1];

    v18[0] = objc_opt_class();
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    v9 = [(CAMMachineReadableCodeButton *)v3 registerForTraitChanges:v8 withTarget:v3 action:sel_setNeedsUpdateConfiguration];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v3;
}

id __46__CAMMachineReadableCodeButton_initWithFrame___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained isDismissable])
  {
    v5 = v3;
  }

  else
  {
    v5 = [v3 colorWithAlphaComponent:0.3];
  }

  v6 = v5;

  return v6;
}

- (void)layoutSubviews
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__CAMMachineReadableCodeButton_layoutSubviews__block_invoke;
  v4[3] = &unk_1E76F77B0;
  v4[4] = self;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v4];
  v3.receiver = self;
  v3.super_class = CAMMachineReadableCodeButton;
  [(CAMMachineReadableCodeButton *)&v3 layoutSubviews];
}

void __46__CAMMachineReadableCodeButton_layoutSubviews__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) imageView];
  [v1 intrinsicContentSize];
  CEKRectWithSize();
  [v1 frameForAlignmentRect:?];
  CEKRectWithSize();
  [v1 setBounds:?];
}

- (void)updateConfiguration
{
  configuration = [(CAMMachineReadableCodeButton *)self configuration];
  v17 = [configuration updatedConfigurationForButton:self];

  effectiveUserInterfaceLayoutDirection = [(CAMMachineReadableCodeButton *)self effectiveUserInterfaceLayoutDirection];
  isDismissable = [(CAMMachineReadableCodeButton *)self isDismissable];
  v6 = @"chevron.right";
  if (effectiveUserInterfaceLayoutDirection == 1)
  {
    v6 = @"chevron.left";
  }

  if (isDismissable)
  {
    v6 = @"xmark";
  }

  v7 = v6;
  traitCollection = [(CAMMachineReadableCodeButton *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  v10 = [CAMFont cameraFontForContentSize:preferredContentSizeCategory];

  v11 = [MEMORY[0x1E69DCAD8] configurationWithFont:v10 scale:1];
  v12 = [MEMORY[0x1E69DCAB8] systemImageNamed:v7 withConfiguration:v11];

  [v17 setImage:v12];
  currentAttributedTitle = [(CAMMachineReadableCodeButton *)self currentAttributedTitle];
  v14 = [currentAttributedTitle mutableCopy];

  [v14 addAttribute:*MEMORY[0x1E69DB648] value:v10 range:{0, objc_msgSend(v14, "length")}];
  [v17 setAttributedTitle:v14];
  isDismissable2 = [(CAMMachineReadableCodeButton *)self isDismissable];
  v16 = 4.0;
  if (isDismissable2)
  {
    v16 = 10.0;
  }

  [v17 setImagePadding:v16];
  [(CAMMachineReadableCodeButton *)self setConfiguration:v17];
}

- (void)setAttributedTitleWithTitle:(id)title image:(id)image
{
  titleCopy = title;
  imageCopy = image;
  if (self->_title != titleCopy)
  {
    v7 = [(NSString *)titleCopy isEqual:?];
    p_titleImage = &self->_titleImage;
    titleImage = self->_titleImage;
    if (v7)
    {
      if (titleImage == imageCopy)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v10 = [(NSString *)titleCopy copy];
      title = self->_title;
      self->_title = v10;

      if (titleImage == imageCopy)
      {
        goto LABEL_9;
      }
    }

LABEL_8:
    objc_storeStrong(p_titleImage, image);
LABEL_9:
    v12 = objc_alloc_init(MEMORY[0x1E696AD40]);
    if (imageCopy)
    {
      v13 = [MEMORY[0x1E69DB7F0] textAttachmentWithImage:imageCopy];
      v14 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v13];
      [v12 appendAttributedString:v14];

      if (titleCopy)
      {
        v15 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
        [v12 appendAttributedString:v15];

LABEL_13:
        v16 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:titleCopy];
        [v12 appendAttributedString:v16];
      }
    }

    else if (titleCopy)
    {
      goto LABEL_13;
    }

    [(CAMMachineReadableCodeButton *)self setAttributedTitle:v12 forState:0];
    [(CAMMachineReadableCodeButton *)self setNeedsLayout];

    goto LABEL_15;
  }

  p_titleImage = &self->_titleImage;
  if (self->_titleImage != imageCopy)
  {
    goto LABEL_8;
  }

LABEL_15:
}

- (void)setDismissable:(BOOL)dismissable
{
  if (self->_dismissable != dismissable)
  {
    dismissableCopy = dismissable;
    self->_dismissable = dismissable;
    imageView = [(CAMMachineReadableCodeButton *)self imageView];
    [imageView setUserInteractionEnabled:dismissableCopy];
    UIEdgeInsetsMakeWithEdges();
    [imageView setHitTestInsets:?];
    [(CAMMachineReadableCodeButton *)self setNeedsUpdateConfiguration];
  }
}

- (void)sendAction:(SEL)action to:(id)to forEvent:(id)event
{
  v35 = *MEMORY[0x1E69E9840];
  toCopy = to;
  eventCopy = event;
  if ([(CAMMachineReadableCodeButton *)self isDismissable])
  {
    v28 = toCopy;
    imageView = [(CAMMachineReadableCodeButton *)self imageView];
    effectiveUserInterfaceLayoutDirection = [(CAMMachineReadableCodeButton *)self effectiveUserInterfaceLayoutDirection];
    [eventCopy touchesForView:self];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v12 = v33 = 0u;
    v13 = [v12 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v31;
      if (effectiveUserInterfaceLayoutDirection == 1)
      {
        v16 = -30.0;
      }

      else
      {
        v16 = -10.0;
      }

      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v31 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v18 = *(*(&v30 + 1) + 8 * i);
          if ([v18 phase] == 3)
          {
            [v18 locationInView:imageView];
            v20 = v19;
            v22 = v21;
            [imageView bounds];
            v37.origin.x = v16 + v23;
            v37.origin.y = v24 + -30.0;
            v37.size.width = v25 + 40.0;
            v37.size.height = v26 + 60.0;
            v36.x = v20;
            v36.y = v22;
            if (CGRectContainsPoint(v37, v36))
            {

              delegate = [(CAMMachineReadableCodeButton *)self delegate];
              [delegate machineReadableCodeButtonDidTapDismiss:self];

              toCopy = v28;
              goto LABEL_16;
            }
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    toCopy = v28;
  }

  v29.receiver = self;
  v29.super_class = CAMMachineReadableCodeButton;
  [(CAMMachineReadableCodeButton *)&v29 sendAction:action to:toCopy forEvent:eventCopy];
LABEL_16:
}

- (CAMMachineReadableCodeButtonDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end