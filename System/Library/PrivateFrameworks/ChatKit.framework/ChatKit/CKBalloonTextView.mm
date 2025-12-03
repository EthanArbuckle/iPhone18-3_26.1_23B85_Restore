@interface CKBalloonTextView
+ (BOOL)_textEffectsBalloonDebugHighlightingEnabled;
+ (CGSize)sizeThatFits:(CGSize)fits attributedText:(id)text maximumNumberOfLines:(unint64_t)lines lineBreakMode:(int64_t)mode textContainerInsets:(UIEdgeInsets)insets outTextAlignmentInsets:(UIEdgeInsets *)alignmentInsets outIsSingleLine:(BOOL *)line;
+ (id)makeTextView;
+ (id)makeTextViewUsingConfiguration:(id)configuration;
+ (id)makeTextViewUsingTextKit2UsingConfiguration:(id)configuration;
+ (void)_commonTextViewContainerSetup:(id)setup;
- (BOOL)_showsEditMenu;
- (BOOL)becomeFirstResponder;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)resignFirstResponder;
- (CGSize)sizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets isSingleLine:(BOOL *)line;
- (CKBalloonTextViewInteractionDelegate)interactionDelegate;
- (NSString)description;
- (_NSRange)_selectedRange;
- (id)_fakeSelectionBackgroundColor;
- (id)_textWithHyphenationAppliedForAttributedText:(id)text;
- (id)initReadonlyAndUnselectableWithFrame:(CGRect)frame textContainer:(id)container;
- (id)selectionBarColor;
- (id)selectionHighlightColor;
- (void)_cleanUpSelectionState;
- (void)_displayAttributedTextIfPossible:(id)possible applyHyphenation:(BOOL)hyphenation;
- (void)_interactionStartedFromPreviewItemController:(id)controller;
- (void)_interactionStoppedFromPreviewItemController:(id)controller;
- (void)_removeFakeSelectionBackgroundColor;
- (void)_setFakeSelectionBackgroundColor;
- (void)_setFakeSelectionBackgroundColorForRange:(_NSRange)range;
- (void)_updateFakeSelectionBackgroundColor:(id)color;
- (void)copy:(id)copy;
- (void)didMoveToWindow;
- (void)panGestureRecognized:(id)recognized;
- (void)setAllowsTextAnimations:(BOOL)animations;
- (void)setAttributedText:(id)text;
- (void)setBalloonTextSelectedRange:(_NSRange)range;
- (void)setFakeSelected:(BOOL)selected;
- (void)startSelectionForColor:(char)color;
- (void)stopSelection;
- (void)viewDidMoveToSuperview;
@end

@implementation CKBalloonTextView

+ (id)makeTextView
{
  v3 = +[CKBalloonTextViewConfiguration defaultConfiguration];
  v4 = [self makeTextViewUsingConfiguration:v3];

  return v4;
}

+ (id)makeTextViewUsingConfiguration:(id)configuration
{
  v3 = [self makeTextViewUsingTextKit2UsingConfiguration:configuration];
  [v3 setShowsVerticalScrollIndicator:0];
  [v3 setShowsHorizontalScrollIndicator:0];
  [v3 setBackgroundColor:0];
  [v3 setContentMode:11];
  v4 = +[CKUIBehavior sharedBehaviors];
  enableBalloonTextSelection = [v4 enableBalloonTextSelection];

  if (enableBalloonTextSelection)
  {
    [v3 setSelectable:1];
    [v3 setTextLoupeVisibility:1];
    v6 = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:v3 action:sel_panGestureRecognized_];
    [v6 setDelegate:v3];
    [v6 setCancelsTouchesInView:0];
    [v6 setName:@"panGestureRecognizer"];
    [v6 setRequiresExclusiveTouchType:0];
    [v6 setAllowedScrollTypesMask:3];
    [v3 addGestureRecognizer:v6];
    [v3 setDragGestureRecognizer:v6];
  }

  else
  {
    [v3 setUserInteractionEnabled:0];
  }

  [v3 setLinkTextAttributes:MEMORY[0x1E695E0F8]];

  return v3;
}

