@interface CKTranscriptBalloonCollectionViewCell
- (id)_balloonViewForChatItem:(id)a3;
- (id)description;
- (void)addFilter:(id)a3;
- (void)clearFilters;
- (void)configureForChatItem:(id)a3 context:(id)a4;
- (void)dealloc;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAnimationPauseReasons:(int64_t)a3;
- (void)setBalloonView:(id)a3;
@end

@implementation CKTranscriptBalloonCollectionViewCell

- (void)dealloc
{
  v3 = [(CKTranscriptBalloonCollectionViewCell *)self balloonView];
  [v3 removeFromSuperview];

  v4 = [(CKTranscriptBalloonCollectionViewCell *)self balloonView];
  CKBalloonViewReuse(v4);

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
  v3 = [(CKTranscriptBalloonCollectionViewCell *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(CKTranscriptBalloonCollectionViewCell *)self balloonView];
  [v12 setFrame:{v5, v7, v9, v11}];
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = CKTranscriptBalloonCollectionViewCell;
  [(CKTranscriptCollectionViewCell *)&v5 prepareForReuse];
  v3 = [(CKTranscriptBalloonCollectionViewCell *)self balloonView];
  [v3 removeFromSuperview];

  v4 = [(CKTranscriptBalloonCollectionViewCell *)self balloonView];
  CKBalloonViewReuse(v4);

  [(CKTranscriptBalloonCollectionViewCell *)self setBalloonView:0];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = CKTranscriptBalloonCollectionViewCell;
  v4 = [(CKTranscriptCollectionViewCell *)&v8 description];
  v5 = [(CKTranscriptBalloonCollectionViewCell *)self balloonView];
  v6 = [v3 stringWithFormat:@"%@ balloonView:%@", v4, v5];

  return v6;
}

- (void)setBalloonView:(id)a3
{
  v5 = a3;
  balloonView = self->_balloonView;
  if (balloonView != v5)
  {
    v9 = v5;
    [(CKBalloonView *)balloonView removeFromSuperview];
    objc_storeStrong(&self->_balloonView, a3);
    v7 = [(CKTranscriptBalloonCollectionViewCell *)self contentView];
    [v7 addSubview:self->_balloonView];

    v8 = [(CKTranscriptBalloonCollectionViewCell *)self layer];
    [v8 setAllowsGroupOpacity:{-[CKBalloonView needsGroupOpacity](self->_balloonView, "needsGroupOpacity")}];

    [(CKTranscriptBalloonCollectionViewCell *)self setNeedsLayout];
    v5 = v9;
  }
}

- (void)configureForChatItem:(id)a3 context:(id)a4
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
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
      [CKTranscriptBalloonCollectionViewCell configureForChatItem:v5 context:v8];
    }
  }
}

- (id)_balloonViewForChatItem:(id)a3
{
  v4 = [a3 balloonViewClass];
  v5 = [(CKTranscriptBalloonCollectionViewCell *)self balloonView];
  if (!v5 || objc_opt_class() != v4)
  {
    v6 = CKBalloonViewForClass(v4);

    [(CKTranscriptBalloonCollectionViewCell *)self setBalloonView:v6];
    v5 = v6;
  }

  return v5;
}

- (void)addFilter:(id)a3
{
  v4 = a3;
  v5 = [(CKTranscriptBalloonCollectionViewCell *)self balloonView];
  [v5 prepareForDisplayIfNeeded];

  v6 = [(CKTranscriptBalloonCollectionViewCell *)self balloonView];
  [v6 addFilter:v4];
}

- (void)clearFilters
{
  v2 = [(CKTranscriptBalloonCollectionViewCell *)self balloonView];
  [v2 clearFilters];
}

- (void)setAnimationPauseReasons:(int64_t)a3
{
  if (self->_animationPauseReasons != a3)
  {
    self->_animationPauseReasons = a3;
    v6 = [(CKTranscriptBalloonCollectionViewCell *)self balloonView];
    [v6 setInvisibleInkEffectPaused:a3 != 0];

    v7 = [(CKTranscriptBalloonCollectionViewCell *)self balloonView];
    [v7 setAnimationPaused:(a3 >> 1) & 1];
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