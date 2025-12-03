@interface ICInlineAttachmentView
- (BOOL)isCalculateResultAttachmentView;
- (BOOL)isLinkAttachmentView;
- (CGSize)intrinsicContentSize;
- (ICInlineAttachmentView)initWithTextAttachment:(id)attachment textContainer:(id)container forManualRendering:(BOOL)rendering;
- (ICInlineAttachmentViewAnimationDelegate)delegate;
- (ICInlineTextAttachment)textAttachment;
- (UIImage)imageForPrinting;
- (UILabel)label;
- (double)baselineOffsetFromBottom;
- (id)accessibilityAttributedLabel;
- (id)createNewLabel;
- (id)imageForTextPreviewInRange:(_NSRange)range;
- (unint64_t)accessibilityTraits;
- (void)animateInsertionIfNecessary;
- (void)attachmentDataChanged:(id)changed;
- (void)beginRippleAnimation;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)endRippleAnimation;
- (void)objectDidUpdateShare:(id)share;
- (void)setHighlightPatternRegexFinder:(id)finder;
- (void)setSelected:(BOOL)selected;
- (void)setTextContainerWidth:(double)width;
- (void)updateHighlightsWithAttributes:(id)attributes;
- (void)updateLabel;
- (void)updateRippleAnimation;
- (void)updateStyleWithAttributes:(id)attributes;
@end

@implementation ICInlineAttachmentView

- (ICInlineAttachmentView)initWithTextAttachment:(id)attachment textContainer:(id)container forManualRendering:(BOOL)rendering
{
  attachmentCopy = attachment;
  v15.receiver = self;
  v15.super_class = ICInlineAttachmentView;
  v7 = [(ICInlineAttachmentView *)&v15 initWithFrame:0.0, 0.0, 300.0, 100.0];
  v8 = v7;
  if (v7)
  {
    v7->_textContainerWidth = 300.0;
    objc_storeWeak(&v7->_textAttachment, attachmentCopy);
    isCalculateResultAttachmentView = [(ICInlineAttachmentView *)v8 isLinkAttachmentView]|| [(ICInlineAttachmentView *)v8 isCalculateResultAttachmentView];
    [(ICInlineAttachmentView *)v8 setUserInteractionEnabled:isCalculateResultAttachmentView];
    if ([(ICInlineAttachmentView *)v8 isUserInteractionEnabled]&& (objc_opt_respondsToSelector() & 1) != 0)
    {
      [(ICInlineAttachmentView *)v8 setupEventHandling];
    }

    attachment = [attachmentCopy attachment];
    ic_permanentObjectID = [attachment ic_permanentObjectID];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v8 selector:sel_attachmentDataChanged_ name:*MEMORY[0x1E69B7498] object:ic_permanentObjectID];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v8 selector:sel_objectDidUpdateShare_ name:@"ICCloudSyncingObjectDidUpdateShare" object:attachment];

    [(ICInlineAttachmentView *)v8 setClipsToBounds:0];
    if (objc_opt_respondsToSelector())
    {
      [(ICInlineAttachmentView *)v8 app_updateViewAnnotation];
    }
  }

  return v8;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = ICInlineAttachmentView;
  [(ICInlineAttachmentView *)&v4 dealloc];
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = ICInlineAttachmentView;
  [(ICInlineAttachmentView *)&v3 didMoveToWindow];
  if (ICInternalSettingsIsTextKit2Enabled())
  {
    [(ICInlineAttachmentView *)self animateInsertionIfNecessary];
  }
}

