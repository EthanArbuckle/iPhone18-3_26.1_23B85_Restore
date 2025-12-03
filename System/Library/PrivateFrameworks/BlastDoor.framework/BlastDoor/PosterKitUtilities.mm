@interface PosterKitUtilities
+ (BOOL)saveCompoundLayerStack:(id)stack toWallpaperURL:(id)l error:(id *)error;
+ (BOOL)storeConfiguredPropertiesForPath:(id)path configuredProperties:(id)properties error:(id *)error;
+ (id)archiver;
+ (id)configurationIdentityWithProvider:(id)provider identifier:(id)identifier posterUUID:(id)d version:(unint64_t)version supplement:(unint64_t)supplement role:(int64_t)role;
+ (id)configurationWithPath:(id)path;
+ (id)configuredPropertiesWithTitleStyleConfiguration:(id)configuration renderingConfiguration:(id)renderingConfiguration;
+ (id)discreteColorsContentStyleForColors:(id)colors vibrant:(BOOL)vibrant supportsVariation:(BOOL)variation variation:(double)a6;
+ (id)gradientContentStyleForColors:(id)colors gradientType:(unint64_t)type locations:(id)locations startPoint:(CGPoint)point endPoint:(CGPoint)endPoint;
+ (id)loadConfiguredPropertiesFromPosterConfiguration:(id)configuration error:(id *)error;
+ (id)posterColorWithColor:(CGColor *)color preferredStyle:(unint64_t)style localizedName:(id)name;
+ (id)serverPathWithProviderURL:(id)l identity:(id)identity;
+ (id)vibrantMaterialContentStyle;
+ (id)vibrantMonochromeContentStyle;
@end

@implementation PosterKitUtilities

+ (id)archiver
{
  v12 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2050000000;
  v2 = getPRSPosterArchiverClass_softClass;
  v11 = getPRSPosterArchiverClass_softClass;
  if (!getPRSPosterArchiverClass_softClass)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __getPRSPosterArchiverClass_block_invoke;
    v7[3] = &unk_2781764E8;
    v7[4] = &v8;
    __getPRSPosterArchiverClass_block_invoke(v7);
    v2 = v9[3];
  }

  v3 = v2;
  _Block_object_dispose(&v8, 8);
  v4 = [[v2 alloc] init];
  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)posterColorWithColor:(CGColor *)color preferredStyle:(unint64_t)style localizedName:(id)name
{
  v20 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2050000000;
  v8 = getPRPosterColorClass_softClass;
  v19 = getPRPosterColorClass_softClass;
  if (!getPRPosterColorClass_softClass)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __getPRPosterColorClass_block_invoke;
    v15[3] = &unk_2781764E8;
    v15[4] = &v16;
    __getPRPosterColorClass_block_invoke(v15);
    v8 = v17[3];
  }

  v9 = v8;
  _Block_object_dispose(&v16, 8);
  v10 = [v8 alloc];
  v11 = [objc_alloc(getUIColorClass()) initWithCGColor:color];
  v12 = [v10 initWithColor:v11 preferredStyle:style localizedName:nameCopy];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)configuredPropertiesWithTitleStyleConfiguration:(id)configuration renderingConfiguration:(id)renderingConfiguration
{
  v17 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  renderingConfigurationCopy = renderingConfiguration;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2050000000;
  v7 = getPRPosterConfiguredPropertiesClass_softClass;
  v16 = getPRPosterConfiguredPropertiesClass_softClass;
  if (!getPRPosterConfiguredPropertiesClass_softClass)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __getPRPosterConfiguredPropertiesClass_block_invoke;
    v12[3] = &unk_2781764E8;
    v12[4] = &v13;
    __getPRPosterConfiguredPropertiesClass_block_invoke(v12);
    v7 = v14[3];
  }

  v8 = v7;
  _Block_object_dispose(&v13, 8);
  v9 = [[v7 alloc] initWithTitleStyleConfiguration:configurationCopy focusConfiguration:0 complicationLayout:0 renderingConfiguration:renderingConfigurationCopy homeScreenConfiguration:0 colorVariationsConfiguration:0 quickActionsConfiguration:0 suggestionMetadata:0 otherMetadata:0 userInfo:0];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (BOOL)storeConfiguredPropertiesForPath:(id)path configuredProperties:(id)properties error:(id *)error
{
  v19 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  propertiesCopy = properties;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v9 = getPRPosterPathUtilitiesClass_softClass;
  v18 = getPRPosterPathUtilitiesClass_softClass;
  if (!getPRPosterPathUtilitiesClass_softClass)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __getPRPosterPathUtilitiesClass_block_invoke;
    v14[3] = &unk_2781764E8;
    v14[4] = &v15;
    __getPRPosterPathUtilitiesClass_block_invoke(v14);
    v9 = v16[3];
  }

  v10 = v9;
  _Block_object_dispose(&v15, 8);
  v11 = [v9 storeConfiguredPropertiesForPath:pathCopy configuredProperties:propertiesCopy error:error];

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

