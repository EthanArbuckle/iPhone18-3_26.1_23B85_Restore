@interface HULinkedApplicationRatingView
- (HULinkedApplicationRatingView)initWithFrame:(CGRect)frame;
- (void)setRating:(double)rating;
- (void)setupConstraints;
- (void)updateStarViews;
@end

@implementation HULinkedApplicationRatingView

- (HULinkedApplicationRatingView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = HULinkedApplicationRatingView;
  v3 = [(HULinkedApplicationRatingView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_opt_new();
    v5 = 5;
    do
    {
      v6 = [MEMORY[0x277D755B8] imageNamed:@"star-empty"];
      v7 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v6];
      [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v4 addObject:v7];
      [(HULinkedApplicationRatingView *)v3 addSubview:v7];

      --v5;
    }

    while (v5);
    [(HULinkedApplicationRatingView *)v3 setStarViews:v4];
    [(HULinkedApplicationRatingView *)v3 setupConstraints];
  }

  return v3;
}

- (void)setRating:(double)rating
{
  if (rating < 0.0 || rating > 5.0)
  {
    NSLog(&cfstr_RatingMustBeIn.isa, a2);
  }

  if (self->_rating != rating)
  {
    self->_rating = rating;

    [(HULinkedApplicationRatingView *)self updateStarViews];
  }
}

- (void)setupConstraints
{
  v26 = objc_opt_new();
  starViews = [(HULinkedApplicationRatingView *)self starViews];
  v4 = [starViews objectAtIndexedSubscript:0];

  leadingAnchor = [v4 leadingAnchor];
  leadingAnchor2 = [(HULinkedApplicationRatingView *)self leadingAnchor];
  v7 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v26 addObject:v7];

  topAnchor = [v4 topAnchor];
  topAnchor2 = [(HULinkedApplicationRatingView *)self topAnchor];
  v10 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v26 addObject:v10];

  bottomAnchor = [v4 bottomAnchor];
  bottomAnchor2 = [(HULinkedApplicationRatingView *)self bottomAnchor];
  v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v26 addObject:v13];

  for (i = 1; i != 5; ++i)
  {
    v15 = v4;
    starViews2 = [(HULinkedApplicationRatingView *)self starViews];
    v4 = [starViews2 objectAtIndexedSubscript:i];

    leadingAnchor3 = [v4 leadingAnchor];
    trailingAnchor = [v15 trailingAnchor];
    v19 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor];
    [v26 addObject:v19];

    centerYAnchor = [v4 centerYAnchor];
    centerYAnchor2 = [v15 centerYAnchor];
    v22 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v26 addObject:v22];
  }

  trailingAnchor2 = [v4 trailingAnchor];
  trailingAnchor3 = [(HULinkedApplicationRatingView *)self trailingAnchor];
  v25 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
  [v26 addObject:v25];

  [MEMORY[0x277CCAAD0] activateConstraints:v26];
}

- (void)updateStarViews
{
  [(HULinkedApplicationRatingView *)self rating];
  v4 = floor(v3);
  v5 = vcvtmd_u64_f64(v3);
  [(HULinkedApplicationRatingView *)self rating];
  v7 = vcvtpd_u64_f64(v6 - v4);
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v9 = [MEMORY[0x277D755B8] imageNamed:@"star-full"];
      starViews = [(HULinkedApplicationRatingView *)self starViews];
      v11 = [starViews objectAtIndexedSubscript:i];

      [v11 setImage:v9];
    }
  }

  v12 = v7 + v5;
  if (v7 + v5 > v5)
  {
    do
    {
      v13 = [MEMORY[0x277D755B8] imageNamed:@"star-half"];
      starViews2 = [(HULinkedApplicationRatingView *)self starViews];
      v15 = [starViews2 objectAtIndexedSubscript:v5];

      [v15 setImage:v13];
      ++v5;
      --v7;
    }

    while (v7);
    v5 = v12;
  }

  if (v5 <= 4)
  {
    do
    {
      v16 = [MEMORY[0x277D755B8] imageNamed:@"star-empty"];
      starViews3 = [(HULinkedApplicationRatingView *)self starViews];
      v18 = [starViews3 objectAtIndexedSubscript:v5];

      [v18 setImage:v16];
      ++v5;
    }

    while (v5 != 5);
  }
}

@end