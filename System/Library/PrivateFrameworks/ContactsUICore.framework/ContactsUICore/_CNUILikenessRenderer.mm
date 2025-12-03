@interface _CNUILikenessRenderer
+ (CGImage)cgImageForLikenessProvider:(id)provider pointSize:(CGSize)size scale:(double)scale style:(unint64_t)style alwaysUsePointSize:(BOOL)pointSize;
+ (CGImage)cgImageForLikenessProvider:(id)provider scope:(id)scope alwaysUsePointSize:(BOOL)size;
+ (id)renderedLikenessesForProviders:(id)providers likenessBadgeProviders:(id)badgeProviders scope:(id)scope;
- (_CNUILikenessRenderer)initWithLikenessResolver:(id)resolver schedulerProvider:(id)provider;
- (id)likenessProvidersForBadges:(id)badges;
- (id)likenessProvidersForBadges:(id)badges workScheduler:(id)scheduler;
- (id)likenessProvidersForContacts:(id)contacts likenessResolverOptions:(id)options workScheduler:(id)scheduler;
- (id)loadingPlaceholderForContactCount:(unint64_t)count scope:(id)scope;
- (id)renderedBasicMonogramForString:(id)string color:(id)color scope:(id)scope prohibitedSources:(int64_t)sources;
- (id)renderedBasicMonogramFromString:(id)string scope:(id)scope;
- (id)renderedLikenessForBadge:(id)badge scope:(id)scope workScheduler:(id)scheduler;
- (id)renderedLikenessForBadgeProvider:(id)provider scope:(id)scope;
- (id)renderedLikenessesForContacts:(id)contacts withBadges:(id)badges scope:(id)scope workScheduler:(id)scheduler;
- (id)renderedLikenessesForLikenessProviders:(id)providers badges:(id)badges scope:(id)scope likenessFingerprint:(id)fingerprint;
- (id)renderedLoadingPlaceholderForContactCount:(unint64_t)count provider:(id)provider scope:(id)scope;
@end

@implementation _CNUILikenessRenderer

- (_CNUILikenessRenderer)initWithLikenessResolver:(id)resolver schedulerProvider:(id)provider
{
  resolverCopy = resolver;
  providerCopy = provider;
  v13.receiver = self;
  v13.super_class = _CNUILikenessRenderer;
  v9 = [(_CNUILikenessRenderer *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_likenessResolver, resolver);
    objc_storeStrong(&v10->_schedulerProvider, provider);
    v11 = v10;
  }

  return v10;
}

- (id)renderedLikenessForBadge:(id)badge scope:(id)scope workScheduler:(id)scheduler
{
  v17 = *MEMORY[0x1E69E9840];
  badgeCopy = badge;
  v8 = MEMORY[0x1E695DEC8];
  schedulerCopy = scheduler;
  scopeCopy = scope;
  badgeCopy2 = badge;
  v12 = [v8 arrayWithObjects:&badgeCopy count:1];

  v13 = [(_CNUILikenessRenderer *)self likenessProvidersForBadges:v12 workScheduler:schedulerCopy, badgeCopy, v17];

  v14 = [(_CNUILikenessRenderer *)self renderedLikenessForBadgeProvider:v13 scope:scopeCopy];

  return v14;
}