+ (void)_commonTextViewContainerSetup:(id)setup
{
  setupCopy = setup;
  [setupCopy setSize:{0.0, 1.79769313e308}];
  [setupCopy setWidthTracksTextView:1];
  [setupCopy setHeightTracksTextView:1];
}

+ (id)makeTextViewUsingTextKit2UsingConfiguration:(id)configuration
{
  v4 = MEMORY[0x1E69DB808];
  configurationCopy = configuration;
  v6 = objc_alloc_init(v4);
  v7 = objc_alloc_init(CKTextStorage);
  [v6 setTextStorage:v7];

  v8 = objc_alloc_init(MEMORY[0x1E69DB828]);
  v9 = objc_alloc_init(MEMORY[0x1E69DB800]);
  [v8 setTextContainer:v9];
  [v6 addTextLayoutManager:v8];
  v10 = [self instancesRespondToSelector:sel_initReadonlyAndUnselectableWithFrame_textContainer_textLayoutManagerEnabled_];
  v11 = [self alloc];
  v12 = *MEMORY[0x1E695F058];
  v13 = *(MEMORY[0x1E695F058] + 8);
  v14 = *(MEMORY[0x1E695F058] + 16);
  v15 = *(MEMORY[0x1E695F058] + 24);
  if (v10)
  {
    v16 = [v11 initReadonlyAndUnselectableWithFrame:v9 textContainer:1 textLayoutManagerEnabled:{v12, v13, v14, v15}];
  }

  else
  {
    v16 = [v11 initWithFrame:v9 textContainer:{v12, v13, v14, v15}];
  }

  v17 = v16;
  expressiveTextEnabled = [configurationCopy expressiveTextEnabled];

  if (expressiveTextEnabled)
  {
    if (([MEMORY[0x1E69DD168] ck_supportsDynamicallyTogglingAllowsTextAnimations] & 1) == 0)
    {
      [v17 setAllowsTextAnimations:1];
    }

    textLayoutManager = [v17 textLayoutManager];
    [textLayoutManager setRequiresCTLineRef:1];
  }

  textContainer = [v17 textContainer];
  [self _commonTextViewContainerSetup:textContainer];

  if ((v10 & 1) == 0)
  {
    [v17 setSelectable:0];
    [v17 setEditable:0];
    [v17 setScrollEnabled:0];
  }

  return v17;
}

- (id)selectionHighlightColor
{
  superview = [(CKBalloonTextView *)self superview];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    selfCopy = self;
    v5 = &selfCopy;
LABEL_6:
    v5[1] = CKBalloonTextView;
    v11 = objc_msgSendSuper2(v5, sel_selectionHighlightColor, selfCopy2);
    goto LABEL_7;
  }

  superview2 = [(CKBalloonTextView *)self superview];
  objc_opt_class();
  v7 = objc_opt_isKindOfClass();

  if ((v7 & 1) == 0 || (-[CKBalloonTextView superview](self, "superview"), v8 = objc_claimAutoreleasedReturnValue(), +[CKUIBehavior sharedBehaviors](CKUIBehavior, "sharedBehaviors"), v9 = objc_claimAutoreleasedReturnValue(), [v9 theme], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "selectionHighlightColorOverrideForColorType:", objc_msgSend(v8, "color")), v11 = objc_claimAutoreleasedReturnValue(), v10, v9, v8, !v11))
  {
    selfCopy2 = self;
    v5 = &selfCopy2;
    goto LABEL_6;
  }

LABEL_7:

  return v11;
}

