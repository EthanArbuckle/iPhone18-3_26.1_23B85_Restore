@interface SFFaviconWebsiteCollectionCell
- (void)_requestFavicon;
- (void)_updateContentConfiguration;
- (void)setURL:(id)a3 withTitle:(id)a4;
@end

@implementation SFFaviconWebsiteCollectionCell

- (void)setURL:(id)a3 withTitle:(id)a4
{
  v10 = a3;
  v7 = a4;
  if (![(NSURL *)self->_siteURL isEqual:v10]|| ![(NSString *)self->_title isEqualToString:v7])
  {
    objc_storeStrong(&self->_siteURL, a3);
    v8 = [v7 copy];
    title = self->_title;
    self->_title = v8;

    [(SFFaviconWebsiteCollectionCell *)self _requestFavicon];
    [(SFFaviconWebsiteCollectionCell *)self _updateContentConfiguration];
  }
}

- (void)_updateContentConfiguration
{
  v14 = [(SFFaviconWebsiteCollectionCell *)self defaultContentConfiguration];
  [v14 setText:self->_title];
  v3 = [v14 textProperties];
  [v3 setLineBreakMode:4];

  v4 = [v14 textProperties];
  [v4 setNumberOfLines:1];

  v5 = [v14 secondaryTextProperties];
  [v5 setLineBreakMode:4];

  v6 = [v14 secondaryTextProperties];
  [v6 setNumberOfLines:1];

  v7 = [(NSURL *)self->_siteURL safari_stringForListDisplay];
  [v14 setSecondaryText:v7];

  v8 = [MEMORY[0x277D75348] secondaryLabelColor];
  v9 = [v14 secondaryTextProperties];
  [v9 setColor:v8];

  if (self->_favicon)
  {
    [v14 setImage:?];
  }

  else
  {
    v10 = [MEMORY[0x277D755B8] systemImageNamed:@"globe"];
    [v14 setImage:v10];
  }

  v11 = [v14 imageProperties];
  [v11 setCornerRadius:2.0];

  v12 = [v14 imageProperties];
  [v12 setReservedLayoutSize:{24.0, 24.0}];

  v13 = [v14 imageProperties];
  [v13 setMaximumSize:{24.0, 24.0}];

  [(SFFaviconWebsiteCollectionCell *)self setContentConfiguration:v14];
}

- (void)_requestFavicon
{
  favicon = self->_favicon;
  self->_favicon = 0;

  v4 = [MEMORY[0x277D28F58] sharedSiteMetadataManager];
  [v4 cancelRequestWithToken:self->_faviconRequestToken];

  v5 = [objc_alloc(MEMORY[0x277D4A730]) initWithURL:self->_siteURL iconSize:0 fallbackType:{24.0, 24.0}];
  objc_initWeak(&location, self);
  v6 = [MEMORY[0x277D28F58] sharedSiteMetadataManager];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__SFFaviconWebsiteCollectionCell__requestFavicon__block_invoke;
  v9[3] = &unk_2781D5D78;
  objc_copyWeak(&v10, &location);
  v7 = [v6 registerRequest:v5 priority:2 responseHandler:v9];
  faviconRequestToken = self->_faviconRequestToken;
  self->_faviconRequestToken = v7;

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __49__SFFaviconWebsiteCollectionCell__requestFavicon__block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = v10;
    v5 = [v4 favicon];

    if (v5)
    {
      v6 = MEMORY[0x277D4A780];
      v7 = [v4 favicon];
      v8 = [v6 resizedImage:v7 withSize:{24.0, 24.0}];
      v9 = WeakRetained[112];
      WeakRetained[112] = v8;

      [WeakRetained[112] sf_registerFaviconForDarkUserInterfaceStyleWithSize:{24.0, 24.0}];
      [WeakRetained _updateContentConfiguration];
    }
  }
}

@end