@interface MusicKit_SoftLinking_MPCloudServiceStatusController
+ (MusicKit_SoftLinking_MPCloudServiceStatusController)controllerWithUserIdentity:(id)a3;
+ (MusicKit_SoftLinking_MPCloudServiceStatusController)sharedController;
+ (id)instanceManager;
- (id)_initWithUnderlyingServiceStatusController:(id)a3;
- (void)_handleCloudLibraryEnabledDidChangeNotification:(id)a3;
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

+ (MusicKit_SoftLinking_MPCloudServiceStatusController)controllerWithUserIdentity:(id)a3
{
  v4 = a3;
  v5 = [a1 instanceManager];
  v6 = [v5 sharedInstanceForKey:v4];

  return v6;
}

- (id)_initWithUnderlyingServiceStatusController:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = MusicKit_SoftLinking_MPCloudServiceStatusController;
  v6 = [(MusicKit_SoftLinking_MPCloudServiceStatusController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingServiceStatusController, a3);
    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    v9 = getMPCloudServiceStatusControllerCloudLibraryEnabledDidChangeNotification();
    [v8 addObserver:v7 selector:sel__handleCloudLibraryEnabledDidChangeNotification_ name:v9 object:v7->_underlyingServiceStatusController];
  }

  return v7;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = getMPCloudServiceStatusControllerCloudLibraryEnabledDidChangeNotification();
  [v3 removeObserver:self name:v4 object:self->_underlyingServiceStatusController];

  v5.receiver = self;
  v5.super_class = MusicKit_SoftLinking_MPCloudServiceStatusController;
  [(MusicKit_SoftLinking_MPCloudServiceStatusController *)&v5 dealloc];
}

- (void)_handleCloudLibraryEnabledDidChangeNotification:(id)a3
{
  v4 = MEMORY[0x1E696AD88];
  v5 = a3;
  v7 = [v4 defaultCenter];
  v6 = [v5 userInfo];

  [v7 postNotificationName:@"MusicKit_SoftLinking_MPCloudServiceStatusControllerEnabledDidChangeNotification" object:self userInfo:v6];
}

@end