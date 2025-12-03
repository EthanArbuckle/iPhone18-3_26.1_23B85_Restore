@interface CKTranscriptStatusCell
+ (id)statusButton;
+ (void)transitionFromView:(id)view toView:(id)toView duration:(double)duration options:(unint64_t)options completion:(id)completion;
- (NSAttributedString)attributedButtonText;
- (UIEdgeInsets)buttonAlignmentInsets;
- (UIEdgeInsets)contentAlignmentInsets;
- (double)statusItemInsetFromBalloonEdge;
- (unint64_t)_statusItemInsetEdgeForTranscriptOrientation:(char)orientation;
- (void)addFilter:(id)filter;
- (void)clearFilters;
- (void)configureForChatItem:(id)item context:(id)context animated:(BOOL)animated animationDuration:(double)duration animationCurve:(int64_t)curve;
- (void)layoutSubviewsForAlignmentContents;
- (void)performInsertion:(id)insertion;
- (void)performReload:(id)reload completion:(id)completion;
- (void)performRemoval:(id)removal;
- (void)prepareForReuse;
- (void)setAttributedButtonText:(id)text;
- (void)setOrientation:(char)orientation;
- (void)setPrevBalloonWidth:(double)width;
@end

@implementation CKTranscriptStatusCell

- (void)configureForChatItem:(id)item context:(id)context animated:(BOOL)animated animationDuration:(double)duration animationCurve:(int64_t)curve
{
  animatedCopy = animated;
  itemCopy = item;
  contextCopy = context;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[CKTranscriptStatusCell setButtonAlignmentRelativeToContent:](self, "setButtonAlignmentRelativeToContent:", [itemCopy statusAlignment]);
    v53.receiver = self;
    v53.super_class = CKTranscriptStatusCell;
    [(CKTranscriptStampCell *)&v53 configureForChatItem:itemCopy context:contextCopy animated:animatedCopy animationDuration:curve animationCurve:duration];
    transcriptButtonText = [itemCopy transcriptButtonText];
    [(CKTranscriptStatusCell *)self setAttributedButtonText:transcriptButtonText];

    statusButton = [(CKTranscriptStatusCell *)self statusButton];
    [statusButton contentEdgeInsets];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    [itemCopy buttonSize];
    v25 = v24 + v19 + v23;
    v27 = v26 + v17 + v21;
    [statusButton frame];
    if (v29 != v25 || v28 != v27)
    {
      [statusButton setFrame:?];
      [(CKTranscriptStatusCell *)self setNeedsLayout];
    }

    label = [(CKTranscriptLabelCell *)self label];
    [label frame];
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;
    [label setNumberOfLines:0];
    [itemCopy labelTextAlignmentInsets];
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v47 = v46;
    [itemCopy labelSize];
    if (v37 != v49 + v43 + v47 || v39 != v48 + v41 + v45)
    {
      [label setFrame:{v33, v35}];
      [(CKTranscriptStatusCell *)self setNeedsLayout];
    }

    -[NSObject setUserInteractionEnabled:](statusButton, "setUserInteractionEnabled:", [itemCopy buttonType] != 0);
    if ([itemCopy shouldHideDuringDarkFSM])
    {
      shouldConfigureForDarkFSM = [(CKTranscriptCell *)self shouldConfigureForDarkFSM];
      statusButton2 = [(CKTranscriptStatusCell *)self statusButton];
      [statusButton2 setHidden:shouldConfigureForDarkFSM];
    }
  }

  else
  {
    statusButton = IMLogHandleForCategory();
    if (os_log_type_enabled(statusButton, OS_LOG_TYPE_ERROR))
    {
      [CKTranscriptStatusCell(CKChatItem) configureForChatItem:context:animated:animationDuration:animationCurve:];
    }
  }
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = CKTranscriptStatusCell;
  [(CKTranscriptStampCell *)&v4 prepareForReuse];
  statusButton = [(CKTranscriptStatusCell *)self statusButton];
  [statusButton removeFromSuperview];

  [(CKTranscriptStatusCell *)self setStatusButton:0];
  [(CKTranscriptStatusCell *)self setPreviousBalloonIsReplyContextPreview:0];
}

- (void)setOrientation:(char)orientation
{
  orientationCopy = orientation;
  if ([(CKEditableCollectionViewCell *)self orientation]!= orientation)
  {
    v5.receiver = self;
    v5.super_class = CKTranscriptStatusCell;
    [(CKTranscriptStampCell *)&v5 setOrientation:orientationCopy];
    [(CKTranscriptStatusCell *)self setNeedsLayout];
  }
}

