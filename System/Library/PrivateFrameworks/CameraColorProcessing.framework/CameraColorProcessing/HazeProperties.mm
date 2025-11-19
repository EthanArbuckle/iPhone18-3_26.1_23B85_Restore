@interface HazeProperties
- (HazeProperties)init;
- (void)reset;
@end

@implementation HazeProperties

- (HazeProperties)init
{
  v6.receiver = self;
  v6.super_class = HazeProperties;
  v2 = [(HazeProperties *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(HazeProperties *)v2 reset];
    v4 = v3;
  }

  return v3;
}

- (void)reset
{
  *&self->_ispRes = xmmword_1C9332BA0;
  *&self->_reluC2 = xmmword_1C9332BB0;
  *&self->_min_display_black = xmmword_1C9332BC0;
  *&self->_sr_sat = 0x3B449BA640000000;
  self->_haze_threshold_divider = 10.0;
}

@end