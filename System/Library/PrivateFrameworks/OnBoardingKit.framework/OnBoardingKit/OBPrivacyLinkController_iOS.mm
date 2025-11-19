@interface OBPrivacyLinkController_iOS
- (OBPrivacyLinkController_iOS)initWithBundleIdentifiers:(id)a3;
- (OBPrivacyLinkController_iOS)initWithPrivacyBundle:(id)a3;
- (void)loadView;
- (void)processBundlesForTitleInformation;
- (void)setCustomTintColor:(id)a3;
@end

@implementation OBPrivacyLinkController_iOS

- (OBPrivacyLinkController_iOS)initWithPrivacyBundle:(id)a3
{
  v7.receiver = self;
  v7.super_class = OBPrivacyLinkController_iOS;
  v3 = [(OBPrivacyLinkController *)&v7 initWithPrivacyBundle:a3];
  if (v3)
  {
    v4 = +[OBUtilities mainScreen];
    [v4 bounds];
    [(OBPrivacyLinkController *)v3 setDisplayLargeIcon:v5 > 568.01];

    [(OBPrivacyLinkController *)v3 setDisplayCaptionText:1];
    [(OBPrivacyLinkController *)v3 setDisplayDeviceType:0];
    [(OBPrivacyLinkController_iOS *)v3 setModalPresentationStyle:2];
  }

  return v3;
}

- (OBPrivacyLinkController_iOS)initWithBundleIdentifiers:(id)a3
{
  v7.receiver = self;
  v7.super_class = OBPrivacyLinkController_iOS;
  v3 = [(OBPrivacyLinkController *)&v7 initWithBundleIdentifiers:a3];
  if (v3)
  {
    v4 = +[OBUtilities mainScreen];
    [v4 bounds];
    [(OBPrivacyLinkController *)v3 setDisplayLargeIcon:v5 > 568.01];

    [(OBPrivacyLinkController *)v3 setDisplayCaptionText:1];
    [(OBPrivacyLinkController *)v3 setDisplayDeviceType:0];
    [(OBPrivacyLinkController_iOS *)v3 setModalPresentationStyle:2];
  }

  return v3;
}

