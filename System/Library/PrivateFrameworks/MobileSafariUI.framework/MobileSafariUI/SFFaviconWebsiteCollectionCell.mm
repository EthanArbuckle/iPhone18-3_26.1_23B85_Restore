@interface SFFaviconWebsiteCollectionCell
- (void)_requestFavicon;
- (void)_updateContentConfiguration;
- (void)setURL:(id)l withTitle:(id)title;
@end

@implementation SFFaviconWebsiteCollectionCell

- (void)setURL:(id)l withTitle:(id)title
{
  lCopy = l;
  titleCopy = title;
  if (![(NSURL *)self->_siteURL isEqual:lCopy]|| ![(NSString *)self->_title isEqualToString:titleCopy])
  {
    objc_storeStrong(&self->_siteURL, l);
    v8 = [titleCopy copy];
    title = self->_title;
    self->_title = v8;

    [(SFFaviconWebsiteCollectionCell *)self _requestFavicon];
    [(SFFaviconWebsiteCollectionCell *)self _updateContentConfiguration];
  }
}

- (void)_updateContentConfiguration
{
  defaultContentConfiguration = [(SFFaviconWebsiteCollectionCell *)self defaultContentConfiguration];
  [defaultContentConfiguration setText:self->_title];
  textProperties = [defaultContentConfiguration textProperties];
  [textProperties setLineBreakMode:4];

  textProperties2 = [defaultContentConfiguration textProperties];
  [textProperties2 setNumberOfLines:1];

  secondaryTextProperties = [defaultContentConfiguration secondaryTextProperties];
  [secondaryTextProperties setLineBreakMode:4];

  secondaryTextProperties2 = [defaultContentConfiguration secondaryTextProperties];
  [secondaryTextProperties2 setNumberOfLines:1];

  safari_stringForListDisplay = [(NSURL *)self->_siteURL safari_stringForListDisplay];
  [defaultContentConfiguration setSecondaryText:safari_stringForListDisplay];

  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  secondaryTextProperties3 = [defaultContentConfiguration secondaryTextProperties];
  [secondaryTextProperties3 setColor:secondaryLabelColor];

  if (self->_favicon)
  {
    [defaultContentConfiguration setImage:?];
  }

  else
  {
    v10 = [MEMORY[0x277D755B8] systemImageNamed:@"globe"];
    [defaultContentConfiguration setImage:v10];
  }

  imageProperties = [defaultContentConfiguration imageProperties];
  [imageProperties setCornerRadius:2.0];

  imageProperties2 = [defaultContentConfiguration imageProperties];
  [imageProperties2 setReservedLayoutSize:{24.0, 24.0}];

  imageProperties3 = [defaultContentConfiguration imageProperties];
  [imageProperties3 setMaximumSize:{24.0, 24.0}];

  [(SFFaviconWebsiteCollectionCell *)self setContentConfiguration:defaultContentConfiguration];
}

- (void)_requestFavicon
{
  favicon = self->_favicon;
  self->_favicon = 0;

  mEMORY[0x277D28F58] = [MEMORY[0x277D28F58] sharedSiteMetadataManager];
  [mEMORY[0x277D28F58] cancelRequestWithToken:self->_faviconRequestToken];

  v5 = [objc_alloc(MEMORY[0x277D4A730]) initWithURL:self->_siteURL iconSize:0 fallbackType:{24.0, 24.0}];
  objc_initWeak(&location, self);
  mEMORY[0x277D28F58]2 = [MEMORY[0x277D28F58] sharedSiteMetadataManager];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__SFFaviconWebsiteCollectionCell__requestFavicon__block_invoke;
  v9[3] = &unk_2781D5D78;
  objc_copyWeak(&v10, &location);
  v7 = [mEMORY[0x277D28F58]2 registerRequest:v5 priority:2 responseHandler:v9];
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