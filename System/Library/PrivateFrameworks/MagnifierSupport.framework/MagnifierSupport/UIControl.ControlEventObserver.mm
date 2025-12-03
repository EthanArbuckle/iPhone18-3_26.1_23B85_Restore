@interface UIControl.ControlEventObserver
- (void)handleEventFrom:(id)from;
@end

@implementation UIControl.ControlEventObserver

- (void)handleEventFrom:(id)from
{
  fromCopy = from;
  sub_257ECC3F0();
  sub_257ECDD00();
}

@end