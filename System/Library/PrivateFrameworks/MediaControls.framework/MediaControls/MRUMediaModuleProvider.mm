@interface MRUMediaModuleProvider
+ (MRUMediaModuleProvider)sharedProvider;
- (MRUMediaControlsModuleController)controller;
- (id)rootViewController;
@end

@implementation MRUMediaModuleProvider

+ (MRUMediaModuleProvider)sharedProvider
{
  if (sharedProvider___once != -1)
  {
    +[MRUMediaModuleProvider sharedProvider];
  }

  v3 = sharedProvider___sharedProvider;

  return v3;
}

uint64_t __40__MRUMediaModuleProvider_sharedProvider__block_invoke()
{
  v0 = objc_alloc_init(MRUMediaModuleProvider);
  v1 = sharedProvider___sharedProvider;
  sharedProvider___sharedProvider = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (MRUMediaControlsModuleController)controller
{
  controller = self->_controller;
  if (!controller)
  {
    v4 = objc_alloc_init(MRUMediaControlsModuleController);
    v5 = self->_controller;
    self->_controller = v4;

    controller = self->_controller;
  }

  return controller;
}

- (id)rootViewController
{
  v3 = [MRUMediaControlsModuleViewController alloc];
  v4 = [(MRUMediaModuleProvider *)self controller];
  v5 = [(MRUMediaControlsModuleViewController *)v3 initWithController:v4];

  return v5;
}

@end