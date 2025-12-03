@interface HUEnergyIndicatorAccessoryViewWrapper
+ (id)createEnergyIndicatorViewWithHome:(id)home;
+ (void)updateWithViewController:(id)controller with:(id)with;
- (HUEnergyIndicatorAccessoryViewWrapper)init;
@end

@implementation HUEnergyIndicatorAccessoryViewWrapper

+ (id)createEnergyIndicatorViewWithHome:(id)home
{
  v4 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D510));
  homeCopy = home;
  v6 = sub_20D566C08();

  return v6;
}

+ (void)updateWithViewController:(id)controller with:(id)with
{
  controllerCopy = controller;
  withCopy = with;
  _s6HomeUI35EnergyIndicatorAccessoryViewWrapperC6update14viewController4withySo06UIViewJ0C_So6HMHomeCtFZ_0(controllerCopy, withCopy);
}

- (HUEnergyIndicatorAccessoryViewWrapper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for EnergyIndicatorAccessoryViewWrapper();
  return [(HUEnergyIndicatorAccessoryViewWrapper *)&v3 init];
}

@end