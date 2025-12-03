@interface CKBrowserAppInstallCell
- (id)iconView;
- (void)layoutSubviews;
- (void)setInstallation:(id)installation;
@end

@implementation CKBrowserAppInstallCell

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = CKBrowserAppInstallCell;
  [(CKBrowserCell *)&v4 layoutSubviews];
  badgeView = [(CKBrowserCell *)self badgeView];
  [badgeView setHidden:1];
}

- (id)iconView
{
  browserIconView = [(CKBrowserAppInstallCell *)self browserIconView];

  if (!browserIconView)
  {
    v4 = [CKBrowserIconView alloc];
    v5 = [(CKBrowserIconView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(CKBrowserAppInstallCell *)self setBrowserIconView:v5];
  }

  return [(CKBrowserAppInstallCell *)self browserIconView];
}

- (void)setInstallation:(id)installation
{
  installationCopy = installation;
  if (self->_installation != installationCopy)
  {
    v12 = installationCopy;
    objc_storeStrong(&self->_installation, installation);
    icon = [(CKAppInstallation *)v12 icon];
    browserIconView = [(CKBrowserAppInstallCell *)self browserIconView];
    [browserIconView setIconImage:icon];

    localizedDisplayName = [(CKAppInstallation *)v12 localizedDisplayName];
    browserLabel = [(CKBrowserCell *)self browserLabel];
    [browserLabel setText:localizedDisplayName];

    browserIconView2 = [(CKBrowserAppInstallCell *)self browserIconView];
    if ([(CKAppInstallation *)v12 installed])
    {
      v11 = 100.0;
    }

    else
    {
      [(CKAppInstallation *)v12 percentComplete];
    }

    [browserIconView2 setPercentComplete:1 animated:v11];

    [(CKBrowserAppInstallCell *)self setNeedsLayout];
    installationCopy = v12;
  }
}

@end