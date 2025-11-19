@interface SUUIStarRatingControl
- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (double)_unfilledStarsMinX;
- (double)_unfilledStarsWidth;
- (float)starSpacing;
- (float)starWidth;
- (unint64_t)_ratingForUIDirection:(unint64_t)a3;
- (void)_updateUserRatingWithTouch:(id)a3;
- (void)cancelTrackingWithEvent:(id)a3;
- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
- (void)setEmptyStarsImage:(id)a3;
- (void)setFilledStarsImage:(id)a3;
- (void)setUserRating:(int64_t)a3;
@end

@implementation SUUIStarRatingControl

- (float)starSpacing
{
  result = self->_starSpacing;
  if (result == 0.0)
  {
    return 10.0;
  }

  return result;
}

- (float)starWidth
{
  result = self->_starWidth;
  if (result == 0.0)
  {
    return 19.0;
  }

  return result;
}

- (void)setEmptyStarsImage:(id)a3
{
  v12 = a3;
  v4 = [(UIImageView *)self->_emptyStarsImageView image];

  v6 = v12;
  if (v4 != v12)
  {
    emptyStarsImageView = self->_emptyStarsImageView;
    if (!emptyStarsImageView)
    {
      v8 = objc_alloc_init(MEMORY[0x277D755E8]);
      v9 = self->_emptyStarsImageView;
      self->_emptyStarsImageView = v8;

      [(UIImageView *)self->_emptyStarsImageView setContentMode:4];
      v10 = self->_emptyStarsImageView;
      v11 = [(SUUIStarRatingControl *)self backgroundColor];
      [(UIImageView *)v10 setBackgroundColor:v11];

      [(SUUIStarRatingControl *)self addSubview:self->_emptyStarsImageView];
      emptyStarsImageView = self->_emptyStarsImageView;
    }

    v5 = [(UIImageView *)emptyStarsImageView setImage:v12];
    v6 = v12;
  }

  MEMORY[0x2821F96F8](v5, v6);
}

- (void)setFilledStarsImage:(id)a3
{
  v12 = a3;
  v4 = [(UIImageView *)self->_filledStarsImageView image];

  v6 = v12;
  if (v4 != v12)
  {
    filledStarsImageView = self->_filledStarsImageView;
    if (!filledStarsImageView)
    {
      v8 = objc_alloc_init(MEMORY[0x277D755E8]);
      v9 = self->_filledStarsImageView;
      self->_filledStarsImageView = v8;

      v10 = self->_filledStarsImageView;
      v11 = [(SUUIStarRatingControl *)self backgroundColor];
      [(UIImageView *)v10 setBackgroundColor:v11];

      [(UIImageView *)self->_filledStarsImageView setContentMode:7];
      [(UIImageView *)self->_filledStarsImageView setClipsToBounds:1];
      [(SUUIStarRatingControl *)self addSubview:self->_filledStarsImageView];
      filledStarsImageView = self->_filledStarsImageView;
    }

    v5 = [(UIImageView *)filledStarsImageView setImage:v12];
    v6 = v12;
  }

  MEMORY[0x2821F96F8](v5, v6);
}

- (void)setUserRating:(int64_t)a3
{
  if (self->_userRating != a3)
  {
    self->_userRating = a3;
    [(SUUIStarRatingControl *)self setNeedsLayout];
  }
}

- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  self->_previousUserRating = self->_userRating;
  [(SUUIStarRatingControl *)self _updateUserRatingWithTouch:a3, a4];
  return 1;
}

- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  [(SUUIStarRatingControl *)self _updateUserRatingWithTouch:a3, a4];

  [(SUUIStarRatingControl *)self sendActionsForControlEvents:4096];
}

