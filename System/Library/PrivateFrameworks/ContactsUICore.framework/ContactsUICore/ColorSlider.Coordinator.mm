@interface ColorSlider.Coordinator
- (void)sliderValueChanged:(id)changed;
@end

@implementation ColorSlider.Coordinator

- (void)sliderValueChanged:(id)changed
{
  changedCopy = changed;
  sub_1A34C9010();
  sub_1A348268C(changedCopy);
}

@end