- (CGSize)intrinsicContentSize
{
  label = [(ICInlineAttachmentView *)self label];
  [label frame];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (UILabel)label
{
  label = self->_label;
  if (!label)
  {
    createNewLabel = [(ICInlineAttachmentView *)self createNewLabel];
    v5 = self->_label;
    self->_label = createNewLabel;

    [(ICInlineAttachmentView *)self addSubview:self->_label];
    label = self->_label;
  }

  return label;
}

- (id)createNewLabel
{
  v2 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [v2 setNumberOfLines:1];
  [v2 setAdjustsFontSizeToFitWidth:0];
  [v2 setLineBreakMode:5];

  return v2;
}

- (void)attachmentDataChanged:(id)changed
{
  object = [changed object];
  textAttachment = [(ICInlineAttachmentView *)self textAttachment];
  attachment = [textAttachment attachment];
  objectID = [attachment objectID];

  if (object == objectID)
  {
    textAttachment2 = [(ICInlineAttachmentView *)self textAttachment];
    attachment2 = [textAttachment2 attachment];
    [attachment2 markDisplayTextNeedsUpdate];

    [(ICInlineAttachmentView *)self updateLabel];
  }
}

- (void)objectDidUpdateShare:(id)share
{
  shareCopy = share;
  objc_opt_class();
  object = [shareCopy object];
  v5 = ICCheckedDynamicCast();

  textAttachment = [(ICInlineAttachmentView *)self textAttachment];
  attachment = [textAttachment attachment];
  note = [attachment note];

  objectID = [note objectID];
  LOBYTE(attachment) = [objectID isEqual:v5];

  if ((attachment & 1) == 0)
  {
    folder = [note folder];
    if (!folder)
    {
      goto LABEL_9;
    }

    v11 = folder;
    while (1)
    {
      objectID2 = [v11 objectID];
      v13 = [objectID2 isEqual:v5];

      if (v13)
      {
        break;
      }

      parent = [v11 parent];

      v11 = parent;
      if (!parent)
      {
        goto LABEL_9;
      }
    }
  }

  [(ICInlineAttachmentView *)self updateLabel];
LABEL_9:
}

- (void)updateLabel
{
  textAttachment = [(ICInlineAttachmentView *)self textAttachment];
  attachment = [textAttachment attachment];

  uiModel = [attachment uiModel];
  [uiModel setSelected:{-[ICInlineAttachmentView isSelected](self, "isSelected")}];
  surroundingAttributes = [(ICInlineAttachmentView *)self surroundingAttributes];
  v6 = [uiModel attributedStringWithSurroundingAttributes:surroundingAttributes formatter:0];

  surroundingAttributes2 = [(ICInlineAttachmentView *)self surroundingAttributes];
  v8 = [uiModel highlightingAttributedString:v6 withSurroundingAttributes:surroundingAttributes2];

  highlightPatternRegexFinder = [(ICInlineAttachmentView *)self highlightPatternRegexFinder];
  v10 = [uiModel highlightingAttributedString:v8 withRegexMatches:highlightPatternRegexFinder];

  label = [(ICInlineAttachmentView *)self label];
  [label setAttributedText:v10];

  label2 = [(ICInlineAttachmentView *)self label];
  [label2 sizeToFit];

  label3 = [(ICInlineAttachmentView *)self label];
  [label3 frame];
  v15 = v14;
  textContainerWidth = self->_textContainerWidth;

  if (v15 > textContainerWidth)
  {
    label4 = [(ICInlineAttachmentView *)self label];
    [label4 frame];
    v19 = v18;
    v21 = v20;
    v23 = v22;

    v24 = self->_textContainerWidth;
    label5 = [(ICInlineAttachmentView *)self label];
    [label5 setFrame:{v19, v21, v24, v23}];
  }

  if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
  {
    [(ICInlineAttachmentView *)self frame];
    v27 = v26;
    [(ICInlineAttachmentView *)self frame];
    v29 = v28;
    label6 = [(ICInlineAttachmentView *)self label];
    [label6 frame];
    v32 = v31;
    label7 = [(ICInlineAttachmentView *)self label];
    [label7 frame];
    [(ICInlineAttachmentView *)self setFrame:v27, v29, v32];
  }
}

- (void)setTextContainerWidth:(double)width
{
  if (width > 0.0 && self->_textContainerWidth != width)
  {
    self->_textContainerWidth = width;
    [(ICInlineAttachmentView *)self updateLabel];
  }
}

- (void)updateStyleWithAttributes:(id)attributes
{
  attributesCopy = attributes;
  if (attributesCopy)
  {
    textAttachment = [(ICInlineAttachmentView *)self textAttachment];
    attachment = [textAttachment attachment];

    uiModel = [attachment uiModel];
    v7 = [objc_opt_class() filteredStyleAttributes:attributesCopy];
    [(ICInlineAttachmentView *)self setSurroundingAttributes:v7];
  }

  else
  {
    [(ICInlineAttachmentView *)self setSurroundingAttributes:MEMORY[0x1E695E0F8]];
  }

  [(ICInlineAttachmentView *)self updateLabel];
}

- (void)updateHighlightsWithAttributes:(id)attributes
{
  attributesCopy = attributes;
  textAttachment = [(ICInlineAttachmentView *)self textAttachment];
  attachment = [textAttachment attachment];
  uiModel = [attachment uiModel];

  label = [(ICInlineAttachmentView *)self label];
  attributedText = [label attributedText];
  v9 = [uiModel highlightingAttributedString:attributedText withSurroundingAttributes:attributesCopy];

  label2 = [(ICInlineAttachmentView *)self label];
  [label2 setAttributedText:v9];
}

- (void)setSelected:(BOOL)selected
{
  if (self->_selected != selected)
  {
    self->_selected = selected;
    [(ICInlineAttachmentView *)self updateLabel];
  }
}

- (void)setHighlightPatternRegexFinder:(id)finder
{
  objc_storeStrong(&self->_highlightPatternRegexFinder, finder);

  [(ICInlineAttachmentView *)self updateLabel];
}

- (double)baselineOffsetFromBottom
{
  label = [(ICInlineAttachmentView *)self label];
  [label _baselineOffsetFromBottom];
  v4 = v3;

  return v4;
}

- (void)animateInsertionIfNecessary
{
  textAttachment = [(ICInlineAttachmentView *)self textAttachment];
  attachment = [textAttachment attachment];

  if ([attachment animateInsertion])
  {
    label = [(ICInlineAttachmentView *)self label];
    attributedText = [label attributedText];
    string = [attributedText string];

    if ([ICAttributedStringRippler canAnimateString:string])
    {
      [(ICInlineAttachmentView *)self beginRippleAnimation];
    }

    [attachment setAnimateInsertion:0];
  }
}

- (void)beginRippleAnimation
{
  rippler = [(ICInlineAttachmentView *)self rippler];

  if (rippler)
  {
    [(ICInlineAttachmentView *)self endRippleAnimation];
  }

  v4 = [ICAttributedStringRippler alloc];
  label = [(ICInlineAttachmentView *)self label];
  attributedText = [label attributedText];
  textAttachment = [(ICInlineAttachmentView *)self textAttachment];
  attachment = [textAttachment attachment];
  animatableRange = [attachment animatableRange];
  v11 = [(ICAttributedStringRippler *)v4 initWithAttributedString:attributedText animatedRange:animatableRange, v10];
  [(ICInlineAttachmentView *)self setRippler:v11];

  rippler2 = [(ICInlineAttachmentView *)self rippler];
  [rippler2 start];

  rippleAnimationTimer = [(ICInlineAttachmentView *)self rippleAnimationTimer];

  if (!rippleAnimationTimer)
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    v15 = [mainScreen displayLinkWithTarget:self selector:sel_updateRippleAnimation];
    [(ICInlineAttachmentView *)self setRippleAnimationTimer:v15];

    v16 = +[ICAttributedStringRippler framesPerSecond];
    rippleAnimationTimer2 = [(ICInlineAttachmentView *)self rippleAnimationTimer];
    [rippleAnimationTimer2 setPreferredFramesPerSecond:v16];

    rippleAnimationTimer3 = [(ICInlineAttachmentView *)self rippleAnimationTimer];
    mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
    [rippleAnimationTimer3 addToRunLoop:mainRunLoop forMode:*MEMORY[0x1E695D918]];
  }
}

