@interface CKMessagePartHighlightChatItemCell
- (void)configureForChatItem:(id)item context:(id)context animated:(BOOL)animated animationDuration:(double)duration animationCurve:(int64_t)curve;
- (void)layoutSubviewsForAlignmentContents;
- (void)performHide:(id)hide;
- (void)performInsertion:(id)insertion;
- (void)performReload:(id)reload completion:(id)completion;
- (void)performRemoval:(id)removal;
- (void)performReveal:(id)reveal;
- (void)prepareForReuse;
- (void)setHighlightBalloonView:(id)view;
@end

@implementation CKMessagePartHighlightChatItemCell

- (void)configureForChatItem:(id)item context:(id)context animated:(BOOL)animated animationDuration:(double)duration animationCurve:(int64_t)curve
{
  animatedCopy = animated;
  v15.receiver = self;
  v15.super_class = CKMessagePartHighlightChatItemCell;
  itemCopy = item;
  [(CKAssociatedMessageTranscriptCell *)&v15 configureForChatItem:itemCopy context:context animated:animatedCopy animationDuration:curve animationCurve:duration];
  v13 = objc_opt_class();
  v14 = CKBalloonViewForClass(v13);
  [(CKMessagePartHighlightChatItemCell *)self setHighlightBalloonView:v14, v15.receiver, v15.super_class];
  [v14 configureForMessagePartHighlightChatItem:itemCopy];
}

- (void)setHighlightBalloonView:(id)view
{
  v3.receiver = self;
  v3.super_class = CKMessagePartHighlightChatItemCell;
  [(CKAssociatedMessageTranscriptCell *)&v3 setAssociatedItemView:view];
}