- (id)renderedLikenessesForContacts:(id)contacts withBadges:(id)badges scope:(id)scope workScheduler:(id)scheduler
{
  v34 = *MEMORY[0x1E69E9840];
  scopeCopy = scope;
  schedulerCopy = scheduler;
  badgesCopy = badges;
  contactsCopy = contacts;
  color = [scopeCopy color];
  if (color)
  {
    v15 = [CNUIPRLikenessResolverOptions alloc];
    color2 = [scopeCopy color];
    v17 = [(CNUIPRLikenessResolverOptions *)v15 initWithMonogramColor:color2];
  }

  else
  {
    v17 = 0;
  }

  v18 = [CNUILikenessFingerprint publicFingerprintForContacts:contactsCopy scope:scopeCopy];
  v19 = [(_CNUILikenessRenderer *)self likenessProvidersForContacts:contactsCopy likenessResolverOptions:v17 workScheduler:schedulerCopy];

  v20 = [(_CNUILikenessRenderer *)self renderedLikenessesForLikenessProviders:v19 badges:badgesCopy scope:scopeCopy likenessFingerprint:v18];

  v21 = [contactsCopy count];
  v22 = +[CNUICoreLogProvider likenesses_os_log];
  v23 = v22;
  if (v21 < 2)
  {
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      [scopeCopy pointSize];
      v25 = v24;
      [scopeCopy pointSize];
      v28 = 134218498;
      v29 = v25;
      v30 = 2048;
      v31 = v26;
      v32 = 2114;
      v33 = v18;
      _os_log_impl(&dword_1A31E6000, v23, OS_LOG_TYPE_INFO, "[LikenessRenderer] New request for  rendered likeness {%.2f, %.2f} for: %{public}@", &v28, 0x20u);
    }
  }

  else if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    [_CNUILikenessRenderer renderedLikenessesForContacts:v18 withBadges:v23 scope:? workScheduler:?];
  }

  return v20;
}

- (id)likenessProvidersForContacts:(id)contacts likenessResolverOptions:(id)options workScheduler:(id)scheduler
{
  optionsCopy = options;
  schedulerCopy = scheduler;
  contactsCopy = contacts;
  v11 = [contactsCopy _cn_take:{+[CNUIPRLikenessResolver maxContacts](CNUIPRLikenessResolver, "maxContacts")}];

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __92___CNUILikenessRenderer_likenessProvidersForContacts_likenessResolverOptions_workScheduler___block_invoke;
  v19[3] = &unk_1E76E7BD8;
  v19[4] = self;
  v20 = optionsCopy;
  v21 = schedulerCopy;
  v12 = schedulerCopy;
  v13 = optionsCopy;
  v14 = [v11 _cn_map:v19];

  v15 = MEMORY[0x1E6996798];
  schedulerProvider = [(_CNUILikenessRenderer *)self schedulerProvider];
  v17 = [v15 combineLatest:v14 resultScheduler:v12 schedulerProvider:schedulerProvider];

  return v17;
}

- (id)likenessProvidersForBadges:(id)badges workScheduler:(id)scheduler
{
  schedulerCopy = scheduler;
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __66___CNUILikenessRenderer_likenessProvidersForBadges_workScheduler___block_invoke;
  v18 = &unk_1E76E7C00;
  selfCopy = self;
  v20 = schedulerCopy;
  v7 = schedulerCopy;
  v8 = [badges _cn_map:&v15];
  v9 = MEMORY[0x1E6996798];
  v10 = [(_CNUILikenessRenderer *)self schedulerProvider:v15];
  v11 = [v9 combineLatest:v8 resultScheduler:v7 schedulerProvider:v10];
  v12 = [MEMORY[0x1E6996798] observableWithResult:MEMORY[0x1E695E0F0]];
  v13 = [v11 onEmpty:v12];

  return v13;
}

- (id)likenessProvidersForBadges:(id)badges
{
  badgesCopy = badges;
  if ((*(*MEMORY[0x1E6996530] + 16))())
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v4 = [badgesCopy _cn_map:&__block_literal_global_3];
  }

  return v4;
}

- (id)renderedLikenessesForLikenessProviders:(id)providers badges:(id)badges scope:(id)scope likenessFingerprint:(id)fingerprint
{
  badgesCopy = badges;
  scopeCopy = scope;
  fingerprintCopy = fingerprint;
  providersCopy = providers;
  v14 = objc_opt_class();
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __97___CNUILikenessRenderer_renderedLikenessesForLikenessProviders_badges_scope_likenessFingerprint___block_invoke;
  v20[3] = &unk_1E76E7C48;
  v24 = scopeCopy;
  v25 = v14;
  v21 = fingerprintCopy;
  selfCopy = self;
  v23 = badgesCopy;
  v15 = scopeCopy;
  v16 = badgesCopy;
  v17 = fingerprintCopy;
  v18 = [providersCopy map:v20];

  return v18;
}

