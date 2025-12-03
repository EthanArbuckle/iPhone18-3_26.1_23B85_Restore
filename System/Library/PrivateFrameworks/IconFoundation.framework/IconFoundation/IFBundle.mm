@interface IFBundle
+ (id)appIconOverrideBundle;
+ (id)bundleWithURL:(id)l;
+ (id)coreGlyphsBundle;
+ (id)coreGlyphsPrivateBundle;
+ (id)coreTypesBundle;
+ (id)frameworkBundle;
+ (id)frameworkLocalizedString:(id)string;
+ (id)iconFoundationFrameworkBundle;
+ (id)iconsetResourceAssetsCatalogURL;
+ (id)iconsetResourceBundle;
+ (id)mainBundle;
+ (id)mobileIconsFrameworkBundle;
+ (unint64_t)platformFromDyldPlatform:(unsigned int)platform;
- (IFBundle)initWithCFBundle:(__CFBundle *)bundle;
- (IFBundle)initWithURL:(id)l;
- (IFPlistParser)plistParser;
- (NSDictionary)iconDictionary;
- (NSDictionary)infoDictionary;
- (NSString)bundleID;
- (NSURL)bundleURL;
- (id)URLForResource:(id)resource;
- (id)URLForResource:(id)resource withExtension:(id)extension subdirectory:(id)subdirectory;
- (id)URLsForResources:(id)resources;
- (id)URLsForResourcesWithExtension:(id)extension subdirectory:(id)subdirectory;
- (id)localizedStringForKey:(id)key value:(id)value table:(id)table;
- (unint64_t)icc_platformWithIOButNoLS;
- (unint64_t)platform;
- (void)dealloc;
@end

@implementation IFBundle

- (unint64_t)platform
{
  if (![(IFBundle *)self bundle])
  {
    return 0;
  }

  v3 = objc_alloc(MEMORY[0x1E69635F8]);
  bundleURL = [(IFBundle *)self bundleURL];
  v5 = [v3 initWithURL:bundleURL allowPlaceholder:1 error:0];

  if (!v5)
  {
    v6 = objc_alloc(MEMORY[0x1E69635D0]);
    bundleURL2 = [(IFBundle *)self bundleURL];
    v5 = [v6 initWithURL:bundleURL2 error:0];
  }

  if ([v5 platform])
  {
    iconPlatform = [objc_opt_class() platformFromDyldPlatform:{objc_msgSend(v5, "platform")}];
  }

  else
  {
    plistParser = [(IFBundle *)self plistParser];
    iconPlatform = [plistParser iconPlatform];

    if (!iconPlatform)
    {
      plistParser2 = [(IFBundle *)self plistParser];
      iconPlatform = [plistParser2 supportedPlatform];

      if (!iconPlatform)
      {
        plistParser3 = [(IFBundle *)self plistParser];
        iconPlatform = [plistParser3 uiDeviceFamily];
      }
    }
  }

  return iconPlatform;
}

- (NSURL)bundleURL
{
  bundle = self->_bundle;
  if (bundle)
  {
    v3 = CFBundleCopyBundleURL(bundle);
  }

  else
  {
    v3 = 0;
  }

  v4 = [(__CFURL *)v3 copy];

  return v4;
}

- (void)dealloc
{
  bundle = self->_bundle;
  if (bundle)
  {
    CFRelease(bundle);
  }

  v4.receiver = self;
  v4.super_class = IFBundle;
  [(IFBundle *)&v4 dealloc];
}

+ (id)iconsetResourceBundle
{
  if (iconsetResourceBundle_onceToken != -1)
  {
    +[IFBundle iconsetResourceBundle];
  }

  v3 = iconsetResourceBundle_resourceBundle;

  return v3;
}

