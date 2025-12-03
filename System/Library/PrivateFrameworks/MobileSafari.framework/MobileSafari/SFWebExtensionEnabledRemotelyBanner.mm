@interface SFWebExtensionEnabledRemotelyBanner
- (SFWebExtensionEnabledRemotelyBanner)initWithExtension:(id)extension;
- (id)preferredButtonBackgroundColor;
- (id)preferredButtonTintColor;
- (void)addExtension:(id)extension;
@end

@implementation SFWebExtensionEnabledRemotelyBanner

- (SFWebExtensionEnabledRemotelyBanner)initWithExtension:(id)extension
{
  v21[1] = *MEMORY[0x1E69E9840];
  extensionCopy = extension;
  v5 = [(SFLinkBanner *)self init];
  if (v5)
  {
    v6 = _WBSLocalizedString();
    titleLabel = [(SFLinkBanner *)v5 titleLabel];
    [titleLabel setText:v6];

    mEMORY[0x1E69C88C8] = [MEMORY[0x1E69C88C8] sharedController];
    [mEMORY[0x1E69C88C8] hasAnyExtensionManagement];

    v9 = MEMORY[0x1E696AEC0];
    v10 = _WBSLocalizedString();
    displayName = [extensionCopy displayName];
    v12 = [v9 stringWithFormat:v10, displayName];
    [(SFLinkBanner *)v5 setMessageLabelText:v12];

    icon = [extensionCopy icon];
    icon2 = [(SFLinkBanner *)v5 icon];
    [icon2 setImage:icon];

    mEMORY[0x1E69C88C8]2 = [MEMORY[0x1E69C88C8] sharedController];
    [mEMORY[0x1E69C88C8]2 hasAnyExtensionManagement];

    v16 = _WBSLocalizedString();
    [(SFLinkBanner *)v5 setOpenButtonTitle:v16];

    v21[0] = extensionCopy;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    remotelyEnabledExtensions = v5->_remotelyEnabledExtensions;
    v5->_remotelyEnabledExtensions = v17;

    v19 = v5;
  }

  return v5;
}

- (void)addExtension:(id)extension
{
  v4 = [(NSArray *)self->_remotelyEnabledExtensions arrayByAddingObject:extension];
  remotelyEnabledExtensions = self->_remotelyEnabledExtensions;
  self->_remotelyEnabledExtensions = v4;

  v6 = [(NSArray *)self->_remotelyEnabledExtensions count];
  v7 = _WBSLocalizedString();
  titleLabel = [(SFLinkBanner *)self titleLabel];
  [titleLabel setText:v7];

  v9 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"puzzlepiece.extension"];
  icon = [(SFLinkBanner *)self icon];
  [icon setImage:v9];

  mEMORY[0x1E69C88C8] = [MEMORY[0x1E69C88C8] sharedController];
  hasAnyExtensionManagement = [mEMORY[0x1E69C88C8] hasAnyExtensionManagement];

  v13 = MEMORY[0x1E696AEC0];
  if (hasAnyExtensionManagement)
  {
    if (v6 != 3)
    {
      if (v6 == 2)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

LABEL_8:
    v14 = _WBSLocalizedString();
    firstObject = [(NSArray *)self->_remotelyEnabledExtensions objectAtIndexedSubscript:0];
    displayName = [firstObject displayName];
    v17 = [(NSArray *)self->_remotelyEnabledExtensions objectAtIndexedSubscript:1];
    displayName2 = [v17 displayName];
    v19 = [(NSArray *)self->_remotelyEnabledExtensions objectAtIndexedSubscript:2];
    displayName3 = [v19 displayName];
    v21 = [v13 stringWithFormat:v14, displayName, displayName2, displayName3];

    goto LABEL_9;
  }

  if (v6 == 3)
  {
    goto LABEL_8;
  }

  if (v6 == 2)
  {
LABEL_7:
    v14 = _WBSLocalizedString();
    firstObject = [(NSArray *)self->_remotelyEnabledExtensions objectAtIndexedSubscript:0];
    displayName = [firstObject displayName];
    v17 = [(NSArray *)self->_remotelyEnabledExtensions objectAtIndexedSubscript:1];
    displayName2 = [v17 displayName];
    v21 = [v13 stringWithFormat:v14, displayName, displayName2];
LABEL_9:

    goto LABEL_11;
  }

LABEL_10:
  v14 = _WBSLocalizedString();
  firstObject = [(NSArray *)self->_remotelyEnabledExtensions firstObject];
  displayName = [firstObject displayName];
  v21 = [v13 localizedStringWithFormat:v14, displayName, v6 - 1];
LABEL_11:

  [(SFLinkBanner *)self setMessageLabelText:v21];
}

- (id)preferredButtonBackgroundColor
{
  if ([MEMORY[0x1E69C8880] isSolariumEnabled])
  {
    v5.receiver = self;
    v5.super_class = SFWebExtensionEnabledRemotelyBanner;
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
    v5.super_class = SFWebExtensionEnabledRemotelyBanner;
    preferredButtonTintColor = [(SFLinkBanner *)&v5 preferredButtonTintColor];
  }

  else
  {
    preferredButtonTintColor = [MEMORY[0x1E69DC888] labelColor];
  }

  return preferredButtonTintColor;
}

@end