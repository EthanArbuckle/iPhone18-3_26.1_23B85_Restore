@interface HUEnergyIndicatorAccessoryViewWrapper
+ (id)createEnergyIndicatorViewWithHome:(id)a3;
+ (void)updateWithViewController:(id)a3 with:(id)a4;
- (HUEnergyIndicatorAccessoryViewWrapper)init;
@end

@implementation HUEnergyIndicatorAccessoryViewWrapper

+ (id)createEnergyIndicatorViewWithHome:(id)a3
{
  v4 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D510));
  v5 = a3;
  v6 = sub_20D566C08();

  return v6;
}

+ (void)updateWithViewController:(id)a3 with:(id)a4
{
  v5 = a3;
  v6 = a4;
  _s6HomeUI35EnergyIndicatorAccessoryViewWrapperC6update14viewController4withySo06UIViewJ0C_So6HMHomeCtFZ_0(v5, v6);
}

- (HUEnergyIndicatorAccessoryViewWrapper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for EnergyIndicatorAccessoryViewWrapper();
  return [(HUEnergyIndicatorAccessoryViewWrapper *)&v3 init];
}

@end