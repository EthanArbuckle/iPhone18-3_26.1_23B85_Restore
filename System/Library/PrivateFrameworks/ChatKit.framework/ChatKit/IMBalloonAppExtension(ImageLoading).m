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
  v1 = [a1 proxy];
  v2 = [v1 containingBundle];
  v3 = [v2 appState];
  v4 = [v3 isValid];

  if ((v4 & 1) == 0)
  {
    v5 = MEMORY[0x1E6963678];
    v6 = [v1 bundleIdentifier];
    v7 = [v5 pluginKitProxyForIdentifier:v6];

    v1 = v7;
  }

  return v1;
}

- (id)__ck_iconServicesBundleIdentifier
{
  v2 = [a1 _validProxy];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 bundleIdentifier];
  }

  else
  {
    v5 = [a1 appBundle];
    v4 = [v5 bundleIdentifier];
  }

  return v4;
}

- (id)__ck_generateAssetCatalogImageForInterfaceStyle:()ImageLoading
{
  v5 = [a1 _validProxy];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 iconForInterfaceStyle:a3];
    if (!v7)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v12 = +[CKUIBehavior sharedBehaviors];
  [v12 appIconSize];
  v14 = v13;

  v15 = [a1 browserImageName];
  v16 = [v15 stringByAppendingFormat:@"_%d", v14];
  v17 = MEMORY[0x1E69DCAB8];
  v18 = [a1 appBundle];
  v19 = [v17 imageNamed:v16 inBundle:v18];

  v7 = [v19 iconForInterfaceStyle:a3];

  if (v7)
  {
LABEL_3:
    v8 = [a1 __ck_cacheKeyForInterfaceStyle:a3];
    v9 = +[CKBalloonPluginManager sharedInstance];
    v10 = [v9 iconCache];
    [v10 setObject:v7 forKey:v8];
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

  v1 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v1 scale];
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
  v2 = [a1 _validProxy];
  if (v2)
  {
    v3 = [MEMORY[0x1E69DCAB8] _iconForResourceProxy:v2 format:15];
  }

  else
  {
    v4 = [a1 browserImageName];
    v5 = [v4 stringByAppendingFormat:@"_%d", 32];

    if (v5)
    {
      v6 = MEMORY[0x1E69DCAB8];
      v7 = [a1 appBundle];
      v3 = [v6 imageNamed:v5 inBundle:v7];
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
  v2 = [a1 _validProxy];
  if (v2)
  {
    v3 = [MEMORY[0x1E69DCAB8] _iconForResourceProxy:v2 format:15];
  }

  else
  {
    v4 = [a1 browserImageName];
    v5 = [v4 stringByAppendingFormat:@"_%d", 32];

    if (v5)
    {
      v6 = MEMORY[0x1E69DCAB8];
      v7 = [a1 appBundle];
      v3 = [v6 badgeIconForImageNamed:v5 inBundle:v7];
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
  v5 = [a1 _validProxy];
  if (v5)
  {
    v17 = 0.0;
    [MEMORY[0x1E69DCAB8] _iconVariantForUIApplicationIconFormat:15 scale:&v17];
    LIIconOutputSizeForVariant();
    v7 = v6;
    v9 = v8;
    v10 = objc_alloc(MEMORY[0x1E69A8A30]);
    v11 = [v10 initWithSize:v7 scale:{v9, v17}];
    [v11 setDrawBorder:1];
    v12 = objc_alloc(MEMORY[0x1E69A8A00]);
    v13 = [v5 bundleIdentifier];
    v14 = [v12 initWithBundleIdentifier:v13];

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __64__IMBalloonAppExtension_ImageLoading____ck_generateStatusImage___block_invoke;
    v15[3] = &unk_1E72F1390;
    v16 = v4;
    [v14 getCGImageForImageDescriptor:v11 completion:v15];
  }

  else
  {
    v11 = [a1 __ck_statusImage];
    (*(v4 + 2))(v4, v11);
  }
}

- (id)__ck_breadcrumbImage
{
  v2 = [a1 _validProxy];
  if (v2)
  {
    [MEMORY[0x1E69DCAB8] _iconForResourceProxy:v2 format:16];
  }

  else
  {
    [a1 __ck_statusImage];
  }
  v3 = ;

  return v3;
}

@end