- (void)layoutSubviewsForAlignmentContents
{
  label = [(CKTranscriptLabelCell *)self label];
  [label frame];
  v82 = v4;
  rect = v5;
  v7 = v6;
  v9 = v8;
  v85.receiver = self;
  v85.super_class = CKTranscriptStatusCell;
  [(CKTranscriptStampCell *)&v85 layoutSubviewsForAlignmentContents];
  orientation = [(CKEditableCollectionViewCell *)self orientation];
  [(CKTranscriptStampCell *)self contentAlignmentRect];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = *(MEMORY[0x1E695F058] + 8);
  v19 = *(MEMORY[0x1E695F058] + 24);
  v20 = *MEMORY[0x1E69DDCE0];
  v21 = *(MEMORY[0x1E69DDCE0] + 16);
  v80 = v15;
  v81 = v7;
  if (orientation)
  {
    v22 = v11;
    v72 = v9;
    v23 = *(MEMORY[0x1E69DDCE0] + 24);
    if (orientation == 2)
    {
      v74 = *(MEMORY[0x1E69DDCE0] + 16);
      v77 = *(MEMORY[0x1E695F058] + 24);
      v71 = *(MEMORY[0x1E69DDCE0] + 24);
      v24 = +[CKUIBehavior sharedBehaviors];
      [v24 balloonMaskAlignmentRectInsetsWithTailShape:1];
      v26 = v25 + 1.0;

      [(CKTranscriptStatusCell *)self prevBalloonWidth];
      if (v27 >= 12.0)
      {
        v28 = v27;
      }

      else
      {
        v28 = 12.0;
      }

      v86.origin.x = v13;
      v86.origin.y = v15;
      v86.size.width = v17;
      v86.size.height = v22;
      MaxX = CGRectGetMaxX(v86);
      v23 = v71;
      v21 = v74;
      v19 = v77;
      v30 = MaxX - v28;
    }

    else
    {
      v26 = *(MEMORY[0x1E69DDCE0] + 8);
      v28 = *(MEMORY[0x1E695F058] + 16);
      v30 = *MEMORY[0x1E695F058];
    }

    v38 = v26 + v30;
    v39 = v18 + v20;
    v40 = v28 - (v23 + v26);
    v41 = v19 - (v20 + v21);
    if (orientation == 2)
    {
      v87.origin.x = v26 + v30;
      v87.origin.y = v39;
      v87.size.width = v28 - (v23 + v26);
      v87.size.height = v41;
      v42 = CGRectGetMaxX(v87) - rect;
      v9 = v72;
    }

    else
    {
      v9 = v72;
      v42 = v82;
    }
  }

  else
  {
    v75 = *(MEMORY[0x1E69DDCE0] + 16);
    v78 = *(MEMORY[0x1E695F058] + 24);
    v31 = +[CKUIBehavior sharedBehaviors];
    [v31 balloonMaskTailSizeForTailShape:1];
    v33 = v32;

    v34 = +[CKUIBehavior sharedBehaviors];
    [v34 audioBalloonTimeInset];
    v36 = v35;

    [(CKTranscriptStatusCell *)self prevBalloonWidth];
    if (v37 < 12.0)
    {
      v37 = 12.0;
    }

    v38 = v33 + v13;
    v39 = v18 + v20;
    v40 = v37 - (v36 + v33);
    v41 = v78 - (v20 + v75);
    v42 = v38;
  }

  statusButton = [(CKTranscriptStatusCell *)self statusButton];
  v44 = statusButton;
  if (statusButton)
  {
    v83 = v42;
    [statusButton frame];
    v46 = v45;
    v48 = v47;
    [(CKTranscriptStatusCell *)self buttonAlignmentInsets];
    v76 = v50;
    v79 = v49;
    v73 = v50 + v51;
    v52 = v46 - (v50 + v51);
    v54 = v49 + v53;
    if ([(CKTranscriptStatusCell *)self buttonAlignmentRelativeToContent]|| v40 <= v52)
    {
      v89.origin.x = v38;
      v89.origin.y = v39;
      v89.size.width = v40;
      v89.size.height = v41;
      MinX = CGRectGetMaxX(v89) - v52;
    }

    else
    {
      v88.origin.x = v38;
      v88.origin.y = v39;
      v88.size.width = v40;
      v88.size.height = v41;
      MinX = CGRectGetMinX(v88);
    }

    v57 = v48 - v54;
    if (MinX < v38 && orientation == 0)
    {
      v59 = v38;
    }

    else
    {
      v59 = MinX;
    }

    attributedText = [(CKTranscriptLabelCell *)self attributedText];

    if (attributedText)
    {
      v56 = v81;
      if (orientation == 2)
      {
        v61 = MinX;
      }

      else
      {
        v61 = v83;
      }

      v90.origin.x = v61;
      v90.origin.y = v81;
      v90.size.width = rect;
      v90.size.height = v9;
      if (CGRectGetMaxX(v90) + 6.0 <= v59)
      {
        MinX = v59;
      }

      else if (orientation)
      {
        if (orientation == 2)
        {
          v61 = MinX - (rect + 6.0);
        }

        else
        {
          v61 = v83;
        }
      }

      else
      {
        v91.origin.x = v61;
        v91.origin.y = v81;
        v91.size.width = rect;
        v91.size.height = v9;
        MinX = CGRectGetMaxX(v91) + 6.0;
      }
    }

    else
    {
      MinX = v59;
      v56 = v81;
      v61 = v83;
    }

    [v44 setFrame:{MinX - v76, v80 - v79, v73 + v52, v54 + v57}];
    [v44 __ck_ensureMinimumTouchInsets];
    v42 = v61;
  }

  else
  {
    v56 = v81;
  }

  traitCollection = [(CKTranscriptStatusCell *)self traitCollection];
  [traitCollection displayScale];
  if (v63 == 0.0)
  {
    if (CKMainScreenScale_once_99 != -1)
    {
      [CKTranscriptStatusCell layoutSubviewsForAlignmentContents];
    }

    v64 = *&CKMainScreenScale_sMainScreenScale_99;
    v65 = 1.0;
    if (*&CKMainScreenScale_sMainScreenScale_99 == 0.0)
    {
      v64 = 1.0;
    }

    v66 = floor(v42 * v64) / v64;
    v63 = *&CKMainScreenScale_sMainScreenScale_99;
    if (*&CKMainScreenScale_sMainScreenScale_99 == 0.0)
    {
      v63 = 1.0;
    }

    v67 = *&CKMainScreenScale_sMainScreenScale_99;
    if (*&CKMainScreenScale_sMainScreenScale_99 == 0.0)
    {
      v67 = 1.0;
    }

    v68 = ceil(rect * v67) / v67;
    if (*&CKMainScreenScale_sMainScreenScale_99 != 0.0)
    {
      v65 = *&CKMainScreenScale_sMainScreenScale_99;
    }
  }

  else
  {
    v66 = floor(v42 * v63) / v63;
    v65 = v63;
    v68 = ceil(rect * v63) / v63;
  }

  v69 = floor(v56 * v63) / v63;
  v70 = ceil(v9 * v65) / v65;

  [label setFrame:{v66, v69, v68, v70}];
}