- (id)selectionBarColor
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isTextSelectionEnabled = [mEMORY[0x1E69A8070] isTextSelectionEnabled];

  if (isTextSelectionEnabled)
  {
    v5 = +[CKUIBehavior sharedBehaviors];
    theme = [v5 theme];
    v7 = [theme selectionBarColorOverrideForColorType:{-[CKBalloonTextView selectionColorType](self, "selectionColorType")}];

    if (v7)
    {
      selectionBarColor = v7;
    }

    else
    {
      v12.receiver = self;
      v12.super_class = CKBalloonTextView;
      selectionBarColor = [(CKBalloonTextView *)&v12 selectionBarColor];
    }

    selectionBarColor2 = selectionBarColor;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = CKBalloonTextView;
    selectionBarColor2 = [(CKBalloonTextView *)&v11 selectionBarColor];
  }

  return selectionBarColor2;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [(CKBalloonTextView *)self frame];
  v6 = NSStringFromCGRect(v17);
  if ([(CKBalloonTextView *)self clipsToBounds])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  if ([(CKBalloonTextView *)self isOpaque])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  if ([(CKBalloonTextView *)self isUserInteractionEnabled])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  [(CKBalloonTextView *)self contentOffset];
  v10 = NSStringFromCGPoint(v15);
  [(CKBalloonTextView *)self contentSize];
  v11 = NSStringFromCGSize(v16);
  v12 = [v3 stringWithFormat:@"<%@: %p frame = %@; clipsToBounds = %@; opaque = %@; userInteractionEnabled = %@; contentOffset = %@; contentSize = %@>", v5, self, v6, v7, v8, v9, v10, v11];;

  return v12;
}

- (id)initReadonlyAndUnselectableWithFrame:(CGRect)frame textContainer:(id)container
{
  v11.receiver = self;
  v11.super_class = CKBalloonTextView;
  v4 = [(CKBalloonTextView *)&v11 initReadonlyAndUnselectableWithFrame:container textContainer:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v4)
  {
    v5 = +[CKUIBehavior sharedBehaviors];
    [v5 balloonTextContainerInset];
    [v4 setTextContainerInset:?];

    textContainer = [v4 textContainer];
    v7 = +[CKUIBehavior sharedBehaviors];
    [v7 balloonLineFragmentPadding];
    [textContainer setLineFragmentPadding:?];

    layoutManager = [v4 layoutManager];
    [layoutManager setBackgroundLayoutEnabled:0];

    layoutManager2 = [v4 layoutManager];
    [layoutManager2 setSynchronizesAlignmentToDirection:1];

    [v4 setShouldPresentSheetsInAWindowLayeredAboveTheKeyboard:1];
    [v4 registerForEvents];
  }

  return v4;
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = CKBalloonTextView;
  [(CKBalloonTextView *)&v4 didMoveToWindow];
  attributedText = [(CKBalloonTextView *)self attributedText];
  [(CKBalloonTextView *)self _displayAttributedTextIfPossible:attributedText applyHyphenation:1];
}

- (void)viewDidMoveToSuperview
{
  v4.receiver = self;
  v4.super_class = CKBalloonTextView;
  [(CKBalloonTextView *)&v4 viewDidMoveToSuperview];
  attributedText = [(CKBalloonTextView *)self attributedText];
  [(CKBalloonTextView *)self _displayAttributedTextIfPossible:attributedText applyHyphenation:1];
}

- (void)_displayAttributedTextIfPossible:(id)possible applyHyphenation:(BOOL)hyphenation
{
  hyphenationCopy = hyphenation;
  possibleCopy = possible;
  superview = [(CKBalloonTextView *)self superview];
  v8 = +[CKPrintController sharedInstance];
  isPrinting = [v8 isPrinting];

  if ((isPrinting & 1) != 0 || superview)
  {
    v10 = possibleCopy;
    if (hyphenationCopy)
    {
      v11 = [(CKBalloonTextView *)self _textWithHyphenationAppliedForAttributedText:v10];

      v10 = v11;
    }

    v12.receiver = self;
    v12.super_class = CKBalloonTextView;
    [(CKBalloonTextView *)&v12 setAttributedText:v10];
  }
}

- (void)setAttributedText:(id)text
{
  if (self->_attributedText != text)
  {
    v4 = [(CKBalloonTextView *)self _textWithHyphenationAppliedForAttributedText:?];
    attributedText = self->_attributedText;
    self->_attributedText = v4;

    v6 = self->_attributedText;

    [(CKBalloonTextView *)self _displayAttributedTextIfPossible:v6 applyHyphenation:0];
  }
}

