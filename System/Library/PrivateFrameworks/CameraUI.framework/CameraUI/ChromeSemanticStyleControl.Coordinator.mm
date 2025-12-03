@interface ChromeSemanticStyleControl.Coordinator
- (void)valueChanged:(id)changed;
@end

@implementation ChromeSemanticStyleControl.Coordinator

- (void)valueChanged:(id)changed
{
  changedCopy = changed;
  sub_1A3A2EA60();
  sub_1A39A2108(changedCopy);
}

@end