- (void)layoutSubviewsForAlignmentContents
{
  v49.receiver = self;
  v49.super_class = CKMessagePartHighlightChatItemCell;
  [(CKAssociatedMessageTranscriptCell *)&v49 layoutSubviewsForAlignmentContents];
  highlightBalloonView = [(CKMessagePartHighlightChatItemCell *)self highlightBalloonView];
  [highlightBalloonView frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  rect = v10;

  [(CKAssociatedMessageTranscriptCell *)self parentSize];
  v12 = v11;
  v13 = +[CKUIBehavior sharedBehaviors];
  [v13 messageHighlightTranscriptBalloonRelativePosition];
  v15 = v14;

  if ([(CKEditableCollectionViewCell *)self orientation])
  {
    if ([(CKEditableCollectionViewCell *)self orientation]== 2)
    {
      v5 = v5 - v12 + v15;
    }
  }

  else
  {
    v5 = v5 + v12 - v15;
  }

  [(CKAssociatedMessageTranscriptCell *)self cumulativeAssociatedOffset];
  if (v16 != 0.0)
  {
    [(CKAssociatedMessageTranscriptCell *)self cumulativeAssociatedOffset];
    v5 = v5 + v17;
  }

  failureButton = [(CKTranscriptMessageCell *)self failureButton];

  if (failureButton)
  {
    failureButton2 = [(CKTranscriptMessageCell *)self failureButton];
    [failureButton2 frame];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;

    if ([(CKEditableCollectionViewCell *)self orientation])
    {
      if ([(CKEditableCollectionViewCell *)self orientation]!= 2)
      {
LABEL_14:
        v52.origin.x = v5;
        v52.origin.y = v7;
        v52.size.width = v9;
        v52.size.height = rect;
        Height = CGRectGetHeight(v52);
        v53.origin.x = v21;
        v53.origin.y = v23;
        v53.size.width = v25;
        v53.size.height = v27;
        v34 = (Height - CGRectGetHeight(v53)) * 0.5;
        if (CKMainScreenScale_once_103 != -1)
        {
          [CKMessagePartHighlightChatItemCell layoutSubviewsForAlignmentContents];
        }

        v35 = *&CKMainScreenScale_sMainScreenScale_103;
        if (*&CKMainScreenScale_sMainScreenScale_103 == 0.0)
        {
          v35 = 1.0;
        }

        v36 = round(v34 * v35) / v35;
        failureButton3 = [(CKTranscriptMessageCell *)self failureButton];
        [failureButton3 setFrame:{v21, v36, v25, v27}];

        goto LABEL_19;
      }

      v50.origin.x = v21;
      v50.origin.y = v23;
      v50.size.width = v25;
      v50.size.height = v27;
      v28 = v5 - CGRectGetWidth(v50);
      v29 = +[CKUIBehavior sharedBehaviors];
      [v29 messageFailureButtonBalloonMargin];
      v21 = v28 - v30;
    }

    else
    {
      v51.origin.x = v5;
      v51.origin.y = v7;
      v51.size.width = v9;
      v51.size.height = rect;
      MaxX = CGRectGetMaxX(v51);
      v29 = +[CKUIBehavior sharedBehaviors];
      [v29 messageFailureButtonBalloonMargin];
      v21 = MaxX + v32;
    }

    goto LABEL_14;
  }

LABEL_19:
  traitCollection = [(CKMessagePartHighlightChatItemCell *)self traitCollection];
  [traitCollection displayScale];
  if (v39 == 0.0)
  {
    if (CKMainScreenScale_once_103 != -1)
    {
      [CKMessagePartHighlightChatItemCell layoutSubviewsForAlignmentContents];
    }

    v40 = *&CKMainScreenScale_sMainScreenScale_103;
    v41 = 1.0;
    if (*&CKMainScreenScale_sMainScreenScale_103 == 0.0)
    {
      v40 = 1.0;
    }

    v42 = floor(v5 * v40) / v40;
    v39 = *&CKMainScreenScale_sMainScreenScale_103;
    if (*&CKMainScreenScale_sMainScreenScale_103 == 0.0)
    {
      v39 = 1.0;
    }

    v43 = *&CKMainScreenScale_sMainScreenScale_103;
    if (*&CKMainScreenScale_sMainScreenScale_103 == 0.0)
    {
      v43 = 1.0;
    }

    v44 = ceil(v9 * v43) / v43;
    if (*&CKMainScreenScale_sMainScreenScale_103 != 0.0)
    {
      v41 = *&CKMainScreenScale_sMainScreenScale_103;
    }
  }

  else
  {
    v42 = floor(v5 * v39) / v39;
    v41 = v39;
    v44 = ceil(v9 * v39) / v39;
  }

  v45 = floor(v7 * v39) / v39;
  v46 = ceil(rect * v41) / v41;

  highlightBalloonView2 = [(CKMessagePartHighlightChatItemCell *)self highlightBalloonView];
  [highlightBalloonView2 setFrame:{v42, v45, v44, v46}];
}

- (void)performInsertion:(id)insertion
{
  insertionCopy = insertion;
  highlightBalloonView = [(CKMessagePartHighlightChatItemCell *)self highlightBalloonView];
  [highlightBalloonView performTranscriptInsertionAnimation:insertionCopy];
}

- (void)performRemoval:(id)removal
{
  removalCopy = removal;
  highlightBalloonView = [(CKMessagePartHighlightChatItemCell *)self highlightBalloonView];
  [highlightBalloonView performTranscriptRemovalAnimation:removalCopy];
}

- (void)performHide:(id)hide
{
  hideCopy = hide;
  highlightBalloonView = [(CKMessagePartHighlightChatItemCell *)self highlightBalloonView];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__CKMessagePartHighlightChatItemCell_performHide___block_invoke;
  v7[3] = &unk_1E72ED1F0;
  v8 = hideCopy;
  v6 = hideCopy;
  [highlightBalloonView performTranscriptHideAnimation:v7];
}

uint64_t __50__CKMessagePartHighlightChatItemCell_performHide___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)performReveal:(id)reveal
{
  revealCopy = reveal;
  highlightBalloonView = [(CKMessagePartHighlightChatItemCell *)self highlightBalloonView];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__CKMessagePartHighlightChatItemCell_performReveal___block_invoke;
  v7[3] = &unk_1E72ED1F0;
  v8 = revealCopy;
  v6 = revealCopy;
  [highlightBalloonView performTranscriptRevealAnimation:v7];
}

uint64_t __52__CKMessagePartHighlightChatItemCell_performReveal___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)performReload:(id)reload completion:(id)completion
{
  completionCopy = completion;
  if (reload)
  {
    (*(reload + 2))(reload);
  }

  highlightBalloonView = [(CKMessagePartHighlightChatItemCell *)self highlightBalloonView];
  [highlightBalloonView performTranscriptReloadAnimation:completionCopy];
}

- (void)prepareForReuse
{
  highlightBalloonView = [(CKMessagePartHighlightChatItemCell *)self highlightBalloonView];
  CKBalloonViewReuse(highlightBalloonView);

  v4.receiver = self;
  v4.super_class = CKMessagePartHighlightChatItemCell;
  [(CKAssociatedMessageTranscriptCell *)&v4 prepareForReuse];
}

@end