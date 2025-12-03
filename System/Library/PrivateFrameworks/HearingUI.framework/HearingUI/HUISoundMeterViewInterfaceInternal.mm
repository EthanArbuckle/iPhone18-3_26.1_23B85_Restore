@interface HUISoundMeterViewInterfaceInternal
- (HUISoundMeterViewInterfaceInternal)init;
- (void)updateViewsWithSlowLeq:(double)leq fastLeq:(double)fastLeq thresholdLevel:(unint64_t)level;
@end

@implementation HUISoundMeterViewInterfaceInternal

- (void)updateViewsWithSlowLeq:(double)leq fastLeq:(double)fastLeq thresholdLevel:(unint64_t)level
{
  selfCopy = self;
  sub_25219F644();
}

- (HUISoundMeterViewInterfaceInternal)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end