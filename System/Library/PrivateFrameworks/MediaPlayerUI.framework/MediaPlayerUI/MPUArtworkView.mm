@interface MPUArtworkView
- (BOOL)_shouldShowHighlightView;
- (BOOL)shouldDisplayPlaceholder;
- (MPUArtworkView)initWithFrame:(CGRect)frame;
- (MPUArtworkView)initWithImage:(id)image;
- (void)_imageDidChange;
- (void)_setAspectConstraintMultiplier:(double)multiplier;
- (void)_setPlaceholderHidden:(BOOL)hidden;
- (void)_updateHighlightViewAnimated:(BOOL)animated;
- (void)dealloc;
- (void)setAutomaticallyApplyAspectConstraints:(BOOL)constraints;
- (void)setDimsWhenHighlighted:(BOOL)highlighted;
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated;
- (void)setHighlightedAnimationImages:(id)images;
- (void)setHighlightedImage:(id)image;
- (void)setImage:(id)image;
- (void)setPlaceholderImage:(id)image;
- (void)startAnimating;
- (void)stopAnimating;
- (void)updateConstraints;
@end

@implementation MPUArtworkView

- (MPUArtworkView)initWithImage:(id)image
{
  v6.receiver = self;
  v6.super_class = MPUArtworkView;
  v3 = [(MPUArtworkView *)&v6 initWithImage:image];
  v4 = v3;
  if (v3)
  {
    [(MPUArtworkView *)v3 setContentMode:1];
    [(MPUArtworkView *)v4 setOpaque:1];
  }

  return v4;
}

- (MPUArtworkView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = MPUArtworkView;
  v3 = [(MPUArtworkView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MPUArtworkView *)v3 setContentMode:1];
    [(MPUArtworkView *)v4 setOpaque:1];
  }

  return v4;
}

- (void)dealloc
{
  self->_isDeallocating = 1;
  v2.receiver = self;
  v2.super_class = MPUArtworkView;
  [(MPUArtworkView *)&v2 dealloc];
}

- (void)updateConstraints
{
  image = [(MPUArtworkView *)self image];
  if (image)
  {
    v4 = image;
    automaticallyApplyAspectConstraints = [(MPUArtworkView *)self automaticallyApplyAspectConstraints];

    if (automaticallyApplyAspectConstraints)
    {
      image2 = [(MPUArtworkView *)self image];
      [image2 size];
      v8 = v7;
      v10 = v9;

      if (v10 > 0.0 && v8 > 0.0)
      {
        [(MPUArtworkView *)self _setAspectConstraintMultiplier:v10 / v8];
      }
    }
  }

  v11.receiver = self;
  v11.super_class = MPUArtworkView;
  [(MPUArtworkView *)&v11 updateConstraints];
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
  animatedCopy = animated;
  v6.receiver = self;
  v6.super_class = MPUArtworkView;
  [(MPUArtworkView *)&v6 setHighlighted:highlighted];
  if (self->_dimsWhenHighlighted)
  {
    [(MPUArtworkView *)self _updateHighlightViewAnimated:animatedCopy];
  }
}

- (void)setHighlightedImage:(id)image
{
  v4.receiver = self;
  v4.super_class = MPUArtworkView;
  [(MPUArtworkView *)&v4 setHighlightedImage:image];
  if (self->_dimsWhenHighlighted)
  {
    [(MPUArtworkView *)self _updateHighlightViewAnimated:0];
  }
}

- (void)setHighlightedAnimationImages:(id)images
{
  v4.receiver = self;
  v4.super_class = MPUArtworkView;
  [(MPUArtworkView *)&v4 setHighlightedAnimationImages:images];
  if (self->_dimsWhenHighlighted)
  {
    [(MPUArtworkView *)self _updateHighlightViewAnimated:0];
  }
}

- (void)setImage:(id)image
{
  imageCopy = image;
  if ([(MPUArtworkView *)self isDisplayingPlaceholder])
  {
    [(MPUArtworkView *)self _setPlaceholderHidden:1];
  }

  v6.receiver = self;
  v6.super_class = MPUArtworkView;
  [(MPUArtworkView *)&v6 setImage:imageCopy];
  externalImage = self->_externalImage;
  self->_externalImage = imageCopy;

  if ([(MPUArtworkView *)self shouldDisplayPlaceholder])
  {
    [(MPUArtworkView *)self _setPlaceholderHidden:0];
  }

  [(MPUArtworkView *)self _imageDidChange];
}

