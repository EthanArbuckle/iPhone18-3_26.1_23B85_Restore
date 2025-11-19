@interface ICInlineAttachmentView
- (BOOL)isCalculateResultAttachmentView;
- (BOOL)isLinkAttachmentView;
- (CGSize)intrinsicContentSize;
- (ICInlineAttachmentView)initWithTextAttachment:(id)a3 textContainer:(id)a4 forManualRendering:(BOOL)a5;
- (ICInlineAttachmentViewAnimationDelegate)delegate;
- (ICInlineTextAttachment)textAttachment;
- (UIImage)imageForPrinting;
- (UILabel)label;
- (double)baselineOffsetFromBottom;
- (id)accessibilityAttributedLabel;
- (id)createNewLabel;
- (id)imageForTextPreviewInRange:(_NSRange)a3;
- (unint64_t)accessibilityTraits;
- (void)animateInsertionIfNecessary;
- (void)attachmentDataChanged:(id)a3;
- (void)beginRippleAnimation;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)endRippleAnimation;
- (void)objectDidUpdateShare:(id)a3;
- (void)setHighlightPatternRegexFinder:(id)a3;
- (void)setSelected:(BOOL)a3;
- (void)setTextContainerWidth:(double)a3;
- (void)updateHighlightsWithAttributes:(id)a3;
- (void)updateLabel;
- (void)updateRippleAnimation;
- (void)updateStyleWithAttributes:(id)a3;
@end

@implementation ICInlineAttachmentView

