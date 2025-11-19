@interface DBWallpaperViewController
- (DBWallpaperViewController)initWithScene:(id)a3 environment:(id)a4 wallpaper:(id)a5 isDimmed:(BOOL)a6;
- (void)_launchScene;
- (void)setInterfaceStyleOverride:(int64_t)a3;
- (void)setIsDimmed:(BOOL)a3;
- (void)setWallpaper:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation DBWallpaperViewController

- (DBWallpaperViewController)initWithScene:(id)a3 environment:(id)a4 wallpaper:(id)a5 isDimmed:(BOOL)a6
{
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = +[DBApplicationController sharedInstance];
  v15 = [v14 wallpaperApplication];

  v18.receiver = self;
  v18.super_class = DBWallpaperViewController;
  v16 = [(DBSceneHostViewController *)&v18 initWithScene:v13 application:v15 environment:v12];

  if (v16)
  {
    objc_storeStrong(&v16->_wallpaper, a5);
    v16->_isDimmed = a6;
  }

  return v16;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = DBWallpaperViewController;
  [(DBWallpaperViewController *)&v5 viewDidLoad];
  v3 = [MEMORY[0x277D75348] clearColor];
  v4 = [(DBWallpaperViewController *)self view];
  [v4 setBackgroundColor:v3];

  [(DBWallpaperViewController *)self _launchScene];
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = DBWallpaperViewController;
  [(DBWallpaperViewController *)&v4 viewDidLayoutSubviews];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __50__DBWallpaperViewController_viewDidLayoutSubviews__block_invoke;
  v3[3] = &unk_278F01D18;
  v3[4] = self;
  [(DBSceneHostViewController *)self updateSceneSettingsWithBlock:v3];
}

void __50__DBWallpaperViewController_viewDidLayoutSubviews__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 view];
  [v4 bounds];
  [v3 setFrame:?];
}

- (void)setWallpaper:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(DBWallpaperViewController *)self wallpaper];
  v7 = [v6 isEqual:v5];

  if ((v7 & 1) == 0)
  {
    objc_storeStrong(&self->_wallpaper, a3);
    v8 = [v5 identifier];
    v9 = DBLogForCategory(8uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v13 = self;
      v14 = 2114;
      v15 = v8;
      _os_log_impl(&dword_248146000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ sending wallpaper %{public}@", buf, 0x16u);
    }

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __42__DBWallpaperViewController_setWallpaper___block_invoke;
    v10[3] = &unk_278F01D18;
    v11 = v5;
    [(DBSceneHostViewController *)self updateSceneSettingsWithBlock:v10];
  }
}

void __42__DBWallpaperViewController_setWallpaper___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v6 = v3;
  if (v6 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v4 = v6;
  }

  else
  {
    v4 = 0;
  }

  v5 = [*(a1 + 32) data];
  [v4 setWallpaper:v5];
}

- (void)setIsDimmed:(BOOL)a3
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->_isDimmed != a3)
  {
    v3 = a3;
    self->_isDimmed = a3;
    v5 = DBLogForCategory(8uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"NO";
      if (v3)
      {
        v6 = @"YES";
      }

      *buf = 138543618;
      v10 = self;
      v11 = 2114;
      v12 = v6;
      _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ sending isDimmed %{public}@", buf, 0x16u);
    }

    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __41__DBWallpaperViewController_setIsDimmed___block_invoke;
    v7[3] = &__block_descriptor_33_e50_v16__0__UIMutableCarPlayApplicationSceneSettings_8l;
    v8 = v3;
    [(DBSceneHostViewController *)self updateSceneSettingsWithBlock:v7];
  }
}

void __41__DBWallpaperViewController_setIsDimmed___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v5 = v3;
  if (v5 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v4 = v5;
  }

  else
  {
    v4 = 0;
  }

  [v4 setIsDimmed:*(a1 + 32)];
}

- (void)setInterfaceStyleOverride:(int64_t)a3
{
  v11 = *MEMORY[0x277D85DE8];
  if (self->_interfaceStyleOverride != a3)
  {
    self->_interfaceStyleOverride = a3;
    v5 = DBLogForCategory(8uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v8 = self;
      v9 = 2048;
      v10 = a3;
      _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ sending interfaceStyleOverride %ld", buf, 0x16u);
    }

    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __55__DBWallpaperViewController_setInterfaceStyleOverride___block_invoke;
    v6[3] = &unk_278F01D60;
    v6[4] = self;
    v6[5] = a3;
    [(DBSceneHostViewController *)self updateSceneSettingsWithBlock:v6];
  }
}

void __55__DBWallpaperViewController_setInterfaceStyleOverride___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = a2;
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = a2;
    v2 = [v4 sceneInterfaceStyle];
  }

  [a2 setUserInterfaceStyle:v2];
}

- (void)_launchScene
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [(DBWallpaperViewController *)self wallpaper];
  v4 = [v3 identifier];

  v5 = DBLogForCategory(8uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v8 = self;
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ sending wallpaper %{public}@", buf, 0x16u);
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__DBWallpaperViewController__launchScene__block_invoke;
  v6[3] = &unk_278F01D88;
  v6[4] = self;
  [(DBSceneHostViewController *)self performSceneUpdateWithBlock:v6 completion:0];
}

uint64_t __41__DBWallpaperViewController__launchScene__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setDeactivationReasons:128];
  objc_opt_class();
  v4 = v3;
  if (v4 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = [*(a1 + 32) wallpaper];
  v7 = [v6 data];
  [v5 setWallpaper:v7];

  [v5 setIsDimmed:{objc_msgSend(*(a1 + 32), "isDimmed")}];
  return 1;
}

@end