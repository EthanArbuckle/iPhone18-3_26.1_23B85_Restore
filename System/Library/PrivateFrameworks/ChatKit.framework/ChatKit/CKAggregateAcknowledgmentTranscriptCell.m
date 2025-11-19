@interface CKAggregateAcknowledgmentTranscriptCell
- (BOOL)_disableRasterizeInAnimations;
- (void)configureForChatItem:(id)a3 context:(id)a4 animated:(BOOL)a5 animationDuration:(double)a6 animationCurve:(int64_t)a7;
- (void)layoutSubviewsForAlignmentContents;
- (void)performInsertion:(id)a3 animated:(BOOL)a4;
- (void)prepareForReuse;
@end

@implementation CKAggregateAcknowledgmentTranscriptCell

- (void)configureForChatItem:(id)a3 context:(id)a4 animated:(BOOL)a5 animationDuration:(double)a6 animationCurve:(int64_t)a7
{
  v9 = a5;
  v12 = a3;
  v20.receiver = self;
  v20.super_class = CKAggregateAcknowledgmentTranscriptCell;
  [(CKAssociatedMessageTranscriptCell *)&v20 configureForChatItem:v12 context:a4 animated:v9 animationDuration:a7 animationCurve:a6];
  v13 = [v12 balloonViewClass];
  v14 = [(CKAggregateAcknowledgmentTranscriptCell *)self balloonView];

  if (!v14)
  {
    v15 = CKBalloonViewForClass(v13);
    [(CKAggregateAcknowledgmentTranscriptCell *)self setBalloonView:v15];
  }

  [(CKAssociatedMessageTranscriptCell *)self transcriptBackgroundLuminance];
  v17 = v16;
  v18 = [(CKAggregateAcknowledgmentTranscriptCell *)self balloonView];
  [v18 setTranscriptBackgroundLuminance:v17];

  v19 = [(CKAggregateAcknowledgmentTranscriptCell *)self balloonView];
  [v19 configureForAggregateAcknowledgmentChatItem:v12];
}

- (void)layoutSubviewsForAlignmentContents
{
  v57.receiver = self;
  v57.super_class = CKAggregateAcknowledgmentTranscriptCell;
  [(CKAssociatedMessageTranscriptCell *)&v57 layoutSubviewsForAlignmentContents];
  v3 = [(CKAggregateAcknowledgmentTranscriptCell *)self balloonView];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  rect = v10;

  v11 = +[CKUIBehavior sharedBehaviors];
  [v11 messageAcknowledgmentTranscriptBalloonRelativePosition];
  v13 = v12;

  v14 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v15 = [v14 isEmojiTapbacksEnabled];

  if (v15)
  {
    v16 = +[CKUIBehavior sharedBehaviors];
    v17 = [v16 usesFannedBubbleStyle];

    if (v17)
    {
      +[CKTapbackPileTemplate topOfPileBubbleRadius];
      v13 = v9 - v18;
    }
  }

  [(CKAssociatedMessageTranscriptCell *)self parentSize];
  v20 = v19;
  if ([(CKEditableCollectionViewCell *)self orientation])
  {
    if ([(CKEditableCollectionViewCell *)self orientation]== 2)
    {
      v21 = v13 + v5 - v20;
    }

    else
    {
      v21 = v5;
    }
  }

  else
  {
    v21 = v5 + v20 - v13;
  }

  [(CKAssociatedMessageTranscriptCell *)self parentRotationOffset];
  v23 = v21 + v22;
  [(CKAssociatedMessageTranscriptCell *)self cumulativeAssociatedOffset];
  if (v24 != 0.0)
  {
    [(CKAssociatedMessageTranscriptCell *)self cumulativeAssociatedOffset];
    v23 = v23 + v25;
  }

  v26 = [(CKTranscriptMessageCell *)self failureButton];

  if (v26)
  {
    v27 = [(CKTranscriptMessageCell *)self failureButton];
    [v27 frame];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;

    if ([(CKEditableCollectionViewCell *)self orientation])
    {
      if ([(CKEditableCollectionViewCell *)self orientation]!= 2)
      {
LABEL_17:
        v60.origin.x = v23;
        v60.origin.y = v7;
        v60.size.width = v9;
        v60.size.height = rect;
        Height = CGRectGetHeight(v60);
        v61.origin.x = v29;
        v61.origin.y = v31;
        v61.size.width = v33;
        v61.size.height = v35;
        v42 = (Height - CGRectGetHeight(v61)) * 0.5;
        if (CKMainScreenScale_once_69 != -1)
        {
          [CKAggregateAcknowledgmentTranscriptCell layoutSubviewsForAlignmentContents];
        }

        v43 = *&CKMainScreenScale_sMainScreenScale_69;
        if (*&CKMainScreenScale_sMainScreenScale_69 == 0.0)
        {
          v43 = 1.0;
        }

        v44 = round(v42 * v43) / v43;
        v45 = [(CKTranscriptMessageCell *)self failureButton];
        [v45 setFrame:{v29, v44, v33, v35}];

        goto LABEL_22;
      }

      v58.origin.x = v29;
      v58.origin.y = v31;
      v58.size.width = v33;
      v58.size.height = v35;
      v36 = v23 - CGRectGetWidth(v58);
      v37 = +[CKUIBehavior sharedBehaviors];
      [v37 messageFailureButtonBalloonMargin];
      v29 = v36 - v38;
    }

    else
    {
      v59.origin.x = v23;
      v59.origin.y = v7;
      v59.size.width = v9;
      v59.size.height = rect;
      MaxX = CGRectGetMaxX(v59);
      v37 = +[CKUIBehavior sharedBehaviors];
      [v37 messageFailureButtonBalloonMargin];
      v29 = MaxX + v40;
    }

    goto LABEL_17;
  }

LABEL_22:
  v46 = [(CKAggregateAcknowledgmentTranscriptCell *)self traitCollection];
  [v46 displayScale];
  if (v47 == 0.0)
  {
    if (CKMainScreenScale_once_69 != -1)
    {
      [CKAggregateAcknowledgmentTranscriptCell layoutSubviewsForAlignmentContents];
    }

    v48 = *&CKMainScreenScale_sMainScreenScale_69;
    v49 = 1.0;
    if (*&CKMainScreenScale_sMainScreenScale_69 == 0.0)
    {
      v48 = 1.0;
    }

    v50 = floor(v23 * v48) / v48;
    v47 = *&CKMainScreenScale_sMainScreenScale_69;
    if (*&CKMainScreenScale_sMainScreenScale_69 == 0.0)
    {
      v47 = 1.0;
    }

    v51 = *&CKMainScreenScale_sMainScreenScale_69;
    if (*&CKMainScreenScale_sMainScreenScale_69 == 0.0)
    {
      v51 = 1.0;
    }

    v52 = ceil(v9 * v51) / v51;
    if (*&CKMainScreenScale_sMainScreenScale_69 != 0.0)
    {
      v49 = *&CKMainScreenScale_sMainScreenScale_69;
    }
  }

  else
  {
    v50 = floor(v23 * v47) / v47;
    v49 = v47;
    v52 = ceil(v9 * v47) / v47;
  }

  v53 = floor(v7 * v47) / v47;
  v54 = ceil(rect * v49) / v49;

  v55 = [(CKAggregateAcknowledgmentTranscriptCell *)self balloonView];
  [v55 setFrame:{v50, v53, v52, v54}];
}