- (void)endRippleAnimation
{
  rippleAnimationTimer = [(ICInlineAttachmentView *)self rippleAnimationTimer];
  [rippleAnimationTimer invalidate];

  [(ICInlineAttachmentView *)self setRippleAnimationTimer:0];
  [(ICInlineAttachmentView *)self updateLabel];
  delegate = [(ICInlineAttachmentView *)self delegate];
  [delegate redrawInlineAttachmentView:self];

  [(ICInlineAttachmentView *)self setRippler:0];
}

- (void)updateRippleAnimation
{
  rippler = [(ICInlineAttachmentView *)self rippler];
  currentTimeIndex = [rippler currentTimeIndex];

  rippler2 = [(ICInlineAttachmentView *)self rippler];
  v6 = [rippler2 finishedForTimeIndex:currentTimeIndex];

  if (v6)
  {

    [(ICInlineAttachmentView *)self endRippleAnimation];
  }

  else
  {
    rippler3 = [(ICInlineAttachmentView *)self rippler];
    v21 = [rippler3 attributedStringForTimeIndex:currentTimeIndex];

    label = [(ICInlineAttachmentView *)self label];
    [label setAttributedText:v21];

    label2 = [(ICInlineAttachmentView *)self label];
    [label2 sizeToFit];

    label3 = [(ICInlineAttachmentView *)self label];
    [label3 frame];
    v12 = v11;
    v14 = v13;
    v16 = v15;

    [(ICInlineAttachmentView *)self frame];
    v18 = (v17 - v16) / 3.0 + (v17 - v16) / 3.0;
    label4 = [(ICInlineAttachmentView *)self label];
    [label4 setFrame:{v12, v18, v14, v16}];

    delegate = [(ICInlineAttachmentView *)self delegate];
    [delegate redrawInlineAttachmentView:self];
  }
}

