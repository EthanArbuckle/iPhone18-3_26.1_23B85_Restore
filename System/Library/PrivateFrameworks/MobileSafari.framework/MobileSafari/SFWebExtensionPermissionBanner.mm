@interface SFWebExtensionPermissionBanner
- (SFWebExtensionPermissionBanner)initWithExtension:(id)extension;
- (id)preferredButtonBackgroundColor;
- (id)preferredButtonTintColor;
@end

@implementation SFWebExtensionPermissionBanner

- (SFWebExtensionPermissionBanner)initWithExtension:(id)extension
{
  extensionCopy = extension;
  v5 = [(SFLinkBanner *)self init];
  if (v5)
  {
    displayName = [extensionCopy displayName];
    titleLabel = [(SFLinkBanner *)v5 titleLabel];
    [titleLabel setText:displayName];

    v8 = _WBSLocalizedString();
    [(SFLinkBanner *)v5 setMessageLabelText:v8];

    icon = [extensionCopy icon];
    icon2 = [(SFLinkBanner *)v5 icon];
    [icon2 setImage:icon];

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
    preferredButtonBackgroundColor = [(SFLinkBanner *)&v5 preferredButtonBackgroundColor];
  }

  else
  {
    preferredButtonBackgroundColor = [MEMORY[0x1E69DC888] systemGray5Color];
  }

  return preferredButtonBackgroundColor;
}

- (id)preferredButtonTintColor
{
  if ([MEMORY[0x1E69C8880] isSolariumEnabled])
  {
    v5.receiver = self;
    v5.super_class = SFWebExtensionPermissionBanner;
    preferredButtonTintColor = [(SFLinkBanner *)&v5 preferredButtonTintColor];
  }

  else
  {
    preferredButtonTintColor = [MEMORY[0x1E69DC888] labelColor];
  }

  return preferredButtonTintColor;
}

@end