- (void)startAnimating
{
  v3.receiver = self;
  v3.super_class = MPUArtworkView;
  [(MPUArtworkView *)&v3 startAnimating];
  if (self->_dimsWhenHighlighted)
  {
    [(MPUArtworkView *)self _updateHighlightViewAnimated:0];
  }
}

- (void)stopAnimating
{
  v3.receiver = self;
  v3.super_class = MPUArtworkView;
  [(MPUArtworkView *)&v3 stopAnimating];
  if (self->_dimsWhenHighlighted)
  {
    [(MPUArtworkView *)self _updateHighlightViewAnimated:0];
  }
}

- (void)setAutomaticallyApplyAspectConstraints:(BOOL)constraints
{
  if (self->_automaticallyApplyAspectConstraints != constraints)
  {
    self->_automaticallyApplyAspectConstraints = constraints;
    if (constraints)
    {

      [(MPUArtworkView *)self setNeedsUpdateConstraints];
    }

    else
    {
      [(MPUArtworkView *)self removeConstraint:self->_aspectConstraint];
      aspectConstraint = self->_aspectConstraint;
      self->_aspectConstraint = 0;
    }
  }
}

- (void)setDimsWhenHighlighted:(BOOL)highlighted
{
  if (self->_dimsWhenHighlighted != highlighted)
  {
    self->_dimsWhenHighlighted = highlighted;
    if (highlighted)
    {

      [(MPUArtworkView *)self _updateHighlightViewAnimated:1];
    }

    else
    {
      [(UIView *)self->_highlightView removeFromSuperview];
      highlightView = self->_highlightView;
      self->_highlightView = 0;
    }
  }
}

- (void)setPlaceholderImage:(id)image
{
  imageCopy = image;
  if (self->_placeholderImage != imageCopy)
  {
    objc_storeStrong(&self->_placeholderImage, image);
    if ([(MPUArtworkView *)self isDisplayingPlaceholder])
    {
      placeholderImage = self->_placeholderImage;
      v7.receiver = self;
      v7.super_class = MPUArtworkView;
      [(MPUArtworkView *)&v7 setImage:placeholderImage];
      [(MPUArtworkView *)self _imageDidChange];
    }

    [(MPUArtworkView *)self _setPlaceholderHidden:[(MPUArtworkView *)self shouldDisplayPlaceholder]^ 1];
  }
}

