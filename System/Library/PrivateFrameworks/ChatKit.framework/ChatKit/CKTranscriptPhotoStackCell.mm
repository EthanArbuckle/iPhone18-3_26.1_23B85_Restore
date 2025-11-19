@interface CKTranscriptPhotoStackCell
- (CKTranscriptPhotoStackCellDelegate)delegate;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)handlePinchGesture:(id)a3;
- (void)layoutSubviews;
- (void)layoutSubviewsForAlignmentContents;
- (void)setWantsContactImageLayout:(BOOL)a3;
@end

@implementation CKTranscriptPhotoStackCell

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = CKTranscriptPhotoStackCell;
  [(CKTranscriptCell *)&v7 layoutSubviews];
  v3 = [(CKTranscriptPhotoStackCell *)self photoStackBalloonView];
  [v3 setWantsContactImageLayout:{-[CKTranscriptMessageCell wantsContactImageLayout](self, "wantsContactImageLayout")}];

  v4 = [(CKTranscriptPhotoStackCell *)self pinchGestureRecognizer];

  if (!v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E69DCD80]) initWithTarget:self action:sel_handlePinchGesture_];
    [(CKTranscriptPhotoStackCell *)self setPinchGestureRecognizer:v5];

    v6 = [(CKTranscriptPhotoStackCell *)self pinchGestureRecognizer];
    [(CKTranscriptPhotoStackCell *)self addGestureRecognizer:v6];
  }
}

- (void)layoutSubviewsForAlignmentContents
{
  *&recta.origin.y = self;
  *&recta.size.width = CKTranscriptPhotoStackCell;
  [(CGFloat *)&recta.origin.y layoutSubviewsForAlignmentContents];
  v3 = [(CKTranscriptPhotoStackCell *)self photoStackBalloonView];
  v4 = [(CKEditableCollectionViewCell *)self orientation];
  v5 = [(CKTranscriptMessageCell *)self wantsContactImageLayout];
  [v3 frame];
  recta.origin.x = v6;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [v3 horizontalContentMarginForSize:{v9, v11}];
  v14 = v13;
  if (v5)
  {
    v15 = 7.0;
  }

  else
  {
    v15 = 25.0;
  }

  [(CKEditableCollectionViewCell *)self contentAlignmentRect];
  MinX = CGRectGetMinX(v47);
  [(CKTranscriptPhotoStackCell *)self bounds];
  MaxX = CGRectGetMaxX(v48);
  [(CKEditableCollectionViewCell *)self contentAlignmentRect];
  v18 = MaxX - CGRectGetMaxX(v49);
  if (v4)
  {
    [(CKTranscriptPhotoStackCell *)self bounds];
    Width = CGRectGetWidth(v50);
    v51.origin.x = recta.origin.x;
    v51.origin.y = v8;
    v51.size.width = v10;
    v51.size.height = v12;
    v20 = v14 + Width - CGRectGetWidth(v51) - v15 - v18;
  }

  else
  {
    v20 = v15 + MinX - v14;
  }

  [v3 setFrame:{v20, v8, v10, v12}];
  if (!v5)
  {
    if (v4)
    {
      if (v4 != 2)
      {
        goto LABEL_13;
      }

      [(CKEditableCollectionViewCell *)self contentInsets];
      v22 = v18 - v21;
      v52.origin.x = v20;
      v52.origin.y = v8;
      v52.size.width = v10;
      v52.size.height = v12;
      v23 = CGRectGetMaxX(v52) - v14;
      [(CKTranscriptPhotoStackCell *)self frame];
      v24 = CGRectGetWidth(v53) - v23 - v22;
      v25 = v3;
      v26 = 1;
    }

    else
    {
      [(CKEditableCollectionViewCell *)self contentInsets];
      v24 = v14 + v20 - (MinX - v27);
      v25 = v3;
      v26 = 0;
    }

    [v25 setHorizontalContentMarginAdjustment:v26 edge:v24];
  }

LABEL_13:
  v28 = [(CKTranscriptBalloonCell *)self quickActionButton];

  if (v28)
  {
    v29 = v8;
    v30 = [(CKTranscriptBalloonCell *)self quickActionButton];
    [v30 frame];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;

    if ([(CKEditableCollectionViewCell *)self orientation])
    {
      if ([(CKEditableCollectionViewCell *)self orientation]!= 2)
      {
LABEL_19:
        v45 = [(CKTranscriptBalloonCell *)self quickActionButton];
        [v45 setFrame:{v32, v34, v36, v38}];

        goto LABEL_20;
      }

      v39 = +[CKUIBehavior sharedBehaviors];
      [v39 transcriptQuickActionButtonHorizontalSpacing];
      v41 = v20 - v36 - v40;
      v42 = 17.0;
    }

    else
    {
      v54.origin.x = v20;
      v54.origin.y = v29;
      v54.size.width = v10;
      v54.size.height = v12;
      v43 = CGRectGetMaxX(v54);
      v39 = +[CKUIBehavior sharedBehaviors];
      [v39 transcriptQuickActionButtonHorizontalSpacing];
      v41 = v43 + v44;
      v42 = -17.0;
    }

    v32 = v41 + v42;

    goto LABEL_19;
  }

LABEL_20:
}

- (void)setWantsContactImageLayout:(BOOL)a3
{
  v3 = a3;
  if ([(CKTranscriptMessageCell *)self wantsContactImageLayout]!= a3)
  {
    v6.receiver = self;
    v6.super_class = CKTranscriptPhotoStackCell;
    [(CKTranscriptMessageCell *)&v6 setWantsContactImageLayout:v3];
    v5 = [(CKTranscriptPhotoStackCell *)self photoStackBalloonView];
    [v5 setWantsContactImageLayout:v3];
  }
}

- (void)handlePinchGesture:(id)a3
{
  v6 = a3;
  if ([v6 state] == 2)
  {
    [v6 scale];
    if (v4 > 1.5)
    {
      v5 = [(CKTranscriptPhotoStackCell *)self delegate];
      [v5 didPinchPhotoStackCell:self];
    }
  }
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(CKTranscriptMessageCell *)self failureButton];
  if (v8 && (-[CKTranscriptPhotoStackCell convertPoint:toView:](self, "convertPoint:toView:", v8, x, y), v10 = v9, v12 = v11, [v8 bounds], v18.x = v10, v18.y = v12, CGRectContainsPoint(v19, v18)))
  {
    v13 = v8;
  }

  else
  {
    v16.receiver = self;
    v16.super_class = CKTranscriptPhotoStackCell;
    v13 = [(CKTranscriptPhotoStackCell *)&v16 hitTest:v7 withEvent:x, y];
  }

  v14 = v13;

  return v14;
}

- (CKTranscriptPhotoStackCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end