@interface CKTranscriptLegibilityInternalButton
- (CKTranscriptLegibilityInternalButtonDelegate)legibilityButtonDelegate;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation CKTranscriptLegibilityInternalButton

- (void)layoutSubviews
{
  titleLabel = [(CKTranscriptLegibilityInternalButton *)self titleLabel];
  [titleLabel frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v22.receiver = self;
  v22.super_class = CKTranscriptLegibilityInternalButton;
  [(CKTranscriptLegibilityInternalButton *)&v22 layoutSubviews];
  titleLabel2 = [(CKTranscriptLegibilityInternalButton *)self titleLabel];
  [titleLabel2 frame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  if (!CKRectApproximatelyEqualToRectWithTolerance(v5, v7, v9, v11, v14, v16, v18, v20, 0.01))
  {
    WeakRetained = objc_loadWeakRetained(&self->_legibilityButtonDelegate);
    [WeakRetained legibilityButtonDidUpdateTitleLabelFrame];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v7.receiver = self;
  v7.super_class = CKTranscriptLegibilityInternalButton;
  [(CKTranscriptLegibilityInternalButton *)&v7 setHighlighted:?];
  if (self->_dimsOnHighlight)
  {
    if (highlightedCopy)
    {
      v5 = 0.3;
    }

    else
    {
      v5 = 1.0;
    }

    titleLabel = [(CKTranscriptLegibilityInternalButton *)self titleLabel];
    [titleLabel setAlpha:v5];
  }
}

- (CKTranscriptLegibilityInternalButtonDelegate)legibilityButtonDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_legibilityButtonDelegate);

  return WeakRetained;
}

@end