+ (id)loadConfiguredPropertiesFromPosterConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  PosterKitLibrary();
  v6 = [configurationCopy pr_loadConfiguredPropertiesWithError:error];

  return v6;
}

+ (id)discreteColorsContentStyleForColors:(id)colors vibrant:(BOOL)vibrant supportsVariation:(BOOL)variation variation:(double)a6
{
  variationCopy = variation;
  vibrantCopy = vibrant;
  v23 = *MEMORY[0x277D85DE8];
  v9 = MEMORY[0x277CBEB18];
  colorsCopy = colors;
  v11 = [[v9 alloc] initWithCapacity:{objc_msgSend(colorsCopy, "count")}];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __94__PosterKitUtilities_discreteColorsContentStyleForColors_vibrant_supportsVariation_variation___block_invoke;
  v21 = &unk_2781764C0;
  v22 = v11;
  v12 = v11;
  [colorsCopy enumerateObjectsUsingBlock:&v18];

  v13 = objc_alloc(getPRPosterContentDiscreteColorsStyleClass());
  if (vibrantCopy && variationCopy)
  {
    v14 = [v13 initWithVibrantColors:v12 variation:{a6, v18, v19, v20, v21, v22, v23}];
  }

  else if (variationCopy || !vibrantCopy)
  {
    v14 = [v13 initWithOpaqueColors:v12 variation:{a6, v18, v19, v20, v21, v22, v23}];
  }

  else
  {
    v14 = [v13 initWithVibrantColors:{v12, v18, v19, v20, v21, v22, v23}];
  }

  v15 = v14;

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

void __94__PosterKitUtilities_discreteColorsContentStyleForColors_vibrant_supportsVariation_variation___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [objc_alloc(getUIColorClass()) initWithCGColor:v3];

  [v2 addObject:v4];
}

+ (id)gradientContentStyleForColors:(id)colors gradientType:(unint64_t)type locations:(id)locations startPoint:(CGPoint)point endPoint:(CGPoint)endPoint
{
  y = endPoint.y;
  x = endPoint.x;
  v9 = point.y;
  v10 = point.x;
  v29 = *MEMORY[0x277D85DE8];
  colorsCopy = colors;
  locationsCopy = locations;
  v15 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(colorsCopy, "count")}];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __95__PosterKitUtilities_gradientContentStyleForColors_gradientType_locations_startPoint_endPoint___block_invoke;
  v22[3] = &unk_2781764C0;
  v16 = v15;
  v23 = v16;
  [colorsCopy enumerateObjectsUsingBlock:v22];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2050000000;
  v17 = getPRPosterContentGradientStyleClass_softClass;
  v28 = getPRPosterContentGradientStyleClass_softClass;
  if (!getPRPosterContentGradientStyleClass_softClass)
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __getPRPosterContentGradientStyleClass_block_invoke;
    v24[3] = &unk_2781764E8;
    v24[4] = &v25;
    __getPRPosterContentGradientStyleClass_block_invoke(v24);
    v17 = v26[3];
  }

  v18 = v17;
  _Block_object_dispose(&v25, 8);
  v19 = [[v17 alloc] initWithColors:v16 gradientType:type locations:locationsCopy startPoint:v10 endPoint:{v9, x, y}];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

