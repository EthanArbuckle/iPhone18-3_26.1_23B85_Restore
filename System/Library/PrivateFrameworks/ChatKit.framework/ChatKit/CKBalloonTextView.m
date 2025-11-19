@interface CKBalloonTextView
+ (BOOL)_textEffectsBalloonDebugHighlightingEnabled;
+ (CGSize)sizeThatFits:(CGSize)a3 attributedText:(id)a4 maximumNumberOfLines:(unint64_t)a5 lineBreakMode:(int64_t)a6 textContainerInsets:(UIEdgeInsets)a7 outTextAlignmentInsets:(UIEdgeInsets *)a8 outIsSingleLine:(BOOL *)a9;
+ (id)makeTextView;
+ (id)makeTextViewUsingConfiguration:(id)a3;
+ (id)makeTextViewUsingTextKit2UsingConfiguration:(id)a3;
+ (void)_commonTextViewContainerSetup:(id)a3;
- (BOOL)_showsEditMenu;
- (BOOL)becomeFirstResponder;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)resignFirstResponder;
- (CGSize)sizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4 isSingleLine:(BOOL *)a5;
- (CKBalloonTextViewInteractionDelegate)interactionDelegate;
- (NSString)description;
- (_NSRange)_selectedRange;
- (id)_fakeSelectionBackgroundColor;
- (id)_textWithHyphenationAppliedForAttributedText:(id)a3;
- (id)initReadonlyAndUnselectableWithFrame:(CGRect)a3 textContainer:(id)a4;
- (id)selectionBarColor;
- (id)selectionHighlightColor;
- (void)_cleanUpSelectionState;
- (void)_displayAttributedTextIfPossible:(id)a3 applyHyphenation:(BOOL)a4;
- (void)_interactionStartedFromPreviewItemController:(id)a3;
- (void)_interactionStoppedFromPreviewItemController:(id)a3;
- (void)_removeFakeSelectionBackgroundColor;
- (void)_setFakeSelectionBackgroundColor;
- (void)_setFakeSelectionBackgroundColorForRange:(_NSRange)a3;
- (void)_updateFakeSelectionBackgroundColor:(id)a3;
- (void)copy:(id)a3;
- (void)didMoveToWindow;
- (void)panGestureRecognized:(id)a3;
- (void)setAllowsTextAnimations:(BOOL)a3;
- (void)setAttributedText:(id)a3;
- (void)setBalloonTextSelectedRange:(_NSRange)a3;
- (void)setFakeSelected:(BOOL)a3;
- (void)startSelectionForColor:(char)a3;
- (void)stopSelection;
- (void)viewDidMoveToSuperview;
@end

@implementation CKBalloonTextView

+ (id)makeTextView
{
  v3 = +[CKBalloonTextViewConfiguration defaultConfiguration];
  v4 = [a1 makeTextViewUsingConfiguration:v3];

  return v4;
}

