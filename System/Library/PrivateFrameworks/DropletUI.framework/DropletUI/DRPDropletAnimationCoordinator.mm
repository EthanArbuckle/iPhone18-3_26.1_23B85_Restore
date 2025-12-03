@interface DRPDropletAnimationCoordinator
- (DRPDropletAnimationCoordinator)init;
- (UIViewSpringAnimationBehaviorDescribing)defaultBehaviorSettings;
- (void)applyViewConfiguration:(id)configuration animated:(BOOL)animated tracking:(BOOL)tracking containerView:(id)view contextView:(id)contextView;
- (void)setDefaultBehaviorSettings:(id)settings;
@end

@implementation DRPDropletAnimationCoordinator

- (UIViewSpringAnimationBehaviorDescribing)defaultBehaviorSettings
{
  selfCopy = self;
  v3 = DRPDropletAnimationCoordinator.defaultBehaviorSettings.getter();

  return v3;
}

- (void)setDefaultBehaviorSettings:(id)settings
{
  v3 = *(&self->super.isa + OBJC_IVAR___DRPDropletAnimationCoordinator____lazy_storage___defaultBehaviorSettings);
  *(&self->super.isa + OBJC_IVAR___DRPDropletAnimationCoordinator____lazy_storage___defaultBehaviorSettings) = settings;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (void)applyViewConfiguration:(id)configuration animated:(BOOL)animated tracking:(BOOL)tracking containerView:(id)view contextView:(id)contextView
{
  configurationCopy = configuration;
  viewCopy = view;
  contextViewCopy = contextView;
  selfCopy = self;
  DRPDropletAnimationCoordinator.apply(_:animated:tracking:containerView:contextView:)(configurationCopy, animated, tracking, viewCopy, contextViewCopy);
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