void __95__PosterKitUtilities_gradientContentStyleForColors_gradientType_locations_startPoint_endPoint___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [objc_alloc(getUIColorClass()) initWithCGColor:v3];

  [v2 addObject:v4];
}

+ (id)vibrantMaterialContentStyle
{
  v12 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2050000000;
  v2 = getPRPosterContentVibrantMaterialStyleClass_softClass;
  v11 = getPRPosterContentVibrantMaterialStyleClass_softClass;
  if (!getPRPosterContentVibrantMaterialStyleClass_softClass)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __getPRPosterContentVibrantMaterialStyleClass_block_invoke;
    v7[3] = &unk_2781764E8;
    v7[4] = &v8;
    __getPRPosterContentVibrantMaterialStyleClass_block_invoke(v7);
    v2 = v9[3];
  }

  v3 = v2;
  _Block_object_dispose(&v8, 8);
  v4 = objc_alloc_init(v2);
  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)vibrantMonochromeContentStyle
{
  v12 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2050000000;
  v2 = getPRPosterContentVibrantMonochromeStyleClass_softClass;
  v11 = getPRPosterContentVibrantMonochromeStyleClass_softClass;
  if (!getPRPosterContentVibrantMonochromeStyleClass_softClass)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __getPRPosterContentVibrantMonochromeStyleClass_block_invoke;
    v7[3] = &unk_2781764E8;
    v7[4] = &v8;
    __getPRPosterContentVibrantMonochromeStyleClass_block_invoke(v7);
    v2 = v9[3];
  }

  v3 = v2;
  _Block_object_dispose(&v8, 8);
  v4 = objc_alloc_init(v2);
  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (BOOL)saveCompoundLayerStack:(id)stack toWallpaperURL:(id)l error:(id *)error
{
  v19 = *MEMORY[0x277D85DE8];
  stackCopy = stack;
  lCopy = l;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v9 = getPISegmentationLoaderClass_softClass;
  v18 = getPISegmentationLoaderClass_softClass;
  if (!getPISegmentationLoaderClass_softClass)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __getPISegmentationLoaderClass_block_invoke;
    v14[3] = &unk_2781764E8;
    v14[4] = &v15;
    __getPISegmentationLoaderClass_block_invoke(v14);
    v9 = v16[3];
  }

  v10 = v9;
  _Block_object_dispose(&v15, 8);
  v11 = [v9 saveSegmentationItem:0 compoundLayerStack:stackCopy style:0 toWallpaperURL:lCopy error:error];

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

