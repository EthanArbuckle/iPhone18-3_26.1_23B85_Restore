@interface CKTranscriptStatusCell
+ (id)statusButton;
+ (void)transitionFromView:(id)a3 toView:(id)a4 duration:(double)a5 options:(unint64_t)a6 completion:(id)a7;
- (NSAttributedString)attributedButtonText;
- (UIEdgeInsets)buttonAlignmentInsets;
- (UIEdgeInsets)contentAlignmentInsets;
- (double)statusItemInsetFromBalloonEdge;
- (unint64_t)_statusItemInsetEdgeForTranscriptOrientation:(char)a3;
- (void)addFilter:(id)a3;
- (void)clearFilters;
- (void)configureForChatItem:(id)a3 context:(id)a4 animated:(BOOL)a5 animationDuration:(double)a6 animationCurve:(int64_t)a7;
- (void)layoutSubviewsForAlignmentContents;
- (void)performInsertion:(id)a3;
- (void)performReload:(id)a3 completion:(id)a4;
- (void)performRemoval:(id)a3;
- (void)prepareForReuse;
- (void)setAttributedButtonText:(id)a3;
- (void)setOrientation:(char)a3;
- (void)setPrevBalloonWidth:(double)a3;
@end

@implementation CKTranscriptStatusCell

- (void)configureForChatItem:(id)a3 context:(id)a4 animated:(BOOL)a5 animationDuration:(double)a6 animationCurve:(int64_t)a7
{
  v9 = a5;
  v12 = a3;
  v13 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[CKTranscriptStatusCell setButtonAlignmentRelativeToContent:](self, "setButtonAlignmentRelativeToContent:", [v12 statusAlignment]);
    v53.receiver = self;
    v53.super_class = CKTranscriptStatusCell;
    [(CKTranscriptStampCell *)&v53 configureForChatItem:v12 context:v13 animated:v9 animationDuration:a7 animationCurve:a6];
    v14 = [v12 transcriptButtonText];
    [(CKTranscriptStatusCell *)self setAttributedButtonText:v14];

    v15 = [(CKTranscriptStatusCell *)self statusButton];
    [v15 contentEdgeInsets];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    [v12 buttonSize];
    v25 = v24 + v19 + v23;
    v27 = v26 + v17 + v21;
    [v15 frame];
    if (v29 != v25 || v28 != v27)
    {
      [v15 setFrame:?];
      [(CKTranscriptStatusCell *)self setNeedsLayout];
    }

    v31 = [(CKTranscriptLabelCell *)self label];
    [v31 frame];
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;
    [v31 setNumberOfLines:0];
    [v12 labelTextAlignmentInsets];
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v47 = v46;
    [v12 labelSize];
    if (v37 != v49 + v43 + v47 || v39 != v48 + v41 + v45)
    {
      [v31 setFrame:{v33, v35}];
      [(CKTranscriptStatusCell *)self setNeedsLayout];
    }

    -[NSObject setUserInteractionEnabled:](v15, "setUserInteractionEnabled:", [v12 buttonType] != 0);
    if ([v12 shouldHideDuringDarkFSM])
    {
      v51 = [(CKTranscriptCell *)self shouldConfigureForDarkFSM];
      v52 = [(CKTranscriptStatusCell *)self statusButton];
      [v52 setHidden:v51];
    }
  }

  else
  {
    v15 = IMLogHandleForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
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
  v3 = [(CKTranscriptStatusCell *)self statusButton];
  [v3 removeFromSuperview];

  [(CKTranscriptStatusCell *)self setStatusButton:0];
  [(CKTranscriptStatusCell *)self setPreviousBalloonIsReplyContextPreview:0];
}

- (void)setOrientation:(char)a3
{
  v3 = a3;
  if ([(CKEditableCollectionViewCell *)self orientation]!= a3)
  {
    v5.receiver = self;
    v5.super_class = CKTranscriptStatusCell;
    [(CKTranscriptStampCell *)&v5 setOrientation:v3];
    [(CKTranscriptStatusCell *)self setNeedsLayout];
  }
}