- (BOOL)shouldDisplayPlaceholder
{
  if ([(MPUArtworkView *)self isDisplayingPlaceholder])
  {
    return 0;
  }

  placeholderImage = [(MPUArtworkView *)self placeholderImage];
  if (placeholderImage)
  {
    v3 = self->_externalImage == 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_setAspectConstraintMultiplier:(double)multiplier
{
  [(NSLayoutConstraint *)self->_aspectConstraint multiplier];
  if (v5 != multiplier)
  {
    [(MPUArtworkView *)self removeConstraint:self->_aspectConstraint];
    v6 = [MEMORY[0x277CCAAD0] constraintWithItem:self attribute:8 relatedBy:0 toItem:self attribute:7 multiplier:multiplier constant:0.0];
    aspectConstraint = self->_aspectConstraint;
    self->_aspectConstraint = v6;

    v8 = self->_aspectConstraint;

    [(MPUArtworkView *)self addConstraint:v8];
  }
}

- (void)_imageDidChange
{
  if ([(MPUArtworkView *)self automaticallyApplyAspectConstraints])
  {

    [(MPUArtworkView *)self setNeedsUpdateConstraints];
  }
}

- (void)_setPlaceholderHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  if (hidden)
  {
    _externalImage = [(MPUArtworkView *)self _externalImage];
    v8.receiver = self;
    v8.super_class = MPUArtworkView;
    [(MPUArtworkView *)&v8 setImage:_externalImage];
  }

  else
  {
    placeholderImage = self->_placeholderImage;
    v7.receiver = self;
    v7.super_class = MPUArtworkView;
    [(MPUArtworkView *)&v7 setImage:placeholderImage];
  }

  [(MPUArtworkView *)self setDisplayingPlaceholder:!hiddenCopy];
  [(MPUArtworkView *)self _imageDidChange];
}

- (BOOL)_shouldShowHighlightView
{
  if (![(MPUArtworkView *)self isHighlighted])
  {
    return 0;
  }

  if ([(MPUArtworkView *)self isAnimating])
  {
    highlightedAnimationImages = [(MPUArtworkView *)self highlightedAnimationImages];
    highlightedImage = [highlightedAnimationImages count];
  }

  else
  {
    highlightedImage = [(MPUArtworkView *)self highlightedImage];
    highlightedAnimationImages = highlightedImage;
  }

  v5 = highlightedImage == 0;

  return v5;
}

- (void)_updateHighlightViewAnimated:(BOOL)animated
{
  if (self->_isDeallocating)
  {
    return;
  }

  animatedCopy = animated;
  _shouldShowHighlightView = [(MPUArtworkView *)self _shouldShowHighlightView];
  isHidden = [(UIView *)self->_highlightView isHidden];
  [(UIView *)self->_highlightView alpha];
  v8 = v7 < 1.0 || isHidden;
  if ((!_shouldShowHighlightView || (v8 & 1) == 0) && (_shouldShowHighlightView || isHidden && v7 <= 0.0))
  {
    return;
  }

  v9 = 0.0;
  if (_shouldShowHighlightView)
  {
    v10 = 1.0;
  }

  else
  {
    v10 = 0.0;
  }

  layer = [(UIView *)self->_highlightView layer];
  presentationLayer = [layer presentationLayer];

  [presentationLayer opacity];
  v14 = v13;
  if (animatedCopy || _shouldShowHighlightView)
  {
    if (!animatedCopy)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if ([(MPUArtworkView *)self forcesAnimatedUnhighlighting])
  {
LABEL_15:
    v9 = vabdd_f64(v14, v10) * 0.2;
  }

LABEL_16:
  if (_shouldShowHighlightView)
  {
    highlightView = self->_highlightView;
    if (highlightView)
    {
      if ([(UIView *)highlightView isHidden])
      {
        [(UIView *)self->_highlightView setHidden:0];
      }
    }

    else
    {
      v16 = objc_alloc(MEMORY[0x277D75D18]);
      [(MPUArtworkView *)self bounds];
      v17 = [v16 initWithFrame:?];
      v18 = self->_highlightView;
      self->_highlightView = v17;

      [(UIView *)self->_highlightView setAutoresizingMask:18];
      v19 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.3];
      [(UIView *)self->_highlightView setBackgroundColor:v19];

      [(UIView *)self->_highlightView setAlpha:0.0];
      [(MPUArtworkView *)self addSubview:self->_highlightView];
    }

    if (v9 <= 0.0)
    {
      [(UIView *)self->_highlightView setAlpha:1.0];
    }

    else
    {
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __47__MPUArtworkView__updateHighlightViewAnimated___block_invoke;
      v22[3] = &unk_2798A33E8;
      v22[4] = self;
      [MEMORY[0x277D75D18] animateWithDuration:v22 animations:v9];
    }
  }

  else if (v9 <= 0.0)
  {
    [(UIView *)self->_highlightView setAlpha:0.0];
    [(UIView *)self->_highlightView setHidden:1];
  }

  else
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __47__MPUArtworkView__updateHighlightViewAnimated___block_invoke_2;
    v21[3] = &unk_2798A33E8;
    v21[4] = self;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __47__MPUArtworkView__updateHighlightViewAnimated___block_invoke_3;
    v20[3] = &unk_2798A3488;
    v20[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:v21 animations:v20 completion:v9];
  }
}

uint64_t __47__MPUArtworkView__updateHighlightViewAnimated___block_invoke_3(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = result;
    result = [*(result + 32) _shouldShowHighlightView];
    if ((result & 1) == 0)
    {
      v3 = *(*(v2 + 32) + 528);

      return [v3 setHidden:1];
    }
  }

  return result;
}

@end