- (id)renderedLikenessForBadgeProvider:(id)provider scope:(id)scope
{
  scopeCopy = scope;
  providerCopy = provider;
  v7 = objc_opt_class();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __64___CNUILikenessRenderer_renderedLikenessForBadgeProvider_scope___block_invoke;
  v11[3] = &unk_1E76E7C70;
  v12 = scopeCopy;
  v13 = v7;
  v8 = scopeCopy;
  v9 = [providerCopy map:v11];

  return v9;
}

- (id)loadingPlaceholderForContactCount:(unint64_t)count scope:(id)scope
{
  scopeCopy = scope;
  v7 = +[CNUIPRLikenessResolver maxContacts];
  if (v7 >= count)
  {
    countCopy = count;
  }

  else
  {
    countCopy = v7;
  }

  v9 = scopeCopy;
  [v9 pointSize];
  if (countCopy <= 1)
  {
    v11 = 27.0;
    if (v10 >= 40.0)
    {
      v11 = dbl_1A34D91F0[v10 < 60.0];
    }
  }

  else
  {
    v11 = 45.0;
  }

  [v9 pointSize];
  if (v11 == v12)
  {
    v13 = v9;
  }

  else
  {
    [v9 scale];
    v15 = v14;
    [v9 strokeWidth];
    v17 = v16;
    strokeColor = [v9 strokeColor];
    rightToLeft = [v9 rightToLeft];
    style = [v9 style];
    backgroundStyle = [v9 backgroundStyle];
    color = [v9 color];
    maskedAvatarIndices = [v9 maskedAvatarIndices];
    v13 = [CNUILikenessRenderingScope renderingScopeWithPointSize:strokeColor scale:rightToLeft strokeWidth:style strokeColor:backgroundStyle rightToLeft:color style:maskedAvatarIndices backgroundStyle:v11 color:v11 maskedAvatarIndices:v15, v17];
  }

  v24 = MEMORY[0x1E696AEC0];
  v25 = v13;
  if ([v25 style] == 1)
  {
    v26 = @"RR_";
  }

  else
  {
    v26 = &stru_1F162C170;
  }

  [v25 pointSize];
  v28 = v27;
  if (countCopy < 2)
  {

    [v24 stringWithFormat:@"LoadingPlaceholder_%@%.2f%@", v26, v28, &stru_1F162C170, v35];
  }

  else
  {
    rightToLeft2 = [v25 rightToLeft];

    v30 = @"_RTL";
    if (!rightToLeft2)
    {
      v30 = &stru_1F162C170;
    }

    [v24 stringWithFormat:@"LoadingPlaceholderGroup_%@%.2f%@%@", v26, v28, v30, &stru_1F162C170];
  }
  v31 = ;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __65___CNUILikenessRenderer_loadingPlaceholderForContactCount_scope___block_invoke;
  v36[3] = &unk_1E76E7C98;
  v37 = v9;
  v38 = countCopy;
  v36[4] = self;
  v32 = v9;
  v33 = [CNUIImageProvider imageForResource:v31 template:0 onCacheMiss:v36];

  return v33;
}

- (id)renderedBasicMonogramFromString:(id)string scope:(id)scope
{
  scopeCopy = scope;
  stringCopy = string;
  v8 = objc_opt_class();
  likenessResolver = [(_CNUILikenessRenderer *)self likenessResolver];
  color = [scopeCopy color];
  v11 = [likenessResolver basicMonogramObservableFromString:stringCopy color:color];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __63___CNUILikenessRenderer_renderedBasicMonogramFromString_scope___block_invoke;
  v15[3] = &unk_1E76E7CC0;
  v16 = scopeCopy;
  v17 = v8;
  v12 = scopeCopy;
  v13 = [v11 map:v15];

  return v13;
}