+ (id)makeTextViewUsingConfiguration:(id)a3
{
  v3 = [a1 makeTextViewUsingTextKit2UsingConfiguration:a3];
  [v3 setShowsVerticalScrollIndicator:0];
  [v3 setShowsHorizontalScrollIndicator:0];
  [v3 setBackgroundColor:0];
  [v3 setContentMode:11];
  v4 = +[CKUIBehavior sharedBehaviors];
  v5 = [v4 enableBalloonTextSelection];

  if (v5)
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

+ (void)_commonTextViewContainerSetup:(id)a3
{
  v3 = a3;
  [v3 setSize:{0.0, 1.79769313e308}];
  [v3 setWidthTracksTextView:1];
  [v3 setHeightTracksTextView:1];
}

+ (id)makeTextViewUsingTextKit2UsingConfiguration:(id)a3
{
  v4 = MEMORY[0x1E69DB808];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = objc_alloc_init(CKTextStorage);
  [v6 setTextStorage:v7];

  v8 = objc_alloc_init(MEMORY[0x1E69DB828]);
  v9 = objc_alloc_init(MEMORY[0x1E69DB800]);
  [v8 setTextContainer:v9];
  [v6 addTextLayoutManager:v8];
  v10 = [a1 instancesRespondToSelector:sel_initReadonlyAndUnselectableWithFrame_textContainer_textLayoutManagerEnabled_];
  v11 = [a1 alloc];
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
  v18 = [v5 expressiveTextEnabled];

  if (v18)
  {
    if (([MEMORY[0x1E69DD168] ck_supportsDynamicallyTogglingAllowsTextAnimations] & 1) == 0)
    {
      [v17 setAllowsTextAnimations:1];
    }

    v19 = [v17 textLayoutManager];
    [v19 setRequiresCTLineRef:1];
  }

  v20 = [v17 textContainer];
  [a1 _commonTextViewContainerSetup:v20];

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
  v3 = [(CKBalloonTextView *)self superview];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v14 = self;
    v5 = &v14;
LABEL_6:
    v5[1] = CKBalloonTextView;
    v11 = objc_msgSendSuper2(v5, sel_selectionHighlightColor, v13);
    goto LABEL_7;
  }

  v6 = [(CKBalloonTextView *)self superview];
  objc_opt_class();
  v7 = objc_opt_isKindOfClass();

  if ((v7 & 1) == 0 || (-[CKBalloonTextView superview](self, "superview"), v8 = objc_claimAutoreleasedReturnValue(), +[CKUIBehavior sharedBehaviors](CKUIBehavior, "sharedBehaviors"), v9 = objc_claimAutoreleasedReturnValue(), [v9 theme], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "selectionHighlightColorOverrideForColorType:", objc_msgSend(v8, "color")), v11 = objc_claimAutoreleasedReturnValue(), v10, v9, v8, !v11))
  {
    v13 = self;
    v5 = &v13;
    goto LABEL_6;
  }

LABEL_7:

  return v11;
}

- (id)selectionBarColor
{
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isTextSelectionEnabled];

  if (v4)
  {
    v5 = +[CKUIBehavior sharedBehaviors];
    v6 = [v5 theme];
    v7 = [v6 selectionBarColorOverrideForColorType:{-[CKBalloonTextView selectionColorType](self, "selectionColorType")}];

    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v12.receiver = self;
      v12.super_class = CKBalloonTextView;
      v8 = [(CKBalloonTextView *)&v12 selectionBarColor];
    }

    v9 = v8;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = CKBalloonTextView;
    v9 = [(CKBalloonTextView *)&v11 selectionBarColor];
  }

  return v9;
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

- (id)initReadonlyAndUnselectableWithFrame:(CGRect)a3 textContainer:(id)a4
{
  v11.receiver = self;
  v11.super_class = CKBalloonTextView;
  v4 = [(CKBalloonTextView *)&v11 initReadonlyAndUnselectableWithFrame:a4 textContainer:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v4)
  {
    v5 = +[CKUIBehavior sharedBehaviors];
    [v5 balloonTextContainerInset];
    [v4 setTextContainerInset:?];

    v6 = [v4 textContainer];
    v7 = +[CKUIBehavior sharedBehaviors];
    [v7 balloonLineFragmentPadding];
    [v6 setLineFragmentPadding:?];

    v8 = [v4 layoutManager];
    [v8 setBackgroundLayoutEnabled:0];

    v9 = [v4 layoutManager];
    [v9 setSynchronizesAlignmentToDirection:1];

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
  v3 = [(CKBalloonTextView *)self attributedText];
  [(CKBalloonTextView *)self _displayAttributedTextIfPossible:v3 applyHyphenation:1];
}

- (void)viewDidMoveToSuperview
{
  v4.receiver = self;
  v4.super_class = CKBalloonTextView;
  [(CKBalloonTextView *)&v4 viewDidMoveToSuperview];
  v3 = [(CKBalloonTextView *)self attributedText];
  [(CKBalloonTextView *)self _displayAttributedTextIfPossible:v3 applyHyphenation:1];
}

- (void)_displayAttributedTextIfPossible:(id)a3 applyHyphenation:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(CKBalloonTextView *)self superview];
  v8 = +[CKPrintController sharedInstance];
  v9 = [v8 isPrinting];

  if ((v9 & 1) != 0 || v7)
  {
    v10 = v6;
    if (v4)
    {
      v11 = [(CKBalloonTextView *)self _textWithHyphenationAppliedForAttributedText:v10];

      v10 = v11;
    }

    v12.receiver = self;
    v12.super_class = CKBalloonTextView;
    [(CKBalloonTextView *)&v12 setAttributedText:v10];
  }
}

