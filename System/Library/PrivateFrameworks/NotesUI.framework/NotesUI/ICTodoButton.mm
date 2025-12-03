@interface ICTodoButton
+ (CGSize)defaultImageSize;
+ (CGSize)defaultSize;
- (CGRect)imageFrame;
- (CGRect)imageRectForContentRect:(CGRect)rect;
- (CGSize)defaultImageSize;
- (ICNote)note;
- (ICTodoButton)init;
- (ICTodoButton)initWithDragDelegate:(id)delegate;
- (ICTodoButton)initWithFrame:(CGRect)frame;
- (ICTrackedParagraph)trackedParagraph;
- (id)_icaxParentUITextView;
- (id)debugDescription;
- (id)icaxCorrespondingParagraphText;
- (id)imageForChecked:(BOOL)checked withHighlight:(BOOL)highlight;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)didMoveToWindow;
- (void)setDone:(BOOL)done animated:(BOOL)animated;
- (void)setFrame:(CGRect)frame leftToRight:(BOOL)right;
- (void)setHighlightColor:(id)color;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setTrackedParagraph:(id)paragraph;
- (void)setTrackedParagraphIsRTL:(BOOL)l;
- (void)trackedParagraphDidChange;
- (void)updateImagesAnimated:(BOOL)animated;
- (void)wasPressed;
@end

@implementation ICTodoButton

+ (CGSize)defaultSize
{
  IsTextKit2Enabled = ICInternalSettingsIsTextKit2Enabled();
  v3 = 60.0;
  v4 = 25.0;
  if (IsTextKit2Enabled)
  {
    v3 = 25.0;
  }

  else
  {
    v4 = 34.0;
  }

  result.height = v4;
  result.width = v3;
  return result;
}

+ (CGSize)defaultImageSize
{
  v2 = 22.0;
  v3 = 22.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (ICTodoButton)init
{
  IsTextKit2Enabled = ICInternalSettingsIsTextKit2Enabled();
  if (IsTextKit2Enabled)
  {
    v4 = 25.0;
  }

  else
  {
    v4 = 60.0;
  }

  if (IsTextKit2Enabled)
  {
    v5 = 25.0;
  }

  else
  {
    v5 = 34.0;
  }

  return [(ICTodoButton *)self initWithFrame:0.0, 0.0, v4, v5];
}

- (void)setDone:(BOOL)done animated:(BOOL)animated
{
  if (self->_done != done)
  {
    self->_done = done;
    [(ICTodoButton *)self updateImagesAnimated:animated];
  }
}

- (void)setTrackedParagraph:(id)paragraph
{
  obj = paragraph;
  WeakRetained = objc_loadWeakRetained(&self->_trackedParagraph);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_trackedParagraph, obj);
    paragraph = [obj paragraph];
    self->_trackedParagraphIsRTL = [paragraph isRTL];

    [(ICTodoButton *)self trackedParagraphDidChange];
  }
}

- (void)setTrackedParagraphIsRTL:(BOOL)l
{
  if (self->_trackedParagraphIsRTL != l)
  {
    self->_trackedParagraphIsRTL = l;
    [(ICTodoButton *)self trackedParagraphDidChange];
  }
}