void __33__IFBundle_iconsetResourceBundle__block_invoke()
{
  v2 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/System/Library/CoreServices/IconsetResources.bundle"];
  v0 = [[IFBundle alloc] initWithURL:v2];
  v1 = iconsetResourceBundle_resourceBundle;
  iconsetResourceBundle_resourceBundle = v0;
}

+ (id)frameworkBundle
{
  if (frameworkBundle_onceToken != -1)
  {
    +[IFBundle frameworkBundle];
  }

  v3 = frameworkBundle_frameworkBundle;

  return v3;
}

void __27__IFBundle_frameworkBundle__block_invoke()
{
  v2 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/System/Library/PrivateFrameworks/IconServices.framework"];
  v0 = [[IFBundle alloc] initWithURL:v2];
  v1 = frameworkBundle_frameworkBundle;
  frameworkBundle_frameworkBundle = v0;
}

+ (id)iconFoundationFrameworkBundle
{
  if (iconFoundationFrameworkBundle_onceToken != -1)
  {
    +[IFBundle iconFoundationFrameworkBundle];
  }

  v3 = iconFoundationFrameworkBundle_bundle;

  return v3;
}

void __41__IFBundle_iconFoundationFrameworkBundle__block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = [v0 bundleURL];

  v1 = [[IFBundle alloc] initWithURL:v3];
  v2 = iconFoundationFrameworkBundle_bundle;
  iconFoundationFrameworkBundle_bundle = v1;
}

+ (id)mobileIconsFrameworkBundle
{
  if (mobileIconsFrameworkBundle_onceToken != -1)
  {
    +[IFBundle mobileIconsFrameworkBundle];
  }

  v3 = mobileIconsFrameworkBundle_frameworkBundle;

  return v3;
}

void __38__IFBundle_mobileIconsFrameworkBundle__block_invoke()
{
  v2 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/System/Library/PrivateFrameworks/MobileIcons.framework"];
  v0 = [[IFBundle alloc] initWithURL:v2];
  v1 = mobileIconsFrameworkBundle_frameworkBundle;
  mobileIconsFrameworkBundle_frameworkBundle = v0;
}

+ (id)mainBundle
{
  if (mainBundle_onceToken != -1)
  {
    +[IFBundle mainBundle];
  }

  v3 = mainBundle_mainBundle;

  return v3;
}

uint64_t __22__IFBundle_mainBundle__block_invoke()
{
  mainBundle_mainBundle = [[IFBundle alloc] initWithCFBundle:CFBundleGetMainBundle()];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)coreTypesBundle
{
  if (coreTypesBundle_onceToken != -1)
  {
    +[IFBundle coreTypesBundle];
  }

  v3 = coreTypesBundle_coreTypesBundle;

  return v3;
}

void __27__IFBundle_coreTypesBundle__block_invoke()
{
  v2 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/System/Library/CoreServices/MobileCoreTypes.bundle"];
  v0 = [[IFBundle alloc] initWithURL:v2];
  v1 = coreTypesBundle_coreTypesBundle;
  coreTypesBundle_coreTypesBundle = v0;
}

+ (id)coreGlyphsBundle
{
  if (coreGlyphsBundle_onceToken != -1)
  {
    +[IFBundle coreGlyphsBundle];
  }

  v3 = coreGlyphsBundle_coreGlyphsBundle;

  return v3;
}

void __28__IFBundle_coreGlyphsBundle__block_invoke()
{
  v0 = [IFBundle alloc];
  v3 = [MEMORY[0x1E695DFF8] coreGlyphsBundleURL];
  v1 = [(IFBundle *)v0 initWithURL:v3];
  v2 = coreGlyphsBundle_coreGlyphsBundle;
  coreGlyphsBundle_coreGlyphsBundle = v1;
}

+ (id)coreGlyphsPrivateBundle
{
  if (coreGlyphsPrivateBundle_onceToken != -1)
  {
    +[IFBundle coreGlyphsPrivateBundle];
  }

  v3 = coreGlyphsPrivateBundle_coreGlyphsBundle;

  return v3;
}

