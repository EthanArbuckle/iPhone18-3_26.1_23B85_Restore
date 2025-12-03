@interface MusicKit_SoftLinking_MPCloudServiceStatusController
+ (MusicKit_SoftLinking_MPCloudServiceStatusController)controllerWithUserIdentity:(id)identity;
+ (MusicKit_SoftLinking_MPCloudServiceStatusController)sharedController;
+ (id)instanceManager;
- (id)_initWithUnderlyingServiceStatusController:(id)controller;
- (void)_handleCloudLibraryEnabledDidChangeNotification:(id)notification;
- (void)dealloc;
@end

@implementation MusicKit_SoftLinking_MPCloudServiceStatusController

+ (id)instanceManager
{
  if (instanceManager___musickit_lazy_init_predicate_0 != -1)
  {
    +[MusicKit_SoftLinking_MPCloudServiceStatusController instanceManager];
  }

  v3 = instanceManager___musickit_lazy_init_variable_0;

  return v3;
}

+ (MusicKit_SoftLinking_MPCloudServiceStatusController)sharedController
{
  if (sharedController___musickit_lazy_init_predicate != -1)
  {
    +[MusicKit_SoftLinking_MPCloudServiceStatusController sharedController];
  }

  v3 = sharedController___musickit_lazy_init_variable;

  return v3;
}

+ (MusicKit_SoftLinking_MPCloudServiceStatusController)controllerWithUserIdentity:(id)identity
{
  identityCopy = identity;
  instanceManager = [self instanceManager];
  v6 = [instanceManager sharedInstanceForKey:identityCopy];

  return v6;
}

- (id)_initWithUnderlyingServiceStatusController:(id)controller
{
  controllerCopy = controller;
  v11.receiver = self;
  v11.super_class = MusicKit_SoftLinking_MPCloudServiceStatusController;
  v6 = [(MusicKit_SoftLinking_MPCloudServiceStatusController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingServiceStatusController, controller);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v9 = getMPCloudServiceStatusControllerCloudLibraryEnabledDidChangeNotification();
    [defaultCenter addObserver:v7 selector:sel__handleCloudLibraryEnabledDidChangeNotification_ name:v9 object:v7->_underlyingServiceStatusController];
  }

  return v7;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = getMPCloudServiceStatusControllerCloudLibraryEnabledDidChangeNotification();
  [defaultCenter removeObserver:self name:v4 object:self->_underlyingServiceStatusController];

  v5.receiver = self;
  v5.super_class = MusicKit_SoftLinking_MPCloudServiceStatusController;
  [(MusicKit_SoftLinking_MPCloudServiceStatusController *)&v5 dealloc];
}

- (void)_handleCloudLibraryEnabledDidChangeNotification:(id)notification
{
  v4 = MEMORY[0x1E696AD88];
  notificationCopy = notification;
  defaultCenter = [v4 defaultCenter];
  userInfo = [notificationCopy userInfo];

  [defaultCenter postNotificationName:@"MusicKit_SoftLinking_MPCloudServiceStatusControllerEnabledDidChangeNotification" object:self userInfo:userInfo];
}

@end