- (void)setHighlightColor:(id)color
{
  objc_storeStrong(&self->_highlightColor, color);

  [(ICTodoButton *)self updateTintColor];
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ICTodoButton;
  v4 = [(ICTodoButton *)&v8 description];
  accessibilityLabel = [(ICTodoButton *)self accessibilityLabel];
  v6 = [v3 stringWithFormat:@"%@ - %@", v4, accessibilityLabel];

  return v6;
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  v6 = MEMORY[0x1E69DCDC0];
  regionCopy = region;
  imageView = [(ICTodoButton *)self imageView];
  [imageView frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  identifier = [regionCopy identifier];

  v18 = [v6 regionWithRect:identifier identifier:{v10, v12, v14, v16}];

  return v18;
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  v5 = objc_alloc(MEMORY[0x1E69DD070]);
  imageView = [(ICTodoButton *)self imageView];
  v7 = [v5 initWithView:imageView];

  imageView2 = [(ICTodoButton *)self imageView];
  [imageView2 frame];
  v10 = v9;

  imageView3 = [(ICTodoButton *)self imageView];
  [imageView3 frame];
  v13 = v12;

  if (v10 < v13)
  {
    v10 = v13;
  }

  imageView4 = [(ICTodoButton *)self imageView];
  [imageView4 frame];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  imageView5 = [(ICTodoButton *)self imageView];
  [imageView5 frame];
  v25 = v24 - v10;
  imageView6 = [(ICTodoButton *)self imageView];
  [imageView6 frame];
  v28 = v27 - v10;
  v40.origin.x = v16;
  v40.origin.y = v18;
  v40.size.width = v20;
  v40.size.height = v22;
  v41 = CGRectInset(v40, v25, v28);
  x = v41.origin.x;
  y = v41.origin.y;
  width = v41.size.width;
  height = v41.size.height;

  v33 = [MEMORY[0x1E69DCDC8] shapeWithRoundedRect:x cornerRadius:{y, width, height, v10}];
  isDone = [(ICTodoButton *)self isDone];
  v35 = 0x1E69DCDB8;
  if (!isDone)
  {
    v35 = 0x1E69DCD98;
  }

  v36 = [*v35 effectWithPreview:v7];
  v37 = [MEMORY[0x1E69DCDD0] styleWithEffect:v36 shape:v33];

  return v37;
}

- (ICTrackedParagraph)trackedParagraph
{
  WeakRetained = objc_loadWeakRetained(&self->_trackedParagraph);

  return WeakRetained;
}

- (ICNote)note
{
  WeakRetained = objc_loadWeakRetained(&self->_note);

  return WeakRetained;
}

- (CGSize)defaultImageSize
{
  width = self->_defaultImageSize.width;
  height = self->_defaultImageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (ICTodoButton)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = ICTodoButton;
  v3 = [(ICTodoButton *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(ICTodoButton *)v3 setContentMode:1];
    if (ICInternalSettingsIsTextKit2Enabled())
    {
      borderlessButtonConfiguration = [MEMORY[0x1E69DC740] borderlessButtonConfiguration];
      clearConfiguration = [MEMORY[0x1E69DC6E8] clearConfiguration];
      clearColor = [MEMORY[0x1E69DC888] clearColor];
      [clearConfiguration setBackgroundColor:clearColor];

      [borderlessButtonConfiguration setBackground:clearConfiguration];
      [borderlessButtonConfiguration setContentInsets:{*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)}];
      [borderlessButtonConfiguration setImagePlacement:8];
      [(ICTodoButton *)v4 setConfiguration:borderlessButtonConfiguration];
    }

    else
    {
      [(ICTodoButton *)v4 setContentVerticalAlignment:0];
      [(ICTodoButton *)v4 setContentHorizontalAlignment:5];
      [(ICTodoButton *)v4 setImageEdgeInsets:0.0, 4.0, 1.0, 4.0];
      [(ICTodoButton *)v4 setLargeContentImageInsets:0.0, 4.0, 1.0, 4.0];
    }

    [(ICTodoButton *)v4 updateImagesAnimated:0];
    v8 = [objc_alloc(MEMORY[0x1E69DCDB0]) initWithDelegate:v4];
    [(ICTodoButton *)v4 addInteraction:v8];
  }

  return v4;
}

- (ICTodoButton)initWithDragDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = [(ICTodoButton *)self init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E69DC988]) initWithDelegate:delegateCopy];
    [(ICTodoButton *)v5 addInteraction:v6];
  }

  return v5;
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = ICTodoButton;
  [(ICTodoButton *)&v3 didMoveToWindow];
  [(ICTodoButton *)self updateTintColor];
}

- (void)trackedParagraphDidChange
{
  ic_isRTL = [(UIView *)self ic_isRTL];
  IsTextKit2Enabled = ICInternalSettingsIsTextKit2Enabled();
  if (!ic_isRTL)
  {
    if (IsTextKit2Enabled)
    {
      configuration = [(ICTodoButton *)self configuration];
      trackedParagraph = [(ICTodoButton *)self trackedParagraph];
      paragraph = [trackedParagraph paragraph];
      v8 = [paragraph isRTL] == 0;
      v9 = 8;
      v10 = 2;
      goto LABEL_6;
    }

    configuration = [(ICTodoButton *)self trackedParagraph];
    paragraph2 = [configuration paragraph];
    if ([paragraph2 isRTL])
    {
      v13 = 4;
    }

    else
    {
      v13 = 5;
    }

LABEL_16:
    [(ICTodoButton *)self setContentHorizontalAlignment:v13];

    goto LABEL_17;
  }

  if (!IsTextKit2Enabled)
  {
    configuration = [(ICTodoButton *)self trackedParagraph];
    paragraph2 = [configuration paragraph];
    if ([paragraph2 isRTL])
    {
      v13 = 5;
    }

    else
    {
      v13 = 4;
    }

    goto LABEL_16;
  }

  configuration = [(ICTodoButton *)self configuration];
  trackedParagraph = [(ICTodoButton *)self trackedParagraph];
  paragraph = [trackedParagraph paragraph];
  v8 = [paragraph isRTL] == 0;
  v9 = 2;
  v10 = 8;
LABEL_6:
  if (v8)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  [configuration setImagePlacement:v11];

  [(ICTodoButton *)self setConfiguration:configuration];
LABEL_17:

  [(ICTodoButton *)self setNeedsLayout];
  [(ICTodoButton *)self layoutIfNeeded];
  if (objc_opt_respondsToSelector())
  {

    [(ICTodoButton *)self app_updateViewAnnotation];
  }
}

