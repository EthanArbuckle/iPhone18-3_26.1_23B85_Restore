@interface FontWeightSlider.Coordinator
- (void)sliderValueChanged:(id)changed;
@end

@implementation FontWeightSlider.Coordinator

- (void)sliderValueChanged:(id)changed
{
  changedCopy = changed;
  sub_1A34C9010();
  sub_1A34382C8(changedCopy);
}

@end