- (id)renderedBasicMonogramForString:(id)string color:(id)color scope:(id)scope prohibitedSources:(int64_t)sources
{
  sourcesCopy = sources;
  v57[1] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  colorCopy = color;
  scopeCopy = scope;
  if ((*(*MEMORY[0x1E6996568] + 16))())
  {
    goto LABEL_10;
  }

  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v15 = [featureFlags isFeatureEnabled:6];

  if (v15)
  {
    if (colorCopy)
    {
      monogram = [(objc_class *)getPRMonogramClass() monogram];
      [monogram setText:stringCopy];
      [monogram setMonogramColor:colorCopy];
      PRLikenessClass = getPRLikenessClass();
      dataRepresentation = [monogram dataRepresentation];
      v19 = [(objc_class *)PRLikenessClass monogramWithRecipe:dataRepresentation staticRepresentation:0];

      v20 = [[CNUIPRLikenessProvider alloc] initWithPRLikeness:v19];
      v21 = objc_opt_class();
      v57[0] = v20;
      v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:1];
      v23 = [v21 renderedLikenessesForProviders:v22 likenessBadgeProviders:MEMORY[0x1E695E0F0] scope:scopeCopy];
    }

    else
    {
      monogram = objc_alloc_init(MEMORY[0x1E695CF18]);
      [monogram setGivenName:stringCopy];
      v56 = monogram;
      v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v56 count:1];
      schedulerProvider = [(_CNUILikenessRenderer *)self schedulerProvider];
      immediateScheduler = [schedulerProvider immediateScheduler];
      v19 = [(_CNUILikenessRenderer *)self renderedLikenessesForContacts:v29 scope:scopeCopy workScheduler:immediateScheduler];

      v49 = 0;
      v50 = &v49;
      v51 = 0x3032000000;
      v52 = __Block_byref_object_copy_;
      v53 = __Block_byref_object_dispose_;
      v54 = 0;
      v32 = dispatch_semaphore_create(0);
      v33 = MEMORY[0x1E69967A0];
      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = __86___CNUILikenessRenderer_renderedBasicMonogramForString_color_scope_prohibitedSources___block_invoke;
      v48[3] = &unk_1E76E7CE8;
      v48[4] = &v49;
      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v46[2] = __86___CNUILikenessRenderer_renderedBasicMonogramForString_color_scope_prohibitedSources___block_invoke_2;
      v46[3] = &unk_1E76E7D10;
      v47 = v32;
      v41 = MEMORY[0x1E69E9820];
      v42 = 3221225472;
      v43 = __86___CNUILikenessRenderer_renderedBasicMonogramForString_color_scope_prohibitedSources___block_invoke_3;
      v44 = &unk_1E76E7970;
      v34 = v47;
      v45 = v34;
      v35 = [v33 observerWithResultBlock:v48 completionBlock:v46 failureBlock:&v41];
      v36 = [v19 subscribe:{v35, v41, v42, v43, v44}];

      dispatch_semaphore_wait(v34, 0xFFFFFFFFFFFFFFFFLL);
      v23 = v50[5];

      _Block_object_dispose(&v49, 8);
    }
  }

  else
  {
    monogram = [(objc_class *)getPRMonogramClass() monogram];
    [monogram setText:stringCopy];
    if (colorCopy)
    {
      [monogram setMonogramColor:colorCopy];
    }

    v24 = getPRLikenessClass();
    dataRepresentation2 = [monogram dataRepresentation];
    v19 = [(objc_class *)v24 monogramWithRecipe:dataRepresentation2 staticRepresentation:0];

    v26 = [[CNUIPRLikenessProvider alloc] initWithPRLikeness:v19];
    v27 = objc_opt_class();
    v55 = v26;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v55 count:1];
    v23 = [v27 renderedLikenessesForProviders:v28 likenessBadgeProviders:MEMORY[0x1E695E0F0] scope:scopeCopy];
  }

  if (!v23)
  {
LABEL_10:
    if ((sourcesCopy & 4) != 0)
    {
      v23 = 0;
    }

    else
    {
      likenessResolver = [(_CNUILikenessRenderer *)self likenessResolver];
      placeholderProviderFactory = [likenessResolver placeholderProviderFactory];
      placeholderProvider = [placeholderProviderFactory placeholderProvider];

      v23 = [(_CNUILikenessRenderer *)self renderedLoadingPlaceholderForContactCount:1 provider:placeholderProvider scope:scopeCopy];
    }
  }

  return v23;
}

