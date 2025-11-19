@interface MTUITimeView
- (void)handleLocaleChange;
- (void)setTime:(double)a3;
@end

@implementation MTUITimeView

- (void)setTime:(double)a3
{
  self->_time = a3;
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