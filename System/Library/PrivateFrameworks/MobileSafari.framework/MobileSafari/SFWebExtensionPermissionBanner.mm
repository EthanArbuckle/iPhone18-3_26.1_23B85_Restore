@interface SFWebExtensionPermissionBanner
- (SFWebExtensionPermissionBanner)initWithExtension:(id)a3;
- (id)preferredButtonBackgroundColor;
- (id)preferredButtonTintColor;
@end

@implementation SFWebExtensionPermissionBanner

- (SFWebExtensionPermissionBanner)initWithExtension:(id)a3
{
  v4 = a3;
  v5 = [(SFLinkBanner *)self init];
  if (v5)
  {
    v6 = [v4 displayName];
    v7 = [(SFLinkBanner *)v5 titleLabel];
    [v7 setText:v6];

    v8 = _WBSLocalizedString();
    [(SFLinkBanner *)v5 setMessageLabelText:v8];

    v9 = [v4 icon];
    v10 = [(SFLinkBanner *)v5 icon];
    [v10 setImage:v9];

    v11 = _WBSLocalizedString();
    [(SFLinkBanner *)v5 setOpenButtonTitle:v11];

    v12 = v5;
  }

  return v5;
}

- (id)preferredButtonBackgroundColor
{
  if ([MEMORY[0x1E69C8880] isSolariumEnabled])
  {
    v5.receiver = self;
    v5.super_class = SFWebExtensionPermissionBanner;
    v3 = [(SFLinkBanner *)&v5 preferredButtonBackgroundColor];
  }

  else
  {
    v3 = [MEMORY[0x1E69DC888] systemGray5Color];
  }

  return v3;
}

- (id)preferredButtonTintColor
{
  if ([MEMORY[0x1E69C8880] isSolariumEnabled])
  {
    v5.receiver = self;
    v5.super_class = SFWebExtensionPermissionBanner;
    v3 = [(SFLinkBanner *)&v5 preferredButtonTintColor];
  }

  else
  {
    v3 = [MEMORY[0x1E69DC888] labelColor];
  }

  return v3;
}

@end