@interface CKOrganicTranscriptBalloonCell
- (double)layoutOffset;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)configureForChatItem:(id)a3 context:(id)a4 animated:(BOOL)a5 animationDuration:(double)a6 animationCurve:(int64_t)a7;
- (void)layoutSubviewsForAlignmentContents;
@end

@implementation CKOrganicTranscriptBalloonCell

- (double)layoutOffset
{
  v2 = [(CKOrganicTranscriptBalloonCell *)self layoutRecipe];
  [v2 offset];
  v4 = v3;

  return v4;
}

- (void)layoutSubviewsForAlignmentContents
{
  v30.receiver = self;
  v30.super_class = CKOrganicTranscriptBalloonCell;
  [(CKTranscriptBalloonCell *)&v30 layoutSubviewsForAlignmentContents];
  v3 = [(CKTranscriptBalloonCell *)self quickActionButton];
  if (v3)
  {
    v4 = v3;
    v5 = [(CKOrganicTranscriptBalloonCell *)self layoutRecipe];
    v6 = [v5 relativeGroupCenter];

    if (v6)
    {
      v7 = [(CKOrganicTranscriptBalloonCell *)self layoutRecipe];
      v8 = [v7 relativeGroupCenter];
      [v8 doubleValue];
      v10 = v9;

      v11 = [(CKOrganicTranscriptBalloonCell *)self layoutRecipe];
      v12 = [v11 groupMaxX];
      [v12 doubleValue];
      v14 = v13;

      v15 = [(CKTranscriptBalloonCell *)self quickActionButton];
      [v15 frame];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;

      v31.origin.x = v17;
      v31.origin.y = v19;
      v31.size.width = v21;
      v31.size.height = v23;
      v24 = v10 + CGRectGetHeight(v31) * -0.5;
      [(CKEditableCollectionViewCell *)self contentAlignmentRect];
      v25 = v14 + CGRectGetMinX(v32);
      v26 = +[CKUIBehavior sharedBehaviors];
      [v26 transcriptQuickActionButtonHorizontalSpacing];
      v28 = v25 + v27;

      v29 = [(CKTranscriptBalloonCell *)self quickActionButton];
      [v29 setFrame:{v28, v24, v21, v23}];
    }
  }
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(CKTranscriptBalloonCell *)self quickActionButton];
  [v8 frame];
  v20.x = x;
  v20.y = y;
  v9 = CGRectContainsPoint(v21, v20);

  if (v9)
  {
    v10 = [(CKTranscriptBalloonCell *)self quickActionButton];
    [(CKOrganicTranscriptBalloonCell *)self convertPoint:v10 toView:x, y];
    v12 = v11;
    v14 = v13;

    v15 = [(CKTranscriptBalloonCell *)self quickActionButton];
    v16 = [v15 hitTest:v7 withEvent:{v12, v14}];
  }

  else
  {
    v18.receiver = self;
    v18.super_class = CKOrganicTranscriptBalloonCell;
    v16 = [(CKOrganicTranscriptBalloonCell *)&v18 hitTest:v7 withEvent:x, y];
  }

  return v16;
}

- (void)configureForChatItem:(id)a3 context:(id)a4 animated:(BOOL)a5 animationDuration:(double)a6 animationCurve:(int64_t)a7
{
  v9 = a5;
  v14.receiver = self;
  v14.super_class = CKOrganicTranscriptBalloonCell;
  v12 = a3;
  [(CKTranscriptBalloonCell *)&v14 configureForChatItem:v12 context:a4 animated:v9 animationDuration:a7 animationCurve:a6];
  v13 = [v12 layoutRecipe];

  [(CKOrganicTranscriptBalloonCell *)self setLayoutRecipe:v13];
}

@end