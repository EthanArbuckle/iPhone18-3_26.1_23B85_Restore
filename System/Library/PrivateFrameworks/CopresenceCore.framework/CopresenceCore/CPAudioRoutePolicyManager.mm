@interface CPAudioRoutePolicyManager
+ (CPAudioRoutePolicyManager)sharedInstance;
- (BOOL)sharePlaySupported;
- (TURoute)pickedRoute;
- (void)addObserver:(id)a3 withQueue:(id)a4;
- (void)routesChangedForRouteController:(id)a3;
- (void)setPickedRoute:(id)a3;
- (void)switchToSpeakerRouteIfNecessary;
@end

@implementation CPAudioRoutePolicyManager

- (void)routesChangedForRouteController:(id)a3
{
  v4 = a3;
  v6 = self;
  v5 = [v4 pickedRoute];
  (*((*MEMORY[0x1E69E7D40] & v6->super.isa) + 0x88))(v5);
}

- (BOOL)sharePlaySupported
{
  v2 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x80);
  v3 = self;
  v4 = v2();
  if (v4)
  {
    v5 = v4;
    if ([v4 supportsSharePlay])
    {
      v6 = [v5 isCarKitRoute];

      return v6 ^ 1;
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
  v3 = self;
  os_unfair_lock_lock((v2 + 24));
  v4 = *(v2 + 16);
  os_unfair_lock_unlock((v2 + 24));

  return v4;
}

- (void)setPickedRoute:(id)a3
{
  v5 = a3;
  v6 = self;
  CPAudioRoutePolicyManager.pickedRoute.setter(a3);
}

- (void)switchToSpeakerRouteIfNecessary
{
  v2 = self;
  CPAudioRoutePolicyManager.switchToSpeakerRouteIfNecessary()();
}

- (void)addObserver:(id)a3 withQueue:(id)a4
{
  v7 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x68);
  swift_unknownObjectRetain();
  v8 = a4;
  v10 = self;
  v9 = v7();
  (*(*v9 + 160))(a3, v8);

  swift_unknownObjectRelease();
}

@end