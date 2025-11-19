@interface CKTranscriptLegibilityInternalButton
- (CKTranscriptLegibilityInternalButtonDelegate)legibilityButtonDelegate;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation CKTranscriptLegibilityInternalButton

- (void)layoutSubviews
{
  v3 = [(CKTranscriptLegibilityInternalButton *)self titleLabel];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v22.receiver = self;
  v22.super_class = CKTranscriptLegibilityInternalButton;
  [(CKTranscriptLegibilityInternalButton *)&v22 layoutSubviews];
  v12 = [(CKTranscriptLegibilityInternalButton *)self titleLabel];
  [v12 frame];
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

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = CKTranscriptLegibilityInternalButton;
  [(CKTranscriptLegibilityInternalButton *)&v7 setHighlighted:?];
  if (self->_dimsOnHighlight)
  {
    if (v3)
    {
      v5 = 0.3;
    }

    else
    {
      v5 = 1.0;
    }

    v6 = [(CKTranscriptLegibilityInternalButton *)self titleLabel];
    [v6 setAlpha:v5];
  }
}

- (CKTranscriptLegibilityInternalButtonDelegate)legibilityButtonDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_legibilityButtonDelegate);

  return WeakRetained;
}

@end