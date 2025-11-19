@interface HULinkedApplicationRatingView
- (HULinkedApplicationRatingView)initWithFrame:(CGRect)a3;
- (void)setRating:(double)a3;
- (void)setupConstraints;
- (void)updateStarViews;
@end

@implementation HULinkedApplicationRatingView

- (HULinkedApplicationRatingView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = HULinkedApplicationRatingView;
  v3 = [(HULinkedApplicationRatingView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (void)setRating:(double)a3
{
  if (a3 < 0.0 || a3 > 5.0)
  {
    NSLog(&cfstr_RatingMustBeIn.isa, a2);
  }

  if (self->_rating != a3)
  {
    self->_rating = a3;

    [(HULinkedApplicationRatingView *)self updateStarViews];
  }
}

- (void)setupConstraints
{
  v26 = objc_opt_new();
  v3 = [(HULinkedApplicationRatingView *)self starViews];
  v4 = [v3 objectAtIndexedSubscript:0];

  v5 = [v4 leadingAnchor];
  v6 = [(HULinkedApplicationRatingView *)self leadingAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];
  [v26 addObject:v7];

  v8 = [v4 topAnchor];
  v9 = [(HULinkedApplicationRatingView *)self topAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  [v26 addObject:v10];

  v11 = [v4 bottomAnchor];
  v12 = [(HULinkedApplicationRatingView *)self bottomAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
  [v26 addObject:v13];

  for (i = 1; i != 5; ++i)
  {
    v15 = v4;
    v16 = [(HULinkedApplicationRatingView *)self starViews];
    v4 = [v16 objectAtIndexedSubscript:i];

    v17 = [v4 leadingAnchor];
    v18 = [v15 trailingAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];
    [v26 addObject:v19];

    v20 = [v4 centerYAnchor];
    v21 = [v15 centerYAnchor];
    v22 = [v20 constraintEqualToAnchor:v21];
    [v26 addObject:v22];
  }

  v23 = [v4 trailingAnchor];
  v24 = [(HULinkedApplicationRatingView *)self trailingAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];
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
      v10 = [(HULinkedApplicationRatingView *)self starViews];
      v11 = [v10 objectAtIndexedSubscript:i];

      [v11 setImage:v9];
    }
  }

  v12 = v7 + v5;
  if (v7 + v5 > v5)
  {
    do
    {
      v13 = [MEMORY[0x277D755B8] imageNamed:@"star-half"];
      v14 = [(HULinkedApplicationRatingView *)self starViews];
      v15 = [v14 objectAtIndexedSubscript:v5];

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
      v17 = [(HULinkedApplicationRatingView *)self starViews];
      v18 = [v17 objectAtIndexedSubscript:v5];

      [v18 setImage:v16];
      ++v5;
    }

    while (v5 != 5);
  }
}

@end