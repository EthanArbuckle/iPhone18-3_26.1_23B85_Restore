@interface IMBalloonPlugin(ImageLoading)
+ (id)__ck_appIconFromPayloadDictionary:()ImageLoading pluginBundleID:withCompletionBlock:;
+ (id)__ck_placeholderImageForInterfaceStyle:()ImageLoading;
- (id)__ckImageForInterfaceStyle:()ImageLoading generateSynchronously:allowPlaceholder:;
- (id)__ck_badgeImage;
- (id)__ck_browserImageName:()ImageLoading;
- (id)__ck_cacheKeyForInterfaceStyle:()ImageLoading;
- (id)__ck_cachedAssetCatalogImageForInterfaceStyle:()ImageLoading;
- (id)__ck_generateAssetCatalogImageForInterfaceStyle:()ImageLoading;
- (id)__ck_generateIconForInterfaceStyle:()ImageLoading notify:;
- (id)__ck_iconServicesBundleIdentifier;
- (id)__ck_iconServicesDescriptor;
- (id)__ck_iconServicesIconForInterfaceStyle:()ImageLoading;
- (id)__ck_statusImage;
- (id)__ck_statusImageForTransport;
- (id)__ck_statusJPEGImageDataForTransportWithCompressionFactor:()ImageLoading;
- (id)_scaledImage:()ImageLoading xscale:yscale:;
- (id)appStoreBadgeIcon;
- (id)description;
- (id)recentsBadgeIcon;
- (void)__ck_generateStatusImage:()ImageLoading;
- (void)__ck_postImageUpdateNotificationWithImage:()ImageLoading;
- (void)__ck_prefetchBrowserImageForInterfaceStyle:()ImageLoading;
@end

@implementation IMBalloonPlugin(ImageLoading)

- (id)__ck_cacheKeyForInterfaceStyle:()ImageLoading
{
  identifier = [self identifier];
  v5 = [CKPluginImageCacheKey keyWithStringIdentifier:identifier integerIdentifier:a3];

  return v5;
}

- (void)__ck_postImageUpdateNotificationWithImage:()ImageLoading
{
  v10[3] = *MEMORY[0x1E69E9840];
  v9[0] = @"IMBalloonPluginIdentifierKey";
  v4 = a3;
  identifier = [self identifier];
  v10[0] = identifier;
  v9[1] = @"IMBalloonPluginExtensionIdentifierKey";
  extensionIdentifier = [self extensionIdentifier];
  v9[2] = @"UpdatedIMBalloonPluginIconKey";
  v10[1] = extensionIdentifier;
  v10[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];

  [defaultCenter postNotificationName:*MEMORY[0x1E69A56D0] object:0 userInfo:v7];
}

- (id)__ck_iconServicesBundleIdentifier
{
  v6 = 0;
  v2 = [self __ck_browserImageName:&v6];
  if (v6)
  {
    CKFrameworkBundle();
  }

  else
  {
    [self pluginBundle];
  }
  v3 = ;
  bundleIdentifier = [v3 bundleIdentifier];

  return bundleIdentifier;
}

- (id)__ck_iconServicesDescriptor
{
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v2 = v1;

  v3 = [MEMORY[0x1E69A8A30] imageDescriptorNamed:*MEMORY[0x1E69A8A88]];
  v4 = +[CKUIBehavior sharedBehaviors];
  [v4 appIconSize];
  [v3 setSize:?];

  [v3 setScale:v2];
  [v3 setShape:4];

  return v3;
}

+ (id)__ck_placeholderImageForInterfaceStyle:()ImageLoading
{
  if (__ck_placeholderImageForInterfaceStyle__once != -1)
  {
    +[IMBalloonPlugin(ImageLoading) __ck_placeholderImageForInterfaceStyle:];
  }

  v1 = __ck_placeholderImageForInterfaceStyle__placeholderImage;

  return v1;
}

