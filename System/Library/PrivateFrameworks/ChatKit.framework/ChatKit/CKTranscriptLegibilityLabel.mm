@interface CKTranscriptLegibilityLabel
- (BOOL)isLegibilityViewRequired;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CKTranscriptLegibilityLabel)initWithFrame:(CGRect)frame;
- (id)_createLegibilityView;
- (id)_lazyLoadedLegibilityView;
- (void)_registerForTraitCollectionChanges;
- (void)_removeLegibilityViewIfNecessary;
- (void)_updateLegibilityView;
- (void)deferredUpdateLegibilityView;
- (void)layoutSubviews;
- (void)setAttributedText:(id)text;
- (void)setContentMode:(int64_t)mode;
- (void)setLineBreakMode:(int64_t)mode;
- (void)setNumberOfLines:(int64_t)lines;
- (void)setTextAlignment:(int64_t)alignment;
@end

@implementation CKTranscriptLegibilityLabel

- (CKTranscriptLegibilityLabel)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  v9.receiver = self;
  v9.super_class = CKTranscriptLegibilityLabel;
  v5 = [(CKTranscriptLegibilityLabel *)&v9 initWithFrame:frame.origin.x, frame.origin.y];
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

- (void)setContentMode:(int64_t)mode
{
  v5.receiver = self;
  v5.super_class = CKTranscriptLegibilityLabel;
  [(CKTranscriptLegibilityLabel *)&v5 setContentMode:?];
  [(UILabel *)self->_label setContentMode:mode];
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(UILabel *)self->_label sizeThatFits:fits.width, fits.height];
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
  traitCollection = [(CKTranscriptLegibilityLabel *)self traitCollection];
  isTranscriptBackgroundActive = [traitCollection isTranscriptBackgroundActive];

  return isTranscriptBackgroundActive;
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
    legibilityDescriptor = [(CKTranscriptLegibilityLabel *)self legibilityDescriptor];
    v6 = legibilityDescriptor;
    if (legibilityDescriptor)
    {
      v4 = [MEMORY[0x1E69C5420] legibilityContentForLabel:self->_label legibilityDescriptor:legibilityDescriptor];
      if (v4)
      {
        _lazyLoadedLegibilityView = [(CKTranscriptLegibilityLabel *)self _lazyLoadedLegibilityView];
        [_lazyLoadedLegibilityView setContent:v4];
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
    _createLegibilityView = [(CKTranscriptLegibilityLabel *)self _createLegibilityView];
    v5 = self->_legibilityView;
    self->_legibilityView = _createLegibilityView;

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

- (void)setAttributedText:(id)text
{
  [(UILabel *)self->_label setAttributedText:text];

  [(CKTranscriptLegibilityLabel *)self deferredUpdateLegibilityView];
}

- (void)setNumberOfLines:(int64_t)lines
{
  [(UILabel *)self->_label setNumberOfLines:lines];

  [(CKTranscriptLegibilityLabel *)self deferredUpdateLegibilityView];
}

- (void)setTextAlignment:(int64_t)alignment
{
  [(UILabel *)self->_label setTextAlignment:alignment];

  [(CKTranscriptLegibilityLabel *)self deferredUpdateLegibilityView];
}

- (void)setLineBreakMode:(int64_t)mode
{
  [(UILabel *)self->_label setLineBreakMode:mode];

  [(CKTranscriptLegibilityLabel *)self deferredUpdateLegibilityView];
}

@end