- (id)_textWithHyphenationAppliedForAttributedText:(id)text
{
  v3 = [text mutableCopy];
  v4 = +[CKUIBehavior sharedBehaviors];
  balloonParagraphStyle = [v4 balloonParagraphStyle];

  if (!balloonParagraphStyle)
  {
    balloonParagraphStyle = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
  }

  [v3 addAttribute:*MEMORY[0x1E69DB688] value:balloonParagraphStyle range:{0, objc_msgSend(v3, "length")}];

  return v3;
}

- (void)copy:(id)copy
{
  interactionDelegate = [(CKBalloonTextView *)self interactionDelegate];
  [interactionDelegate interactionTextViewShouldCopyToPasteboard:self];
}

- (CGSize)sizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets isSingleLine:(BOOL *)line
{
  height = fits.height;
  width = fits.width;
  attributedText = [(CKBalloonTextView *)self attributedText];
  textContainer = [(CKBalloonTextView *)self textContainer];
  [(CKBalloonTextView *)self textContainerInset];
  +[CKBalloonTextView sizeThatFits:attributedText:maximumNumberOfLines:lineBreakMode:textContainerInsets:outTextAlignmentInsets:outIsSingleLine:](CKBalloonTextView, "sizeThatFits:attributedText:maximumNumberOfLines:lineBreakMode:textContainerInsets:outTextAlignmentInsets:outIsSingleLine:", attributedText, [textContainer maximumNumberOfLines], objc_msgSend(textContainer, "lineBreakMode"), insets, line, width, height, v12, v13, v14, v15);
  v17 = v16;
  v19 = v18;

  v20 = v17;
  v21 = v19;
  result.height = v21;
  result.width = v20;
  return result;
}

+ (CGSize)sizeThatFits:(CGSize)fits attributedText:(id)text maximumNumberOfLines:(unint64_t)lines lineBreakMode:(int64_t)mode textContainerInsets:(UIEdgeInsets)insets outTextAlignmentInsets:(UIEdgeInsets *)alignmentInsets outIsSingleLine:(BOOL *)line
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  height = fits.height;
  width = fits.width;
  textCopy = text;
  if (!sizeThatFits_attributedText_maximumNumberOfLines_lineBreakMode_textContainerInsets_outTextAlignmentInsets_outIsSingleLine__metricsProvider)
  {
    v20 = objc_alloc_init(CKTextMetricsProvider);
    v21 = sizeThatFits_attributedText_maximumNumberOfLines_lineBreakMode_textContainerInsets_outTextAlignmentInsets_outIsSingleLine__metricsProvider;
    sizeThatFits_attributedText_maximumNumberOfLines_lineBreakMode_textContainerInsets_outTextAlignmentInsets_outIsSingleLine__metricsProvider = v20;
  }

  v22 = +[CKUIBehavior sharedBehaviors];
  if (!textCopy)
  {
    textCopy = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:&stru_1F04268F8];
    v23 = IMLogHandleForCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [CKBalloonTextView sizeThatFits:v23 attributedText:? maximumNumberOfLines:? lineBreakMode:? textContainerInsets:? outTextAlignmentInsets:? outIsSingleLine:?];
    }
  }

  v24 = [[CKTextMetricsRequest alloc] initWithAttributedString:textCopy];
  [v22 balloonLineFragmentPadding];
  [(CKTextMetricsRequest *)v24 setLineFragmentPadding:?];
  [(CKTextMetricsRequest *)v24 setLineBreakMode:mode];
  [(CKTextMetricsRequest *)v24 setMaximumNumberOfLines:lines];
  [(CKTextMetricsRequest *)v24 setMaximumWidth:width];
  [(CKTextMetricsRequest *)v24 setMaximumHeight:height];
  [(CKTextMetricsRequest *)v24 setAlreadyPadded:0];
  [(CKTextMetricsRequest *)v24 setContainerInset:top, left, bottom, right];
  v25 = [sizeThatFits_attributedText_maximumNumberOfLines_lineBreakMode_textContainerInsets_outTextAlignmentInsets_outIsSingleLine__metricsProvider metricsForRequest:v24];
  [v25 size];
  v27 = v26;
  v29 = v28;
  if (alignmentInsets)
  {
    [v25 alignmentInset];
    alignmentInsets->top = v30;
    alignmentInsets->left = v31;
    alignmentInsets->bottom = v32;
    alignmentInsets->right = v33;
  }

  if (line)
  {
    *line = [v25 isSingleLine];
  }

  v34 = v27;
  v35 = v29;
  result.height = v35;
  result.width = v34;
  return result;
}

