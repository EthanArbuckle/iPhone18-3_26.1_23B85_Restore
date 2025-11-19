@interface CKTranscriptHeaderCell
+ (double)defaultCellHeight;
- (CKTranscriptHeaderCell)initWithFrame:(CGRect)a3;
- (void)_stopLoadingIndicatorAnimatingIfNeeded;
- (void)dealloc;
- (void)layoutSubviewsForAlignmentContents;
- (void)prepareForReuse;
- (void)startAnimatingActivityIndicator;
@end

@implementation CKTranscriptHeaderCell

- (CKTranscriptHeaderCell)initWithFrame:(CGRect)a3
{
  v12.receiver = self;
  v12.super_class = CKTranscriptHeaderCell;
  v3 = [(CKTranscriptCell *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[CKUIBehavior sharedBehaviors];
    v5 = [v4 showsLoadMoreItem];

    if (v5)
    {
      v6 = +[CKUIBehavior sharedBehaviors];
      v7 = [v6 transcriptLoadingIndicatorStyle];

      v8 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:v7];
      loadingIndicator = v3->_loadingIndicator;
      v3->_loadingIndicator = v8;

      [(UIActivityIndicatorView *)v3->_loadingIndicator sizeToFit];
      [(UIActivityIndicatorView *)v3->_loadingIndicator startAnimating];
      v10 = [(CKEditableCollectionViewCell *)v3 contentView];
      [v10 addSubview:v3->_loadingIndicator];
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
  v4 = [v3 showsLoadMoreItem];

  if (v4)
  {
    v5 = [(CKTranscriptHeaderCell *)self loadingIndicator];
    [v5 frame];
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

    [v5 setFrame:{floor((v11 + (v15 - v7) * 0.5) * v18) / v18, floor((v13 + (v17 - v9) * 0.5) * v18) / v18, v7, v9}];
  }
}

+ (double)defaultCellHeight
{
  v2 = +[CKUIBehavior sharedBehaviors];
  v3 = [v2 showsLoadMoreItem];

  result = 0.0;
  if (v3)
  {
    v5 = +[CKUIBehavior sharedBehaviors];
    v6 = [v5 theme];
    v7 = [v6 transcriptLoadingIndicatorStyle];

    [MEMORY[0x1E69DC638] defaultSizeForStyle:v7];
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
  v4 = [v3 showsLoadMoreItem];

  if (v4 && [(UIActivityIndicatorView *)self->_loadingIndicator isAnimating])
  {
    loadingIndicator = self->_loadingIndicator;

    [(UIActivityIndicatorView *)loadingIndicator stopAnimating];
  }
}

@end