- (id)__ck_cachedAssetCatalogImageForInterfaceStyle:()ImageLoading
{
  v5 = +[CKBalloonPluginManager sharedInstance];
  iconCache = [v5 iconCache];

  v7 = [self __ck_cacheKeyForInterfaceStyle:a3];
  v8 = [iconCache objectForKey:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)__ck_generateAssetCatalogImageForInterfaceStyle:()ImageLoading
{
  v13 = 0;
  v5 = [self __ck_browserImageName:&v13];
  if (v13)
  {
    CKFrameworkBundle();
  }

  else
  {
    [self pluginBundle];
  }
  v6 = ;
  v7 = [MEMORY[0x1E69DCAB8] imageNamed:v5 inBundle:v6];
  v8 = [v7 iconForInterfaceStyle:a3];

  if (v8)
  {
    v9 = [self __ck_cacheKeyForInterfaceStyle:a3];
    v10 = +[CKBalloonPluginManager sharedInstance];
    iconCache = [v10 iconCache];
    [iconCache setObject:v8 forKey:v9];
  }

  return v8;
}

- (id)__ck_iconServicesIconForInterfaceStyle:()ImageLoading
{
  v5 = +[CKBalloonPluginManager sharedInstance];
  iconCache = [v5 iconCache];

  v7 = [self __ck_cacheKeyForInterfaceStyle:a3];
  v8 = [iconCache objectForKey:v7];
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = v8;
  }

  else
  {
    __ck_iconServicesBundleIdentifier = [self __ck_iconServicesBundleIdentifier];
    v11 = [objc_alloc(MEMORY[0x1E69A8A00]) initWithBundleIdentifier:__ck_iconServicesBundleIdentifier];
    objc_initWeak(&location, self);
    v12 = iconGenerationForDisplayQueue();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __72__IMBalloonPlugin_ImageLoading____ck_iconServicesIconForInterfaceStyle___block_invoke;
    block[3] = &unk_1E72EBB98;
    objc_copyWeak(&v16, &location);
    v9 = v11;
    v15 = v9;
    dispatch_async(v12, block);

    [iconCache setObject:v9 forKey:v7];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v9;
}

- (id)__ck_generateIconForInterfaceStyle:()ImageLoading notify:
{
  v20[1] = *MEMORY[0x1E69E9840];
  if ([self __ck_preferIconServices])
  {
    v7 = [self __ck_iconServicesIconForInterfaceStyle:a3];
    __ck_iconServicesDescriptor = [self __ck_iconServicesDescriptor];
    v20[0] = __ck_iconServicesDescriptor;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    [v7 prepareImagesForImageDescriptors:v9];

    __ck_iconServicesDescriptor2 = [self __ck_iconServicesDescriptor];
    v11 = [v7 imageForDescriptor:__ck_iconServicesDescriptor2];

    if (v11 && ([v11 placeholder] & 1) == 0)
    {
      v12 = [MEMORY[0x1E69DCAB8] imageWithCGImage:{objc_msgSend(v11, "CGImage")}];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = [self __ck_generateAssetCatalogImageForInterfaceStyle:a3];
  }

  if (a4 && v12)
  {
    identifier = [self identifier];
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v16 = 138412546;
        v17 = identifier;
        v18 = 2048;
        v19 = a3;
        _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "Update icon with new image for app with identifier %@ interface style %ld", &v16, 0x16u);
      }
    }

    [self __ck_postImageUpdateNotificationWithImage:v12];
  }

  return v12;
}

- (id)__ckImageForInterfaceStyle:()ImageLoading generateSynchronously:allowPlaceholder:
{
  v29 = *MEMORY[0x1E69E9840];
  if ([self __ck_preferIconServices])
  {
    __ck_iconServicesDescriptor = [self __ck_iconServicesDescriptor];
    v10 = [self __ck_iconServicesIconForInterfaceStyle:a3];
    v11 = [v10 imageForDescriptor:__ck_iconServicesDescriptor];

    if (!v11)
    {
      v14 = 0;
      goto LABEL_15;
    }

    if (([v11 placeholder] & 1) == 0)
    {
      v12 = [MEMORY[0x1E69DCAB8] imageWithCGImage:{objc_msgSend(v11, "CGImage")}];
      goto LABEL_14;
    }

    if (a4)
    {
      v12 = [self __ck_generateIconForInterfaceStyle:a3 notify:0];
LABEL_14:
      v14 = v12;
LABEL_15:

      if (v14)
      {
        goto LABEL_27;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v13 = [self __ck_cachedAssetCatalogImageForInterfaceStyle:a3];
    v14 = v13;
    if (!v13 && a4)
    {
      v14 = [self __ck_generateIconForInterfaceStyle:a3 notify:0];
      if (v14)
      {
        goto LABEL_27;
      }

      goto LABEL_19;
    }

    if (v13)
    {
      goto LABEL_27;
    }
  }

  objc_initWeak(location, self);
  v15 = iconGenerationForDisplayQueue();
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __99__IMBalloonPlugin_ImageLoading____ckImageForInterfaceStyle_generateSynchronously_allowPlaceholder___block_invoke;
  v24 = &unk_1E72F13B8;
  objc_copyWeak(v25, location);
  v25[1] = a3;
  dispatch_async(v15, &v21);

  objc_destroyWeak(v25);
  objc_destroyWeak(location);
  v14 = 0;
LABEL_19:
  if (a5)
  {
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        identifier = [self identifier];
        v18 = identifier;
        v19 = @"NO";
        if (a4)
        {
          v19 = @"YES";
        }

        *location = 138412546;
        *&location[4] = identifier;
        v27 = 2112;
        v28 = v19;
        _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "Didn't get an icon for identifier %@ synchronous:%@", location, 0x16u);
      }
    }

    v14 = [MEMORY[0x1E69A5AC0] __ck_placeholderImageForInterfaceStyle:{a3, v21, v22, v23, v24}];
  }

