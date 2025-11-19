@interface SFWebExtensionEnabledRemotelyBanner
- (SFWebExtensionEnabledRemotelyBanner)initWithExtension:(id)a3;
- (id)preferredButtonBackgroundColor;
- (id)preferredButtonTintColor;
- (void)addExtension:(id)a3;
@end

@implementation SFWebExtensionEnabledRemotelyBanner

- (SFWebExtensionEnabledRemotelyBanner)initWithExtension:(id)a3
{
  v21[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SFLinkBanner *)self init];
  if (v5)
  {
    v6 = _WBSLocalizedString();
    v7 = [(SFLinkBanner *)v5 titleLabel];
    [v7 setText:v6];

    v8 = [MEMORY[0x1E69C88C8] sharedController];
    [v8 hasAnyExtensionManagement];

    v9 = MEMORY[0x1E696AEC0];
    v10 = _WBSLocalizedString();
    v11 = [v4 displayName];
    v12 = [v9 stringWithFormat:v10, v11];
    [(SFLinkBanner *)v5 setMessageLabelText:v12];

    v13 = [v4 icon];
    v14 = [(SFLinkBanner *)v5 icon];
    [v14 setImage:v13];

    v15 = [MEMORY[0x1E69C88C8] sharedController];
    [v15 hasAnyExtensionManagement];

    v16 = _WBSLocalizedString();
    [(SFLinkBanner *)v5 setOpenButtonTitle:v16];

    v21[0] = v4;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    remotelyEnabledExtensions = v5->_remotelyEnabledExtensions;
    v5->_remotelyEnabledExtensions = v17;

    v19 = v5;
  }

  return v5;
}

- (void)addExtension:(id)a3
{
  v4 = [(NSArray *)self->_remotelyEnabledExtensions arrayByAddingObject:a3];
  remotelyEnabledExtensions = self->_remotelyEnabledExtensions;
  self->_remotelyEnabledExtensions = v4;

  v6 = [(NSArray *)self->_remotelyEnabledExtensions count];
  v7 = _WBSLocalizedString();
  v8 = [(SFLinkBanner *)self titleLabel];
  [v8 setText:v7];

  v9 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"puzzlepiece.extension"];
  v10 = [(SFLinkBanner *)self icon];
  [v10 setImage:v9];

  v11 = [MEMORY[0x1E69C88C8] sharedController];
  v12 = [v11 hasAnyExtensionManagement];

  v13 = MEMORY[0x1E696AEC0];
  if (v12)
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
    v15 = [(NSArray *)self->_remotelyEnabledExtensions objectAtIndexedSubscript:0];
    v16 = [v15 displayName];
    v17 = [(NSArray *)self->_remotelyEnabledExtensions objectAtIndexedSubscript:1];
    v18 = [v17 displayName];
    v19 = [(NSArray *)self->_remotelyEnabledExtensions objectAtIndexedSubscript:2];
    v20 = [v19 displayName];
    v21 = [v13 stringWithFormat:v14, v16, v18, v20];

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
    v15 = [(NSArray *)self->_remotelyEnabledExtensions objectAtIndexedSubscript:0];
    v16 = [v15 displayName];
    v17 = [(NSArray *)self->_remotelyEnabledExtensions objectAtIndexedSubscript:1];
    v18 = [v17 displayName];
    v21 = [v13 stringWithFormat:v14, v16, v18];
LABEL_9:

    goto LABEL_11;
  }

LABEL_10:
  v14 = _WBSLocalizedString();
  v15 = [(NSArray *)self->_remotelyEnabledExtensions firstObject];
  v16 = [v15 displayName];
  v21 = [v13 localizedStringWithFormat:v14, v16, v6 - 1];
LABEL_11:

  [(SFLinkBanner *)self setMessageLabelText:v21];
}

- (id)preferredButtonBackgroundColor
{
  if ([MEMORY[0x1E69C8880] isSolariumEnabled])
  {
    v5.receiver = self;
    v5.super_class = SFWebExtensionEnabledRemotelyBanner;
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
    v5.super_class = SFWebExtensionEnabledRemotelyBanner;
    v3 = [(SFLinkBanner *)&v5 preferredButtonTintColor];
  }

  else
  {
    v3 = [MEMORY[0x1E69DC888] labelColor];
  }

  return v3;
}

@end