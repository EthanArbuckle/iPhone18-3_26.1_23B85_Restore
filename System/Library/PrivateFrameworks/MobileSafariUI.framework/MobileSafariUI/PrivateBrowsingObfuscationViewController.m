@interface PrivateBrowsingObfuscationViewController
- (UIToolbar)bottomBar;
- (UIVisualEffectView)URLButtonBackground;
- (UIVisualEffectView)capsuleBackground;
- (UIVisualEffectView)topBarBackground;
- (void)_updateTheme;
- (void)setTheme:(id)a3;
- (void)viewDidLoad;
@end

@implementation PrivateBrowsingObfuscationViewController

- (void)viewDidLoad
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = PrivateBrowsingObfuscationViewController;
  [(PrivateBrowsingObfuscationViewController *)&v9 viewDidLoad];
  v3 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:0];
  bottomBarBackground = self->_bottomBarBackground;
  self->_bottomBarBackground = v3;

  v5 = self->_bottomBarBackground;
  WeakRetained = objc_loadWeakRetained(&self->_bottomBar);
  [WeakRetained _setBackgroundView:v5];

  [(PrivateBrowsingObfuscationViewController *)self _updateTheme];
  v10[0] = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v8 = [(PrivateBrowsingObfuscationViewController *)self registerForTraitChanges:v7 withTarget:self action:sel__updateTheme];
}

- (void)_updateTheme
{
  v3 = [(PrivateBrowsingObfuscationViewController *)self traitCollection];
  v4 = [v3 userInterfaceStyle];

  if (v4 == 2)
  {
    v5 = 4;
  }

  else
  {
    v5 = 3;
  }

  v6 = [MEMORY[0x277D28C08] themeWithBarTintStyle:v5];
  [(PrivateBrowsingObfuscationViewController *)self setTheme:v6];
}

- (void)setTheme:(id)a3
{
  v7 = a3;
  if (([(SFCapsuleNavigationBarTheme *)self->_theme isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_theme, a3);
    theme = self->_theme;
    WeakRetained = objc_loadWeakRetained(&self->_capsuleBackground);
    [(SFCapsuleNavigationBarTheme *)theme applyBackdropEffectsToView:WeakRetained];
  }
}

- (UIVisualEffectView)URLButtonBackground
{
  WeakRetained = objc_loadWeakRetained(&self->_URLButtonBackground);

  return WeakRetained;
}

- (UIVisualEffectView)topBarBackground
{
  WeakRetained = objc_loadWeakRetained(&self->_topBarBackground);

  return WeakRetained;
}

- (UIToolbar)bottomBar
{
  WeakRetained = objc_loadWeakRetained(&self->_bottomBar);

  return WeakRetained;
}

- (UIVisualEffectView)capsuleBackground
{
  WeakRetained = objc_loadWeakRetained(&self->_capsuleBackground);

  return WeakRetained;
}

@end