LABEL_27:

  return v14;
}

- (void)__ck_prefetchBrowserImageForInterfaceStyle:()ImageLoading
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = [self __ck_cacheKeyForInterfaceStyle:?];
  v6 = +[CKBalloonPluginManager sharedInstance];
  iconCache = [v6 iconCache];
  v8 = [iconCache objectForKey:v5];

  if (v8)
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v22 = v5;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Icon already in cache, not prefetching browser icon key - %@", buf, 0xCu);
      }

LABEL_5:
    }
  }

  else
  {
    v10 = +[CKBalloonPluginManager sharedInstance];
    prefetchIconKeys = [v10 prefetchIconKeys];
    v12 = [prefetchIconKeys containsObject:v5];

    v13 = IMOSLoggingEnabled();
    if (v12)
    {
      if (!v13)
      {
        goto LABEL_18;
      }

      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v22 = v5;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Icon already prefetching, not prefetching browser icon key - %@", buf, 0xCu);
      }

      goto LABEL_5;
    }

    if (v13)
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v22 = v5;
        _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "Prefetching browser icon for key - %@", buf, 0xCu);
      }
    }

    v15 = +[CKBalloonPluginManager sharedInstance];
    prefetchIconKeys2 = [v15 prefetchIconKeys];
    [prefetchIconKeys2 addObject:v5];

    if (iconPrefetchQueue_once != -1)
    {
      [IMBalloonPlugin(ImageLoading) __ck_prefetchBrowserImageForInterfaceStyle:];
    }

    v17 = iconPrefetchQueue_sQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __76__IMBalloonPlugin_ImageLoading____ck_prefetchBrowserImageForInterfaceStyle___block_invoke;
    block[3] = &unk_1E72EBC38;
    block[4] = self;
    v20 = a3;
    v19 = v5;
    dispatch_async(v17, block);
  }

LABEL_18:
}

- (id)__ck_browserImageName:()ImageLoading
{
  identifier = [self identifier];
  v6 = [identifier isEqualToString:*MEMORY[0x1E69A6988]];

  if (v6)
  {
    *a3 = 1;
    v7 = MEMORY[0x1E696AEC0];
    browserImageName = +[CKUIBehavior sharedBehaviors];
    [browserImageName appIconSize];
    [v7 stringWithFormat:@"AppStoreIcon-%f", v9];
  }

  else
  {
    identifier2 = [self identifier];
    v11 = [identifier2 isEqualToString:@"com.apple.messages.browser.MorePlugin"];

    if (v11)
    {
      *a3 = 1;
      v12 = MEMORY[0x1E696AEC0];
      browserImageName = +[CKUIBehavior sharedBehaviors];
      [browserImageName appIconSize];
      [v12 stringWithFormat:@"MoreIcon-%f", v13];
    }

    else
    {
      identifier3 = [self identifier];
      v15 = [identifier3 isEqualToString:@"com.apple.messages.browser.RecentPlugin"];
      v16 = __CurrentTestName;

      if ((v15 & 1) == 0 && !v16)
      {
        *a3 = 0;
        v17 = +[CKUIBehavior sharedBehaviors];
        [v17 appIconSize];
        v19 = v18;

        browserImageName = [self browserImageName];
        v20 = [browserImageName stringByAppendingFormat:@"_%d", v19];
        goto LABEL_10;
      }

      *a3 = 1;
      v21 = MEMORY[0x1E696AEC0];
      browserImageName = +[CKUIBehavior sharedBehaviors];
      [browserImageName appIconSize];
      [v21 stringWithFormat:@"RecentsIcon-%f", v22];
    }
  }
  v20 = ;
LABEL_10:
  v23 = v20;

  return v23;
}

