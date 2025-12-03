@interface IMBalloonAppExtension(ImageLoading)
- (id)__ck_breadcrumbImage;
- (id)__ck_generateAssetCatalogImageForInterfaceStyle:()ImageLoading;
- (id)__ck_iconServicesBundleIdentifier;
- (id)__ck_statusImage;
- (id)__ck_typingImage;
- (id)_generatePlaceholderImageForInterfaceStyle:()ImageLoading;
- (id)_validProxy;
- (void)__ck_generateStatusImage:()ImageLoading;
@end

@implementation IMBalloonAppExtension(ImageLoading)

- (id)_validProxy
{
  proxy = [self proxy];
  containingBundle = [proxy containingBundle];
  appState = [containingBundle appState];
  isValid = [appState isValid];

  if ((isValid & 1) == 0)
  {
    v5 = MEMORY[0x1E6963678];
    bundleIdentifier = [proxy bundleIdentifier];
    v7 = [v5 pluginKitProxyForIdentifier:bundleIdentifier];

    proxy = v7;
  }

  return proxy;
}

- (id)__ck_iconServicesBundleIdentifier
{
  _validProxy = [self _validProxy];
  v3 = _validProxy;
  if (_validProxy)
  {
    bundleIdentifier = [_validProxy bundleIdentifier];
  }

  else
  {
    appBundle = [self appBundle];
    bundleIdentifier = [appBundle bundleIdentifier];
  }

  return bundleIdentifier;
}

- (id)__ck_generateAssetCatalogImageForInterfaceStyle:()ImageLoading
{
  _validProxy = [self _validProxy];
  v6 = _validProxy;
  if (_validProxy)
  {
    v7 = [_validProxy iconForInterfaceStyle:a3];
    if (!v7)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v12 = +[CKUIBehavior sharedBehaviors];
  [v12 appIconSize];
  v14 = v13;

  browserImageName = [self browserImageName];
  v16 = [browserImageName stringByAppendingFormat:@"_%d", v14];
  v17 = MEMORY[0x1E69DCAB8];
  appBundle = [self appBundle];
  v19 = [v17 imageNamed:v16 inBundle:appBundle];

  v7 = [v19 iconForInterfaceStyle:a3];

  if (v7)
  {
LABEL_3:
    v8 = [self __ck_cacheKeyForInterfaceStyle:a3];
    v9 = +[CKBalloonPluginManager sharedInstance];
    iconCache = [v9 iconCache];
    [iconCache setObject:v7 forKey:v8];
  }

LABEL_4:

  return v7;
}

- (id)_generatePlaceholderImageForInterfaceStyle:()ImageLoading
{
  if (IMOSLoggingEnabled())
  {
    v0 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v0, OS_LOG_TYPE_INFO, "Generate placeholder image", buf, 2u);
    }
  }

  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v3 = v2;

  v8 = v3;
  [MEMORY[0x1E69DCAB8] _iconVariantForUIApplicationIconFormat:14 scale:&v8];
  v4 = LICreateDefaultIcon();
  if (v4)
  {
    v5 = v4;
    v6 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v4];
    CFRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)__ck_typingImage
{
  _validProxy = [self _validProxy];
  if (_validProxy)
  {
    v3 = [MEMORY[0x1E69DCAB8] _iconForResourceProxy:_validProxy format:15];
  }

  else
  {
    browserImageName = [self browserImageName];
    v5 = [browserImageName stringByAppendingFormat:@"_%d", 32];

    if (v5)
    {
      v6 = MEMORY[0x1E69DCAB8];
      appBundle = [self appBundle];
      v3 = [v6 imageNamed:v5 inBundle:appBundle];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (id)__ck_statusImage
{
  _validProxy = [self _validProxy];
  if (_validProxy)
  {
    v3 = [MEMORY[0x1E69DCAB8] _iconForResourceProxy:_validProxy format:15];
  }

  else
  {
    browserImageName = [self browserImageName];
    v5 = [browserImageName stringByAppendingFormat:@"_%d", 32];

    if (v5)
    {
      v6 = MEMORY[0x1E69DCAB8];
      appBundle = [self appBundle];
      v3 = [v6 badgeIconForImageNamed:v5 inBundle:appBundle];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (void)__ck_generateStatusImage:()ImageLoading
{
  v4 = a3;
  _validProxy = [self _validProxy];
  if (_validProxy)
  {
    v17 = 0.0;
    [MEMORY[0x1E69DCAB8] _iconVariantForUIApplicationIconFormat:15 scale:&v17];
    LIIconOutputSizeForVariant();
    v7 = v6;
    v9 = v8;
    v10 = objc_alloc(MEMORY[0x1E69A8A30]);
    __ck_statusImage = [v10 initWithSize:v7 scale:{v9, v17}];
    [__ck_statusImage setDrawBorder:1];
    v12 = objc_alloc(MEMORY[0x1E69A8A00]);
    bundleIdentifier = [_validProxy bundleIdentifier];
    v14 = [v12 initWithBundleIdentifier:bundleIdentifier];

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __64__IMBalloonAppExtension_ImageLoading____ck_generateStatusImage___block_invoke;
    v15[3] = &unk_1E72F1390;
    v16 = v4;
    [v14 getCGImageForImageDescriptor:__ck_statusImage completion:v15];
  }

  else
  {
    __ck_statusImage = [self __ck_statusImage];
    (*(v4 + 2))(v4, __ck_statusImage);
  }
}

- (id)__ck_breadcrumbImage
{
  _validProxy = [self _validProxy];
  if (_validProxy)
  {
    [MEMORY[0x1E69DCAB8] _iconForResourceProxy:_validProxy format:16];
  }

  else
  {
    [self __ck_statusImage];
  }
  v3 = ;

  return v3;
}

@end