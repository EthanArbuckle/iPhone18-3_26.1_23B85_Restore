@interface CKTranscriptHeaderCell
+ (double)defaultCellHeight;
- (CKTranscriptHeaderCell)initWithFrame:(CGRect)frame;
- (void)_stopLoadingIndicatorAnimatingIfNeeded;
- (void)dealloc;
- (void)layoutSubviewsForAlignmentContents;
- (void)prepareForReuse;
- (void)startAnimatingActivityIndicator;
@end

@implementation CKTranscriptHeaderCell

- (CKTranscriptHeaderCell)initWithFrame:(CGRect)frame
{
  v12.receiver = self;
  v12.super_class = CKTranscriptHeaderCell;
  v3 = [(CKTranscriptCell *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[CKUIBehavior sharedBehaviors];
    showsLoadMoreItem = [v4 showsLoadMoreItem];

    if (showsLoadMoreItem)
    {
      v6 = +[CKUIBehavior sharedBehaviors];
      transcriptLoadingIndicatorStyle = [v6 transcriptLoadingIndicatorStyle];

      v8 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:transcriptLoadingIndicatorStyle];
      loadingIndicator = v3->_loadingIndicator;
      v3->_loadingIndicator = v8;

      [(UIActivityIndicatorView *)v3->_loadingIndicator sizeToFit];
      [(UIActivityIndicatorView *)v3->_loadingIndicator startAnimating];
      contentView = [(CKEditableCollectionViewCell *)v3 contentView];
      [contentView addSubview:v3->_loadingIndicator];
    }
  }

  return v3;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = CKTranscriptHeaderCell;
  [(CKTranscriptCell *)&v3 prepareForReuse];
  [(CKTranscriptHeaderCell *)self _stopLoadingIndicatorAnimatingIfNeeded];
}

- (void)dealloc
{
  [(CKTranscriptHeaderCell *)self _stopLoadingIndicatorAnimatingIfNeeded];
  v3.receiver = self;
  v3.super_class = CKTranscriptHeaderCell;
  [(CKTranscriptHeaderCell *)&v3 dealloc];
}

- (void)layoutSubviewsForAlignmentContents
{
  v19.receiver = self;
  v19.super_class = CKTranscriptHeaderCell;
  [(CKEditableCollectionViewCell *)&v19 layoutSubviewsForAlignmentContents];
  v3 = +[CKUIBehavior sharedBehaviors];
  showsLoadMoreItem = [v3 showsLoadMoreItem];

  if (showsLoadMoreItem)
  {
    loadingIndicator = [(CKTranscriptHeaderCell *)self loadingIndicator];
    [loadingIndicator frame];
    v7 = v6;
    v9 = v8;
    [(CKEditableCollectionViewCell *)self contentAlignmentRect];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    if (CKMainScreenScale_once_16 != -1)
    {
      [CKTranscriptHeaderCell layoutSubviewsForAlignmentContents];
    }

    v18 = 1.0;
    if (*&CKMainScreenScale_sMainScreenScale_16 != 0.0)
    {
      v18 = *&CKMainScreenScale_sMainScreenScale_16;
    }

    [loadingIndicator setFrame:{floor((v11 + (v15 - v7) * 0.5) * v18) / v18, floor((v13 + (v17 - v9) * 0.5) * v18) / v18, v7, v9}];
  }
}

+ (double)defaultCellHeight
{
  v2 = +[CKUIBehavior sharedBehaviors];
  showsLoadMoreItem = [v2 showsLoadMoreItem];

  result = 0.0;
  if (showsLoadMoreItem)
  {
    v5 = +[CKUIBehavior sharedBehaviors];
    theme = [v5 theme];
    transcriptLoadingIndicatorStyle = [theme transcriptLoadingIndicatorStyle];

    [MEMORY[0x1E69DC638] defaultSizeForStyle:transcriptLoadingIndicatorStyle];
    return v8;
  }

  return result;
}

- (void)startAnimatingActivityIndicator
{
  if (![(UIActivityIndicatorView *)self->_loadingIndicator isAnimating])
  {
    loadingIndicator = self->_loadingIndicator;

    [(UIActivityIndicatorView *)loadingIndicator startAnimating];
  }
}

- (void)_stopLoadingIndicatorAnimatingIfNeeded
{
  v3 = +[CKUIBehavior sharedBehaviors];
  showsLoadMoreItem = [v3 showsLoadMoreItem];

  if (showsLoadMoreItem && [(UIActivityIndicatorView *)self->_loadingIndicator isAnimating])
  {
    loadingIndicator = self->_loadingIndicator;

    [(UIActivityIndicatorView *)loadingIndicator stopAnimating];
  }
}

@end