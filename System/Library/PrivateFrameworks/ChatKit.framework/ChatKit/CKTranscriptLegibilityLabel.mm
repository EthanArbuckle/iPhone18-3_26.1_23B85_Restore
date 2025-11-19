@interface CKTranscriptLegibilityLabel
- (BOOL)isLegibilityViewRequired;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CKTranscriptLegibilityLabel)initWithFrame:(CGRect)a3;
- (id)_createLegibilityView;
- (id)_lazyLoadedLegibilityView;
- (void)_registerForTraitCollectionChanges;
- (void)_removeLegibilityViewIfNecessary;
- (void)_updateLegibilityView;
- (void)deferredUpdateLegibilityView;
- (void)layoutSubviews;
- (void)setAttributedText:(id)a3;
- (void)setContentMode:(int64_t)a3;
- (void)setLineBreakMode:(int64_t)a3;
- (void)setNumberOfLines:(int64_t)a3;
- (void)setTextAlignment:(int64_t)a3;
@end

@implementation CKTranscriptLegibilityLabel

- (CKTranscriptLegibilityLabel)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v9.receiver = self;
  v9.super_class = CKTranscriptLegibilityLabel;
  v5 = [(CKTranscriptLegibilityLabel *)&v9 initWithFrame:a3.origin.x, a3.origin.y];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{0.0, 0.0, width, height}];
    label = v5->_label;
    v5->_label = v6;

    [(CKTranscriptLegibilityLabel *)v5 addSubview:v5->_label];
    [(CKTranscriptLegibilityLabel *)v5 _registerForTraitCollectionChanges];
  }

  return v5;
}

- (void)setContentMode:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = CKTranscriptLegibilityLabel;
  [(CKTranscriptLegibilityLabel *)&v5 setContentMode:?];
  [(UILabel *)self->_label setContentMode:a3];
  [(CKTranscriptLegibilityLabel *)self deferredUpdateLegibilityView];
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = CKTranscriptLegibilityLabel;
  [(CKTranscriptLegibilityLabel *)&v15 layoutSubviews];
  [(CKTranscriptLegibilityLabel *)self bounds];
  [(UILabel *)self->_label setFrame:?];
  if (self->_legibilityView || ([(CKTranscriptLegibilityLabel *)self deferredUpdateLegibilityView], self->_legibilityView))
  {
    [(CKTranscriptLegibilityLabel *)self legibilityViewFrame];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [(PLKLegibilityView *)self->_legibilityView frame];
    v12 = v11;
    v14 = v13;
    [(PLKLegibilityView *)self->_legibilityView setFrame:v4, v6, v8, v10];
    if (!CKSizeApproximatelyEqualToSizeWithTolerance(v12, v14, v8, v10, 0.1))
    {
      [(CKTranscriptLegibilityLabel *)self deferredUpdateLegibilityView];
    }
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(UILabel *)self->_label sizeThatFits:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)intrinsicContentSize
{
  [(CKTranscriptLegibilityLabel *)self frame];
  v4 = v3;
  [(UILabel *)self->_label frame];
  v6 = v5;
  v7 = v4;
  result.height = v6;
  result.width = v7;
  return result;
}

- (BOOL)isLegibilityViewRequired
{
  v2 = [(CKTranscriptLegibilityLabel *)self traitCollection];
  v3 = [v2 isTranscriptBackgroundActive];

  return v3;
}

- (void)deferredUpdateLegibilityView
{
  v4[1] = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__updateLegibilityView object:0];
  v4[0] = *MEMORY[0x1E695DA28];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  [(CKTranscriptLegibilityLabel *)self performSelector:sel__updateLegibilityView withObject:0 afterDelay:v3 inModes:0.0];
}

- (void)_updateLegibilityView
{
  if ([(CKTranscriptLegibilityLabel *)self isLegibilityViewRequired]&& ([(CKTranscriptLegibilityLabel *)self legibilityViewFrame], !CGRectIsEmpty(v8)))
  {
    v3 = [(CKTranscriptLegibilityLabel *)self legibilityDescriptor];
    v6 = v3;
    if (v3)
    {
      v4 = [MEMORY[0x1E69C5420] legibilityContentForLabel:self->_label legibilityDescriptor:v3];
      if (v4)
      {
        v5 = [(CKTranscriptLegibilityLabel *)self _lazyLoadedLegibilityView];
        [v5 setContent:v4];
      }

      else
      {
        [(CKTranscriptLegibilityLabel *)self _removeLegibilityViewIfNecessary];
      }
    }

    else
    {
      [(CKTranscriptLegibilityLabel *)self _removeLegibilityViewIfNecessary];
    }
  }

  else
  {

    [(CKTranscriptLegibilityLabel *)self _removeLegibilityViewIfNecessary];
  }
}

- (id)_createLegibilityView
{
  v2 = objc_alloc_init(MEMORY[0x1E69C5440]);
  [v2 setHideForegroundContent:1];

  return v2;
}

- (id)_lazyLoadedLegibilityView
{
  legibilityView = self->_legibilityView;
  if (!legibilityView)
  {
    v4 = [(CKTranscriptLegibilityLabel *)self _createLegibilityView];
    v5 = self->_legibilityView;
    self->_legibilityView = v4;

    [(CKTranscriptLegibilityLabel *)self insertSubview:self->_legibilityView belowSubview:self->_label];
    legibilityView = self->_legibilityView;
  }

  return legibilityView;
}

- (void)_removeLegibilityViewIfNecessary
{
  legibilityView = self->_legibilityView;
  if (legibilityView)
  {
    [(PLKLegibilityView *)legibilityView removeFromSuperview];
    v4 = self->_legibilityView;
    self->_legibilityView = 0;
  }
}

- (void)_registerForTraitCollectionChanges
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v4 = [(CKTranscriptLegibilityLabel *)self registerForTraitChanges:v3 withHandler:&__block_literal_global_143];
}

- (void)setAttributedText:(id)a3
{
  [(UILabel *)self->_label setAttributedText:a3];

  [(CKTranscriptLegibilityLabel *)self deferredUpdateLegibilityView];
}

- (void)setNumberOfLines:(int64_t)a3
{
  [(UILabel *)self->_label setNumberOfLines:a3];

  [(CKTranscriptLegibilityLabel *)self deferredUpdateLegibilityView];
}

- (void)setTextAlignment:(int64_t)a3
{
  [(UILabel *)self->_label setTextAlignment:a3];

  [(CKTranscriptLegibilityLabel *)self deferredUpdateLegibilityView];
}

- (void)setLineBreakMode:(int64_t)a3
{
  [(UILabel *)self->_label setLineBreakMode:a3];

  [(CKTranscriptLegibilityLabel *)self deferredUpdateLegibilityView];
}

@end