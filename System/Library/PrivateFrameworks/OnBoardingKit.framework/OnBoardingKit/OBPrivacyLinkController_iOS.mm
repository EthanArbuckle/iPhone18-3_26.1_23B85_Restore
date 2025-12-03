@interface OBPrivacyLinkController_iOS
- (OBPrivacyLinkController_iOS)initWithBundleIdentifiers:(id)identifiers;
- (OBPrivacyLinkController_iOS)initWithPrivacyBundle:(id)bundle;
- (void)loadView;
- (void)processBundlesForTitleInformation;
- (void)setCustomTintColor:(id)color;
@end

@implementation OBPrivacyLinkController_iOS

- (OBPrivacyLinkController_iOS)initWithPrivacyBundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = OBPrivacyLinkController_iOS;
  v3 = [(OBPrivacyLinkController *)&v7 initWithPrivacyBundle:bundle];
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

- (OBPrivacyLinkController_iOS)initWithBundleIdentifiers:(id)identifiers
{
  v7.receiver = self;
  v7.super_class = OBPrivacyLinkController_iOS;
  v3 = [(OBPrivacyLinkController *)&v7 initWithBundleIdentifiers:identifiers];
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
    bundles = [(OBPrivacyLinkController *)self bundles];
    v4 = [bundles countByEnumeratingWithState:&v39 objects:v43 count:16];
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
            objc_enumerationMutation(bundles);
          }

          privacyFlow = [*(*(&v39 + 1) + 8 * i) privacyFlow];
          _iconSymbolName = [privacyFlow _iconSymbolName];

          if (_iconSymbolName)
          {
            _iconSymbolName2 = [privacyFlow _iconSymbolName];

            goto LABEL_13;
          }
        }

        v5 = [bundles countByEnumeratingWithState:&v39 objects:v43 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    _iconSymbolName2 = 0;
LABEL_13:
  }

  else
  {
    _iconSymbolName2 = 0;
  }

  [(OBPrivacyLinkController_iOS *)self processBundlesForTitleInformation];
  bundles2 = [(OBPrivacyLinkController *)self bundles];
  if ([bundles2 count] < 2 || self->bundleTitlesMatch)
  {
  }

  else
  {
    bundle = [(OBPrivacyLinkController *)self bundle];
    isLinkBundle = [bundle isLinkBundle];

    if ((isLinkBundle & 1) == 0)
    {
      bundlesIncludePII = self->bundlesIncludePII;
      flow = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      displayLanguage = [(OBPrivacyLinkController *)self displayLanguage];
      if (bundlesIncludePII)
      {
        v26 = @"PRIVACY_LINK_MULTIPLE_PII";
      }

      else
      {
        v26 = @"PRIVACY_LINK_MULTIPLE";
      }

      v14 = [OBUtilities localizedString:v26 forTable:@"Localizable" inBundle:flow forLanguage:displayLanguage];
      goto LABEL_18;
    }
  }

  flow = [(OBPrivacyLinkController *)self flow];
  displayLanguage = [(OBPrivacyLinkController *)self displayLanguage];
  v14 = [flow localizedButtonTitleForLanguage:displayLanguage preferredDeviceType:{-[OBPrivacyLinkController displayDeviceType](self, "displayDeviceType")}];
LABEL_18:
  v15 = v14;

  if ([(OBPrivacyLinkController *)self displayIcon]&& [(OBPrivacyLinkController *)self displayCaptionText])
  {
    flow2 = [(OBPrivacyLinkController *)self flow];
    displayLanguage2 = [(OBPrivacyLinkController *)self displayLanguage];
    v18 = [flow2 localizedButtonCaptionForLanguage:displayLanguage2 preferredDeviceType:{-[OBPrivacyLinkController displayDeviceType](self, "displayDeviceType")}];

    flow3 = [(OBPrivacyLinkController *)self flow];
    displayLanguage3 = [(OBPrivacyLinkController *)self displayLanguage];
    v21 = [flow3 localizedButtonCaptionSymbolNameForLanguage:displayLanguage3 preferredDeviceType:{-[OBPrivacyLinkController displayDeviceType](self, "displayDeviceType")}];

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
  displayLargeIcon = [(OBPrivacyLinkController *)self displayLargeIcon];
  displayLanguage4 = [(OBPrivacyLinkController *)self displayLanguage];
  v30 = [(OBPrivacyLinkButton *)v27 initWithCaption:v18 captionAttachmentImage:v22 buttonText:v15 symbolName:_iconSymbolName2 useLargeIcon:displayLargeIcon displayLanguage:displayLanguage4];
  linkButton = self->_linkButton;
  self->_linkButton = v30;

  [(OBPrivacyLinkButton *)self->_linkButton addTarget:self action:sel__linkPressed forControlEvents:0x2000];
  v32 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  displayLanguage5 = [(OBPrivacyLinkController *)self displayLanguage];
  v34 = [OBUtilities localizedString:@"PRIVACY_ICON_DESCRIPTION" forTable:@"Localizable" inBundle:v32 forLanguage:displayLanguage5];
  iconView = [(OBPrivacyLinkButton *)self->_linkButton iconView];
  [iconView setAccessibilityLabel:v34];

  [(OBPrivacyLinkButton *)self->_linkButton setDisplayInfoIcon:[(OBPrivacyLinkController *)self displayInfoIcon]];
  [(OBPrivacyLinkButton *)self->_linkButton setUnderlineLinks:[(OBPrivacyLinkController *)self underlineLinks]];
  customTintColor = [(OBPrivacyLinkController *)self customTintColor];

  if (customTintColor)
  {
    customTintColor2 = [(OBPrivacyLinkController *)self customTintColor];
    [(OBPrivacyLinkButton *)self->_linkButton setTintColor:customTintColor2];
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
  bundles = [(OBPrivacyLinkController *)self bundles];
  v4 = [bundles countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(bundles);
        }

        privacyFlow = [*(*(&v13 + 1) + 8 * i) privacyFlow];
        localizedButtonTitle = [privacyFlow localizedButtonTitle];
        v11 = localizedButtonTitle;
        if (v6)
        {
          if ([localizedButtonTitle localizedStandardCompare:v6])
          {
            self->bundleTitlesMatch = 0;
          }

          if (!self->bundlesIncludePII)
          {
            self->bundlesIncludePII = [privacyFlow isPersonallyIdentifiable];
          }
        }

        else
        {
          if (!self->bundlesIncludePII)
          {
            self->bundlesIncludePII = [privacyFlow isPersonallyIdentifiable];
          }

          v6 = v11;
        }
      }

      v5 = [bundles countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)setCustomTintColor:(id)color
{
  v5.receiver = self;
  v5.super_class = OBPrivacyLinkController_iOS;
  colorCopy = color;
  [(OBPrivacyLinkController *)&v5 setCustomTintColor:colorCopy];
  [(OBPrivacyLinkButton *)self->_linkButton setTintColor:colorCopy, v5.receiver, v5.super_class];
}

@end