- (void)setAttributedText:(id)a3
{
  if (self->_attributedText != a3)
  {
    v4 = [(CKBalloonTextView *)self _textWithHyphenationAppliedForAttributedText:?];
    attributedText = self->_attributedText;
    self->_attributedText = v4;

    v6 = self->_attributedText;

    [(CKBalloonTextView *)self _displayAttributedTextIfPossible:v6 applyHyphenation:0];
  }
}

- (id)_textWithHyphenationAppliedForAttributedText:(id)a3
{
  v3 = [a3 mutableCopy];
  v4 = +[CKUIBehavior sharedBehaviors];
  v5 = [v4 balloonParagraphStyle];

  if (!v5)
  {
    v5 = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
  }

  [v3 addAttribute:*MEMORY[0x1E69DB688] value:v5 range:{0, objc_msgSend(v3, "length")}];

  return v3;
}

- (void)copy:(id)a3
{
  v4 = [(CKBalloonTextView *)self interactionDelegate];
  [v4 interactionTextViewShouldCopyToPasteboard:self];
}

- (CGSize)sizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4 isSingleLine:(BOOL *)a5
{
  height = a3.height;
  width = a3.width;
  v10 = [(CKBalloonTextView *)self attributedText];
  v11 = [(CKBalloonTextView *)self textContainer];
  [(CKBalloonTextView *)self textContainerInset];
  +[CKBalloonTextView sizeThatFits:attributedText:maximumNumberOfLines:lineBreakMode:textContainerInsets:outTextAlignmentInsets:outIsSingleLine:](CKBalloonTextView, "sizeThatFits:attributedText:maximumNumberOfLines:lineBreakMode:textContainerInsets:outTextAlignmentInsets:outIsSingleLine:", v10, [v11 maximumNumberOfLines], objc_msgSend(v11, "lineBreakMode"), a4, a5, width, height, v12, v13, v14, v15);
  v17 = v16;
  v19 = v18;

  v20 = v17;
  v21 = v19;
  result.height = v21;
  result.width = v20;
  return result;
}

+ (CGSize)sizeThatFits:(CGSize)a3 attributedText:(id)a4 maximumNumberOfLines:(unint64_t)a5 lineBreakMode:(int64_t)a6 textContainerInsets:(UIEdgeInsets)a7 outTextAlignmentInsets:(UIEdgeInsets *)a8 outIsSingleLine:(BOOL *)a9
{
  right = a7.right;
  bottom = a7.bottom;
  left = a7.left;
  top = a7.top;
  height = a3.height;
  width = a3.width;
  v19 = a4;
  if (!sizeThatFits_attributedText_maximumNumberOfLines_lineBreakMode_textContainerInsets_outTextAlignmentInsets_outIsSingleLine__metricsProvider)
  {
    v20 = objc_alloc_init(CKTextMetricsProvider);
    v21 = sizeThatFits_attributedText_maximumNumberOfLines_lineBreakMode_textContainerInsets_outTextAlignmentInsets_outIsSingleLine__metricsProvider;
    sizeThatFits_attributedText_maximumNumberOfLines_lineBreakMode_textContainerInsets_outTextAlignmentInsets_outIsSingleLine__metricsProvider = v20;
  }

  v22 = +[CKUIBehavior sharedBehaviors];
  if (!v19)
  {
    v19 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:&stru_1F04268F8];
    v23 = IMLogHandleForCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [CKBalloonTextView sizeThatFits:v23 attributedText:? maximumNumberOfLines:? lineBreakMode:? textContainerInsets:? outTextAlignmentInsets:? outIsSingleLine:?];
    }
  }

  v24 = [[CKTextMetricsRequest alloc] initWithAttributedString:v19];
  [v22 balloonLineFragmentPadding];
  [(CKTextMetricsRequest *)v24 setLineFragmentPadding:?];
  [(CKTextMetricsRequest *)v24 setLineBreakMode:a6];
  [(CKTextMetricsRequest *)v24 setMaximumNumberOfLines:a5];
  [(CKTextMetricsRequest *)v24 setMaximumWidth:width];
  [(CKTextMetricsRequest *)v24 setMaximumHeight:height];
  [(CKTextMetricsRequest *)v24 setAlreadyPadded:0];
  [(CKTextMetricsRequest *)v24 setContainerInset:top, left, bottom, right];
  v25 = [sizeThatFits_attributedText_maximumNumberOfLines_lineBreakMode_textContainerInsets_outTextAlignmentInsets_outIsSingleLine__metricsProvider metricsForRequest:v24];
  [v25 size];
  v27 = v26;
  v29 = v28;
  if (a8)
  {
    [v25 alignmentInset];
    a8->top = v30;
    a8->left = v31;
    a8->bottom = v32;
    a8->right = v33;
  }

  if (a9)
  {
    *a9 = [v25 isSingleLine];
  }

  v34 = v27;
  v35 = v29;
  result.height = v35;
  result.width = v34;
  return result;
}

