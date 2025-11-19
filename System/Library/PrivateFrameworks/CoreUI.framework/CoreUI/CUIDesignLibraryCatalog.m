@interface CUIDesignLibraryCatalog
+ (id)_bundleNameForResolvedDesignSystem:(int64_t)a3;
+ (id)_catalogPathComponentForDesignSystem:(int64_t)a3 colorScheme:(int64_t)a4 contrast:(int64_t)a5 styling:(int64_t)a6 error:(id *)a7;
+ (id)catalogForDesignSystem:(int64_t)a3 colorScheme:(int64_t)a4 contrast:(int64_t)a5 styling:(int64_t)a6 error:(id *)a7;
- (CUIDesignLibraryCatalog)initWithURL:(id)a3 error:(id *)a4;
- (id)_colorNameStringFromNameEnum:(int64_t)a3 palette:(int64_t)a4;
- (id)colorWithName:(int64_t)a3 palette:(int64_t)a4 displayGamut:(int64_t)a5 hierarchyLevel:(int64_t)a6 error:(id *)a7;
- (id)shapeEffectPresetWithName:(id)a3 error:(id *)a4;
- (void)dealloc;
@end

@implementation CUIDesignLibraryCatalog

- (CUIDesignLibraryCatalog)initWithURL:(id)a3 error:(id *)a4
{
  v9.receiver = self;
  v9.super_class = CUIDesignLibraryCatalog;
  v6 = [(CUIDesignLibraryCatalog *)&v9 init];
  if (v6)
  {
    if (![a3 checkResourceIsReachableAndReturnError:a4])
    {
      v6->_storageRef = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_6;
    }

    v6->_assetStoreName = [objc_msgSend(objc_msgSend(a3 "URLByDeletingPathExtension")];
    v7 = [CUIThemeFacet themeWithContentsOfURL:a3 error:a4];
    v6->_storageRef = v7;
    if (!v7)
    {
      v6->_storageRef = 0x7FFFFFFFFFFFFFFFLL;
      v6->_lock._os_unfair_lock_opaque = 0;
LABEL_6:

      return 0;
    }
  }

  return v6;
}

- (void)dealloc
{
  v3 = 0;
  colorCache = self->_colorCache;
  do
  {
    v5 = 0;
    v6 = colorCache;
    do
    {
      for (i = 0; i != 4; ++i)
      {
        v8 = (*v6)[0][i];
        if (v8 != kCFNull)
        {
        }

        (*v6)[0][i] = 0;
      }

      ++v5;
      v6 = (v6 + 32);
    }

    while (v5 != 28);
    ++v3;
    ++colorCache;
  }

  while (v3 != 5);
  v9.receiver = self;
  v9.super_class = CUIDesignLibraryCatalog;
  [(CUIDesignLibraryCatalog *)&v9 dealloc];
}

+ (id)_catalogPathComponentForDesignSystem:(int64_t)a3 colorScheme:(int64_t)a4 contrast:(int64_t)a5 styling:(int64_t)a6 error:(id *)a7
{
  v7 = &stru_1F00D74D0;
  if (a3 > 3)
  {
    if (a3 <= 5)
    {
      if (a3 == 4)
      {
        v8 = 0;
        v10 = &stru_1F00D74D0;
        v9 = 1;
        v11 = @"CarPlayRepositories/";
      }

      else
      {
        v10 = @"Contents/Resources/";
        v9 = 1;
        v8 = 1;
        v11 = @"macOSRepositories/";
      }

      goto LABEL_18;
    }

    if (a3 == 6)
    {
      v9 = 0;
      v8 = 0;
      v10 = @"Contents/Resources/";
      v11 = @"macTouchBarRepositories/";
      goto LABEL_18;
    }

    if (a3 == 7)
    {
      v8 = 0;
      v10 = &stru_1F00D74D0;
      v9 = 1;
      v11 = @"xrOSRepositories/";
      goto LABEL_18;
    }

    goto LABEL_34;
  }

  if (a3 > 1)
  {
    v8 = 0;
    v10 = &stru_1F00D74D0;
    v9 = 1;
    if (a3 == 2)
    {
      v11 = @"tvOSRepositories/";
    }

    else
    {
      v11 = @"watchOSRepositories/";
    }

    goto LABEL_18;
  }

  if (!a3)
  {
    [+[NSAssertionHandler handleFailureInMethod:0]description:"handleFailureInMethod:object:file:lineNumber:description:", a2, a1, @"CUIDesignLibraryCatalog.m", 127, @"Can't use CUIDesignSystemAutomatic with _catalogPathComponentForDesignSystem. Must resolve before calling based on OS."];
    return 0;
  }

  if (a3 != 1)
  {
LABEL_34:
    if (a7)
    {
      *a7 = [NSError errorWithDomain:NSCocoaErrorDomain code:260 userInfo:[NSDictionary dictionaryWithObjectsAndKeys:@"CUIDesignLibraryCatalog does not recognize the requested design system.", a4, a5, a6, NSLocalizedDescriptionKey, 0]];
    }

    return 0;
  }

  v8 = 0;
  v9 = 1;
  v10 = &stru_1F00D74D0;
  v11 = @"iOSRepositories/";
LABEL_18:
  v12 = @"Dark";
  if (((a4 != 1) & v9) != 0)
  {
    v12 = @"Light";
  }

  if (a6 == 1)
  {
    a6 = v8;
  }

  else if (a6 == 2)
  {
    if (v8)
    {
      a6 = 2;
    }

    else
    {
      a6 = 0;
    }
  }

  if (a6 == 2)
  {
    v7 = @"FauxVibrant";
  }

  if (a6 == 1)
  {
    v7 = @"Vibrant";
  }

  if (((a5 == 1) & v9) != 0)
  {
    v13 = @"IncreasedContrast";
  }

  else
  {
    v13 = @"Standard";
  }

  return [NSString stringWithFormat:@"%@%@%@%@%@.car", v10, v11, v12, v7, v13];
}

+ (id)_bundleNameForResolvedDesignSystem:(int64_t)a3
{
  result = @"DesignLibrary-iOS.bundle";
  if ((a3 - 1) >= 4 && a3 != 7)
  {
    if (a3)
    {
      return @"DesignLibrary-macOS.bundle";
    }

    else
    {
      [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:a1 lineNumber:@"CUIDesignLibraryCatalog.m" description:235, @"Can't use CUIDesignSystemAutomatic to find the bundle. Must resolve first by calling __resolvedDesignSystemForInputSystem."];
      return 0;
    }
  }

  return result;
}

+ (id)catalogForDesignSystem:(int64_t)a3 colorScheme:(int64_t)a4 contrast:(int64_t)a5 styling:(int64_t)a6 error:(id *)a7
{
  result = [a1 _catalogPathComponentForDesignSystem:__resolvedDesignSystemForInputSystem(a3) colorScheme:a4 contrast:a5 styling:a6 error:a7];
  if (!result)
  {
    return result;
  }

  v13 = result;
  if (__catalogOnceToken != -1)
  {
    +[CUIDesignLibraryCatalog catalogForDesignSystem:colorScheme:contrast:styling:error:];
  }

  os_unfair_lock_lock(&__catalogCacheLock);
  v14 = [__catalogCache objectForKey:v13];
  if (!v14)
  {
    v15 = [__coreUIBundleResoucePath stringByAppendingPathComponent:{objc_msgSend(objc_opt_class(), "_bundleNameForResolvedDesignSystem:", a3)}];
    if ([+[NSFileManager fileExistsAtPath:"fileExistsAtPath:"]
    {
      v22 = [v15 stringByAppendingPathComponent:v13];
      v23 = [[CUIDesignLibraryCatalog alloc] initWithURL:[NSURL error:"fileURLWithPath:" fileURLWithPath:v22], a7];
      if (v23)
      {
        v14 = v23;
        [(CUIDesignLibraryCatalog *)v23 setDesignSystem:a3];
        [(CUIDesignLibraryCatalog *)v14 setColorScheme:a4];
        [(CUIDesignLibraryCatalog *)v14 setContrast:a5];
        [(CUIDesignLibraryCatalog *)v14 setStyling:a6];
        [__catalogCache setObject:v14 forKey:v13];
        goto LABEL_13;
      }

      if ([+[NSFileManager fileExistsAtPath:"fileExistsAtPath:"]
      {
        _CUILog(4, "CoreUI: Error: Couldn't open CUIDesignLibraryCatalog at path %@.", v24, v25, v26, v27, v28, v29, v22);
      }
    }

    else
    {
      if (a7)
      {
        *a7 = [NSError errorWithDomain:NSCocoaErrorDomain code:260 userInfo:[NSDictionary dictionaryWithObjectsAndKeys:[NSString stringWithFormat:@"Error: Couldn't find CUIDesignLibraryCatalog bundle at path %@. Check to make sure that the DesignLibrary .uicatalog files have been distilled and installed in the correct resource location. This may involve building the correct DesignLibrary bundle target as a separate step.", v15], NSLocalizedDescriptionKey, 0]];
      }

      _CUILog(4, "CoreUI: [CUIDesignLibraryCatalog catalogForDesignSystem:colorScheme:contrast:styling:] Couldn't locate catalog at path '%@'.", v16, v17, v18, v19, v20, v21, v15);
    }

    v14 = 0;
  }

LABEL_13:
  os_unfair_lock_unlock(&__catalogCacheLock);

  return v14;
}

void __85__CUIDesignLibraryCatalog_catalogForDesignSystem_colorScheme_contrast_styling_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __catalogCache = objc_alloc_init(NSMutableDictionary);
  __coreUIBundleResoucePath = [[NSBundle bundleForClass:?]];
  if (!__coreUIBundleResoucePath)
  {

    _CUILog(4, "CoreUI: [CUIDesignLibraryCatalog catalogForDesignSystem:colorScheme:contrast:styling:] Couldn't locate CoreUIBundle", v9, v10, v11, v12, v13, v14, a9);
  }
}

- (id)_colorNameStringFromNameEnum:(int64_t)a3 palette:(int64_t)a4
{
  if ((a4 - 1) > 3)
  {
    v4 = @"system";
  }

  else
  {
    v4 = off_1E724A788[a4 - 1];
  }

  result = @"systemWhiteColor";
  switch(a3)
  {
    case 0:
      v6 = @"RedColor";
      goto LABEL_28;
    case 1:
      v6 = @"OrangeColor";
      goto LABEL_28;
    case 2:
      v6 = @"YellowColor";
      goto LABEL_28;
    case 3:
      v6 = @"GreenColor";
      goto LABEL_28;
    case 4:
      v6 = @"TealColor";
      goto LABEL_28;
    case 5:
      v6 = @"MintColor";
      goto LABEL_28;
    case 6:
      v6 = @"CyanColor";
      goto LABEL_28;
    case 7:
      v6 = @"BlueColor";
      goto LABEL_28;
    case 8:
      v6 = @"IndigoColor";
      goto LABEL_28;
    case 9:
      v6 = @"PurpleColor";
      goto LABEL_28;
    case 10:
      v6 = @"PinkColor";
      goto LABEL_28;
    case 11:
      return result;
    case 12:
      return @"systemBlackColor";
    case 13:
      return @"systemGrayColor";
    case 14:
      v6 = @"BrownColor";
LABEL_28:
      result = [(__CFString *)v4 stringByAppendingString:v6];
      break;
    case 15:
      result = @"labelColor";
      break;
    case 16:
      result = @"secondaryLabelColor";
      break;
    case 17:
      result = @"tertiaryLabelColor";
      break;
    case 18:
      result = @"quaternaryLabelColor";
      break;
    case 19:
      result = @"quinaryLabelColor";
      break;
    case 20:
      result = @"IconBorderOuterColor";
      break;
    case 21:
      result = @"primarySystemFillColor";
      break;
    case 22:
      result = @"secondarySystemFillColor";
      break;
    case 23:
      result = @"tertiarySystemFillColor";
      break;
    case 24:
      result = @"quaternarySystemFillColor";
      break;
    case 25:
      result = @"quinarySystemFillColor";
      break;
    case 26:
      result = @"groupBoxFillColor";
      break;
    case 27:
      result = @"groupBoxFormFillColor";
      break;
    default:
      result = @"systemRedColor";
      break;
  }

  return result;
}

- (id)colorWithName:(int64_t)a3 palette:(int64_t)a4 displayGamut:(int64_t)a5 hierarchyLevel:(int64_t)a6 error:(id *)a7
{
  kdebug_trace();
  os_unfair_lock_lock(&self->_lock);
  v12 = self + 896 * a4 + 32 * a3 + 8 * a6;
  v15 = *(v12 + 3);
  v14 = (v12 + 24);
  v13 = v15;
  if (v15 == kCFNull)
  {
    v16 = 0;
    goto LABEL_54;
  }

  v16 = v13;
  if (v16)
  {
LABEL_54:
    os_unfair_lock_unlock(&self->_lock);
    kdebug_trace();
    return v16;
  }

  v17 = [(CUIDesignLibraryCatalog *)self _colorNameStringFromNameEnum:a3 palette:a4];
  v37 = 0;
  v36 = 0;
  if (a3 == 11)
  {
    v19 = &kCGColorWhite;
    v20 = -1;
LABEL_8:
    v37 = v20;
    ConstantColor = CGColorGetConstantColor(*v19);
    CGColorRetain(ConstantColor);
    if (ConstantColor)
    {
      goto LABEL_17;
    }

    goto LABEL_12;
  }

  if (a3 == 12)
  {
    v19 = &kCGColorBlack;
    v20 = -16777216;
    goto LABEL_8;
  }

  v22 = v17;
  if ([_LookupStructuredThemeProvider(self->_storageRef v18)])
  {
    v20 = v37;
LABEL_12:
    if (BYTE2(v20) == BYTE1(v20) && BYTE1(v20) == v20)
    {
      components = BYTE2(v20) / 255.0;
      v39 = HIBYTE(v20) / 255.0;
      GrayGamma2_2 = _CUIColorSpaceGetGrayGamma2_2();
    }

    else
    {
      components = BYTE2(v20) / 255.0;
      v39 = BYTE1(v20) / 255.0;
      v40 = v20 / 255.0;
      v41 = HIBYTE(v20) / 255.0;
      GrayGamma2_2 = _CUIColorSpaceGetSRGB();
    }

    ConstantColor = CGColorCreate(GrayGamma2_2, &components);
LABEL_17:
    v24 = [(CUIDesignLibraryCatalog *)self colorScheme];
    v25 = [(CUIDesignLibraryCatalog *)self styling];
    v26 = 0;
    if ((a3 - 13) <= 0xFFFFFFFFFFFFFFFDLL && v25 == 1)
    {
      if (v24 == 1)
      {
        v27 = 27;
      }

      else
      {
        v27 = 0;
      }

      if (!v24)
      {
        v27 = 26;
      }

      if (BYTE2(v37) == v37)
      {
        v28 = v27;
      }

      else
      {
        v28 = 0;
      }

      if (BYTE2(v37) != BYTE1(v37))
      {
        v28 = 0;
      }

      if (HIBYTE(v37) == 255)
      {
        v26 = v28;
      }

      else
      {
        v26 = 0;
      }
    }

    if ((a6 - 1) > 2 || !ConstantColor)
    {
      goto LABEL_53;
    }

    v29 = colorWithName_palette_displayGamut_hierarchyLevel_error__CUIHierarchicalColorOpacities[a6];
    if (v24 == 1)
    {
      v30 = (a3 == 10 || a3 == 0) && a6 == 2;
      v31 = 0.2;
    }

    else
    {
      if (v24)
      {
LABEL_52:
        Alpha = CGColorGetAlpha(ConstantColor);
        CopyWithAlpha = CGColorCreateCopyWithAlpha(ConstantColor, v29 * Alpha);
        CGColorRelease(ConstantColor);
        ConstantColor = CopyWithAlpha;
LABEL_53:
        v16 = [[CUIDesignColor alloc] initWithColor:ConstantColor blendMode:v26 displayGamut:0];
        CGColorRelease(ConstantColor);
        *v14 = v16;
        goto LABEL_54;
      }

      v30 = a6 == 1 && a3 == 2;
      v31 = 0.3;
    }

    if (v30)
    {
      v29 = v31;
    }

    goto LABEL_52;
  }

  if (a7)
  {
    *a7 = [NSError errorWithDomain:NSCocoaErrorDomain code:260 userInfo:[NSDictionary dictionaryWithObjectsAndKeys:[NSString stringWithFormat:@"The requested color, %@, could not be found in the %@ CUIDesignLibrary catalog.", v22, self->_assetStoreName], NSLocalizedDescriptionKey, 0]];
  }

  *v14 = kCFNull;
  os_unfair_lock_unlock(&self->_lock);
  kdebug_trace();
  return 0;
}

- (id)shapeEffectPresetWithName:(id)a3 error:(id *)a4
{
  v7 = _LookupStructuredThemeProvider(self->_storageRef, a2);
  v8 = [v7 renditionKeyForName:a3];
  _CUILog(3, "[CUIDesignLibraryCatalog shapeEffectPresetWithName:%@]", v9, v10, v11, v12, v13, v14, a3);
  CUIRenditionKeyValueForAttribute(v8, 17);
  kdebug_trace();
  if (!v8)
  {
    goto LABEL_5;
  }

  v15 = [CUIRenditionKey renditionKeyWithKeyList:v8];
  [(CUIRenditionKey *)v15 setThemeScale:1];
  [(CUIRenditionKey *)v15 setThemeState:0];
  [(CUIRenditionKey *)v15 setThemePresentationState:0];
  [(CUIRenditionKey *)v15 setThemeValue:0];
  [(CUIRenditionKey *)v15 setThemeDimension1:0];
  [(CUIRenditionKey *)v15 setThemeAppearance:0];
  v16 = [v7 renditionWithKey:{-[CUIRenditionKey keyList](v15, "keyList")}];
  v17 = v16;
  if (v16)
  {
    if ([v16 type] == 7)
    {
      v17 = [v17 effectPreset];
      goto LABEL_6;
    }

LABEL_5:
    v17 = 0;
  }

LABEL_6:
  if (a4 && !v17)
  {
    *a4 = [NSError errorWithDomain:NSCocoaErrorDomain code:260 userInfo:[NSDictionary dictionaryWithObjectsAndKeys:[NSString stringWithFormat:@"The requested effect preset, %@, could not be found in the %@ CUIDesignLibrary catalog.", a3, self->_assetStoreName], NSLocalizedDescriptionKey, 0]];
  }

  kdebug_trace();
  return v17;
}

@end