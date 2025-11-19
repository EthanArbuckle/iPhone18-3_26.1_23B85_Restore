@interface CKTranscriptCell
- (CKBalloonViewAnimationDelegate)animationDelegate;
- (CKTranscriptCell)initWithFrame:(CGRect)a3;
- (void)configureForChatItem:(id)a3 context:(id)a4 animated:(BOOL)a5 animationDuration:(double)a6 animationCurve:(int64_t)a7;
- (void)layoutSubviews;
- (void)layoutSubviewsForDrawer;
- (void)prepareForReuse;
- (void)setDrawerPercentRevealed:(double)a3;
- (void)setLinkInteractions:(id)a3;
@end

@implementation CKTranscriptCell

- (void)configureForChatItem:(id)a3 context:(id)a4 animated:(BOOL)a5 animationDuration:(double)a6 animationCurve:(int64_t)a7
{
  v15 = a3;
  [v15 contentInsets];
  [(CKEditableCollectionViewCell *)self setContentInsets:?];
  v8 = [v15 transcriptOrientation];
  if ([(CKEditableCollectionViewCell *)self orientation]!= v8)
  {
    [(CKEditableCollectionViewCell *)self setOrientation:v8];
    [(CKTranscriptCell *)self setNeedsLayout];
  }

  v9 = [v15 canBeSelectedInEditMode];
  if ([v15 itemIsReplyContextPreview])
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  objc_opt_class();
  v11 = objc_opt_isKindOfClass();
  objc_opt_class();
  v12 = isKindOfClass | v11 | objc_opt_isKindOfClass();
  v13 = 2;
  if (!v9)
  {
    v13 = 0;
  }

  if (v12)
  {
    v14 = 1;
  }

  else
  {
    v14 = v13;
  }

  [(CKEditableCollectionViewCell *)self setEditingStyle:v14];
}

- (CKTranscriptCell)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = CKTranscriptCell;
  v3 = [(CKTranscriptCell *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(CKTranscriptCell *)v3 layer];
    [v5 setAllowsGroupOpacity:0];
  }

  return v4;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = CKTranscriptCell;
  [(CKEditableCollectionViewCell *)&v3 layoutSubviews];
  [(CKEditableCollectionViewCell *)self layoutSubviewsForContents];
  [(CKTranscriptCell *)self layoutSubviewsForDrawer];
  [(CKEditableCollectionViewCell *)self layoutSubviewsForAlignmentContents];
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = CKTranscriptCell;
  [(CKTranscriptCell *)&v5 prepareForReuse];
  [(CKEditableCollectionViewCell *)self clearFilters];
  [(CKTranscriptCell *)self setInsertionDuration:0.0];
  [(CKTranscriptCell *)self setInsertingBeforeReplyPreview:0];
  [(CKTranscriptCell *)self setInsertingWithReplyPreview:0];
  [(CKTranscriptCell *)self setSuppressAnimationsForLineUpdates:0];
  [(CKEditableCollectionViewCell *)self setIsInReplyContext:0];
  [(CKTranscriptCell *)self setShouldFreezeReplyDecorationsForTimestampReveal:0];
  [(CKTranscriptCell *)self setDrawerPercentRevealed:0.0];
  v3 = [(CKEditableCollectionViewCell *)self contentView];
  [v3 setAlpha:1.0];

  v4 = [(CKTranscriptCell *)self layer];
  [v4 setFilters:0];

  [(CKTranscriptCell *)self setEmphasisState:0];
}

- (void)setDrawerPercentRevealed:(double)a3
{
  if (self->_drawerPercentRevealed != a3)
  {
    self->_drawerPercentRevealed = a3;
    [(CKTranscriptCell *)self setNeedsLayout];
  }
}

- (void)layoutSubviewsForDrawer
{
  v39.receiver = self;
  v39.super_class = CKTranscriptCell;
  [(CKEditableCollectionViewCell *)&v39 layoutSubviewsForDrawer];
  [(CKEditableCollectionViewCell *)self contentAlignmentRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(CKEditableCollectionViewCell *)self contentView];
  [v11 frame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = +[CKUIBehavior sharedBehaviors];
  if ([(CKEditableCollectionViewCell *)self wantsDrawerLayout])
  {
    if ([(CKEditableCollectionViewCell *)self orientation])
    {
      if ([(CKEditableCollectionViewCell *)self orientation]== 2)
      {
        [(CKTranscriptCell *)self drawerPercentRevealed];
        v37 = v21;
        [(CKEditableCollectionViewCell *)self marginInsets];
        v23 = v22;
        v33 = v25;
        v34 = v24;
        v32 = v26;
        [v20 transcriptDrawerWidthForMarginInsets:?];
        v35 = v27;
        [v20 transcriptDrawerOverlapForMarginInsets:{v23, v34, v33, v32}];
        v13 = -((v35 - v28) * v37);
      }
    }

    else if (([v20 timestampsPushBalloons] & 1) == 0)
    {
      [(CKTranscriptCell *)self drawerPercentRevealed];
      v38 = v29;
      [(CKTranscriptCell *)self safeAreaInsets];
      v36 = v30;
      v13 = -((v4 - v30) * v38);
      [(CKEditableCollectionViewCell *)self contentAlignmentInsets];
      v4 = v4 + v38 * (v31 - v36);
    }
  }

  [(CKEditableCollectionViewCell *)self setContentAlignmentRect:v4, v6, v8, v10];
  [v11 setFrame:{v13, v15, v17, v19}];
}

- (void)setLinkInteractions:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  linkInteractions = self->_linkInteractions;
  if (linkInteractions)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = linkInteractions;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v24;
      do
      {
        v10 = 0;
        do
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [(CKTranscriptCell *)self removeInteraction:*(*(&v23 + 1) + 8 * v10++)];
        }

        while (v8 != v10);
        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v8);
    }
  }

  v11 = [v4 copy];
  v12 = self->_linkInteractions;
  self->_linkInteractions = v11;

  v13 = self->_linkInteractions;
  if (v13)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v14 = v13;
    v15 = [(NSArray *)v14 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v20;
      do
      {
        v18 = 0;
        do
        {
          if (*v20 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [(CKTranscriptCell *)self addInteraction:*(*(&v19 + 1) + 8 * v18++), v19];
        }

        while (v16 != v18);
        v16 = [(NSArray *)v14 countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v16);
    }
  }
}

- (CKBalloonViewAnimationDelegate)animationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_animationDelegate);

  return WeakRetained;
}

@end