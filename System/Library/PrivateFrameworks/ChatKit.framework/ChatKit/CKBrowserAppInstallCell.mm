@interface CKBrowserAppInstallCell
- (id)iconView;
- (void)layoutSubviews;
- (void)setInstallation:(id)a3;
@end

@implementation CKBrowserAppInstallCell

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = CKBrowserAppInstallCell;
  [(CKBrowserCell *)&v4 layoutSubviews];
  v3 = [(CKBrowserCell *)self badgeView];
  [v3 setHidden:1];
}

- (id)iconView
{
  v3 = [(CKBrowserAppInstallCell *)self browserIconView];

  if (!v3)
  {
    v4 = [CKBrowserIconView alloc];
    v5 = [(CKBrowserIconView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(CKBrowserAppInstallCell *)self setBrowserIconView:v5];
  }

  return [(CKBrowserAppInstallCell *)self browserIconView];
}

- (void)setInstallation:(id)a3
{
  v5 = a3;
  if (self->_installation != v5)
  {
    v12 = v5;
    objc_storeStrong(&self->_installation, a3);
    v6 = [(CKAppInstallation *)v12 icon];
    v7 = [(CKBrowserAppInstallCell *)self browserIconView];
    [v7 setIconImage:v6];

    v8 = [(CKAppInstallation *)v12 localizedDisplayName];
    v9 = [(CKBrowserCell *)self browserLabel];
    [v9 setText:v8];

    v10 = [(CKBrowserAppInstallCell *)self browserIconView];
    if ([(CKAppInstallation *)v12 installed])
    {
      v11 = 100.0;
    }

    else
    {
      [(CKAppInstallation *)v12 percentComplete];
    }

    [v10 setPercentComplete:1 animated:v11];

    [(CKBrowserAppInstallCell *)self setNeedsLayout];
    v5 = v12;
  }
}

@end