- (id)__ck_badgeImage
{
  v23 = *MEMORY[0x1E69E9840];
  identifier = [self identifier];
  v3 = [identifier isEqualToString:*MEMORY[0x1E69A6988]];

  if (v3)
  {
    appStoreBadgeIcon = [self appStoreBadgeIcon];
LABEL_5:
    v7 = appStoreBadgeIcon;
    goto LABEL_16;
  }

  identifier2 = [self identifier];
  v6 = [identifier2 isEqualToString:@"com.apple.messages.browser.RecentPlugin"];

  if (v6)
  {
    appStoreBadgeIcon = [self recentsBadgeIcon];
    goto LABEL_5;
  }

  browserImageName = [self browserImageName];
  v9 = [browserImageName stringByAppendingFormat:@"_%d", 32];

  v10 = [CKPluginImageCacheKey keyWithStringIdentifier:v9 integerIdentifier:32];
  v11 = +[CKBalloonPluginManager sharedInstance];
  iconCache = [v11 iconCache];

  v13 = [iconCache objectForKey:v10];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v13;
  }

  else
  {
    v14 = MEMORY[0x1E69DCAB8];
    pluginBundle = [self pluginBundle];
    v7 = [v14 badgeIconForImageNamed:v9 inBundle:pluginBundle];

    if (v7)
    {
      [iconCache setObject:v7 forKey:v10];
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          pluginBundle2 = [self pluginBundle];
          *buf = 138412546;
          v20 = v9;
          v21 = 2112;
          v22 = pluginBundle2;
          _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "IMBalloonPlugin __ck_badgeImage: failed to find an image named: %@ in bundle: %@", buf, 0x16u);
        }
      }

      v7 = 0;
    }
  }

LABEL_16:

  return v7;
}

- (id)__ck_statusImage
{
  browserImageName = [self browserImageName];
  v3 = [browserImageName stringByAppendingFormat:@"_%d", 32];
  if ([v3 length])
  {
    v4 = MEMORY[0x1E69DCAB8];
    pluginBundle = [self pluginBundle];
    v6 = [v4 imageNamed:v3 inBundle:pluginBundle];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)__ck_generateStatusImage:()ImageLoading
{
  v5 = a3;
  __ck_statusImage = [self __ck_statusImage];
  (a3)[2](v5, __ck_statusImage);
}

- (id)__ck_statusImageForTransport
{
  __ck_statusImage = [self __ck_statusImage];
  v3 = [self _scaledImage:__ck_statusImage xscale:1.0 yscale:1.0];

  return v3;
}

- (id)__ck_statusJPEGImageDataForTransportWithCompressionFactor:()ImageLoading
{
  __ck_statusImage = [self __ck_statusImage];
  v4 = __ck_statusImage;
  if (__ck_statusImage)
  {
    v5 = UIImageJPEGRepresentation(__ck_statusImage, a2);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_scaledImage:()ImageLoading xscale:yscale:
{
  if (a3)
  {
    v3 = a3;
    [v3 size];
    v5 = v4 / 3.0;
    [v3 size];
    v12.width = v5;
    v12.height = v7 / 3.0;
    height = v12.height;
    UIGraphicsBeginImageContextWithOptions(v12, 1, 1.0);
    CurrentContext = UIGraphicsGetCurrentContext();
    CGContextScaleCTM(CurrentContext, 0.333333333, 0.333333333);
    [v3 drawInRect:{*MEMORY[0x1E695EFF8] - v5 * 0.5, *(MEMORY[0x1E695EFF8] + 8) - height * 0.5, v5, height}];

    v9 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)__ck_appIconFromPayloadDictionary:()ImageLoading pluginBundleID:withCompletionBlock:
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = IMSanitizedAppIconDataForIMExtensionPayloadAppIconKey();
  v11 = [MEMORY[0x1E69DCAB8] imageWithData:v10];
  if (v11)
  {
    v12 = IMBalloonExtensionIDWithSuffix();
    if (([v8 isEqualToString:v12] & 1) == 0)
    {
      v13 = IMBalloonExtensionIDWithSuffix();
      if (![v8 isEqualToString:v13])
      {
        v18 = IMBalloonExtensionIDWithSuffix();
        v19 = [v8 isEqualToString:v18];

        if ((v19 & 1) == 0)
        {
          v14 = 15;
          goto LABEL_7;
        }

LABEL_6:
        v14 = 0;
LABEL_7:
        v15 = [v11 _applicationIconImageForFormat:v14 precomposed:1];
        goto LABEL_13;
      }
    }

    goto LABEL_6;
  }

  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v20 = 134217984;
      v21 = [v10 length];
      _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "Failed to generate icon from payloadDictionary, length: %tu", &v20, 0xCu);
    }
  }

  v15 = 0;
LABEL_13:

  return v15;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  identifier = [self identifier];
  v5 = [v2 stringWithFormat:@"%@<%p> : %@", v3, self, identifier];

  return v5;
}

- (id)appStoreBadgeIcon
{
  if (appStoreBadgeIcon_once != -1)
  {
    [IMBalloonPlugin(ImageLoading) appStoreBadgeIcon];
  }

  v1 = appStoreBadgeIcon_sBehavior;

  return v1;
}

- (id)recentsBadgeIcon
{
  if (recentsBadgeIcon_once != -1)
  {
    [IMBalloonPlugin(ImageLoading) recentsBadgeIcon];
  }

  v1 = recentsBadgeIcon_sBehavior;

  return v1;
}

@end