- (void)loadView
{
  v44 = *MEMORY[0x1E69E9840];
  if ([(OBPrivacyLinkController *)self displayIcon])
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v3 = [(OBPrivacyLinkController *)self bundles];
    v4 = [v3 countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v40;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v40 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = [*(*(&v39 + 1) + 8 * i) privacyFlow];
          v9 = [v8 _iconSymbolName];

          if (v9)
          {
            v10 = [v8 _iconSymbolName];

            goto LABEL_13;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v39 objects:v43 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    v10 = 0;
LABEL_13:
  }

  else
  {
    v10 = 0;
  }

  [(OBPrivacyLinkController_iOS *)self processBundlesForTitleInformation];
  v11 = [(OBPrivacyLinkController *)self bundles];
  if ([v11 count] < 2 || self->bundleTitlesMatch)
  {
  }

  else
  {
    v23 = [(OBPrivacyLinkController *)self bundle];
    v24 = [v23 isLinkBundle];

    if ((v24 & 1) == 0)
    {
      bundlesIncludePII = self->bundlesIncludePII;
      v12 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v13 = [(OBPrivacyLinkController *)self displayLanguage];
      if (bundlesIncludePII)
      {
        v26 = @"PRIVACY_LINK_MULTIPLE_PII";
      }

      else
      {
        v26 = @"PRIVACY_LINK_MULTIPLE";
      }

      v14 = [OBUtilities localizedString:v26 forTable:@"Localizable" inBundle:v12 forLanguage:v13];
      goto LABEL_18;
    }
  }

  v12 = [(OBPrivacyLinkController *)self flow];
  v13 = [(OBPrivacyLinkController *)self displayLanguage];
  v14 = [v12 localizedButtonTitleForLanguage:v13 preferredDeviceType:{-[OBPrivacyLinkController displayDeviceType](self, "displayDeviceType")}];
LABEL_18:
  v15 = v14;

  if ([(OBPrivacyLinkController *)self displayIcon]&& [(OBPrivacyLinkController *)self displayCaptionText])
  {
    v16 = [(OBPrivacyLinkController *)self flow];
    v17 = [(OBPrivacyLinkController *)self displayLanguage];
    v18 = [v16 localizedButtonCaptionForLanguage:v17 preferredDeviceType:{-[OBPrivacyLinkController displayDeviceType](self, "displayDeviceType")}];

    v19 = [(OBPrivacyLinkController *)self flow];
    v20 = [(OBPrivacyLinkController *)self displayLanguage];
    v21 = [v19 localizedButtonCaptionSymbolNameForLanguage:v20 preferredDeviceType:{-[OBPrivacyLinkController displayDeviceType](self, "displayDeviceType")}];

    if (v21)
    {
      v22 = [MEMORY[0x1E69DCAB8] systemImageNamed:v21];
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v18 = 0;
    v22 = 0;
  }

  v27 = [OBPrivacyLinkButton alloc];
  v28 = [(OBPrivacyLinkController *)self displayLargeIcon];
  v29 = [(OBPrivacyLinkController *)self displayLanguage];
  v30 = [(OBPrivacyLinkButton *)v27 initWithCaption:v18 captionAttachmentImage:v22 buttonText:v15 symbolName:v10 useLargeIcon:v28 displayLanguage:v29];
  linkButton = self->_linkButton;
  self->_linkButton = v30;

  [(OBPrivacyLinkButton *)self->_linkButton addTarget:self action:sel__linkPressed forControlEvents:0x2000];
  v32 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v33 = [(OBPrivacyLinkController *)self displayLanguage];
  v34 = [OBUtilities localizedString:@"PRIVACY_ICON_DESCRIPTION" forTable:@"Localizable" inBundle:v32 forLanguage:v33];
  v35 = [(OBPrivacyLinkButton *)self->_linkButton iconView];
  [v35 setAccessibilityLabel:v34];

  [(OBPrivacyLinkButton *)self->_linkButton setDisplayInfoIcon:[(OBPrivacyLinkController *)self displayInfoIcon]];
  [(OBPrivacyLinkButton *)self->_linkButton setUnderlineLinks:[(OBPrivacyLinkController *)self underlineLinks]];
  v36 = [(OBPrivacyLinkController *)self customTintColor];

  if (v36)
  {
    v37 = [(OBPrivacyLinkController *)self customTintColor];
    [(OBPrivacyLinkButton *)self->_linkButton setTintColor:v37];
  }

  [(OBPrivacyLinkController_iOS *)self setView:self->_linkButton];

  v38 = *MEMORY[0x1E69E9840];
}

- (void)processBundlesForTitleInformation
{
  v18 = *MEMORY[0x1E69E9840];
  self->bundleTitlesMatch = 1;
  self->bundlesIncludePII = 0;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [(OBPrivacyLinkController *)self bundles];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) privacyFlow];
        v10 = [v9 localizedButtonTitle];
        v11 = v10;
        if (v6)
        {
          if ([v10 localizedStandardCompare:v6])
          {
            self->bundleTitlesMatch = 0;
          }

          if (!self->bundlesIncludePII)
          {
            self->bundlesIncludePII = [v9 isPersonallyIdentifiable];
          }
        }

        else
        {
          if (!self->bundlesIncludePII)
          {
            self->bundlesIncludePII = [v9 isPersonallyIdentifiable];
          }

          v6 = v11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)setCustomTintColor:(id)a3
{
  v5.receiver = self;
  v5.super_class = OBPrivacyLinkController_iOS;
  v4 = a3;
  [(OBPrivacyLinkController *)&v5 setCustomTintColor:v4];
  [(OBPrivacyLinkButton *)self->_linkButton setTintColor:v4, v5.receiver, v5.super_class];
}

@end