- (UIEdgeInsets)contentAlignmentInsets
{
  v22.receiver = self;
  v22.super_class = CKTranscriptStatusCell;
  [(CKEditableCollectionViewCell *)&v22 contentAlignmentInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isRoundTailedBalloonShapeEnabled = [mEMORY[0x1E69A8070] isRoundTailedBalloonShapeEnabled];

  if (isRoundTailedBalloonShapeEnabled)
  {
    v13 = +[CKUIBehavior sharedBehaviors];
    [(CKTranscriptStatusCell *)self _statusItemInsetEdgeForTranscriptOrientation:[(CKEditableCollectionViewCell *)self orientation]];
    if ([(CKTranscriptStatusCell *)self previousBalloonIsReplyContextPreview])
    {
      [v13 statusItemInsetFromReplyPreviewBalloonEdge];
    }

    else
    {
      [(CKTranscriptStatusCell *)self statusItemInsetFromBalloonEdge];
    }

    [v13 balloonTranscriptInsets];
    UIEdgeInsetsAdd();
    v4 = v14;
    v6 = v15;
    v8 = v16;
    v10 = v17;
  }

  v18 = v4;
  v19 = v6;
  v20 = v8;
  v21 = v10;
  result.right = v21;
  result.bottom = v20;
  result.left = v19;
  result.top = v18;
  return result;
}

- (double)statusItemInsetFromBalloonEdge
{
  v2 = +[CKUIBehavior sharedBehaviors];
  [v2 statusItemInsetFromBalloonEdge];
  v4 = v3;

  return v4;
}

- (unint64_t)_statusItemInsetEdgeForTranscriptOrientation:(char)orientation
{
  if (orientation)
  {
    return 8 * (orientation == 2);
  }

  else
  {
    return 2;
  }
}

- (UIEdgeInsets)buttonAlignmentInsets
{
  statusButton = [(CKTranscriptStatusCell *)self statusButton];
  [statusButton contentEdgeInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (void)performInsertion:(id)insertion
{
  insertionCopy = insertion;
  label = [(CKTranscriptLabelCell *)self label];
  statusButton = [(CKTranscriptStatusCell *)self statusButton];
  [(CKTranscriptStatusCell *)self layoutIfNeeded];
  CGAffineTransformMakeScale(&v30, 0.0, 0.0);
  [label setTransform:&v30];
  CGAffineTransformMakeScale(&v30, 0.0, 0.0);
  [statusButton setTransform:&v30];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __43__CKTranscriptStatusCell_performInsertion___block_invoke;
  v27[3] = &unk_1E72EB8D0;
  v7 = label;
  v28 = v7;
  v8 = statusButton;
  v29 = v8;
  [CKTranscriptStatusCell zoomAnimation:v27 completion:insertionCopy];

  attributedText = [v7 attributedText];
  if (![attributedText length])
  {
    goto LABEL_4;
  }

  v10 = [v8 attributedTitleForState:0];
  v11 = [v10 length];

  if (v11)
  {
    [v7 center];
    v13 = v12;
    v15 = v14;
    [v8 center];
    v17 = v16;
    v19 = v18;
    [v7 setCenter:?];
    [v8 setCenter:{v13, v19}];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __43__CKTranscriptStatusCell_performInsertion___block_invoke_2;
    v20[3] = &unk_1E72F3A20;
    v21 = v7;
    v23 = v13;
    v24 = v15;
    v22 = v8;
    v25 = v17;
    v26 = v19;
    [CKTranscriptStatusCell zoomAnimation:v20 completion:0];

    attributedText = v21;
LABEL_4:
  }
}

uint64_t __43__CKTranscriptStatusCell_performInsertion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = *(MEMORY[0x1E695EFD0] + 16);
  v8 = *MEMORY[0x1E695EFD0];
  v7 = v8;
  v9 = v6;
  v10 = *(MEMORY[0x1E695EFD0] + 32);
  v5 = v10;
  [v2 setTransform:&v8];
  v3 = *(a1 + 40);
  v8 = v7;
  v9 = v6;
  v10 = v5;
  return [v3 setTransform:&v8];
}

uint64_t __43__CKTranscriptStatusCell_performInsertion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setCenter:{*(a1 + 48), *(a1 + 56)}];
  v2 = *(a1 + 40);
  v3 = *(a1 + 64);
  v4 = *(a1 + 72);

  return [v2 setCenter:{v3, v4}];
}

