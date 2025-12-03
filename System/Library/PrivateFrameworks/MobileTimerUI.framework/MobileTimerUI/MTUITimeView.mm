@interface MTUITimeView
- (void)handleLocaleChange;
- (void)setTime:(double)time;
@end

@implementation MTUITimeView

- (void)setTime:(double)time
{
  self->_time = time;
  v4 = FormatTime();
  [(MTUITimeView *)self setText:v4];
}

- (void)handleLocaleChange
{
  ResetTimeFormatter();
  v3 = FormatTime();
  [(MTUITimeView *)self setText:v3];
}

@end