- (CGRect)imageRectForContentRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (!ICInternalSettingsIsTextKit2Enabled())
  {
    v26.receiver = self;
    v26.super_class = ICTodoButton;
    [(ICTodoButton *)&v26 imageRectForContentRect:x, y, width, height];
    v9 = v8;
    y = v10;
    width = v11;
    height = v12;
    v13 = [(ICTodoButton *)self imageForChecked:1 withHighlight:0];
    [v13 size];
    v15 = v14;
    v17 = v16;

    if (vabdd_f64(v15 / v17, width / height) <= 0.01)
    {
      if (vabdd_f64(width, v15) > 1.0)
      {
        v9 = v9 + (width - v15) * 0.5;
      }
    }

    else
    {
      v9 = v9 + width - height;
      width = width - (width - height);
    }

    trackedParagraph = [(ICTodoButton *)self trackedParagraph];
    paragraph = [trackedParagraph paragraph];
    isRTL = [paragraph isRTL];

    if (isRTL)
    {
      [(ICTodoButton *)self imageEdgeInsets];
      x = v21;
    }

    else
    {
      x = v9 + -3.0;
    }
  }

  v22 = x;
  v23 = y;
  v24 = width;
  v25 = height;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (void)setHighlighted:(BOOL)highlighted
{
  v9.receiver = self;
  v9.super_class = ICTodoButton;
  [(ICTodoButton *)&v9 setHighlighted:highlighted];
  if ([(ICTodoButton *)self isDone])
  {
    v4 = @"completed: %@";
  }

  else
  {
    v4 = @"incomplete: %@";
  }

  v5 = __ICLocalizedFrameworkString_impl(v4, v4, 0, 1);
  v6 = MEMORY[0x1E696AEC0];
  icaxCorrespondingParagraphText = [(ICTodoButton *)self icaxCorrespondingParagraphText];
  v8 = [v6 localizedStringWithFormat:v5, icaxCorrespondingParagraphText];

  ICAccessibilityPostHighPriorityAnnouncementNotification(0, v8);
}

- (void)wasPressed
{
  v2 = [objc_alloc(MEMORY[0x1E69DCAE8]) initWithStyle:0];
  [v2 prepare];
  [v2 impactOccurred];
}

- (id)imageForChecked:(BOOL)checked withHighlight:(BOOL)highlight
{
  checkedCopy = checked;
  v5 = sICTodoCheckedImage;
  if (!sICTodoCheckedImage)
  {
    v6 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:5 weight:3 scale:17.0];
    v7 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:4 weight:3 scale:17.0];
    v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark.circle.fill"];
    v9 = [v8 imageWithConfiguration:v6];
    v10 = sICTodoCheckedImage;
    sICTodoCheckedImage = v9;

    v11 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"circle"];
    v12 = [v11 imageWithConfiguration:v7];
    v13 = sICTodoUncheckedImage;
    sICTodoUncheckedImage = v12;

    v5 = sICTodoCheckedImage;
  }

  if (checkedCopy)
  {
    v14 = v5;
  }

  else
  {
    v14 = sICTodoUncheckedImage;
  }

  return v14;
}