- (void)_interactionStartedFromPreviewItemController:(id)a3
{
  v5.receiver = self;
  v5.super_class = CKBalloonTextView;
  [(CKBalloonTextView *)&v5 _interactionStartedFromPreviewItemController:a3];
  v4 = [(CKBalloonTextView *)self interactionDelegate];
  [v4 interactionStartedFromPreviewItemControllerInTextView:self];
}

- (void)_interactionStoppedFromPreviewItemController:(id)a3
{
  v5.receiver = self;
  v5.super_class = CKBalloonTextView;
  [(CKBalloonTextView *)&v5 _interactionStoppedFromPreviewItemController:a3];
  v4 = [(CKBalloonTextView *)self interactionDelegate];
  [v4 interactionStoppedFromPreviewItemControllerInTextView:self];
}

- (void)panGestureRecognized:(id)a3
{
  [a3 locationInView:self];
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
    v8 = [(CKBalloonTextView *)self interactionDelegate];
    [v8 interactionTextView:self userDidDragOutsideViewWithPoint:{v5, v7}];
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(CKBalloonTextView *)self dragGestureRecognizer];

  v6 = v5 != v4 || [v4 buttonMask] == 1;
  return v6;
}

- (void)_setFakeSelectionBackgroundColor
{
  v3 = [(CKBalloonTextView *)self attributedText];
  v4 = [v3 length];

  [(CKBalloonTextView *)self _setFakeSelectionBackgroundColorForRange:0, v4];
}

- (id)_fakeSelectionBackgroundColor
{
  v4 = +[CKUIBehavior sharedBehaviors];
  v5 = [v4 enableBalloonTextSelection];

  if (v5)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"CKBalloonTextView.m" lineNumber:436 description:@"Need to set colors for fakeSelectionBackgroundColor for iPad"];
  }

  return 0;
}

- (void)_setFakeSelectionBackgroundColorForRange:(_NSRange)a3
{
  v21 = *MEMORY[0x1E69E9840];
  if (a3.length)
  {
    length = a3.length;
    location = a3.location;
    v6 = [(CKBalloonTextView *)self attributedText];
    v7 = [v6 mutableCopy];

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
    v11 = [(CKBalloonTextView *)self _fakeSelectionBackgroundColor];
    if (v11)
    {
      [v7 addAttribute:*MEMORY[0x1E69DB600] value:v11 range:{v9.location, v9.length}];
    }

    [(CKBalloonTextView *)self setAttributedText:v7];
  }
}

- (void)_removeFakeSelectionBackgroundColor
{
  v3 = [(CKBalloonTextView *)self attributedText];
  v4 = [v3 length];

  if (v4)
  {
    v5 = [(CKBalloonTextView *)self attributedText];
    v7 = [v5 mutableCopy];

    v6 = [v7 length];
    [v7 removeAttribute:*MEMORY[0x1E69DB600] range:{0, v6}];
    [(CKBalloonTextView *)self setAttributedText:v7];
  }
}