- (id)renderedLoadingPlaceholderForContactCount:(unint64_t)count provider:(id)provider scope:(id)scope
{
  providerCopy = provider;
  scopeCopy = scope;
  if (count <= 1)
  {
    countCopy = 1;
  }

  else
  {
    countCopy = count;
  }

  if (count >= 2 && +[CNUISnowglobeUtilities enableGroupPhoto])
  {
    countCopy = 1;
  }

  v10 = [MEMORY[0x1E695DEC8] _cn_arrayWithObject:providerCopy count:countCopy];
  v11 = [objc_opt_class() renderedLikenessesForProviders:v10 likenessBadgeProviders:MEMORY[0x1E695E0F0] scope:scopeCopy];

  return v11;
}

+ (id)renderedLikenessesForProviders:(id)providers likenessBadgeProviders:(id)badgeProviders scope:(id)scope
{
  v64 = *MEMORY[0x1E69E9840];
  providersCopy = providers;
  badgeProvidersCopy = badgeProviders;
  scopeCopy = scope;
  v10 = [providersCopy count];
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v56 - v12);
  if (v11 >= 0x200)
  {
    v14 = 512;
  }

  else
  {
    v14 = v11;
  }

  bzero(&v56 - v12, v14);
  v62.origin = *MEMORY[0x1E695F058];
  [scopeCopy pointSize];
  v16 = v15;
  v18 = v17;
  v62.size.width = v15;
  v62.size.height = v17;
  if (v10)
  {
    if (v10 == 1 && (*(*MEMORY[0x1E6996530] + 16))())
    {
      v19 = [providersCopy objectAtIndexedSubscript:0];
      *v13 = [self cgImageForLikenessProvider:v19 scope:scopeCopy alwaysUsePointSize:1];

      v20 = scopeCopy;
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      [v20 scale];
      v23 = v22;
      [v20 pointSize];
      v25 = v24;
      v27 = v26;
      CGAffineTransformMakeScale(&v63, v23, v23);
      v28 = CNUIBitmapContextCreate(llround(v27 * v63.c + v63.a * v25), llround(v27 * v63.d + v63.b * v25), DeviceRGB);
      style = [v20 style];
      if (style)
      {
        if (style == 1)
        {
          [v20 strokeWidth];
          CNUIDrawRoundedRectImagesInRects(v28, [v20 strokeColor], 1, v13, &v62, v23, v30);
        }
      }

      else
      {
        [v20 strokeWidth];
        CNUIDrawCircularImagesInRects(v28, [v20 strokeColor], 1, v13, &v62, v23, v55);
      }

      Image = CGBitmapContextCreateImage(v28);
      CGColorSpaceRelease(DeviceRGB);
      CGContextRelease(v28);
      if (Image)
      {
        Image = CFAutorelease(Image);
      }

      goto LABEL_27;
    }

    v59 = &v56;
    [CNUISnowglobeUtilities sizeForImageAtIndex:0 inRect:2 forItemCount:scopeCopy scope:*&v62.origin, v16, v18];
    v32 = v31;
    v34 = v33;
    for (i = 0; i != v10; ++i)
    {
      v36 = [providersCopy objectAtIndexedSubscript:i];
      [scopeCopy scale];
      v13[i] = [self cgImageForLikenessProvider:v36 pointSize:objc_msgSend(scopeCopy scale:"style") style:1 alwaysUsePointSize:{v32, v34, v37}];
    }

    v57 = v10;
    v58 = v13;
    v60 = providersCopy;
  }

  else
  {
    v57 = 0;
    v58 = v13;
    v59 = &v56;
    v60 = providersCopy;
    v32 = *MEMORY[0x1E695F060];
    v34 = *(MEMORY[0x1E695F060] + 8);
  }

  v38 = [badgeProvidersCopy count];
  v56 = &v56;
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v56 - v40;
  if (v39 >= 0x200)
  {
    v42 = 512;
  }

  else
  {
    v42 = v39;
  }

  bzero(&v56 - v40, v42);
  v43 = [MEMORY[0x1E695DF70] arrayWithCapacity:v38];
  if (v38)
  {
    for (j = 0; j != v38; ++j)
    {
      v45 = [badgeProvidersCopy objectAtIndexedSubscript:j];
      [scopeCopy scale];
      *&v41[8 * j] = [self cgImageForLikenessProvider:v45 pointSize:objc_msgSend(scopeCopy scale:"style") style:1 alwaysUsePointSize:{v32, v34, v46}];
      v47 = v45;
      if ([v47 conformsToProtocol:&unk_1F16552A0])
      {
        v48 = v47;
      }

      else
      {
        v48 = 0;
      }

      v49 = v48;

      if (v49)
      {
        v50 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v49, "badgeType")}];
        [v43 addObject:v50];
      }

      else
      {
        [v43 addObject:&unk_1F1645CB8];
      }
    }
  }

  Image = [CNUISnowglobeUtilities imageForAvatarImages:v58 badgeImages:v41 badgeTypes:v43 rect:v57 itemCount:scopeCopy scope:*&v62.origin, v16, v18];

  providersCopy = v60;