- (void)performReload:(id)reload completion:(id)completion
{
  reloadCopy = reload;
  completionCopy = completion;
  label = [(CKTranscriptLabelCell *)self label];
  if (label)
  {
    createStampLabelView = [objc_opt_class() createStampLabelView];
    [(CKTranscriptStampCell *)self setStampTextView:createStampLabelView];
  }

  statusButton = [(CKTranscriptStatusCell *)self statusButton];
  if (statusButton)
  {
    statusButton2 = [objc_opt_class() statusButton];
    [(CKTranscriptStatusCell *)self setStatusButton:statusButton2];
  }

  if (reloadCopy)
  {
    reloadCopy[2](reloadCopy);
  }

  [(CKTranscriptStatusCell *)self layoutIfNeeded];
  v11 = dispatch_group_create();
  label2 = [(CKTranscriptLabelCell *)self label];
  attributedText = [label attributedText];
  attributedText2 = [label2 attributedText];
  v15 = [attributedText isEqualToAttributedString:attributedText2];

  if (v15)
  {
    superview = [label superview];
    [superview addSubview:label2];

    [label removeFromSuperview];
  }

  else
  {
    dispatch_group_enter(v11);
    v17 = objc_opt_class();
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __51__CKTranscriptStatusCell_performReload_completion___block_invoke;
    v30[3] = &unk_1E72EB9C8;
    v31 = v11;
    [v17 transitionFromView:label toView:label2 duration:327680 options:v30 completion:0.5];
  }

  statusButton3 = [(CKTranscriptStatusCell *)self statusButton];
  v19 = [statusButton attributedTitleForState:0];
  v20 = [statusButton3 attributedTitleForState:0];
  v21 = [v19 isEqualToAttributedString:v20];

  if (v21)
  {
    superview2 = [statusButton superview];
    [superview2 addSubview:statusButton3];

    [statusButton removeFromSuperview];
  }

  else
  {
    dispatch_group_enter(v11);
    v23 = objc_opt_class();
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __51__CKTranscriptStatusCell_performReload_completion___block_invoke_2;
    v28[3] = &unk_1E72EB9C8;
    v29 = v11;
    [v23 transitionFromView:statusButton toView:statusButton3 duration:327680 options:v28 completion:0.5];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__CKTranscriptStatusCell_performReload_completion___block_invoke_3;
  block[3] = &unk_1E72EBDB8;
  v27 = completionCopy;
  v24 = completionCopy;
  dispatch_group_notify(v11, MEMORY[0x1E69E96A0], block);
}

- (void)performRemoval:(id)removal
{
  removalCopy = removal;
  label = [(CKTranscriptLabelCell *)self label];
  statusButton = [(CKTranscriptStatusCell *)self statusButton];
  v7 = MEMORY[0x1E69DD250];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __41__CKTranscriptStatusCell_performRemoval___block_invoke;
  v15[3] = &unk_1E72EB8D0;
  v16 = label;
  v17 = statusButton;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __41__CKTranscriptStatusCell_performRemoval___block_invoke_2;
  v11[3] = &unk_1E72F2C80;
  v12 = v16;
  v13 = v17;
  v14 = removalCopy;
  v8 = removalCopy;
  v9 = v17;
  v10 = v16;
  [v7 animateWithDuration:327680 delay:v15 options:v11 animations:0.25 completion:0.0];
}

uint64_t __41__CKTranscriptStatusCell_performRemoval___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 40);

  return [v2 setAlpha:0.0];
}