- (void)_updateFakeSelectionBackgroundColor:(id)a3
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

- (void)setFakeSelected:(BOOL)a3
{
  if (self->_fakeSelected != a3)
  {
    self->_fakeSelected = a3;
    if (a3)
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
  v3 = [(CKBalloonTextView *)self selectedRange];
  [(CKBalloonTextView *)self set_selectedRange:v3, v4];
  v12.receiver = self;
  v12.super_class = CKBalloonTextView;
  v5 = [(CKBalloonTextView *)&v12 resignFirstResponder];
  v6 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v7 = [v6 isTextSelectionEnabled];

  if (!v7)
  {
    goto LABEL_5;
  }

  if (v5)
  {
    [(CKBalloonTextView *)self _cleanUpSelectionState];
  }

  [(CKBalloonTextView *)self _selectedRange];
  if (v8)
  {
LABEL_5:
    v9 = [(CKBalloonTextView *)self _selectedRange];
    [(CKBalloonTextView *)self _setFakeSelectionBackgroundColorForRange:v9, v10];
  }

  return v5;
}

- (BOOL)becomeFirstResponder
{
  v8.receiver = self;
  v8.super_class = CKBalloonTextView;
  v3 = [(CKBalloonTextView *)&v8 becomeFirstResponder];
  [(CKBalloonTextView *)self _selectedRange];
  if (v4)
  {
    [(CKBalloonTextView *)self setSelectable:1];
    [(CKBalloonTextView *)self _removeFakeSelectionBackgroundColor];
    v5 = [(CKBalloonTextView *)self _selectedRange];
    [(CKBalloonTextView *)self setSelectedRange:v5, v6];
  }

  return v3;
}

- (void)startSelectionForColor:(char)a3
{
  v3 = a3;
  v5 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v6 = [v5 isTextSelectionEnabled];

  if (v6)
  {
    [(CKBalloonTextView *)self setSelectionColorType:v3];
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

  v4 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v5 = [v4 isTextSelectionEnabled];

  if (v5)
  {
    [(CKBalloonTextView *)self setSelectedRange:0, 0];
    if ([(CKBalloonTextView *)self isFirstResponder])
    {
      [(CKBalloonTextView *)self resignFirstResponder];
    }

    v6 = [(CKBalloonTextView *)self interactionDelegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(CKBalloonTextView *)self interactionDelegate];
      [v8 interactionTextViewDidStopSelection:self];
    }
  }
}

- (void)_cleanUpSelectionState
{
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isTextSelectionEnabled];

  if (v4)
  {
    [(CKBalloonTextView *)self setSelectable:0];

    [(CKBalloonTextView *)self setUserInteractionEnabled:0];
  }
}

- (void)setBalloonTextSelectedRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
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
      v9 = [(CKBalloonTextView *)self _selectedRange];

      [(CKBalloonTextView *)self _setFakeSelectionBackgroundColorForRange:v9, v8];
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

- (void)setAllowsTextAnimations:(BOOL)a3
{
  v3 = a3;
  v11.receiver = self;
  v11.super_class = CKBalloonTextView;
  v5 = [(CKBalloonTextView *)&v11 allowsTextAnimations];
  v10.receiver = self;
  v10.super_class = CKBalloonTextView;
  [(CKBalloonTextView *)&v10 setAllowsTextAnimations:v3];
  if (v5 != v3 && [objc_opt_class() _textEffectsBalloonDebugHighlightingEnabled])
  {
    if (v3)
    {
      v6 = [MEMORY[0x1E69DC888] redColor];
      v7 = [v6 colorWithAlphaComponent:0.5];

      v8 = 1.5;
    }

    else
    {
      v7 = [MEMORY[0x1E69DC888] clearColor];
      v8 = 0.0;
    }

    v9 = [(CKBalloonTextView *)self layer];
    [v9 setBorderColor:{objc_msgSend(v7, "CGColor")}];
    [v9 setBorderWidth:v8];
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