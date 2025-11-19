@interface CKTranscriptTapbackSupplementaryView
- (CKTranscriptTapbackSupplementaryView)initWithFrame:(CGRect)a3;
- (void)configureForChatItem:(id)a3 context:(id)a4 animated:(BOOL)a5 animationDuration:(double)a6 animationCurve:(int64_t)a7;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setBalloonView:(id)a3;
@end

@implementation CKTranscriptTapbackSupplementaryView

- (CKTranscriptTapbackSupplementaryView)initWithFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = CKTranscriptTapbackSupplementaryView;
  return [(CKTranscriptTapbackSupplementaryView *)&v4 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v11 = [(CKTranscriptTapbackSupplementaryView *)self balloonView];
  [v11 setFrame:{v4, v6, v8, v10}];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = CKTranscriptTapbackSupplementaryView;
  [(CKTranscriptTapbackSupplementaryView *)&v3 prepareForReuse];
  [(CKTranscriptTapbackSupplementaryView *)self setBalloonView:0];
}

- (void)setBalloonView:(id)a3
{
  v5 = a3;
  balloonView = self->_balloonView;
  if (balloonView != v5)
  {
    v7 = v5;
    [(CKAcknowledgmentBalloonView *)balloonView removeFromSuperview];
    CKBalloonViewReuse(self->_balloonView);
    objc_storeStrong(&self->_balloonView, a3);
    [(CKTranscriptTapbackSupplementaryView *)self addSubview:self->_balloonView];
    v5 = v7;
  }
}

- (void)configureForChatItem:(id)a3 context:(id)a4 animated:(BOOL)a5 animationDuration:(double)a6 animationCurve:(int64_t)a7
{
  v9 = a5;
  v29 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v27.receiver = self;
  v27.super_class = CKTranscriptTapbackSupplementaryView;
  [(CKTranscriptCollectionSupplementaryView *)&v27 configureForChatItem:v12 context:v13 animated:v9 animationDuration:a7 animationCurve:a6];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = [v12 visibleAssociatedMessageChatItems];
  v15 = [v14 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (!v15)
  {
    v17 = v14;
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
        objc_enumerationMutation(v14);
      }

      v20 = *(*(&v23 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = v20;

        v17 = v21;
      }
    }

    v16 = [v14 countByEnumeratingWithState:&v23 objects:v28 count:16];
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