- (BOOL)isLinkAttachmentView
{
  textAttachment = [(ICInlineAttachmentView *)self textAttachment];
  attachment = [textAttachment attachment];
  isLinkAttachment = [attachment isLinkAttachment];

  return isLinkAttachment;
}

- (BOOL)isCalculateResultAttachmentView
{
  textAttachment = [(ICInlineAttachmentView *)self textAttachment];
  attachment = [textAttachment attachment];
  isCalculateResultAttachment = [attachment isCalculateResultAttachment];

  return isCalculateResultAttachment;
}

- (id)imageForTextPreviewInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v33[1] = *MEMORY[0x1E69E9840];
  label = [(ICInlineAttachmentView *)self label];
  attributedText = [label attributedText];
  v8 = [attributedText mutableCopy];

  v36.location = [v8 ic_range];
  v36.length = v9;
  v35.location = location;
  v35.length = length;
  v10 = NSIntersectionRange(v35, v36);
  v32 = *MEMORY[0x1E69DB650];
  v11 = v32;
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  v33[0] = clearColor;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
  ic_range = [v8 ic_range];
  [v8 addAttributes:v13 range:{ic_range, v15}];

  v30[0] = v11;
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  v31[0] = blackColor;
  v30[1] = *MEMORY[0x1E69DB600];
  clearColor2 = [MEMORY[0x1E69DC888] clearColor];
  v31[1] = clearColor2;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:2];
  [v8 addAttributes:v18 range:{v10.location, v10.length}];

  defaultFormat = [MEMORY[0x1E69DCA80] defaultFormat];
  v20 = objc_alloc(MEMORY[0x1E69DCA78]);
  [(ICInlineAttachmentView *)self bounds];
  v23 = [v20 initWithSize:defaultFormat format:{v21, v22}];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __53__ICInlineAttachmentView_imageForTextPreviewInRange___block_invoke;
  v27[3] = &unk_1E8468BC8;
  v28 = v8;
  selfCopy = self;
  v24 = v8;
  v25 = [v23 imageWithActions:v27];

  return v25;
}

uint64_t __53__ICInlineAttachmentView_imageForTextPreviewInRange___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  [*(a1 + 40) bounds];

  return [v1 drawInRect:?];
}

- (UIImage)imageForPrinting
{
  [(ICInlineAttachmentView *)self setOverrideUserInterfaceStyle:1];
  [(ICInlineAttachmentView *)self bounds];
  v8.width = v3;
  v8.height = v4;
  UIGraphicsBeginImageContextWithOptions(v8, 0, 0.0);
  [(ICInlineAttachmentView *)self bounds];
  [(ICInlineAttachmentView *)self drawViewHierarchyInRect:1 afterScreenUpdates:?];
  v5 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  [(ICInlineAttachmentView *)self setOverrideUserInterfaceStyle:0];

  return v5;
}

- (id)accessibilityAttributedLabel
{
  v2 = MEMORY[0x1E696AAB0];
  label = [(ICInlineAttachmentView *)self label];
  text = [label text];
  v5 = [v2 icaxAttributedStringForSpeakingStringInLowerPitch:text];

  return v5;
}

- (unint64_t)accessibilityTraits
{
  v10.receiver = self;
  v10.super_class = ICInlineAttachmentView;
  accessibilityTraits = [(ICInlineAttachmentView *)&v10 accessibilityTraits];
  textAttachment = [(ICInlineAttachmentView *)self textAttachment];
  attachment = [textAttachment attachment];
  typeUTI = [attachment typeUTI];
  v7 = [typeUTI isEqualToString:*MEMORY[0x1E69B7558]];

  v8 = *MEMORY[0x1E69DD9E0];
  if (!v7)
  {
    v8 = 0;
  }

  return v8 | accessibilityTraits;
}

- (ICInlineTextAttachment)textAttachment
{
  WeakRetained = objc_loadWeakRetained(&self->_textAttachment);

  return WeakRetained;
}

- (ICInlineAttachmentViewAnimationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end