- (ICInlineAttachmentView)initWithTextAttachment:(id)a3 textContainer:(id)a4 forManualRendering:(BOOL)a5
{
  v6 = a3;
  v15.receiver = self;
  v15.super_class = ICInlineAttachmentView;
  v7 = [(ICInlineAttachmentView *)&v15 initWithFrame:0.0, 0.0, 300.0, 100.0];
  v8 = v7;
  if (v7)
  {
    v7->_textContainerWidth = 300.0;
    objc_storeWeak(&v7->_textAttachment, v6);
    v9 = [(ICInlineAttachmentView *)v8 isLinkAttachmentView]|| [(ICInlineAttachmentView *)v8 isCalculateResultAttachmentView];
    [(ICInlineAttachmentView *)v8 setUserInteractionEnabled:v9];
    if ([(ICInlineAttachmentView *)v8 isUserInteractionEnabled]&& (objc_opt_respondsToSelector() & 1) != 0)
    {
      [(ICInlineAttachmentView *)v8 setupEventHandling];
    }

    v10 = [v6 attachment];
    v11 = [v10 ic_permanentObjectID];
    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    [v12 addObserver:v8 selector:sel_attachmentDataChanged_ name:*MEMORY[0x1E69B7498] object:v11];

    v13 = [MEMORY[0x1E696AD88] defaultCenter];
    [v13 addObserver:v8 selector:sel_objectDidUpdateShare_ name:@"ICCloudSyncingObjectDidUpdateShare" object:v10];

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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

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
  v2 = [(ICInlineAttachmentView *)self label];
  [v2 frame];
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
    v4 = [(ICInlineAttachmentView *)self createNewLabel];
    v5 = self->_label;
    self->_label = v4;

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

- (void)attachmentDataChanged:(id)a3
{
  v4 = [a3 object];
  v5 = [(ICInlineAttachmentView *)self textAttachment];
  v6 = [v5 attachment];
  v7 = [v6 objectID];

  if (v4 == v7)
  {
    v8 = [(ICInlineAttachmentView *)self textAttachment];
    v9 = [v8 attachment];
    [v9 markDisplayTextNeedsUpdate];

    [(ICInlineAttachmentView *)self updateLabel];
  }
}

- (void)objectDidUpdateShare:(id)a3
{
  v15 = a3;
  objc_opt_class();
  v4 = [v15 object];
  v5 = ICCheckedDynamicCast();

  v6 = [(ICInlineAttachmentView *)self textAttachment];
  v7 = [v6 attachment];
  v8 = [v7 note];

  v9 = [v8 objectID];
  LOBYTE(v7) = [v9 isEqual:v5];

  if ((v7 & 1) == 0)
  {
    v10 = [v8 folder];
    if (!v10)
    {
      goto LABEL_9;
    }

    v11 = v10;
    while (1)
    {
      v12 = [v11 objectID];
      v13 = [v12 isEqual:v5];

      if (v13)
      {
        break;
      }

      v14 = [v11 parent];

      v11 = v14;
      if (!v14)
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
  v3 = [(ICInlineAttachmentView *)self textAttachment];
  v34 = [v3 attachment];

  v4 = [v34 uiModel];
  [v4 setSelected:{-[ICInlineAttachmentView isSelected](self, "isSelected")}];
  v5 = [(ICInlineAttachmentView *)self surroundingAttributes];
  v6 = [v4 attributedStringWithSurroundingAttributes:v5 formatter:0];

  v7 = [(ICInlineAttachmentView *)self surroundingAttributes];
  v8 = [v4 highlightingAttributedString:v6 withSurroundingAttributes:v7];

  v9 = [(ICInlineAttachmentView *)self highlightPatternRegexFinder];
  v10 = [v4 highlightingAttributedString:v8 withRegexMatches:v9];

  v11 = [(ICInlineAttachmentView *)self label];
  [v11 setAttributedText:v10];

  v12 = [(ICInlineAttachmentView *)self label];
  [v12 sizeToFit];

  v13 = [(ICInlineAttachmentView *)self label];
  [v13 frame];
  v15 = v14;
  textContainerWidth = self->_textContainerWidth;

  if (v15 > textContainerWidth)
  {
    v17 = [(ICInlineAttachmentView *)self label];
    [v17 frame];
    v19 = v18;
    v21 = v20;
    v23 = v22;

    v24 = self->_textContainerWidth;
    v25 = [(ICInlineAttachmentView *)self label];
    [v25 setFrame:{v19, v21, v24, v23}];
  }

  if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
  {
    [(ICInlineAttachmentView *)self frame];
    v27 = v26;
    [(ICInlineAttachmentView *)self frame];
    v29 = v28;
    v30 = [(ICInlineAttachmentView *)self label];
    [v30 frame];
    v32 = v31;
    v33 = [(ICInlineAttachmentView *)self label];
    [v33 frame];
    [(ICInlineAttachmentView *)self setFrame:v27, v29, v32];
  }
}

- (void)setTextContainerWidth:(double)a3
{
  if (a3 > 0.0 && self->_textContainerWidth != a3)
  {
    self->_textContainerWidth = a3;
    [(ICInlineAttachmentView *)self updateLabel];
  }
}

- (void)updateStyleWithAttributes:(id)a3
{
  v8 = a3;
  if (v8)
  {
    v4 = [(ICInlineAttachmentView *)self textAttachment];
    v5 = [v4 attachment];

    v6 = [v5 uiModel];
    v7 = [objc_opt_class() filteredStyleAttributes:v8];
    [(ICInlineAttachmentView *)self setSurroundingAttributes:v7];
  }

  else
  {
    [(ICInlineAttachmentView *)self setSurroundingAttributes:MEMORY[0x1E695E0F8]];
  }

  [(ICInlineAttachmentView *)self updateLabel];
}

- (void)updateHighlightsWithAttributes:(id)a3
{
  v4 = a3;
  v5 = [(ICInlineAttachmentView *)self textAttachment];
  v6 = [v5 attachment];
  v11 = [v6 uiModel];

  v7 = [(ICInlineAttachmentView *)self label];
  v8 = [v7 attributedText];
  v9 = [v11 highlightingAttributedString:v8 withSurroundingAttributes:v4];

  v10 = [(ICInlineAttachmentView *)self label];
  [v10 setAttributedText:v9];
}

- (void)setSelected:(BOOL)a3
{
  if (self->_selected != a3)
  {
    self->_selected = a3;
    [(ICInlineAttachmentView *)self updateLabel];
  }
}

- (void)setHighlightPatternRegexFinder:(id)a3
{
  objc_storeStrong(&self->_highlightPatternRegexFinder, a3);

  [(ICInlineAttachmentView *)self updateLabel];
}

- (double)baselineOffsetFromBottom
{
  v2 = [(ICInlineAttachmentView *)self label];
  [v2 _baselineOffsetFromBottom];
  v4 = v3;

  return v4;
}

- (void)animateInsertionIfNecessary
{
  v3 = [(ICInlineAttachmentView *)self textAttachment];
  v7 = [v3 attachment];

  if ([v7 animateInsertion])
  {
    v4 = [(ICInlineAttachmentView *)self label];
    v5 = [v4 attributedText];
    v6 = [v5 string];

    if ([ICAttributedStringRippler canAnimateString:v6])
    {
      [(ICInlineAttachmentView *)self beginRippleAnimation];
    }

    [v7 setAnimateInsertion:0];
  }
}

- (void)beginRippleAnimation
{
  v3 = [(ICInlineAttachmentView *)self rippler];

  if (v3)
  {
    [(ICInlineAttachmentView *)self endRippleAnimation];
  }

  v4 = [ICAttributedStringRippler alloc];
  v5 = [(ICInlineAttachmentView *)self label];
  v6 = [v5 attributedText];
  v7 = [(ICInlineAttachmentView *)self textAttachment];
  v8 = [v7 attachment];
  v9 = [v8 animatableRange];
  v11 = [(ICAttributedStringRippler *)v4 initWithAttributedString:v6 animatedRange:v9, v10];
  [(ICInlineAttachmentView *)self setRippler:v11];

  v12 = [(ICInlineAttachmentView *)self rippler];
  [v12 start];

  v13 = [(ICInlineAttachmentView *)self rippleAnimationTimer];

  if (!v13)
  {
    v14 = [MEMORY[0x1E69DCEB0] mainScreen];
    v15 = [v14 displayLinkWithTarget:self selector:sel_updateRippleAnimation];
    [(ICInlineAttachmentView *)self setRippleAnimationTimer:v15];

    v16 = +[ICAttributedStringRippler framesPerSecond];
    v17 = [(ICInlineAttachmentView *)self rippleAnimationTimer];
    [v17 setPreferredFramesPerSecond:v16];

    v19 = [(ICInlineAttachmentView *)self rippleAnimationTimer];
    v18 = [MEMORY[0x1E695DFD0] mainRunLoop];
    [v19 addToRunLoop:v18 forMode:*MEMORY[0x1E695D918]];
  }
}

- (void)endRippleAnimation
{
  v3 = [(ICInlineAttachmentView *)self rippleAnimationTimer];
  [v3 invalidate];

  [(ICInlineAttachmentView *)self setRippleAnimationTimer:0];
  [(ICInlineAttachmentView *)self updateLabel];
  v4 = [(ICInlineAttachmentView *)self delegate];
  [v4 redrawInlineAttachmentView:self];

  [(ICInlineAttachmentView *)self setRippler:0];
}

- (void)updateRippleAnimation
{
  v3 = [(ICInlineAttachmentView *)self rippler];
  v4 = [v3 currentTimeIndex];

  v5 = [(ICInlineAttachmentView *)self rippler];
  v6 = [v5 finishedForTimeIndex:v4];

  if (v6)
  {

    [(ICInlineAttachmentView *)self endRippleAnimation];
  }

  else
  {
    v7 = [(ICInlineAttachmentView *)self rippler];
    v21 = [v7 attributedStringForTimeIndex:v4];

    v8 = [(ICInlineAttachmentView *)self label];
    [v8 setAttributedText:v21];

    v9 = [(ICInlineAttachmentView *)self label];
    [v9 sizeToFit];

    v10 = [(ICInlineAttachmentView *)self label];
    [v10 frame];
    v12 = v11;
    v14 = v13;
    v16 = v15;

    [(ICInlineAttachmentView *)self frame];
    v18 = (v17 - v16) / 3.0 + (v17 - v16) / 3.0;
    v19 = [(ICInlineAttachmentView *)self label];
    [v19 setFrame:{v12, v18, v14, v16}];

    v20 = [(ICInlineAttachmentView *)self delegate];
    [v20 redrawInlineAttachmentView:self];
  }
}

- (BOOL)isLinkAttachmentView
{
  v2 = [(ICInlineAttachmentView *)self textAttachment];
  v3 = [v2 attachment];
  v4 = [v3 isLinkAttachment];

  return v4;
}

- (BOOL)isCalculateResultAttachmentView
{
  v2 = [(ICInlineAttachmentView *)self textAttachment];
  v3 = [v2 attachment];
  v4 = [v3 isCalculateResultAttachment];

  return v4;
}

- (id)imageForTextPreviewInRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v33[1] = *MEMORY[0x1E69E9840];
  v6 = [(ICInlineAttachmentView *)self label];
  v7 = [v6 attributedText];
  v8 = [v7 mutableCopy];

  v36.location = [v8 ic_range];
  v36.length = v9;
  v35.location = location;
  v35.length = length;
  v10 = NSIntersectionRange(v35, v36);
  v32 = *MEMORY[0x1E69DB650];
  v11 = v32;
  v12 = [MEMORY[0x1E69DC888] clearColor];
  v33[0] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
  v14 = [v8 ic_range];
  [v8 addAttributes:v13 range:{v14, v15}];

  v30[0] = v11;
  v16 = [MEMORY[0x1E69DC888] blackColor];
  v31[0] = v16;
  v30[1] = *MEMORY[0x1E69DB600];
  v17 = [MEMORY[0x1E69DC888] clearColor];
  v31[1] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:2];
  [v8 addAttributes:v18 range:{v10.location, v10.length}];

  v19 = [MEMORY[0x1E69DCA80] defaultFormat];
  v20 = objc_alloc(MEMORY[0x1E69DCA78]);
  [(ICInlineAttachmentView *)self bounds];
  v23 = [v20 initWithSize:v19 format:{v21, v22}];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __53__ICInlineAttachmentView_imageForTextPreviewInRange___block_invoke;
  v27[3] = &unk_1E8468BC8;
  v28 = v8;
  v29 = self;
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
  v3 = [(ICInlineAttachmentView *)self label];
  v4 = [v3 text];
  v5 = [v2 icaxAttributedStringForSpeakingStringInLowerPitch:v4];

  return v5;
}

- (unint64_t)accessibilityTraits
{
  v10.receiver = self;
  v10.super_class = ICInlineAttachmentView;
  v3 = [(ICInlineAttachmentView *)&v10 accessibilityTraits];
  v4 = [(ICInlineAttachmentView *)self textAttachment];
  v5 = [v4 attachment];
  v6 = [v5 typeUTI];
  v7 = [v6 isEqualToString:*MEMORY[0x1E69B7558]];

  v8 = *MEMORY[0x1E69DD9E0];
  if (!v7)
  {
    v8 = 0;
  }

  return v8 | v3;
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