- (void)_interactionStartedFromPreviewItemController:(id)controller
{
  v5.receiver = self;
  v5.super_class = CKBalloonTextView;
  [(CKBalloonTextView *)&v5 _interactionStartedFromPreviewItemController:controller];
  interactionDelegate = [(CKBalloonTextView *)self interactionDelegate];
  [interactionDelegate interactionStartedFromPreviewItemControllerInTextView:self];
}

- (void)_interactionStoppedFromPreviewItemController:(id)controller
{
  v5.receiver = self;
  v5.super_class = CKBalloonTextView;
  [(CKBalloonTextView *)&v5 _interactionStoppedFromPreviewItemController:controller];
  interactionDelegate = [(CKBalloonTextView *)self interactionDelegate];
  [interactionDelegate interactionStoppedFromPreviewItemControllerInTextView:self];
}

- (void)panGestureRecognized:(id)recognized
{
  [recognized locationInView:self];
  v5 = v4;
  v7 = v6;
  [(CKBalloonTextView *)self bounds];
  v10.x = v5;
  v10.y = v7;
  if (CGRectContainsPoint(v11, v10))
  {
    if ([(CKBalloonTextView *)self isFakeSelected])
    {

      [(CKBalloonTextView *)self setFakeSelected:0];
    }
  }

  else
  {
    interactionDelegate = [(CKBalloonTextView *)self interactionDelegate];
    [interactionDelegate interactionTextView:self userDidDragOutsideViewWithPoint:{v5, v7}];
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  dragGestureRecognizer = [(CKBalloonTextView *)self dragGestureRecognizer];

  v6 = dragGestureRecognizer != beginCopy || [beginCopy buttonMask] == 1;
  return v6;
}

- (void)_setFakeSelectionBackgroundColor
{
  attributedText = [(CKBalloonTextView *)self attributedText];
  v4 = [attributedText length];

  [(CKBalloonTextView *)self _setFakeSelectionBackgroundColorForRange:0, v4];
}

- (id)_fakeSelectionBackgroundColor
{
  v4 = +[CKUIBehavior sharedBehaviors];
  enableBalloonTextSelection = [v4 enableBalloonTextSelection];

  if (enableBalloonTextSelection)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CKBalloonTextView.m" lineNumber:436 description:@"Need to set colors for fakeSelectionBackgroundColor for iPad"];
  }

  return 0;
}

- (void)_setFakeSelectionBackgroundColorForRange:(_NSRange)range
{
  v21 = *MEMORY[0x1E69E9840];
  if (range.length)
  {
    length = range.length;
    location = range.location;
    attributedText = [(CKBalloonTextView *)self attributedText];
    v7 = [attributedText mutableCopy];

    v8 = [v7 length];
    v22.location = location;
    v22.length = length;
    v25.location = 0;
    v25.length = v8;
    v9 = NSIntersectionRange(v22, v25);
    if (location != v9.location || length != v9.length)
    {
      v10 = IMLogHandleForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v23.location = 0;
        v23.length = v8;
        v12 = NSStringFromRange(v23);
        v24.location = location;
        v24.length = length;
        v13 = NSStringFromRange(v24);
        v14 = NSStringFromRange(v9);
        v15 = 138412802;
        v16 = v12;
        v17 = 2112;
        v18 = v13;
        v19 = 2112;
        v20 = v14;
        _os_log_error_impl(&dword_19020E000, v10, OS_LOG_TYPE_ERROR, "Attempted to add selection on textRange: %@ with invalid range: %@, corrected to validatedRange: %@", &v15, 0x20u);
      }
    }

    [(CKBalloonTextView *)self _removeFakeSelectionBackgroundColor];
    _fakeSelectionBackgroundColor = [(CKBalloonTextView *)self _fakeSelectionBackgroundColor];
    if (_fakeSelectionBackgroundColor)
    {
      [v7 addAttribute:*MEMORY[0x1E69DB600] value:_fakeSelectionBackgroundColor range:{v9.location, v9.length}];
    }

    [(CKBalloonTextView *)self setAttributedText:v7];
  }
}