- (void)cancelTrackingWithEvent:(id)a3
{
  if (a3)
  {
    self->_userRating = self->_previousUserRating;
    [(SUUIStarRatingControl *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  [(SUUIStarRatingControl *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIImageView *)self->_emptyStarsImageView setFrame:?];
  [(SUUIStarRatingControl *)self _unfilledStarsMinX];
  v12 = v11;
  userRating = self->_userRating;
  [(SUUIStarRatingControl *)self starWidth];
  v15 = (v14 * userRating);
  v16 = self->_userRating;
  v17 = v16 < 1;
  v18 = v16 - 1;
  if (!v17)
  {
    v19 = v18;
    [(SUUIStarRatingControl *)self starSpacing];
    v15 = v15 + (v20 * v19);
  }

  if ([(SUUIStarRatingControl *)self _isRTL])
  {
    v12 = CGRectWithFlippedOriginRelativeToBoundingRect(v12, v6, v15, v10, v4, v6, v8, v10);
    v6 = v21;
    v15 = v22;
    v10 = v23;
  }

  filledStarsImageView = self->_filledStarsImageView;

  [(UIImageView *)filledStarsImageView setFrame:v12, v6, v15, v10];
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(SUUIStarRatingControl *)self bounds];
  v11 = CGRectInset(v10, -20.0, -20.0);
  v6 = x;
  v7 = y;

  return CGRectContainsPoint(v11, *&v6);
}

- (void)setBackgroundColor:(id)a3
{
  emptyStarsImageView = self->_emptyStarsImageView;
  v5 = a3;
  [(UIImageView *)emptyStarsImageView setBackgroundColor:v5];
  [(UIImageView *)self->_filledStarsImageView setBackgroundColor:v5];
  v6.receiver = self;
  v6.super_class = SUUIStarRatingControl;
  [(SUUIStarRatingControl *)&v6 setBackgroundColor:v5];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = [(UIImageView *)self->_emptyStarsImageView image:a3.width];
  [v3 size];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (unint64_t)_ratingForUIDirection:(unint64_t)a3
{
  if ([(SUUIStarRatingControl *)self _isRTL])
  {
    return 6 - a3;
  }

  else
  {
    return a3;
  }
}

- (double)_unfilledStarsWidth
{
  [(SUUIStarRatingControl *)self starWidth];
  v4 = v3;
  [(SUUIStarRatingControl *)self starSpacing];
  return ((v5 * 4.0) + (v4 * 5.0));
}

- (double)_unfilledStarsMinX
{
  [(SUUIStarRatingControl *)self bounds];
  v4 = v3;
  [(SUUIStarRatingControl *)self _unfilledStarsWidth];
  return (v4 - v5) * 0.5;
}

- (void)_updateUserRatingWithTouch:(id)a3
{
  userRating = self->_userRating;
  [a3 locationInView:self];
  v6 = v5;
  [(SUUIStarRatingControl *)self _unfilledStarsMinX];
  v8 = v7;
  [(SUUIStarRatingControl *)self starSpacing];
  if (v6 >= v8 - v9)
  {
    [(SUUIStarRatingControl *)self _unfilledStarsMinX];
    v12 = v11;
    [(SUUIStarRatingControl *)self _unfilledStarsWidth];
    if (v6 >= v12 + v13)
    {
      v10 = [(SUUIStarRatingControl *)self _lastStar];
    }

    else
    {
      [(SUUIStarRatingControl *)self _unfilledStarsMinX];
      v15 = v14;
      [(SUUIStarRatingControl *)self starWidth];
      v17 = v15 + v16;
      v18 = 1;
      while (v6 >= v17)
      {
        [(SUUIStarRatingControl *)self starWidth];
        v20 = v19;
        [(SUUIStarRatingControl *)self starSpacing];
        v17 = v17 + (v20 + v21);
        if (++v18 == 6)
        {
          goto LABEL_11;
        }
      }

      v10 = [(SUUIStarRatingControl *)self _ratingForUIDirection:v18];
    }
  }

  else
  {
    v10 = [(SUUIStarRatingControl *)self _firstStar];
  }

  userRating = v10;
LABEL_11:

  [(SUUIStarRatingControl *)self setUserRating:userRating];
}

@end