- (void)updateImagesAnimated:(BOOL)animated
{
  animatedCopy = animated;
  window = [(ICTodoButton *)self window];
  if (window)
  {
  }

  else
  {
    overrideTintColor = [(ICTodoButton *)self overrideTintColor];

    if (!overrideTintColor)
    {
      return;
    }
  }

  isDone = [(ICTodoButton *)self isDone];
  v8 = [(ICTodoButton *)self imageForChecked:isDone withHighlight:[(ICTodoButton *)self isHighlighted]];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __69__ICTodoButton_PlatformSpecificResponsibility__updateImagesAnimated___block_invoke;
  aBlock[3] = &unk_1E846BBE8;
  aBlock[4] = self;
  v9 = v8;
  v12 = v9;
  v13 = isDone;
  v10 = _Block_copy(aBlock);
  if (animatedCopy)
  {
    if (_UISolariumEnabled() & isDone)
    {
      v10[2](v10);
    }

    else
    {
      [MEMORY[0x1E69DD250] transitionWithView:self duration:5242880 options:v10 animations:0 completion:0.25];
    }
  }

  else
  {
    [MEMORY[0x1E69DD250] performWithoutAnimation:v10];
  }
}

void __69__ICTodoButton_PlatformSpecificResponsibility__updateImagesAnimated___block_invoke(uint64_t a1)
{
  IsTextKit2Enabled = ICInternalSettingsIsTextKit2Enabled();
  v3 = *(a1 + 32);
  if (IsTextKit2Enabled)
  {
    v17 = [v3 configuration];
    [v17 setImage:*(a1 + 40)];
    if (_UISolariumEnabled())
    {
      if (*(a1 + 48))
      {
        v4 = MEMORY[0x1E69DCFD8];
        v5 = MEMORY[0x1E6982288];
        v6 = [MEMORY[0x1E6982288] transition];
        v7 = [v5 magicTransitionWithFallback:v6];
        v8 = [v4 transitionWithContentTransition:v7];
        [v17 setSymbolContentTransition:v8];
      }

      else
      {
        [v17 setSymbolContentTransition:0];
      }
    }

    v11 = [*(a1 + 32) overrideTintColor];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = [*(a1 + 32) tintColor];
    }

    v9 = v13;

    if (*(a1 + 48) == 1)
    {
      v14 = v9;
    }

    else
    {
      v14 = [MEMORY[0x1E69DC888] ICGrayTodoButtonColor];
    }

    v10 = v14;
    v15 = [*(a1 + 32) highlightColor];
    v16 = [v10 ic_colorBlendedWithColor:v15];
    [v17 setBaseForegroundColor:v16];

    [*(a1 + 32) setConfiguration:v17];
  }

  else
  {
    [v3 setImage:*(a1 + 40) forState:0];
    if (*(a1 + 48))
    {
      [MEMORY[0x1E69DC888] ICControlAccentColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] ICGrayTodoButtonColor];
    }
    v17 = ;
    v9 = [*(a1 + 32) highlightColor];
    v10 = [v17 ic_colorBlendedWithColor:v9];
    [*(a1 + 32) setTintColor:v10];
  }
}

- (CGRect)imageFrame
{
  IsTextKit2Enabled = ICInternalSettingsIsTextKit2Enabled();
  imageView = [(ICTodoButton *)self imageView];
  [imageView frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  if ((IsTextKit2Enabled & 1) == 0)
  {
    superview = [(ICTodoButton *)self superview];
    [(ICTodoButton *)self convertRect:superview toView:v6, v8, v10, v12];
    v6 = v14;
    v8 = v15;
    v10 = v16;
    v12 = v17;
  }

  v18 = v6;
  v19 = v8;
  v20 = v10;
  v21 = v12;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (void)setFrame:(CGRect)frame leftToRight:(BOOL)right
{
  [(ICTodoButton *)self setFrame:right, frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  trackedParagraph = [(ICTodoButton *)self trackedParagraph];
  paragraph = [trackedParagraph paragraph];
  -[ICTodoButton setTrackedParagraphIsRTL:](self, "setTrackedParagraphIsRTL:", [paragraph isRTL]);
}

- (id)icaxCorrespondingParagraphText
{
  _icaxParentUITextView = [(ICTodoButton *)self _icaxParentUITextView];
  textStorage = [_icaxParentUITextView textStorage];
  string = [textStorage string];
  trackedParagraph = [(ICTodoButton *)self trackedParagraph];
  [trackedParagraph characterRange];
  textStorage2 = [_icaxParentUITextView textStorage];
  [textStorage2 ic_range];
  v8 = TSUClampRange();
  v10 = [string ic_substringWithRange:{v8, v9}];

  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v12 = [v10 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  return v12;
}

- (id)_icaxParentUITextView
{
  superview = [(ICTodoButton *)self superview];
  objc_opt_class();
  while ((objc_opt_isKindOfClass() & 1) == 0 && superview)
  {
    v3 = superview;
    superview = [superview superview];

    objc_opt_class();
  }

  return superview;
}

@end