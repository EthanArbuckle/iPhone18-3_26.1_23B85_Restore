@interface ICMediaTimeLabel
- (ICMediaTimeLabel)initWithCoder:(id)a3;
- (ICMediaTimeLabel)initWithFrame:(CGRect)a3;
- (id)accessibilityValue;
- (void)commonInit;
- (void)setMediaTimeValue:(id)a3;
@end

@implementation ICMediaTimeLabel

- (ICMediaTimeLabel)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = ICMediaTimeLabel;
  v3 = [(ICMediaTimeLabel *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(ICMediaTimeLabel *)v3 commonInit];
  }

  return v4;
}

- (ICMediaTimeLabel)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = ICMediaTimeLabel;
  v3 = [(ICMediaTimeLabel *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(ICMediaTimeLabel *)v3 commonInit];
  }

  return v4;
}

- (void)commonInit
{
  v3 = objc_alloc_init(ICMediaTimeFormatter);
  [(ICMediaTimeLabel *)self setFormatter:v3];

  [(ICMediaTimeLabel *)self setTextAlignment:2];
}

- (void)setMediaTimeValue:(id)a3
{
  v8 = a3;
  if (![(ICMediaTime *)self->_mediaTimeValue isEqualToMediaTime:?])
  {
    v4 = [v8 copy];
    mediaTimeValue = self->_mediaTimeValue;
    self->_mediaTimeValue = v4;

    v6 = [(ICMediaTimeLabel *)self formatter];
    v7 = [v6 stringForObjectValue:v8];
    [(ICMediaTimeLabel *)self setText:v7];
  }
}

- (id)accessibilityValue
{
  v2 = [(ICMediaTimeLabel *)self mediaTimeValue];
  v3 = [v2 durationDescription];

  return v3;
}

@end