LABEL_27:
  CGImageGetWidth(Image);
  CGImageGetHeight(Image);
  [scopeCopy scale];
  v53 = [NSClassFromString(&cfstr_Uiimage.isa) imageWithCGImage:Image scale:0 orientation:v52];

  return v53;
}

+ (CGImage)cgImageForLikenessProvider:(id)provider scope:(id)scope alwaysUsePointSize:(BOOL)size
{
  sizeCopy = size;
  providerCopy = provider;
  scopeCopy = scope;
  if (sizeCopy && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v10 = [providerCopy _cnui_imageForScope:scopeCopy];
  }

  else
  {
    [scopeCopy pointSize];
    v12 = v11;
    v14 = v13;
    [scopeCopy scale];
    v10 = [self cgImageForLikenessProvider:providerCopy pointSize:objc_msgSend(scopeCopy scale:"style") style:sizeCopy alwaysUsePointSize:{v12, v14, v15}];
  }

  v16 = v10;

  return v16;
}

+ (CGImage)cgImageForLikenessProvider:(id)provider pointSize:(CGSize)size scale:(double)scale style:(unint64_t)style alwaysUsePointSize:(BOOL)pointSize
{
  pointSizeCopy = pointSize;
  height = size.height;
  width = size.width;
  providerCopy = provider;
  if (pointSizeCopy && (objc_opt_respondsToSelector() & 1) != 0)
  {
    _cnui_image = [providerCopy _cnui_imageForSize:width scale:{height, scale}];
LABEL_6:
    v14 = _cnui_image;
    goto LABEL_20;
  }

  if (objc_opt_respondsToSelector())
  {
    _cnui_image = [providerCopy _cnui_image];
    goto LABEL_6;
  }

  if (style == 1)
  {
    if (objc_opt_respondsToSelector())
    {
      _cnui_image = [providerCopy _cnui_roundedRectImageForSize:width scale:{height, scale}];
      goto LABEL_6;
    }
  }

  else if (!style && (objc_opt_respondsToSelector() & 1) != 0)
  {
    _cnui_image = [providerCopy _cnui_circularImageForSize:width scale:{height, scale}];
    goto LABEL_6;
  }

  if (objc_opt_respondsToSelector())
  {
    [providerCopy _cnui_likenessForSize:width scale:{height, scale}];
  }

  else
  {
    [providerCopy _cnui_likeness];
  }
  v15 = ;
  v16 = [v15 snapshotWithSize:0 scale:width options:{height, scale}];
  v17 = CGImageRetain([v16 CGImage]);
  if (v17)
  {
    v14 = CFAutorelease(v17);
  }

  else
  {
    v14 = 0;
  }

LABEL_20:
  return v14;
}

- (void)renderedLikenessesForContacts:(uint64_t)a1 withBadges:(NSObject *)a2 scope:workScheduler:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_1A31E6000, a2, OS_LOG_TYPE_DEBUG, "[LikenessRenderer] New request for group rendered likeness for: %{public}@", &v2, 0xCu);
}

@end