- (void)performInsertion:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [MEMORY[0x1E6979518] flush];
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setAnimationDuration:2.0];
  v7 = [(CKAggregateAcknowledgmentTranscriptCell *)self balloonView];
  v8 = [v7 layer];
  [v8 convertTime:0 fromLayer:CACurrentMediaTime()];
  v10 = v9;

  v11 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"transform.scale.xy"];
  [v11 setFromValue:&unk_1F04E7FC8];
  [v11 setMass:1.0];
  [v11 setStiffness:80.0];
  [v11 setDamping:20.0];
  [v11 setBeginTime:v10];
  LODWORD(v12) = 3.0;
  [v11 setSpeed:v12];
  [v11 setDuration:1.0];
  [v11 setFillMode:*MEMORY[0x1E69797E8]];
  if (v4)
  {
    v13 = [(CKAggregateAcknowledgmentTranscriptCell *)self balloonView];
    v14 = [v13 layer];
    [v14 addAnimation:v11 forKey:@"transform.scale.xy"];

    v15 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    LODWORD(v14) = [v15 isEmojiTapbacksEnabled];

    v16 = [(CKAggregateAcknowledgmentTranscriptCell *)self balloonView];
    v17 = v16;
    if (!v14)
    {
      v19 = [v16 glyphView];

      [v19 animationDuration];
      [v19 animateWithBeginTime:0 completionDelay:v10 completion:v20];
      goto LABEL_6;
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v19 = [(CKAggregateAcknowledgmentTranscriptCell *)self balloonView];
      [v19 playInsertionAnimationOnTopPlatter];
LABEL_6:
    }
  }

  v21 = MEMORY[0x1E6979518];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __69__CKAggregateAcknowledgmentTranscriptCell_performInsertion_animated___block_invoke;
  v23[3] = &unk_1E72EBDB8;
  v24 = v6;
  v22 = v6;
  [v21 setCompletionBlock:v23];
  [MEMORY[0x1E6979518] commit];
  [MEMORY[0x1E6979518] flush];
}

uint64_t __69__CKAggregateAcknowledgmentTranscriptCell_performInsertion_animated___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

- (void)prepareForReuse
{
  v3 = [(CKAggregateAcknowledgmentTranscriptCell *)self balloonView];
  CKBalloonViewReuse(v3);

  v4.receiver = self;
  v4.super_class = CKAggregateAcknowledgmentTranscriptCell;
  [(CKAssociatedMessageTranscriptCell *)&v4 prepareForReuse];
}

- (BOOL)_disableRasterizeInAnimations
{
  v2 = [(CKAggregateAcknowledgmentTranscriptCell *)self traitCollection];
  v3 = [v2 isTranscriptBackgroundActive];

  return v3;
}

@end