- (void)layoutSubviewsForAlignmentContents
{
  v3 = [(CKTranscriptLabelCell *)self label];
  [v3 frame];
  v82 = v4;
  rect = v5;
  v7 = v6;
  v9 = v8;
  v85.receiver = self;
  v85.super_class = CKTranscriptStatusCell;
  [(CKTranscriptStampCell *)&v85 layoutSubviewsForAlignmentContents];
  v10 = [(CKEditableCollectionViewCell *)self orientation];
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
  if (v10)
  {
    v22 = v11;
    v72 = v9;
    v23 = *(MEMORY[0x1E69DDCE0] + 24);
    if (v10 == 2)
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
    if (v10 == 2)
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

  v43 = [(CKTranscriptStatusCell *)self statusButton];
  v44 = v43;
  if (v43)
  {
    v83 = v42;
    [v43 frame];
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
    if (MinX < v38 && v10 == 0)
    {
      v59 = v38;
    }

    else
    {
      v59 = MinX;
    }

    v60 = [(CKTranscriptLabelCell *)self attributedText];

    if (v60)
    {
      v56 = v81;
      if (v10 == 2)
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

      else if (v10)
      {
        if (v10 == 2)
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

  v62 = [(CKTranscriptStatusCell *)self traitCollection];
  [v62 displayScale];
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

  [v3 setFrame:{v66, v69, v68, v70}];
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
  v11 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v12 = [v11 isRoundTailedBalloonShapeEnabled];

  if (v12)
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

- (unint64_t)_statusItemInsetEdgeForTranscriptOrientation:(char)a3
{
  if (a3)
  {
    return 8 * (a3 == 2);
  }

  else
  {
    return 2;
  }
}

- (UIEdgeInsets)buttonAlignmentInsets
{
  v2 = [(CKTranscriptStatusCell *)self statusButton];
  [v2 contentEdgeInsets];
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

- (void)performInsertion:(id)a3
{
  v4 = a3;
  v5 = [(CKTranscriptLabelCell *)self label];
  v6 = [(CKTranscriptStatusCell *)self statusButton];
  [(CKTranscriptStatusCell *)self layoutIfNeeded];
  CGAffineTransformMakeScale(&v30, 0.0, 0.0);
  [v5 setTransform:&v30];
  CGAffineTransformMakeScale(&v30, 0.0, 0.0);
  [v6 setTransform:&v30];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __43__CKTranscriptStatusCell_performInsertion___block_invoke;
  v27[3] = &unk_1E72EB8D0;
  v7 = v5;
  v28 = v7;
  v8 = v6;
  v29 = v8;
  [CKTranscriptStatusCell zoomAnimation:v27 completion:v4];

  v9 = [v7 attributedText];
  if (![v9 length])
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

    v9 = v21;
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

- (void)performReload:(id)a3 completion:(id)a4
{
  v6 = a3;
  v25 = a4;
  v7 = [(CKTranscriptLabelCell *)self label];
  if (v7)
  {
    v8 = [objc_opt_class() createStampLabelView];
    [(CKTranscriptStampCell *)self setStampTextView:v8];
  }

  v9 = [(CKTranscriptStatusCell *)self statusButton];
  if (v9)
  {
    v10 = [objc_opt_class() statusButton];
    [(CKTranscriptStatusCell *)self setStatusButton:v10];
  }

  if (v6)
  {
    v6[2](v6);
  }

  [(CKTranscriptStatusCell *)self layoutIfNeeded];
  v11 = dispatch_group_create();
  v12 = [(CKTranscriptLabelCell *)self label];
  v13 = [v7 attributedText];
  v14 = [v12 attributedText];
  v15 = [v13 isEqualToAttributedString:v14];

  if (v15)
  {
    v16 = [v7 superview];
    [v16 addSubview:v12];

    [v7 removeFromSuperview];
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
    [v17 transitionFromView:v7 toView:v12 duration:327680 options:v30 completion:0.5];
  }

  v18 = [(CKTranscriptStatusCell *)self statusButton];
  v19 = [v9 attributedTitleForState:0];
  v20 = [v18 attributedTitleForState:0];
  v21 = [v19 isEqualToAttributedString:v20];

  if (v21)
  {
    v22 = [v9 superview];
    [v22 addSubview:v18];

    [v9 removeFromSuperview];
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
    [v23 transitionFromView:v9 toView:v18 duration:327680 options:v28 completion:0.5];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__CKTranscriptStatusCell_performReload_completion___block_invoke_3;
  block[3] = &unk_1E72EBDB8;
  v27 = v25;
  v24 = v25;
  dispatch_group_notify(v11, MEMORY[0x1E69E96A0], block);
}

- (void)performRemoval:(id)a3
{
  v4 = a3;
  v5 = [(CKTranscriptLabelCell *)self label];
  v6 = [(CKTranscriptStatusCell *)self statusButton];
  v7 = MEMORY[0x1E69DD250];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __41__CKTranscriptStatusCell_performRemoval___block_invoke;
  v15[3] = &unk_1E72EB8D0;
  v16 = v5;
  v17 = v6;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __41__CKTranscriptStatusCell_performRemoval___block_invoke_2;
  v11[3] = &unk_1E72F2C80;
  v12 = v16;
  v13 = v17;
  v14 = v4;
  v8 = v4;
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

- (void)setAttributedButtonText:(id)a3
{
  v20 = a3;
  v4 = [(CKTranscriptStatusCell *)self attributedButtonText];

  v5 = v20;
  if (v4 == v20)
  {
    goto LABEL_13;
  }

  v6 = [(CKTranscriptStatusCell *)self attributedButtonText];
  v7 = [v6 string];
  v8 = [v20 string];
  v9 = [v7 isEqualToString:v8];

  v5 = v20;
  if (v9)
  {
    goto LABEL_13;
  }

  v10 = [(CKTranscriptStatusCell *)self statusButton];
  v11 = v20;
  if (!v20)
  {
    [v10 removeFromSuperview];
    [(CKTranscriptStatusCell *)self setStatusButton:0];
    v12 = 0;
    goto LABEL_7;
  }

  if (!v10)
  {
    v12 = [objc_opt_class() statusButton];
    [(CKTranscriptStatusCell *)self setStatusButton:v12];
    v10 = [(CKEditableCollectionViewCell *)self contentView];
    [v10 addSubview:v12];
LABEL_7:

    v10 = v12;
    v11 = v20;
  }

  v13 = v11;
  if ([(CKTranscriptCell *)self shouldConfigureForDarkFSM])
  {
    v14 = +[CKUIBehavior sharedBehaviors];
    v15 = [v14 theme];
    v16 = [v15 balloonColorsForColorType:0xFFFFFFFFLL];
    v17 = [v16 lastObject];

    v18 = [v13 mutableCopy];
    [v18 addAttribute:*MEMORY[0x1E69DB650] value:v17 range:{0, objc_msgSend(v18, "length")}];
    v19 = [v18 copy];

    v13 = v19;
  }

  [v10 setAttributedTitle:v13 forState:0];
  if (v10)
  {
    [(CKTranscriptStatusCell *)self setNeedsLayout];
  }

  v5 = v20;
LABEL_13:
}

- (NSAttributedString)attributedButtonText
{
  v2 = [(CKTranscriptStatusCell *)self statusButton];
  v3 = [v2 attributedTitleForState:0];

  return v3;
}

- (void)setPrevBalloonWidth:(double)a3
{
  if (self->_prevBalloonWidth != a3)
  {
    self->_prevBalloonWidth = a3;
    [(CKTranscriptStatusCell *)self setNeedsLayout];
  }
}

- (void)addFilter:(id)a3
{
  v12.receiver = self;
  v12.super_class = CKTranscriptStatusCell;
  v4 = a3;
  [(CKTranscriptStampCell *)&v12 addFilter:v4];
  v5 = [(CKTranscriptStatusCell *)self statusButton:v12.receiver];
  v6 = [v5 layer];
  [v6 setAllowsGroupBlending:0];

  v7 = [v5 layer];
  [v7 setAllowsGroupOpacity:0];

  v8 = [v5 layer];
  v9 = [v4 textCompositingFilter];
  [v8 setCompositingFilter:v9];

  [v4 contentAlpha];
  v11 = v10;

  [v5 setAlpha:v11];
}

- (void)clearFilters
{
  v7.receiver = self;
  v7.super_class = CKTranscriptStatusCell;
  [(CKTranscriptStampCell *)&v7 clearFilters];
  v3 = [(CKTranscriptStatusCell *)self statusButton];
  v4 = [v3 layer];
  [v4 setAllowsGroupBlending:1];

  v5 = [v3 layer];
  [v5 setAllowsGroupOpacity:1];

  v6 = [v3 layer];
  [v6 setCompositingFilter:0];

  [v3 setAlpha:1.0];
}

+ (id)statusButton
{
  v2 = +[CKUIBehavior sharedBehaviors];
  v3 = [v2 transcriptStatusCellButtonConfiguration];

  v4 = [CKTranscriptLegibilityButton buttonWithConfiguration:v3 primaryAction:0];
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

+ (void)transitionFromView:(id)a3 toView:(id)a4 duration:(double)a5 options:(unint64_t)a6 completion:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5 * 0.5;
  v14 = a7;
  v15 = [v11 superview];
  [v15 addSubview:v12];

  [v12 setAlpha:0.0];
  v16 = MEMORY[0x1E69DD250];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __80__CKTranscriptStatusCell_transitionFromView_toView_duration_options_completion___block_invoke;
  v24[3] = &unk_1E72EBA18;
  v25 = v11;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __80__CKTranscriptStatusCell_transitionFromView_toView_duration_options_completion___block_invoke_2;
  v22[3] = &unk_1E72EB9C8;
  v23 = v25;
  v17 = v25;
  [v16 animateWithDuration:a6 delay:v24 options:v22 animations:v13 completion:0.0];
  v18 = MEMORY[0x1E69DD250];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __80__CKTranscriptStatusCell_transitionFromView_toView_duration_options_completion___block_invoke_3;
  v20[3] = &unk_1E72EBA18;
  v21 = v12;
  v19 = v12;
  [v18 animateWithDuration:a6 delay:v20 options:v14 animations:v13 completion:v13];
}

@end