- (void)_removeFakeSelectionBackgroundColor
{
  attributedText = [(CKBalloonTextView *)self attributedText];
  v4 = [attributedText length];

  if (v4)
  {
    attributedText2 = [(CKBalloonTextView *)self attributedText];
    v7 = [attributedText2 mutableCopy];

    v6 = [v7 length];
    [v7 removeAttribute:*MEMORY[0x1E69DB600] range:{0, v6}];
    [(CKBalloonTextView *)self setAttributedText:v7];
  }
}

- (void)_updateFakeSelectionBackgroundColor:(id)color
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__CKBalloonTextView__updateFakeSelectionBackgroundColor___block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __57__CKBalloonTextView__updateFakeSelectionBackgroundColor___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isFakeSelected];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _setFakeSelectionBackgroundColor];
  }

  return result;
}

- (void)setFakeSelected:(BOOL)selected
{
  if (self->_fakeSelected != selected)
  {
    self->_fakeSelected = selected;
    if (selected)
    {
      [(CKBalloonTextView *)self _setFakeSelectionBackgroundColor];
    }

    else
    {
      [(CKBalloonTextView *)self _removeFakeSelectionBackgroundColor];
    }
  }
}

- (BOOL)resignFirstResponder
{
  selectedRange = [(CKBalloonTextView *)self selectedRange];
  [(CKBalloonTextView *)self set_selectedRange:selectedRange, v4];
  v12.receiver = self;
  v12.super_class = CKBalloonTextView;
  resignFirstResponder = [(CKBalloonTextView *)&v12 resignFirstResponder];
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isTextSelectionEnabled = [mEMORY[0x1E69A8070] isTextSelectionEnabled];

  if (!isTextSelectionEnabled)
  {
    goto LABEL_5;
  }

  if (resignFirstResponder)
  {
    [(CKBalloonTextView *)self _cleanUpSelectionState];
  }

  [(CKBalloonTextView *)self _selectedRange];
  if (v8)
  {
LABEL_5:
    _selectedRange = [(CKBalloonTextView *)self _selectedRange];
    [(CKBalloonTextView *)self _setFakeSelectionBackgroundColorForRange:_selectedRange, v10];
  }

  return resignFirstResponder;
}

- (BOOL)becomeFirstResponder
{
  v8.receiver = self;
  v8.super_class = CKBalloonTextView;
  becomeFirstResponder = [(CKBalloonTextView *)&v8 becomeFirstResponder];
  [(CKBalloonTextView *)self _selectedRange];
  if (v4)
  {
    [(CKBalloonTextView *)self setSelectable:1];
    [(CKBalloonTextView *)self _removeFakeSelectionBackgroundColor];
    _selectedRange = [(CKBalloonTextView *)self _selectedRange];
    [(CKBalloonTextView *)self setSelectedRange:_selectedRange, v6];
  }

  return becomeFirstResponder;
}

- (void)startSelectionForColor:(char)color
{
  colorCopy = color;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isTextSelectionEnabled = [mEMORY[0x1E69A8070] isTextSelectionEnabled];

  if (isTextSelectionEnabled)
  {
    [(CKBalloonTextView *)self setSelectionColorType:colorCopy];
    [(CKBalloonTextView *)self setSelectable:1];
    [(CKBalloonTextView *)self setUserInteractionEnabled:1];

    [(CKBalloonTextView *)self selectAll:self];
  }
}

