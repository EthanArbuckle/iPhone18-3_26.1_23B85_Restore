@interface CKAggregateAcknowledgmentTranscriptCell
- (BOOL)_disableRasterizeInAnimations;
- (void)configureForChatItem:(id)item context:(id)context animated:(BOOL)animated animationDuration:(double)duration animationCurve:(int64_t)curve;
- (void)layoutSubviewsForAlignmentContents;
- (void)performInsertion:(id)insertion animated:(BOOL)animated;
- (void)prepareForReuse;
@end

@implementation CKAggregateAcknowledgmentTranscriptCell

- (void)configureForChatItem:(id)item context:(id)context animated:(BOOL)animated animationDuration:(double)duration animationCurve:(int64_t)curve
{
  animatedCopy = animated;
  itemCopy = item;
  v20.receiver = self;
  v20.super_class = CKAggregateAcknowledgmentTranscriptCell;
  [(CKAssociatedMessageTranscriptCell *)&v20 configureForChatItem:itemCopy context:context animated:animatedCopy animationDuration:curve animationCurve:duration];
  balloonViewClass = [itemCopy balloonViewClass];
  balloonView = [(CKAggregateAcknowledgmentTranscriptCell *)self balloonView];

  if (!balloonView)
  {
    v15 = CKBalloonViewForClass(balloonViewClass);
    [(CKAggregateAcknowledgmentTranscriptCell *)self setBalloonView:v15];
  }

  [(CKAssociatedMessageTranscriptCell *)self transcriptBackgroundLuminance];
  v17 = v16;
  balloonView2 = [(CKAggregateAcknowledgmentTranscriptCell *)self balloonView];
  [balloonView2 setTranscriptBackgroundLuminance:v17];

  balloonView3 = [(CKAggregateAcknowledgmentTranscriptCell *)self balloonView];
  [balloonView3 configureForAggregateAcknowledgmentChatItem:itemCopy];
}

- (void)layoutSubviewsForAlignmentContents
{
  v57.receiver = self;
  v57.super_class = CKAggregateAcknowledgmentTranscriptCell;
  [(CKAssociatedMessageTranscriptCell *)&v57 layoutSubviewsForAlignmentContents];
  balloonView = [(CKAggregateAcknowledgmentTranscriptCell *)self balloonView];
  [balloonView frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  rect = v10;

  v11 = +[CKUIBehavior sharedBehaviors];
  [v11 messageAcknowledgmentTranscriptBalloonRelativePosition];
  v13 = v12;

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEmojiTapbacksEnabled = [mEMORY[0x1E69A8070] isEmojiTapbacksEnabled];

  if (isEmojiTapbacksEnabled)
  {
    v16 = +[CKUIBehavior sharedBehaviors];
    usesFannedBubbleStyle = [v16 usesFannedBubbleStyle];

    if (usesFannedBubbleStyle)
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

  failureButton = [(CKTranscriptMessageCell *)self failureButton];

  if (failureButton)
  {
    failureButton2 = [(CKTranscriptMessageCell *)self failureButton];
    [failureButton2 frame];
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
        failureButton3 = [(CKTranscriptMessageCell *)self failureButton];
        [failureButton3 setFrame:{v29, v44, v33, v35}];

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
  traitCollection = [(CKAggregateAcknowledgmentTranscriptCell *)self traitCollection];
  [traitCollection displayScale];
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

  balloonView2 = [(CKAggregateAcknowledgmentTranscriptCell *)self balloonView];
  [balloonView2 setFrame:{v50, v53, v52, v54}];
}

- (void)performInsertion:(id)insertion animated:(BOOL)animated
{
  animatedCopy = animated;
  insertionCopy = insertion;
  [MEMORY[0x1E6979518] flush];
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setAnimationDuration:2.0];
  balloonView = [(CKAggregateAcknowledgmentTranscriptCell *)self balloonView];
  layer = [balloonView layer];
  [layer convertTime:0 fromLayer:CACurrentMediaTime()];
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
  if (animatedCopy)
  {
    balloonView2 = [(CKAggregateAcknowledgmentTranscriptCell *)self balloonView];
    layer2 = [balloonView2 layer];
    [layer2 addAnimation:v11 forKey:@"transform.scale.xy"];

    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    LODWORD(layer2) = [mEMORY[0x1E69A8070] isEmojiTapbacksEnabled];

    balloonView3 = [(CKAggregateAcknowledgmentTranscriptCell *)self balloonView];
    v17 = balloonView3;
    if (!layer2)
    {
      glyphView = [balloonView3 glyphView];

      [glyphView animationDuration];
      [glyphView animateWithBeginTime:0 completionDelay:v10 completion:v20];
      goto LABEL_6;
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      glyphView = [(CKAggregateAcknowledgmentTranscriptCell *)self balloonView];
      [glyphView playInsertionAnimationOnTopPlatter];
LABEL_6:
    }
  }

  v21 = MEMORY[0x1E6979518];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __69__CKAggregateAcknowledgmentTranscriptCell_performInsertion_animated___block_invoke;
  v23[3] = &unk_1E72EBDB8;
  v24 = insertionCopy;
  v22 = insertionCopy;
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
  balloonView = [(CKAggregateAcknowledgmentTranscriptCell *)self balloonView];
  CKBalloonViewReuse(balloonView);

  v4.receiver = self;
  v4.super_class = CKAggregateAcknowledgmentTranscriptCell;
  [(CKAssociatedMessageTranscriptCell *)&v4 prepareForReuse];
}

- (BOOL)_disableRasterizeInAnimations
{
  traitCollection = [(CKAggregateAcknowledgmentTranscriptCell *)self traitCollection];
  isTranscriptBackgroundActive = [traitCollection isTranscriptBackgroundActive];

  return isTranscriptBackgroundActive;
}

@end