+ (id)configurationIdentityWithProvider:(id)provider identifier:(id)identifier posterUUID:(id)d version:(unint64_t)version supplement:(unint64_t)supplement role:(int64_t)role
{
  v34 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  identifierCopy = identifier;
  dCopy = d;
  if (role == 1)
  {
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v16 = getPFPosterRoleBackdropSymbolLoc_ptr;
    v33 = getPFPosterRoleBackdropSymbolLoc_ptr;
    if (!getPFPosterRoleBackdropSymbolLoc_ptr)
    {
      v25 = MEMORY[0x277D85DD0];
      v26 = 3221225472;
      v27 = __getPFPosterRoleBackdropSymbolLoc_block_invoke;
      v28 = &unk_2781764E8;
      v29 = &v30;
      v18 = PosterFoundationLibrary();
      v31[3] = dlsym(v18, "PFPosterRoleBackdrop");
      getPFPosterRoleBackdropSymbolLoc_ptr = *(v29[1] + 24);
      v16 = v31[3];
    }

    _Block_object_dispose(&v30, 8);
    if (!v16)
    {
      +[PosterKitUtilities configurationIdentityWithProvider:identifier:posterUUID:version:supplement:role:];
    }

    goto LABEL_10;
  }

  if (!role)
  {
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v16 = getPFPosterRoleIncomingCallSymbolLoc_ptr;
    v33 = getPFPosterRoleIncomingCallSymbolLoc_ptr;
    if (!getPFPosterRoleIncomingCallSymbolLoc_ptr)
    {
      v25 = MEMORY[0x277D85DD0];
      v26 = 3221225472;
      v27 = __getPFPosterRoleIncomingCallSymbolLoc_block_invoke;
      v28 = &unk_2781764E8;
      v29 = &v30;
      v17 = PosterFoundationLibrary();
      v31[3] = dlsym(v17, "PFPosterRoleIncomingCall");
      getPFPosterRoleIncomingCallSymbolLoc_ptr = *(v29[1] + 24);
      v16 = v31[3];
    }

    _Block_object_dispose(&v30, 8);
    if (!v16)
    {
      +[PosterKitUtilities configurationIdentityWithProvider:identifier:posterUUID:version:supplement:role:];
    }

LABEL_10:
    v19 = *v16;
    goto LABEL_12;
  }

  v19 = 0;
LABEL_12:
  v30 = 0;
  v31 = &v30;
  v32 = 0x2050000000;
  v20 = getPFServerPosterIdentityClass_softClass;
  v33 = getPFServerPosterIdentityClass_softClass;
  if (!getPFServerPosterIdentityClass_softClass)
  {
    v25 = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = __getPFServerPosterIdentityClass_block_invoke;
    v28 = &unk_2781764E8;
    v29 = &v30;
    __getPFServerPosterIdentityClass_block_invoke(&v25);
    v20 = v31[3];
  }

  v21 = v20;
  _Block_object_dispose(&v30, 8);
  v22 = [v20 configurationIdentityWithProvider:providerCopy identifier:identifierCopy role:v19 posterUUID:dCopy version:version supplement:supplement];

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

+ (id)serverPathWithProviderURL:(id)l identity:(id)identity
{
  v17 = *MEMORY[0x277D85DE8];
  lCopy = l;
  identityCopy = identity;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2050000000;
  v7 = getPFServerPosterPathClass_softClass;
  v16 = getPFServerPosterPathClass_softClass;
  if (!getPFServerPosterPathClass_softClass)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __getPFServerPosterPathClass_block_invoke;
    v12[3] = &unk_2781764E8;
    v12[4] = &v13;
    __getPFServerPosterPathClass_block_invoke(v12);
    v7 = v14[3];
  }

  v8 = v7;
  _Block_object_dispose(&v13, 8);
  v9 = [v7 pathWithProviderURL:lCopy identity:identityCopy];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)configurationWithPath:(id)path
{
  v14 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2050000000;
  v4 = getPRSPosterConfigurationClass_softClass;
  v13 = getPRSPosterConfigurationClass_softClass;
  if (!getPRSPosterConfigurationClass_softClass)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __getPRSPosterConfigurationClass_block_invoke;
    v9[3] = &unk_2781764E8;
    v9[4] = &v10;
    __getPRSPosterConfigurationClass_block_invoke(v9);
    v4 = v11[3];
  }

  v5 = v4;
  _Block_object_dispose(&v10, 8);
  v6 = [[v4 alloc] initWithPath:pathCopy];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (void)configurationIdentityWithProvider:identifier:posterUUID:version:supplement:role:.cold.1()
{
  dlerror();
  abort_report_np();
  __getPRSPosterArchiverClass_block_invoke_cold_1();
}

@end