@interface CKMessagePartHighlightChatItemCell
- (void)configureForChatItem:(id)a3 context:(id)a4 animated:(BOOL)a5 animationDuration:(double)a6 animationCurve:(int64_t)a7;
- (void)layoutSubviewsForAlignmentContents;
- (void)performHide:(id)a3;
- (void)performInsertion:(id)a3;
- (void)performReload:(id)a3 completion:(id)a4;
- (void)performRemoval:(id)a3;
- (void)performReveal:(id)a3;
- (void)prepareForReuse;
- (void)setHighlightBalloonView:(id)a3;
@end

@implementation CKMessagePartHighlightChatItemCell

- (void)configureForChatItem:(id)a3 context:(id)a4 animated:(BOOL)a5 animationDuration:(double)a6 animationCurve:(int64_t)a7
{
  v9 = a5;
  v15.receiver = self;
  v15.super_class = CKMessagePartHighlightChatItemCell;
  v12 = a3;
  [(CKAssociatedMessageTranscriptCell *)&v15 configureForChatItem:v12 context:a4 animated:v9 animationDuration:a7 animationCurve:a6];
  v13 = objc_opt_class();
  v14 = CKBalloonViewForClass(v13);
  [(CKMessagePartHighlightChatItemCell *)self setHighlightBalloonView:v14, v15.receiver, v15.super_class];
  [v14 configureForMessagePartHighlightChatItem:v12];
}

- (void)setHighlightBalloonView:(id)a3
{
  v3.receiver = self;
  v3.super_class = CKMessagePartHighlightChatItemCell;
  [(CKAssociatedMessageTranscriptCell *)&v3 setAssociatedItemView:a3];
}

- (void)layoutSubviewsForAlignmentContents
{
  v49.receiver = self;
  v49.super_class = CKMessagePartHighlightChatItemCell;
  [(CKAssociatedMessageTranscriptCell *)&v49 layoutSubviewsForAlignmentContents];
  v3 = [(CKMessagePartHighlightChatItemCell *)self highlightBalloonView];
  [v3 frame];
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

  v18 = [(CKTranscriptMessageCell *)self failureButton];

  if (v18)
  {
    v19 = [(CKTranscriptMessageCell *)self failureButton];
    [v19 frame];
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
        v37 = [(CKTranscriptMessageCell *)self failureButton];
        [v37 setFrame:{v21, v36, v25, v27}];

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
  v38 = [(CKMessagePartHighlightChatItemCell *)self traitCollection];
  [v38 displayScale];
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

  v47 = [(CKMessagePartHighlightChatItemCell *)self highlightBalloonView];
  [v47 setFrame:{v42, v45, v44, v46}];
}

- (void)performInsertion:(id)a3
{
  v4 = a3;
  v5 = [(CKMessagePartHighlightChatItemCell *)self highlightBalloonView];
  [v5 performTranscriptInsertionAnimation:v4];
}

- (void)performRemoval:(id)a3
{
  v4 = a3;
  v5 = [(CKMessagePartHighlightChatItemCell *)self highlightBalloonView];
  [v5 performTranscriptRemovalAnimation:v4];
}

- (void)performHide:(id)a3
{
  v4 = a3;
  v5 = [(CKMessagePartHighlightChatItemCell *)self highlightBalloonView];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__CKMessagePartHighlightChatItemCell_performHide___block_invoke;
  v7[3] = &unk_1E72ED1F0;
  v8 = v4;
  v6 = v4;
  [v5 performTranscriptHideAnimation:v7];
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

- (void)performReveal:(id)a3
{
  v4 = a3;
  v5 = [(CKMessagePartHighlightChatItemCell *)self highlightBalloonView];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__CKMessagePartHighlightChatItemCell_performReveal___block_invoke;
  v7[3] = &unk_1E72ED1F0;
  v8 = v4;
  v6 = v4;
  [v5 performTranscriptRevealAnimation:v7];
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

- (void)performReload:(id)a3 completion:(id)a4
{
  v7 = a4;
  if (a3)
  {
    (*(a3 + 2))(a3);
  }

  v6 = [(CKMessagePartHighlightChatItemCell *)self highlightBalloonView];
  [v6 performTranscriptReloadAnimation:v7];
}

- (void)prepareForReuse
{
  v3 = [(CKMessagePartHighlightChatItemCell *)self highlightBalloonView];
  CKBalloonViewReuse(v3);

  v4.receiver = self;
  v4.super_class = CKMessagePartHighlightChatItemCell;
  [(CKAssociatedMessageTranscriptCell *)&v4 prepareForReuse];
}

@end