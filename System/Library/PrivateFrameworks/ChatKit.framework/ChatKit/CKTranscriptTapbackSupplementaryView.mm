@interface CKTranscriptTapbackSupplementaryView
- (CKTranscriptTapbackSupplementaryView)initWithFrame:(CGRect)frame;
- (void)configureForChatItem:(id)item context:(id)context animated:(BOOL)animated animationDuration:(double)duration animationCurve:(int64_t)curve;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setBalloonView:(id)view;
@end

@implementation CKTranscriptTapbackSupplementaryView

- (CKTranscriptTapbackSupplementaryView)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = CKTranscriptTapbackSupplementaryView;
  return [(CKTranscriptTapbackSupplementaryView *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = CKTranscriptTapbackSupplementaryView;
  [(CKTranscriptTapbackSupplementaryView *)&v12 layoutSubviews];
  [(CKTranscriptTapbackSupplementaryView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  balloonView = [(CKTranscriptTapbackSupplementaryView *)self balloonView];
  [balloonView setFrame:{v4, v6, v8, v10}];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = CKTranscriptTapbackSupplementaryView;
  [(CKTranscriptTapbackSupplementaryView *)&v3 prepareForReuse];
  [(CKTranscriptTapbackSupplementaryView *)self setBalloonView:0];
}

- (void)setBalloonView:(id)view
{
  viewCopy = view;
  balloonView = self->_balloonView;
  if (balloonView != viewCopy)
  {
    v7 = viewCopy;
    [(CKAcknowledgmentBalloonView *)balloonView removeFromSuperview];
    CKBalloonViewReuse(self->_balloonView);
    objc_storeStrong(&self->_balloonView, view);
    [(CKTranscriptTapbackSupplementaryView *)self addSubview:self->_balloonView];
    viewCopy = v7;
  }
}

- (void)configureForChatItem:(id)item context:(id)context animated:(BOOL)animated animationDuration:(double)duration animationCurve:(int64_t)curve
{
  animatedCopy = animated;
  v29 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  contextCopy = context;
  v27.receiver = self;
  v27.super_class = CKTranscriptTapbackSupplementaryView;
  [(CKTranscriptCollectionSupplementaryView *)&v27 configureForChatItem:itemCopy context:contextCopy animated:animatedCopy animationDuration:curve animationCurve:duration];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  visibleAssociatedMessageChatItems = [itemCopy visibleAssociatedMessageChatItems];
  v15 = [visibleAssociatedMessageChatItems countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (!v15)
  {
    v17 = visibleAssociatedMessageChatItems;
    goto LABEL_13;
  }

  v16 = v15;
  v17 = 0;
  v18 = *v24;
  do
  {
    for (i = 0; i != v16; ++i)
    {
      if (*v24 != v18)
      {
        objc_enumerationMutation(visibleAssociatedMessageChatItems);
      }

      v20 = *(*(&v23 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = v20;

        v17 = v21;
      }
    }

    v16 = [visibleAssociatedMessageChatItems countByEnumeratingWithState:&v23 objects:v28 count:16];
  }

  while (v16);

  if (v17)
  {
    v22 = CKBalloonViewForClass([v17 balloonViewClass]);
    [(CKTranscriptTapbackSupplementaryView *)self setBalloonView:v22];
    [v22 configureForAggregateAcknowledgmentChatItem:v17];

LABEL_13:
  }
}

@end