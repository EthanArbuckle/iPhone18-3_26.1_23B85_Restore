@interface CKOrganicTranscriptBalloonCell
- (double)layoutOffset;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)configureForChatItem:(id)item context:(id)context animated:(BOOL)animated animationDuration:(double)duration animationCurve:(int64_t)curve;
- (void)layoutSubviewsForAlignmentContents;
@end

@implementation CKOrganicTranscriptBalloonCell

- (double)layoutOffset
{
  layoutRecipe = [(CKOrganicTranscriptBalloonCell *)self layoutRecipe];
  [layoutRecipe offset];
  v4 = v3;

  return v4;
}

- (void)layoutSubviewsForAlignmentContents
{
  v30.receiver = self;
  v30.super_class = CKOrganicTranscriptBalloonCell;
  [(CKTranscriptBalloonCell *)&v30 layoutSubviewsForAlignmentContents];
  quickActionButton = [(CKTranscriptBalloonCell *)self quickActionButton];
  if (quickActionButton)
  {
    v4 = quickActionButton;
    layoutRecipe = [(CKOrganicTranscriptBalloonCell *)self layoutRecipe];
    relativeGroupCenter = [layoutRecipe relativeGroupCenter];

    if (relativeGroupCenter)
    {
      layoutRecipe2 = [(CKOrganicTranscriptBalloonCell *)self layoutRecipe];
      relativeGroupCenter2 = [layoutRecipe2 relativeGroupCenter];
      [relativeGroupCenter2 doubleValue];
      v10 = v9;

      layoutRecipe3 = [(CKOrganicTranscriptBalloonCell *)self layoutRecipe];
      groupMaxX = [layoutRecipe3 groupMaxX];
      [groupMaxX doubleValue];
      v14 = v13;

      quickActionButton2 = [(CKTranscriptBalloonCell *)self quickActionButton];
      [quickActionButton2 frame];
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

      quickActionButton3 = [(CKTranscriptBalloonCell *)self quickActionButton];
      [quickActionButton3 setFrame:{v28, v24, v21, v23}];
    }
  }
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  quickActionButton = [(CKTranscriptBalloonCell *)self quickActionButton];
  [quickActionButton frame];
  v20.x = x;
  v20.y = y;
  v9 = CGRectContainsPoint(v21, v20);

  if (v9)
  {
    quickActionButton2 = [(CKTranscriptBalloonCell *)self quickActionButton];
    [(CKOrganicTranscriptBalloonCell *)self convertPoint:quickActionButton2 toView:x, y];
    v12 = v11;
    v14 = v13;

    quickActionButton3 = [(CKTranscriptBalloonCell *)self quickActionButton];
    v16 = [quickActionButton3 hitTest:eventCopy withEvent:{v12, v14}];
  }

  else
  {
    v18.receiver = self;
    v18.super_class = CKOrganicTranscriptBalloonCell;
    v16 = [(CKOrganicTranscriptBalloonCell *)&v18 hitTest:eventCopy withEvent:x, y];
  }

  return v16;
}

- (void)configureForChatItem:(id)item context:(id)context animated:(BOOL)animated animationDuration:(double)duration animationCurve:(int64_t)curve
{
  animatedCopy = animated;
  v14.receiver = self;
  v14.super_class = CKOrganicTranscriptBalloonCell;
  itemCopy = item;
  [(CKTranscriptBalloonCell *)&v14 configureForChatItem:itemCopy context:context animated:animatedCopy animationDuration:curve animationCurve:duration];
  layoutRecipe = [itemCopy layoutRecipe];

  [(CKOrganicTranscriptBalloonCell *)self setLayoutRecipe:layoutRecipe];
}

@end