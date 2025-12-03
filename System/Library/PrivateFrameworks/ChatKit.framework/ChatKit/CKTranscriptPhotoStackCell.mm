@interface CKTranscriptPhotoStackCell
- (CKTranscriptPhotoStackCellDelegate)delegate;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)handlePinchGesture:(id)gesture;
- (void)layoutSubviews;
- (void)layoutSubviewsForAlignmentContents;
- (void)setWantsContactImageLayout:(BOOL)layout;
@end

@implementation CKTranscriptPhotoStackCell

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = CKTranscriptPhotoStackCell;
  [(CKTranscriptCell *)&v7 layoutSubviews];
  photoStackBalloonView = [(CKTranscriptPhotoStackCell *)self photoStackBalloonView];
  [photoStackBalloonView setWantsContactImageLayout:{-[CKTranscriptMessageCell wantsContactImageLayout](self, "wantsContactImageLayout")}];

  pinchGestureRecognizer = [(CKTranscriptPhotoStackCell *)self pinchGestureRecognizer];

  if (!pinchGestureRecognizer)
  {
    v5 = [objc_alloc(MEMORY[0x1E69DCD80]) initWithTarget:self action:sel_handlePinchGesture_];
    [(CKTranscriptPhotoStackCell *)self setPinchGestureRecognizer:v5];

    pinchGestureRecognizer2 = [(CKTranscriptPhotoStackCell *)self pinchGestureRecognizer];
    [(CKTranscriptPhotoStackCell *)self addGestureRecognizer:pinchGestureRecognizer2];
  }
}

- (void)layoutSubviewsForAlignmentContents
{
  *&recta.origin.y = self;
  *&recta.size.width = CKTranscriptPhotoStackCell;
  [(CGFloat *)&recta.origin.y layoutSubviewsForAlignmentContents];
  photoStackBalloonView = [(CKTranscriptPhotoStackCell *)self photoStackBalloonView];
  orientation = [(CKEditableCollectionViewCell *)self orientation];
  wantsContactImageLayout = [(CKTranscriptMessageCell *)self wantsContactImageLayout];
  [photoStackBalloonView frame];
  recta.origin.x = v6;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [photoStackBalloonView horizontalContentMarginForSize:{v9, v11}];
  v14 = v13;
  if (wantsContactImageLayout)
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
  if (orientation)
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

  [photoStackBalloonView setFrame:{v20, v8, v10, v12}];
  if (!wantsContactImageLayout)
  {
    if (orientation)
    {
      if (orientation != 2)
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
      v25 = photoStackBalloonView;
      v26 = 1;
    }

    else
    {
      [(CKEditableCollectionViewCell *)self contentInsets];
      v24 = v14 + v20 - (MinX - v27);
      v25 = photoStackBalloonView;
      v26 = 0;
    }

    [v25 setHorizontalContentMarginAdjustment:v26 edge:v24];
  }

LABEL_13:
  quickActionButton = [(CKTranscriptBalloonCell *)self quickActionButton];

  if (quickActionButton)
  {
    v29 = v8;
    quickActionButton2 = [(CKTranscriptBalloonCell *)self quickActionButton];
    [quickActionButton2 frame];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;

    if ([(CKEditableCollectionViewCell *)self orientation])
    {
      if ([(CKEditableCollectionViewCell *)self orientation]!= 2)
      {
LABEL_19:
        quickActionButton3 = [(CKTranscriptBalloonCell *)self quickActionButton];
        [quickActionButton3 setFrame:{v32, v34, v36, v38}];

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

- (void)setWantsContactImageLayout:(BOOL)layout
{
  layoutCopy = layout;
  if ([(CKTranscriptMessageCell *)self wantsContactImageLayout]!= layout)
  {
    v6.receiver = self;
    v6.super_class = CKTranscriptPhotoStackCell;
    [(CKTranscriptMessageCell *)&v6 setWantsContactImageLayout:layoutCopy];
    photoStackBalloonView = [(CKTranscriptPhotoStackCell *)self photoStackBalloonView];
    [photoStackBalloonView setWantsContactImageLayout:layoutCopy];
  }
}

- (void)handlePinchGesture:(id)gesture
{
  gestureCopy = gesture;
  if ([gestureCopy state] == 2)
  {
    [gestureCopy scale];
    if (v4 > 1.5)
    {
      delegate = [(CKTranscriptPhotoStackCell *)self delegate];
      [delegate didPinchPhotoStackCell:self];
    }
  }
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  failureButton = [(CKTranscriptMessageCell *)self failureButton];
  if (failureButton && (-[CKTranscriptPhotoStackCell convertPoint:toView:](self, "convertPoint:toView:", failureButton, x, y), v10 = v9, v12 = v11, [failureButton bounds], v18.x = v10, v18.y = v12, CGRectContainsPoint(v19, v18)))
  {
    v13 = failureButton;
  }

  else
  {
    v16.receiver = self;
    v16.super_class = CKTranscriptPhotoStackCell;
    v13 = [(CKTranscriptPhotoStackCell *)&v16 hitTest:eventCopy withEvent:x, y];
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