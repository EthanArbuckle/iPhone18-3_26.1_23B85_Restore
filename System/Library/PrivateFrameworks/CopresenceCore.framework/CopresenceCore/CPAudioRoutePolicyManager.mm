@interface CPAudioRoutePolicyManager
+ (CPAudioRoutePolicyManager)sharedInstance;
- (BOOL)sharePlaySupported;
- (TURoute)pickedRoute;
- (void)addObserver:(id)observer withQueue:(id)queue;
- (void)routesChangedForRouteController:(id)controller;
- (void)setPickedRoute:(id)route;
- (void)switchToSpeakerRouteIfNecessary;
@end

@implementation CPAudioRoutePolicyManager

- (void)routesChangedForRouteController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  pickedRoute = [controllerCopy pickedRoute];
  (*((*MEMORY[0x1E69E7D40] & selfCopy->super.isa) + 0x88))(pickedRoute);
}

- (BOOL)sharePlaySupported
{
  v2 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x80);
  selfCopy = self;
  v4 = v2();
  if (v4)
  {
    v5 = v4;
    if ([v4 supportsSharePlay])
    {
      isCarKitRoute = [v5 isCarKitRoute];

      return isCarKitRoute ^ 1;
    }

    else
    {

      return 0;
    }
  }

  else
  {

    return 1;
  }
}

+ (CPAudioRoutePolicyManager)sharedInstance
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v3 = static CPAudioRoutePolicyManager.shared;

  return v3;
}

- (TURoute)pickedRoute
{
  v2 = *(&self->super.isa + OBJC_IVAR___CPAudioRoutePolicyManager__pickedRoute);
  selfCopy = self;
  os_unfair_lock_lock((v2 + 24));
  v4 = *(v2 + 16);
  os_unfair_lock_unlock((v2 + 24));

  return v4;
}

- (void)setPickedRoute:(id)route
{
  routeCopy = route;
  selfCopy = self;
  CPAudioRoutePolicyManager.pickedRoute.setter(route);
}

- (void)switchToSpeakerRouteIfNecessary
{
  selfCopy = self;
  CPAudioRoutePolicyManager.switchToSpeakerRouteIfNecessary()();
}

- (void)addObserver:(id)observer withQueue:(id)queue
{
  v7 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x68);
  swift_unknownObjectRetain();
  queueCopy = queue;
  selfCopy = self;
  v9 = v7();
  (*(*v9 + 160))(observer, queueCopy);

  swift_unknownObjectRelease();
}

@end