- (void)stopSelection
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Stopping selection", v9, 2u);
    }
  }

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isTextSelectionEnabled = [mEMORY[0x1E69A8070] isTextSelectionEnabled];

  if (isTextSelectionEnabled)
  {
    [(CKBalloonTextView *)self setSelectedRange:0, 0];
    if ([(CKBalloonTextView *)self isFirstResponder])
    {
      [(CKBalloonTextView *)self resignFirstResponder];
    }

    interactionDelegate = [(CKBalloonTextView *)self interactionDelegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      interactionDelegate2 = [(CKBalloonTextView *)self interactionDelegate];
      [interactionDelegate2 interactionTextViewDidStopSelection:self];
    }
  }
}

- (void)_cleanUpSelectionState
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isTextSelectionEnabled = [mEMORY[0x1E69A8070] isTextSelectionEnabled];

  if (isTextSelectionEnabled)
  {
    [(CKBalloonTextView *)self setSelectable:0];

    [(CKBalloonTextView *)self setUserInteractionEnabled:0];
  }
}

- (void)setBalloonTextSelectedRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if ([(CKBalloonTextView *)self isFirstResponder])
  {

    [(CKBalloonTextView *)self setSelectedRange:location, length];
  }

  else
  {
    [(CKBalloonTextView *)self _selectedRange];
    if (v6)
    {
      [(CKBalloonTextView *)self _removeFakeSelectionBackgroundColor];
    }

    [(CKBalloonTextView *)self set_selectedRange:location, length];
    [(CKBalloonTextView *)self _selectedRange];
    if (v7)
    {
      _selectedRange = [(CKBalloonTextView *)self _selectedRange];

      [(CKBalloonTextView *)self _setFakeSelectionBackgroundColorForRange:_selectedRange, v8];
    }
  }
}

- (BOOL)_showsEditMenu
{
  [(CKBalloonTextView *)self _selectedRange];
  if (v3)
  {
    return 1;
  }

  [(CKBalloonTextView *)self selectedRange];
  return v5 != 0;
}

+ (BOOL)_textEffectsBalloonDebugHighlightingEnabled
{
  if (_textEffectsBalloonDebugHighlightingEnabled_onceToken != -1)
  {
    +[CKBalloonTextView _textEffectsBalloonDebugHighlightingEnabled];
  }

  return _textEffectsBalloonDebugHighlightingEnabled_enabled;
}

void __64__CKBalloonTextView__textEffectsBalloonDebugHighlightingEnabled__block_invoke()
{
  v0 = [MEMORY[0x1E69A60F0] sharedInstance];
  v1 = [v0 isInternalInstall];

  if (v1)
  {
    v2 = [MEMORY[0x1E695E000] standardUserDefaults];
    _textEffectsBalloonDebugHighlightingEnabled_enabled = [v2 BOOLForKey:@"textEffectsBalloonDebugHighlightingEnabled"];
  }
}

- (void)setAllowsTextAnimations:(BOOL)animations
{
  animationsCopy = animations;
  v11.receiver = self;
  v11.super_class = CKBalloonTextView;
  allowsTextAnimations = [(CKBalloonTextView *)&v11 allowsTextAnimations];
  v10.receiver = self;
  v10.super_class = CKBalloonTextView;
  [(CKBalloonTextView *)&v10 setAllowsTextAnimations:animationsCopy];
  if (allowsTextAnimations != animationsCopy && [objc_opt_class() _textEffectsBalloonDebugHighlightingEnabled])
  {
    if (animationsCopy)
    {
      redColor = [MEMORY[0x1E69DC888] redColor];
      clearColor = [redColor colorWithAlphaComponent:0.5];

      v8 = 1.5;
    }

    else
    {
      clearColor = [MEMORY[0x1E69DC888] clearColor];
      v8 = 0.0;
    }

    layer = [(CKBalloonTextView *)self layer];
    [layer setBorderColor:{objc_msgSend(clearColor, "CGColor")}];
    [layer setBorderWidth:v8];
  }
}

- (CKBalloonTextViewInteractionDelegate)interactionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_interactionDelegate);

  return WeakRetained;
}

- (_NSRange)_selectedRange
{
  p_selectedRange = &self->__selectedRange;
  location = self->__selectedRange.location;
  length = p_selectedRange->length;
  result.length = length;
  result.location = location;
  return result;
}

@end