uint64_t __41__CKTranscriptStatusCell_performRemoval___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  [*(a1 + 40) setAlpha:1.0];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)setAttributedButtonText:(id)text
{
  textCopy = text;
  attributedButtonText = [(CKTranscriptStatusCell *)self attributedButtonText];

  v5 = textCopy;
  if (attributedButtonText == textCopy)
  {
    goto LABEL_13;
  }

  attributedButtonText2 = [(CKTranscriptStatusCell *)self attributedButtonText];
  string = [attributedButtonText2 string];
  string2 = [textCopy string];
  v9 = [string isEqualToString:string2];

  v5 = textCopy;
  if (v9)
  {
    goto LABEL_13;
  }

  statusButton = [(CKTranscriptStatusCell *)self statusButton];
  v11 = textCopy;
  if (!textCopy)
  {
    [statusButton removeFromSuperview];
    [(CKTranscriptStatusCell *)self setStatusButton:0];
    statusButton2 = 0;
    goto LABEL_7;
  }

  if (!statusButton)
  {
    statusButton2 = [objc_opt_class() statusButton];
    [(CKTranscriptStatusCell *)self setStatusButton:statusButton2];
    statusButton = [(CKEditableCollectionViewCell *)self contentView];
    [statusButton addSubview:statusButton2];
LABEL_7:

    statusButton = statusButton2;
    v11 = textCopy;
  }

  v13 = v11;
  if ([(CKTranscriptCell *)self shouldConfigureForDarkFSM])
  {
    v14 = +[CKUIBehavior sharedBehaviors];
    theme = [v14 theme];
    v16 = [theme balloonColorsForColorType:0xFFFFFFFFLL];
    lastObject = [v16 lastObject];

    v18 = [v13 mutableCopy];
    [v18 addAttribute:*MEMORY[0x1E69DB650] value:lastObject range:{0, objc_msgSend(v18, "length")}];
    v19 = [v18 copy];

    v13 = v19;
  }

  [statusButton setAttributedTitle:v13 forState:0];
  if (statusButton)
  {
    [(CKTranscriptStatusCell *)self setNeedsLayout];
  }

  v5 = textCopy;
LABEL_13:
}

