@interface CKTranscriptBalloonCollectionViewCell
- (id)_balloonViewForChatItem:(id)item;
- (id)description;
- (void)addFilter:(id)filter;
- (void)clearFilters;
- (void)configureForChatItem:(id)item context:(id)context;
- (void)dealloc;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAnimationPauseReasons:(int64_t)reasons;
- (void)setBalloonView:(id)view;
@end

@implementation CKTranscriptBalloonCollectionViewCell

- (void)dealloc
{
  balloonView = [(CKTranscriptBalloonCollectionViewCell *)self balloonView];
  [balloonView removeFromSuperview];

  balloonView2 = [(CKTranscriptBalloonCollectionViewCell *)self balloonView];
  CKBalloonViewReuse(balloonView2);

  [(CKTranscriptBalloonCollectionViewCell *)self setBalloonView:0];
  v5.receiver = self;
  v5.super_class = CKTranscriptBalloonCollectionViewCell;
  [(CKTranscriptBalloonCollectionViewCell *)&v5 dealloc];
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = CKTranscriptBalloonCollectionViewCell;
  [(CKTranscriptCollectionViewCell *)&v13 layoutSubviews];
  contentView = [(CKTranscriptBalloonCollectionViewCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  balloonView = [(CKTranscriptBalloonCollectionViewCell *)self balloonView];
  [balloonView setFrame:{v5, v7, v9, v11}];
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = CKTranscriptBalloonCollectionViewCell;
  [(CKTranscriptCollectionViewCell *)&v5 prepareForReuse];
  balloonView = [(CKTranscriptBalloonCollectionViewCell *)self balloonView];
  [balloonView removeFromSuperview];

  balloonView2 = [(CKTranscriptBalloonCollectionViewCell *)self balloonView];
  CKBalloonViewReuse(balloonView2);

  [(CKTranscriptBalloonCollectionViewCell *)self setBalloonView:0];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = CKTranscriptBalloonCollectionViewCell;
  v4 = [(CKTranscriptCollectionViewCell *)&v8 description];
  balloonView = [(CKTranscriptBalloonCollectionViewCell *)self balloonView];
  v6 = [v3 stringWithFormat:@"%@ balloonView:%@", v4, balloonView];

  return v6;
}

- (void)setBalloonView:(id)view
{
  viewCopy = view;
  balloonView = self->_balloonView;
  if (balloonView != viewCopy)
  {
    v9 = viewCopy;
    [(CKBalloonView *)balloonView removeFromSuperview];
    objc_storeStrong(&self->_balloonView, view);
    contentView = [(CKTranscriptBalloonCollectionViewCell *)self contentView];
    [contentView addSubview:self->_balloonView];

    layer = [(CKTranscriptBalloonCollectionViewCell *)self layer];
    [layer setAllowsGroupOpacity:{-[CKBalloonView needsGroupOpacity](self->_balloonView, "needsGroupOpacity")}];

    [(CKTranscriptBalloonCollectionViewCell *)self setNeedsLayout];
    viewCopy = v9;
  }
}

- (void)configureForChatItem:(id)item context:(id)context
{
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = itemCopy;
    v7 = [(CKTranscriptBalloonCollectionViewCell *)self _balloonViewForChatItem:v6];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 configureForLocatingChatItem:v6];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v7 configureForLocationShareOfferChatItem:v6];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v7 configureForTUConversationChatItem:v6];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v7 configureForMessagePart:v6];
            }

            else
            {
              [v7 configureForChatItem:v6];
            }
          }
        }
      }
    }

    [(CKTranscriptBalloonCollectionViewCell *)self setNeedsLayout];
  }

  else
  {
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CKTranscriptBalloonCollectionViewCell configureForChatItem:itemCopy context:v8];
    }
  }
}

- (id)_balloonViewForChatItem:(id)item
{
  balloonViewClass = [item balloonViewClass];
  balloonView = [(CKTranscriptBalloonCollectionViewCell *)self balloonView];
  if (!balloonView || objc_opt_class() != balloonViewClass)
  {
    v6 = CKBalloonViewForClass(balloonViewClass);

    [(CKTranscriptBalloonCollectionViewCell *)self setBalloonView:v6];
    balloonView = v6;
  }

  return balloonView;
}

- (void)addFilter:(id)filter
{
  filterCopy = filter;
  balloonView = [(CKTranscriptBalloonCollectionViewCell *)self balloonView];
  [balloonView prepareForDisplayIfNeeded];

  balloonView2 = [(CKTranscriptBalloonCollectionViewCell *)self balloonView];
  [balloonView2 addFilter:filterCopy];
}

- (void)clearFilters
{
  balloonView = [(CKTranscriptBalloonCollectionViewCell *)self balloonView];
  [balloonView clearFilters];
}

- (void)setAnimationPauseReasons:(int64_t)reasons
{
  if (self->_animationPauseReasons != reasons)
  {
    self->_animationPauseReasons = reasons;
    balloonView = [(CKTranscriptBalloonCollectionViewCell *)self balloonView];
    [balloonView setInvisibleInkEffectPaused:reasons != 0];

    balloonView2 = [(CKTranscriptBalloonCollectionViewCell *)self balloonView];
    [balloonView2 setAnimationPaused:(reasons >> 1) & 1];
  }
}

- (void)configureForChatItem:(uint64_t)a1 context:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 136315394;
  v5 = "[CKTranscriptBalloonCollectionViewCell configureForChatItem:context:]";
  v6 = 2112;
  v7 = objc_opt_class();
  v3 = v7;
  _os_log_error_impl(&dword_19020E000, a2, OS_LOG_TYPE_ERROR, "%s expected CKMessagePartChatItem, got %@", &v4, 0x16u);
}

@end