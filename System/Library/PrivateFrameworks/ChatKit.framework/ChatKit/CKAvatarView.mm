@interface CKAvatarView
- (CKAvatarView)init;
- (CKAvatarView)initWithFrame:(CGRect)a3;
- (NSString)_ck_contextToken;
- (NSString)preferredHandle;
- (UIViewController)presentingViewController;
- (void)_ck_setContextToken:(id)a3;
- (void)layoutSubviews;
@end

@implementation CKAvatarView

- (CKAvatarView)init
{
  if (init_onceToken != -1)
  {
    [CKAvatarView init];
  }

  v4.receiver = self;
  v4.super_class = CKAvatarView;
  return [(CNAvatarView *)&v4 initWithSettings:init_s_settings];
}

void __20__CKAvatarView_init__block_invoke()
{
  v0 = +[CKUIBehavior sharedBehaviors];
  v1 = [v0 contactsSettingsCacheSize];

  v2 = [MEMORY[0x1E695D0E0] defaultSettingsWithCacheSize:v1 threeDTouchEnabled:1];
  v3 = init_s_settings;
  init_s_settings = v2;
}

- (void)layoutSubviews
{
  v2.receiver = self;
  v2.super_class = CKAvatarView;
  [(CNAvatarView *)&v2 layoutSubviews];
}

- (CKAvatarView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(CKAvatarView *)self init];
  [(CKAvatarView *)v7 setFrame:x, y, width, height];
  return v7;
}

- (NSString)_ck_contextToken
{
  if (objc_opt_respondsToSelector())
  {
    v3 = [(CNAvatarView *)self contextToken];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_ck_setContextToken:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(CNAvatarView *)self setContextToken:v4];
  }
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

- (NSString)preferredHandle
{
  WeakRetained = objc_loadWeakRetained(&self->_preferredHandle);

  return WeakRetained;
}

@end