- (NSAttributedString)attributedButtonText
{
  statusButton = [(CKTranscriptStatusCell *)self statusButton];
  v3 = [statusButton attributedTitleForState:0];

  return v3;
}

- (void)setPrevBalloonWidth:(double)width
{
  if (self->_prevBalloonWidth != width)
  {
    self->_prevBalloonWidth = width;
    [(CKTranscriptStatusCell *)self setNeedsLayout];
  }
}

- (void)addFilter:(id)filter
{
  v12.receiver = self;
  v12.super_class = CKTranscriptStatusCell;
  filterCopy = filter;
  [(CKTranscriptStampCell *)&v12 addFilter:filterCopy];
  v5 = [(CKTranscriptStatusCell *)self statusButton:v12.receiver];
  layer = [v5 layer];
  [layer setAllowsGroupBlending:0];

  layer2 = [v5 layer];
  [layer2 setAllowsGroupOpacity:0];

  layer3 = [v5 layer];
  textCompositingFilter = [filterCopy textCompositingFilter];
  [layer3 setCompositingFilter:textCompositingFilter];

  [filterCopy contentAlpha];
  v11 = v10;

  [v5 setAlpha:v11];
}

- (void)clearFilters
{
  v7.receiver = self;
  v7.super_class = CKTranscriptStatusCell;
  [(CKTranscriptStampCell *)&v7 clearFilters];
  statusButton = [(CKTranscriptStatusCell *)self statusButton];
  layer = [statusButton layer];
  [layer setAllowsGroupBlending:1];

  layer2 = [statusButton layer];
  [layer2 setAllowsGroupOpacity:1];

  layer3 = [statusButton layer];
  [layer3 setCompositingFilter:0];

  [statusButton setAlpha:1.0];
}

+ (id)statusButton
{
  v2 = +[CKUIBehavior sharedBehaviors];
  transcriptStatusCellButtonConfiguration = [v2 transcriptStatusCellButtonConfiguration];

  v4 = [CKTranscriptLegibilityButton buttonWithConfiguration:transcriptStatusCellButtonConfiguration primaryAction:0];
  [v4 setConfigurationUpdateHandler:&__block_literal_global_280];
  [v4 setEnabled:CKIsRunningInMessagesNotificationExtension() == 0];

  return v4;
}

void __38__CKTranscriptStatusCell_statusButton__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 traitCollection];
  v4 = qword_190DD1910[[v3 userInterfaceStyle] == 2];

  v5 = MEMORY[0x1E69DD250];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__CKTranscriptStatusCell_statusButton__block_invoke_2;
  v7[3] = &unk_1E72ED810;
  v8 = v2;
  v9 = v4;
  v6 = v2;
  [v5 animateWithDuration:327684 delay:v7 options:0 animations:0.2 completion:0.0];
}

uint64_t __38__CKTranscriptStatusCell_statusButton__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) isHighlighted];
  v3 = 1.0;
  if (v2)
  {
    v3 = *(a1 + 40);
  }

  v4 = *(a1 + 32);

  return [v4 setAlpha:v3];
}

+ (void)transitionFromView:(id)view toView:(id)toView duration:(double)duration options:(unint64_t)options completion:(id)completion
{
  viewCopy = view;
  toViewCopy = toView;
  v13 = duration * 0.5;
  completionCopy = completion;
  superview = [viewCopy superview];
  [superview addSubview:toViewCopy];

  [toViewCopy setAlpha:0.0];
  v16 = MEMORY[0x1E69DD250];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __80__CKTranscriptStatusCell_transitionFromView_toView_duration_options_completion___block_invoke;
  v24[3] = &unk_1E72EBA18;
  v25 = viewCopy;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __80__CKTranscriptStatusCell_transitionFromView_toView_duration_options_completion___block_invoke_2;
  v22[3] = &unk_1E72EB9C8;
  v23 = v25;
  v17 = v25;
  [v16 animateWithDuration:options delay:v24 options:v22 animations:v13 completion:0.0];
  v18 = MEMORY[0x1E69DD250];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __80__CKTranscriptStatusCell_transitionFromView_toView_duration_options_completion___block_invoke_3;
  v20[3] = &unk_1E72EBA18;
  v21 = toViewCopy;
  v19 = toViewCopy;
  [v18 animateWithDuration:options delay:v20 options:completionCopy animations:v13 completion:v13];
}

@end