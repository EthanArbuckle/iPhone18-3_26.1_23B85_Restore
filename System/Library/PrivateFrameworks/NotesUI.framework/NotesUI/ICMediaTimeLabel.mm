@interface ICMediaTimeLabel
- (ICMediaTimeLabel)initWithCoder:(id)coder;
- (ICMediaTimeLabel)initWithFrame:(CGRect)frame;
- (id)accessibilityValue;
- (void)commonInit;
- (void)setMediaTimeValue:(id)value;
@end

@implementation ICMediaTimeLabel

- (ICMediaTimeLabel)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = ICMediaTimeLabel;
  v3 = [(ICMediaTimeLabel *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(ICMediaTimeLabel *)v3 commonInit];
  }

  return v4;
}

- (ICMediaTimeLabel)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = ICMediaTimeLabel;
  v3 = [(ICMediaTimeLabel *)&v6 initWithCoder:coder];
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

- (void)setMediaTimeValue:(id)value
{
  valueCopy = value;
  if (![(ICMediaTime *)self->_mediaTimeValue isEqualToMediaTime:?])
  {
    v4 = [valueCopy copy];
    mediaTimeValue = self->_mediaTimeValue;
    self->_mediaTimeValue = v4;

    formatter = [(ICMediaTimeLabel *)self formatter];
    v7 = [formatter stringForObjectValue:valueCopy];
    [(ICMediaTimeLabel *)self setText:v7];
  }
}

- (id)accessibilityValue
{
  mediaTimeValue = [(ICMediaTimeLabel *)self mediaTimeValue];
  durationDescription = [mediaTimeValue durationDescription];

  return durationDescription;
}

@end