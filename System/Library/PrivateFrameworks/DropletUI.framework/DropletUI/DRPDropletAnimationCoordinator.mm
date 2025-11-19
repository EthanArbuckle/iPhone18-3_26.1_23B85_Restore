@interface DRPDropletAnimationCoordinator
- (DRPDropletAnimationCoordinator)init;
- (UIViewSpringAnimationBehaviorDescribing)defaultBehaviorSettings;
- (void)applyViewConfiguration:(id)a3 animated:(BOOL)a4 tracking:(BOOL)a5 containerView:(id)a6 contextView:(id)a7;
- (void)setDefaultBehaviorSettings:(id)a3;
@end

@implementation DRPDropletAnimationCoordinator

- (UIViewSpringAnimationBehaviorDescribing)defaultBehaviorSettings
{
  v2 = self;
  v3 = DRPDropletAnimationCoordinator.defaultBehaviorSettings.getter();

  return v3;
}

- (void)setDefaultBehaviorSettings:(id)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR___DRPDropletAnimationCoordinator____lazy_storage___defaultBehaviorSettings);
  *(&self->super.isa + OBJC_IVAR___DRPDropletAnimationCoordinator____lazy_storage___defaultBehaviorSettings) = a3;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (void)applyViewConfiguration:(id)a3 animated:(BOOL)a4 tracking:(BOOL)a5 containerView:(id)a6 contextView:(id)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v15 = self;
  DRPDropletAnimationCoordinator.apply(_:animated:tracking:containerView:contextView:)(v12, a4, a5, v13, v14);
}

- (DRPDropletAnimationCoordinator)init
{
  *(&self->super.isa + OBJC_IVAR___DRPDropletAnimationCoordinator____lazy_storage___defaultBehaviorSettings) = 0;
  *(&self->super.isa + OBJC_IVAR___DRPDropletAnimationCoordinator_id) = 0;
  v3 = OBJC_IVAR___DRPDropletAnimationCoordinator_appliedViewConfigurationMapTable;
  *(&self->super.isa + v3) = [objc_opt_self() weakToStrongObjectsMapTable];
  v4 = (self + OBJC_IVAR___DRPDropletAnimationCoordinator_animateWithSettingsBlock);
  *v4 = sub_249EC9D38;
  v4[1] = 0;
  v6.receiver = self;
  v6.super_class = DRPDropletAnimationCoordinator;
  return [(DRPDropletAnimationCoordinator *)&v6 init];
}

@end