void __35__IFBundle_coreGlyphsPrivateBundle__block_invoke()
{
  v0 = [IFBundle alloc];
  v3 = [MEMORY[0x1E695DFF8] coreGlyphsPrivateBundleURL];
  v1 = [(IFBundle *)v0 initWithURL:v3];
  v2 = coreGlyphsPrivateBundle_coreGlyphsBundle;
  coreGlyphsPrivateBundle_coreGlyphsBundle = v1;
}

+ (id)appIconOverrideBundle
{
  if (appIconOverrideBundle_onceToken != -1)
  {
    +[IFBundle appIconOverrideBundle];
  }

  v3 = appIconOverrideBundle_bundle;

  return v3;
}

void __33__IFBundle_appIconOverrideBundle__block_invoke()
{
  v2 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/AppleInternal/Library/Bundles/AppIconOverrides.bundle"];
  v0 = [[IFBundle alloc] initWithURL:v2];
  v1 = appIconOverrideBundle_bundle;
  appIconOverrideBundle_bundle = v0;
}

+ (id)iconsetResourceAssetsCatalogURL
{
  v2 = +[IFBundle iconsetResourceBundle];
  v3 = [v2 URLForResource:@"Assets" withExtension:@"car"];

  return v3;
}

+ (id)frameworkLocalizedString:(id)string
{
  stringCopy = string;
  v4 = +[IFBundle frameworkBundle];
  v5 = [v4 localizedStringForKey:stringCopy value:&stru_1F37DEE28 table:0];

  return v5;
}

