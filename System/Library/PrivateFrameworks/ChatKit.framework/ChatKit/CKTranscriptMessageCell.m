@interface CKTranscriptMessageCell
+ (double)failureButtonWidthPlusSpacing;
- (BOOL)failed;
- (CGRect)contactImageViewFrame;
- (CKTranscriptMessageCellFailureButtonDelegate)failureButtonDelegate;
- (UIEdgeInsets)safeAreaInsets;
- (id)description;
- (void)configureMessageDeliveryFailureButtonForFailed:(BOOL)a3;
- (void)didTapFailureButtonWithSender:(id)a3;
- (void)layoutSubviewsForContents;
- (void)prepareForReuse;
- (void)setFailed:(BOOL)a3;
- (void)setWantsContactImageLayout:(BOOL)a3;
@end

@implementation CKTranscriptMessageCell

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = CKTranscriptMessageCell;
  v4 = [(CKEditableCollectionViewCell *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ wantsContactImageLayout:%d failed:%d", v4, -[CKTranscriptMessageCell wantsContactImageLayout](self, "wantsContactImageLayout"), -[CKTranscriptMessageCell failed](self, "failed")];

  return v5;
}

- (UIEdgeInsets)safeAreaInsets
{
  v24.receiver = self;
  v24.super_class = CKTranscriptMessageCell;
  [(CKTranscriptMessageCell *)&v24 safeAreaInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v12 = [v11 isModernSplitViewControllerEnabled];

  if ((v12 & 1) == 0 && (v6 > 0.0 || v10 > 0.0))
  {
    v13 = [(CKTranscriptMessageCell *)self window];
    v14 = [v13 windowScene];

    if (v14 && ([v14 interfaceOrientation] - 3) <= 1)
    {
      v15 = +[CKUIBehavior sharedBehaviors];
      [v15 landscapeKeyboardInsets];
      v17 = v16;
      v19 = v18;

      if (v6 > 0.0)
      {
        v6 = v17;
      }

      if (v10 > 0.0)
      {
        v10 = v19;
      }
    }
  }

  v20 = v4;
  v21 = v6;
  v22 = v8;
  v23 = v10;
  result.right = v23;
  result.bottom = v22;
  result.left = v21;
  result.top = v20;
  return result;
}

- (void)layoutSubviewsForContents
{
  v141.receiver = self;
  v141.super_class = CKTranscriptMessageCell;
  [(CKEditableCollectionViewCell *)&v141 layoutSubviewsForContents];
  [(CKEditableCollectionViewCell *)self contentAlignmentRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(CKEditableCollectionViewCell *)self orientation];
  v12 = [(CKTranscriptMessageCell *)self failureButton];
  v13 = [(CKTranscriptMessageCell *)self wantsContactImageLayout];
  v14 = v13;
  if (!v12 && !v13)
  {
LABEL_19:
    if (!v14)
    {
      goto LABEL_37;
    }

    goto LABEL_20;
  }

  v128 = v10;
  v131 = v6;
  [(CKEditableCollectionViewCell *)self contentAlignmentInsets];
  v16 = v15;
  [(CKEditableCollectionViewCell *)self contentAlignmentInsets];
  v18 = v17;
  [(CKTranscriptMessageCell *)self safeAreaInsets];
  v20 = v18 - v19;
  [(CKEditableCollectionViewCell *)self contentAlignmentInsets];
  rect = v21;
  [(CKEditableCollectionViewCell *)self contentAlignmentInsets];
  v23 = v22;
  [(CKTranscriptMessageCell *)self safeAreaInsets];
  v122 = v23 - v24;
  v25 = +[CKUIBehavior sharedBehaviors];
  if ([v25 forceMinTranscriptMarginInsets])
  {
    v26 = +[CKUIBehavior sharedBehaviors];
    [v26 minTranscriptMarginInsets];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;
  }

  else
  {
    [(CKEditableCollectionViewCell *)self marginInsets];
    v28 = v35;
    v30 = v36;
    v32 = v37;
    v34 = v38;
  }

  v119 = v4 - v20;
  v39 = v131 - v16;
  v40 = v8 + v20 + v122;
  v41 = v128 + v16 + rect;
  v42 = +[CKUIBehavior sharedBehaviors];
  [v42 contactPhotoTranscriptInsets];
  v44 = v28 + v43;
  v46 = v30 + v45;
  v48 = v32 + v47;
  v50 = v34 + v49;

  v51 = v46 + v50;
  v52 = v44 + v48;
  v53 = [(CKTranscriptMessageCell *)self traitCollection];
  v54 = [v53 isTranscriptBackgroundActive];

  if (v54)
  {
    [v12 __ck_applyPortalGlassEffect];
  }

  else
  {
    [v12 __ck_removePortalGlassEffect];
  }

  v55 = v119 + v46;
  v6 = v39 + v44;
  v8 = v40 - v51;
  v10 = v41 - v52;
  if (!v12 || ![(CKTranscriptMessageCell *)self failureButtonAdjustsContentAlignmentRect])
  {
    v4 = v55;
    goto LABEL_19;
  }

  recta = v8;
  [v12 frame];
  v57 = v56;
  v59 = v58;
  [v12 frame];
  v61 = v60;
  v123 = v59;
  if (CKMainScreenScale_once_84 != -1)
  {
    [CKTranscriptMessageCell layoutSubviewsForContents];
  }

  if (*&CKMainScreenScale_sMainScreenScale_84 == 0.0)
  {
    v62 = 1.0;
  }

  else
  {
    v62 = *&CKMainScreenScale_sMainScreenScale_84;
  }

  v118 = floor((v6 + (v10 - v61) * 0.5) * v62);
  v63 = MEMORY[0x1E69DDCE0];
  v64 = +[CKUIBehavior sharedBehaviors];
  [v64 messageFailureButtonBalloonMargin];
  v65 = v6;
  v67 = v57 + v66;

  v129 = v10;
  v132 = v65;
  if (v11)
  {
    v68 = v63[1];
    v142.origin.x = v55;
    v142.origin.y = v65;
    v142.size.width = recta;
    v142.size.height = v10;
    v69 = CGRectGetMaxX(v142) - v57;
  }

  else
  {
    v68 = v67;
    v67 = v63[3];
    v69 = v55;
  }

  v111 = *v63;
  v112 = v63[2];
  v113 = v118 / v62;
  if ([(CKTranscriptMessageCell *)self suppressesAnimationsForFailureBadgeUpdate])
  {
    v114 = MEMORY[0x1E69DD250];
    v135[0] = MEMORY[0x1E69E9820];
    v135[1] = 3221225472;
    v135[2] = __52__CKTranscriptMessageCell_layoutSubviewsForContents__block_invoke;
    v135[3] = &unk_1E72EC7B0;
    v136 = v12;
    v137 = v69;
    v138 = v113;
    v139 = v57;
    v140 = v123;
    [v114 performWithoutAnimation:v135];
  }

  else
  {
    [v12 setFrame:{v69, v113, v57, v123}];
  }

  v115 = v68 + v67;
  v6 = v132 + v111;
  v8 = recta - v115;
  v116 = v111 + v112;
  v4 = v55 + v68;
  v10 = v129 - v116;
  if (v14)
  {
LABEL_20:
    [(CKTranscriptMessageCell *)self contactImageViewFrame];
    v130 = v70;
    v124 = v71;
    [(CKTranscriptMessageCell *)self contactImageViewDescender];
    v120 = v72;
    v143.origin.x = v4;
    v133 = v6;
    v143.origin.y = v6;
    v143.size.width = v8;
    v143.size.height = v10;
    MaxY = CGRectGetMaxY(v143);
    v74 = +[CKUIBehavior sharedBehaviors];
    [v74 transcriptContactImageDiameter];
    v76 = v75;

    objc_opt_class();
    v77 = 0.0;
    if (objc_opt_isKindOfClass())
    {
      v78 = +[CKUIBehavior sharedBehaviors];
      [v78 transcriptGroupTypingContactImageDiameter];
      v76 = v79;

      v80 = +[CKUIBehavior sharedBehaviors];
      [v80 transcriptGroupTypingContactImageDiameter];
      v82 = v81;
      v83 = +[CKUIBehavior sharedBehaviors];
      [v83 transcriptContactImageDiameter];
      v85 = v82 - v84;

      v86 = v85 * 0.5;
    }

    else
    {
      v86 = 0.0;
    }

    v87 = v4;
    if ([(CKTranscriptMessageCell *)self isReplyContextPreview])
    {
      v88 = +[CKUIBehavior sharedBehaviors];
      [v88 transcriptReplyPreviewContextContactImageDiameter];
      v77 = (v76 - v89) * 0.5;
    }

    v90 = v120 + MaxY;
    v91 = MEMORY[0x1E69DDCE0];
    v92 = +[CKUIBehavior sharedBehaviors];
    [v92 contactPhotoBalloonMargin];
    v94 = v93 + v77 * 2.0;

    v95 = v130 + v94;
    rectb = v8;
    if (v11)
    {
      v121 = v91[1];
      v144.origin.x = v87;
      v144.origin.y = v133;
      v144.size.width = v8;
      v144.size.height = v10;
      v96 = v86 + CGRectGetMaxX(v144) - v130 - v77;
    }

    else
    {
      v121 = v95;
      v95 = v91[3];
      v96 = v87 + v77 - v86;
    }

    v97 = v90 - v124;
    v98 = *v91;
    v99 = v91[2];
    v100 = [(CKTranscriptMessageCell *)self contactImageView];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v101 = v87;
      if (v100)
      {
        [v100 transform];
      }

      else
      {
        memset(&v134, 0, sizeof(v134));
      }

      if (CGAffineTransformIsIdentity(&v134))
      {
        [v100 setFrame:{v96, v97, v130, v124}];
      }

      else
      {
        v145.origin.x = v96;
        v145.origin.y = v97;
        v145.size.width = v130;
        v145.size.height = v124;
        MidX = CGRectGetMidX(v145);
        v146.origin.x = v96;
        v146.origin.y = v97;
        v146.size.width = v130;
        v146.size.height = v124;
        [v100 setCenter:{MidX, CGRectGetMidY(v146)}];
      }
    }

    else
    {
      [v100 setFrame:{v96, v97, v130, v124}];
      v101 = v87;
    }

    [(CKEditableCollectionViewCell *)self contentInsets];
    v103 = v98 + v102;
    v105 = v121 + v104;
    v4 = v101 + v105;
    v6 = v133 + v103;
    v8 = rectb - (v105 + v95 + v107);
    v10 = v10 - (v103 + v99 + v106);
    [(CKTranscriptMessageCell *)self configureContactImageStrokeView];
  }

LABEL_37:
  if ([(CKTranscriptMessageCell *)self isReplyContextPreview]&& ![(CKTranscriptMessageCell *)self isFromMe]&& v11 == 2)
  {
    v108 = +[CKUIBehavior sharedBehaviors];
    [v108 balloonMaskTailSizeForTailShape:1];
    v110 = v109;

    v4 = v4 - v110;
  }

  [(CKEditableCollectionViewCell *)self setContentAlignmentRect:v4, v6, v8, v10];
}

- (CGRect)contactImageViewFrame
{
  v3 = +[CKUIBehavior sharedBehaviors];
  [v3 transcriptContactImageDiameter];
  v5 = v4;

  if ([(CKTranscriptMessageCell *)self isReplyContextPreview])
  {
    v6 = +[CKUIBehavior sharedBehaviors];
    [v6 transcriptReplyPreviewContextContactImageDiameter];
LABEL_5:
    v5 = v7;

    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = +[CKUIBehavior sharedBehaviors];
    [v6 transcriptGroupTypingContactImageDiameter];
    goto LABEL_5;
  }

LABEL_6:
  v8 = 0.0;
  v9 = 0.0;
  v10 = v5;
  v11 = v5;
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (void)setWantsContactImageLayout:(BOOL)a3
{
  if (self->_wantsContactImageLayout != a3)
  {
    self->_wantsContactImageLayout = a3;
    [(CKTranscriptMessageCell *)self setNeedsLayout];
  }
}

- (void)setFailed:(BOOL)a3
{
  v3 = a3;
  if ([(CKTranscriptMessageCell *)self failed]!= a3)
  {

    [(CKTranscriptMessageCell *)self configureMessageDeliveryFailureButtonForFailed:v3];
  }
}

- (BOOL)failed
{
  v2 = [(CKTranscriptMessageCell *)self failureButton];
  v3 = v2 != 0;

  return v3;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = CKTranscriptMessageCell;
  [(CKTranscriptCell *)&v3 prepareForReuse];
  [(CKTranscriptMessageCell *)self setSuppressAnimationsForFailureBadgeUpdate:0];
}

+ (double)failureButtonWidthPlusSpacing
{
  if (failureButtonWidthPlusSpacing_onceToken != -1)
  {
    +[CKTranscriptMessageCell failureButtonWidthPlusSpacing];
  }

  return *&failureButtonWidthPlusSpacing_sFailureButtonWidthPlusSpacing;
}

void __56__CKTranscriptMessageCell_failureButtonWidthPlusSpacing__block_invoke()
{
  v4 = objc_alloc_init(CKTranscriptMessageCell);
  [(CKTranscriptMessageCell *)v4 setFailed:1];
  v0 = [(CKTranscriptMessageCell *)v4 failureButton];
  [v0 frame];
  Width = CGRectGetWidth(v6);
  v2 = +[CKUIBehavior sharedBehaviors];
  [v2 messageFailureButtonBalloonMargin];
  *&failureButtonWidthPlusSpacing_sFailureButtonWidthPlusSpacing = Width + v3;
}

- (CKTranscriptMessageCellFailureButtonDelegate)failureButtonDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_failureButtonDelegate);

  return WeakRetained;
}

- (void)configureMessageDeliveryFailureButtonForFailed:(BOOL)a3
{
  v4 = self;
  CKTranscriptMessageCell.configureMessageDeliveryFailureButton(failed:)(a3);
}

- (void)didTapFailureButtonWithSender:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_190D58140();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  CKTranscriptMessageCell.didTapFailureButton(sender:)(v6);

  sub_19021E7D8(v6);
}

@end