+ (id)bundleWithURL:(id)l
{
  Unique = _CFBundleCreateUnique();
  if (Unique)
  {
    v4 = Unique;
    v5 = [[IFBundle alloc] initWithCFBundle:Unique];
    CFRelease(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (IFBundle)initWithURL:(id)l
{
  lCopy = l;
  v10.receiver = self;
  v10.super_class = IFBundle;
  v5 = [(IFBundle *)&v10 init];
  v6 = v5;
  if (lCopy && v5)
  {
    v5->_bundle = _CFBundleCreateUnique();
    absoluteURL = [lCopy absoluteURL];
    path = [absoluteURL path];
    v6->_coreTypes = [path isEqual:@"/System/Library/CoreServices/MobileCoreTypes.bundle"];
  }

  return v6;
}

- (IFBundle)initWithCFBundle:(__CFBundle *)bundle
{
  v10.receiver = self;
  v10.super_class = IFBundle;
  v4 = [(IFBundle *)&v10 init];
  v5 = v4;
  if (bundle && v4)
  {
    CFRetain(bundle);
    v5->_bundle = bundle;
    v6 = CFBundleCopyBundleURL(bundle);
    absoluteURL = [(__CFURL *)v6 absoluteURL];
    path = [absoluteURL path];
    v5->_coreTypes = [path isEqual:@"/System/Library/CoreServices/MobileCoreTypes.bundle"];
  }

  return v5;
}

- (id)URLForResource:(id)resource
{
  resourceCopy = resource;
  stringByDeletingPathExtension = [resourceCopy stringByDeletingPathExtension];
  pathExtension = [resourceCopy pathExtension];

  v7 = [(IFBundle *)self URLForResource:stringByDeletingPathExtension withExtension:pathExtension subdirectory:0];

  return v7;
}

- (id)URLForResource:(id)resource withExtension:(id)extension subdirectory:(id)subdirectory
{
  bundle = self->_bundle;
  if (bundle)
  {
    bundle = CFBundleCopyResourceURL(bundle, resource, extension, subdirectory);
    v5 = vars8;
  }

  return bundle;
}

- (id)URLsForResources:(id)resources
{
  v18 = *MEMORY[0x1E69E9840];
  resourcesCopy = resources;
  v5 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = resourcesCopy;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(IFBundle *)self URLForResource:*(*(&v13 + 1) + 8 * i), v13];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)URLsForResourcesWithExtension:(id)extension subdirectory:(id)subdirectory
{
  bundle = self->_bundle;
  if (bundle)
  {
    bundle = CFBundleCopyResourceURLsOfType(bundle, extension, subdirectory);
    v4 = vars8;
  }

  return bundle;
}

- (id)localizedStringForKey:(id)key value:(id)value table:(id)table
{
  bundle = self->_bundle;
  if (bundle)
  {
    bundle = CFBundleCopyLocalizedString(bundle, key, value, table);
    v5 = vars8;
  }

  return bundle;
}

- (NSString)bundleID
{
  bundle = self->_bundle;
  if (bundle)
  {
    v3 = CFBundleGetIdentifier(bundle);
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 copy];

  return v4;
}

- (NSDictionary)infoDictionary
{
  bundle = self->_bundle;
  if (bundle)
  {
    v4 = CFBundleGetInfoDictionary(bundle);
  }

  else
  {
    v4 = MEMORY[0x1E695E0F8];
  }

  return v4;
}

- (IFPlistParser)plistParser
{
  plistParser = self->_plistParser;
  if (!plistParser)
  {
    if (self->_bundle)
    {
      v4 = [IFPlistParser alloc];
      infoDictionary = [(IFBundle *)self infoDictionary];
      v6 = [(IFPlistParser *)v4 initWithInfoDictionary:infoDictionary];
      v7 = self->_plistParser;
      self->_plistParser = v6;

      plistParser = self->_plistParser;
    }

    else
    {
      plistParser = 0;
    }
  }

  return plistParser;
}

- (NSDictionary)iconDictionary
{
  plistParser = [(IFBundle *)self plistParser];
  iconDictionary = [plistParser iconDictionary];

  return iconDictionary;
}

+ (unint64_t)platformFromDyldPlatform:(unsigned int)platform
{
  if (platform - 1 > 0xB)
  {
    return 0;
  }

  else
  {
    return qword_1B9E3B540[platform - 1];
  }
}

- (unint64_t)icc_platformWithIOButNoLS
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  bundleURL = [(IFBundle *)self bundleURL];
  v4 = bundleURL == 0;

  if (!v4)
  {
    bundle = [(IFBundle *)self bundle];
    if (bundle)
    {
      v6 = CFBundleCopyExecutableURL(bundle);
      v7 = v6;
      if (v6)
      {
        if (CFURLGetFileSystemRepresentation(v6, 1u, buffer, 1024))
        {
          v8 = open(buffer, 0);
          v9 = v8;
          if ((v8 & 0x80000000) == 0)
          {
            v13[0] = MEMORY[0x1E69E9820];
            v13[1] = 3221225472;
            v13[2] = __57__IFBundle_ICC_PlatformWithIO__icc_platformWithIOButNoLS__block_invoke;
            v13[3] = &unk_1E7ED9938;
            v13[4] = &v14;
            if ((parse_macho_iterate_slices_fd(v8, buffer, v13) & 1) == 0)
            {
              v10 = IFDefaultLog();
              if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
              {
                [(IFBundle(ICC_PlatformWithIO) *)v10 icc_platformWithIOButNoLS];
              }
            }

            close(v9);
          }
        }

        CFRelease(v7);
      }
    }
  }

  v11 = [objc_opt_class() platformFromDyldPlatform:*(v15 + 6)];
  _Block_object_dispose(&v14, 8);
  return v11;
}

uint64_t __57__IFBundle_ICC_PlatformWithIO__icc_platformWithIOButNoLS__block_invoke_2(uint64_t result, int a2)
{
  v2 = *(*(result + 32) + 8);
  v3 = *(v2 + 24);
  if (!v3)
  {
    v3 = a2;
  }

  *(v2 + 24) = v3;
  return result;
}

@end