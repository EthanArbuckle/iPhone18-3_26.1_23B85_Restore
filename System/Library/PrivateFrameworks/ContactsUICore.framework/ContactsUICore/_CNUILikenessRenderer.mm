@interface _CNUILikenessRenderer
+ (CGImage)cgImageForLikenessProvider:(id)a3 pointSize:(CGSize)a4 scale:(double)a5 style:(unint64_t)a6 alwaysUsePointSize:(BOOL)a7;
+ (CGImage)cgImageForLikenessProvider:(id)a3 scope:(id)a4 alwaysUsePointSize:(BOOL)a5;
+ (id)renderedLikenessesForProviders:(id)a3 likenessBadgeProviders:(id)a4 scope:(id)a5;
- (_CNUILikenessRenderer)initWithLikenessResolver:(id)a3 schedulerProvider:(id)a4;
- (id)likenessProvidersForBadges:(id)a3;
- (id)likenessProvidersForBadges:(id)a3 workScheduler:(id)a4;
- (id)likenessProvidersForContacts:(id)a3 likenessResolverOptions:(id)a4 workScheduler:(id)a5;
- (id)loadingPlaceholderForContactCount:(unint64_t)a3 scope:(id)a4;
- (id)renderedBasicMonogramForString:(id)a3 color:(id)a4 scope:(id)a5 prohibitedSources:(int64_t)a6;
- (id)renderedBasicMonogramFromString:(id)a3 scope:(id)a4;
- (id)renderedLikenessForBadge:(id)a3 scope:(id)a4 workScheduler:(id)a5;
- (id)renderedLikenessForBadgeProvider:(id)a3 scope:(id)a4;
- (id)renderedLikenessesForContacts:(id)a3 withBadges:(id)a4 scope:(id)a5 workScheduler:(id)a6;
- (id)renderedLikenessesForLikenessProviders:(id)a3 badges:(id)a4 scope:(id)a5 likenessFingerprint:(id)a6;
- (id)renderedLoadingPlaceholderForContactCount:(unint64_t)a3 provider:(id)a4 scope:(id)a5;
@end

@implementation _CNUILikenessRenderer

- (_CNUILikenessRenderer)initWithLikenessResolver:(id)a3 schedulerProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = _CNUILikenessRenderer;
  v9 = [(_CNUILikenessRenderer *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_likenessResolver, a3);
    objc_storeStrong(&v10->_schedulerProvider, a4);
    v11 = v10;
  }

  return v10;
}

- (id)renderedLikenessForBadge:(id)a3 scope:(id)a4 workScheduler:(id)a5
{
  v17 = *MEMORY[0x1E69E9840];
  v16 = a3;
  v8 = MEMORY[0x1E695DEC8];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 arrayWithObjects:&v16 count:1];

  v13 = [(_CNUILikenessRenderer *)self likenessProvidersForBadges:v12 workScheduler:v9, v16, v17];

  v14 = [(_CNUILikenessRenderer *)self renderedLikenessForBadgeProvider:v13 scope:v10];

  return v14;
}

- (id)renderedLikenessesForContacts:(id)a3 withBadges:(id)a4 scope:(id)a5 workScheduler:(id)a6
{
  v34 = *MEMORY[0x1E69E9840];
  v10 = a5;
  v11 = a6;
  v12 = a4;
  v13 = a3;
  v14 = [v10 color];
  if (v14)
  {
    v15 = [CNUIPRLikenessResolverOptions alloc];
    v16 = [v10 color];
    v17 = [(CNUIPRLikenessResolverOptions *)v15 initWithMonogramColor:v16];
  }

  else
  {
    v17 = 0;
  }

  v18 = [CNUILikenessFingerprint publicFingerprintForContacts:v13 scope:v10];
  v19 = [(_CNUILikenessRenderer *)self likenessProvidersForContacts:v13 likenessResolverOptions:v17 workScheduler:v11];

  v20 = [(_CNUILikenessRenderer *)self renderedLikenessesForLikenessProviders:v19 badges:v12 scope:v10 likenessFingerprint:v18];

  v21 = [v13 count];
  v22 = +[CNUICoreLogProvider likenesses_os_log];
  v23 = v22;
  if (v21 < 2)
  {
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      [v10 pointSize];
      v25 = v24;
      [v10 pointSize];
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

- (id)likenessProvidersForContacts:(id)a3 likenessResolverOptions:(id)a4 workScheduler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [v10 _cn_take:{+[CNUIPRLikenessResolver maxContacts](CNUIPRLikenessResolver, "maxContacts")}];

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __92___CNUILikenessRenderer_likenessProvidersForContacts_likenessResolverOptions_workScheduler___block_invoke;
  v19[3] = &unk_1E76E7BD8;
  v19[4] = self;
  v20 = v8;
  v21 = v9;
  v12 = v9;
  v13 = v8;
  v14 = [v11 _cn_map:v19];

  v15 = MEMORY[0x1E6996798];
  v16 = [(_CNUILikenessRenderer *)self schedulerProvider];
  v17 = [v15 combineLatest:v14 resultScheduler:v12 schedulerProvider:v16];

  return v17;
}

- (id)likenessProvidersForBadges:(id)a3 workScheduler:(id)a4
{
  v6 = a4;
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __66___CNUILikenessRenderer_likenessProvidersForBadges_workScheduler___block_invoke;
  v18 = &unk_1E76E7C00;
  v19 = self;
  v20 = v6;
  v7 = v6;
  v8 = [a3 _cn_map:&v15];
  v9 = MEMORY[0x1E6996798];
  v10 = [(_CNUILikenessRenderer *)self schedulerProvider:v15];
  v11 = [v9 combineLatest:v8 resultScheduler:v7 schedulerProvider:v10];
  v12 = [MEMORY[0x1E6996798] observableWithResult:MEMORY[0x1E695E0F0]];
  v13 = [v11 onEmpty:v12];

  return v13;
}

- (id)likenessProvidersForBadges:(id)a3
{
  v3 = a3;
  if ((*(*MEMORY[0x1E6996530] + 16))())
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v4 = [v3 _cn_map:&__block_literal_global_3];
  }

  return v4;
}

- (id)renderedLikenessesForLikenessProviders:(id)a3 badges:(id)a4 scope:(id)a5 likenessFingerprint:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a3;
  v14 = objc_opt_class();
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __97___CNUILikenessRenderer_renderedLikenessesForLikenessProviders_badges_scope_likenessFingerprint___block_invoke;
  v20[3] = &unk_1E76E7C48;
  v24 = v11;
  v25 = v14;
  v21 = v12;
  v22 = self;
  v23 = v10;
  v15 = v11;
  v16 = v10;
  v17 = v12;
  v18 = [v13 map:v20];

  return v18;
}

- (id)renderedLikenessForBadgeProvider:(id)a3 scope:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_class();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __64___CNUILikenessRenderer_renderedLikenessForBadgeProvider_scope___block_invoke;
  v11[3] = &unk_1E76E7C70;
  v12 = v5;
  v13 = v7;
  v8 = v5;
  v9 = [v6 map:v11];

  return v9;
}

- (id)loadingPlaceholderForContactCount:(unint64_t)a3 scope:(id)a4
{
  v6 = a4;
  v7 = +[CNUIPRLikenessResolver maxContacts];
  if (v7 >= a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = v7;
  }

  v9 = v6;
  [v9 pointSize];
  if (v8 <= 1)
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
    v18 = [v9 strokeColor];
    v19 = [v9 rightToLeft];
    v20 = [v9 style];
    v21 = [v9 backgroundStyle];
    v22 = [v9 color];
    v23 = [v9 maskedAvatarIndices];
    v13 = [CNUILikenessRenderingScope renderingScopeWithPointSize:v18 scale:v19 strokeWidth:v20 strokeColor:v21 rightToLeft:v22 style:v23 backgroundStyle:v11 color:v11 maskedAvatarIndices:v15, v17];
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
  if (v8 < 2)
  {

    [v24 stringWithFormat:@"LoadingPlaceholder_%@%.2f%@", v26, v28, &stru_1F162C170, v35];
  }

  else
  {
    v29 = [v25 rightToLeft];

    v30 = @"_RTL";
    if (!v29)
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
  v38 = v8;
  v36[4] = self;
  v32 = v9;
  v33 = [CNUIImageProvider imageForResource:v31 template:0 onCacheMiss:v36];

  return v33;
}

- (id)renderedBasicMonogramFromString:(id)a3 scope:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_class();
  v9 = [(_CNUILikenessRenderer *)self likenessResolver];
  v10 = [v6 color];
  v11 = [v9 basicMonogramObservableFromString:v7 color:v10];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __63___CNUILikenessRenderer_renderedBasicMonogramFromString_scope___block_invoke;
  v15[3] = &unk_1E76E7CC0;
  v16 = v6;
  v17 = v8;
  v12 = v6;
  v13 = [v11 map:v15];

  return v13;
}

- (id)renderedBasicMonogramForString:(id)a3 color:(id)a4 scope:(id)a5 prohibitedSources:(int64_t)a6
{
  v6 = a6;
  v57[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ((*(*MEMORY[0x1E6996568] + 16))())
  {
    goto LABEL_10;
  }

  v13 = [MEMORY[0x1E69966E8] currentEnvironment];
  v14 = [v13 featureFlags];
  v15 = [v14 isFeatureEnabled:6];

  if (v15)
  {
    if (v11)
    {
      v16 = [(objc_class *)getPRMonogramClass() monogram];
      [v16 setText:v10];
      [v16 setMonogramColor:v11];
      PRLikenessClass = getPRLikenessClass();
      v18 = [v16 dataRepresentation];
      v19 = [(objc_class *)PRLikenessClass monogramWithRecipe:v18 staticRepresentation:0];

      v20 = [[CNUIPRLikenessProvider alloc] initWithPRLikeness:v19];
      v21 = objc_opt_class();
      v57[0] = v20;
      v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:1];
      v23 = [v21 renderedLikenessesForProviders:v22 likenessBadgeProviders:MEMORY[0x1E695E0F0] scope:v12];
    }

    else
    {
      v16 = objc_alloc_init(MEMORY[0x1E695CF18]);
      [v16 setGivenName:v10];
      v56 = v16;
      v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v56 count:1];
      v30 = [(_CNUILikenessRenderer *)self schedulerProvider];
      v31 = [v30 immediateScheduler];
      v19 = [(_CNUILikenessRenderer *)self renderedLikenessesForContacts:v29 scope:v12 workScheduler:v31];

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
    v16 = [(objc_class *)getPRMonogramClass() monogram];
    [v16 setText:v10];
    if (v11)
    {
      [v16 setMonogramColor:v11];
    }

    v24 = getPRLikenessClass();
    v25 = [v16 dataRepresentation];
    v19 = [(objc_class *)v24 monogramWithRecipe:v25 staticRepresentation:0];

    v26 = [[CNUIPRLikenessProvider alloc] initWithPRLikeness:v19];
    v27 = objc_opt_class();
    v55 = v26;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v55 count:1];
    v23 = [v27 renderedLikenessesForProviders:v28 likenessBadgeProviders:MEMORY[0x1E695E0F0] scope:v12];
  }

  if (!v23)
  {
LABEL_10:
    if ((v6 & 4) != 0)
    {
      v23 = 0;
    }

    else
    {
      v37 = [(_CNUILikenessRenderer *)self likenessResolver];
      v38 = [v37 placeholderProviderFactory];
      v39 = [v38 placeholderProvider];

      v23 = [(_CNUILikenessRenderer *)self renderedLoadingPlaceholderForContactCount:1 provider:v39 scope:v12];
    }
  }

  return v23;
}

- (id)renderedLoadingPlaceholderForContactCount:(unint64_t)a3 provider:(id)a4 scope:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (a3 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = a3;
  }

  if (a3 >= 2 && +[CNUISnowglobeUtilities enableGroupPhoto])
  {
    v9 = 1;
  }

  v10 = [MEMORY[0x1E695DEC8] _cn_arrayWithObject:v7 count:v9];
  v11 = [objc_opt_class() renderedLikenessesForProviders:v10 likenessBadgeProviders:MEMORY[0x1E695E0F0] scope:v8];

  return v11;
}

+ (id)renderedLikenessesForProviders:(id)a3 likenessBadgeProviders:(id)a4 scope:(id)a5
{
  v64 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v61 = a4;
  v9 = a5;
  v10 = [v8 count];
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
  [v9 pointSize];
  v16 = v15;
  v18 = v17;
  v62.size.width = v15;
  v62.size.height = v17;
  if (v10)
  {
    if (v10 == 1 && (*(*MEMORY[0x1E6996530] + 16))())
    {
      v19 = [v8 objectAtIndexedSubscript:0];
      *v13 = [a1 cgImageForLikenessProvider:v19 scope:v9 alwaysUsePointSize:1];

      v20 = v9;
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      [v20 scale];
      v23 = v22;
      [v20 pointSize];
      v25 = v24;
      v27 = v26;
      CGAffineTransformMakeScale(&v63, v23, v23);
      v28 = CNUIBitmapContextCreate(llround(v27 * v63.c + v63.a * v25), llround(v27 * v63.d + v63.b * v25), DeviceRGB);
      v29 = [v20 style];
      if (v29)
      {
        if (v29 == 1)
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
    [CNUISnowglobeUtilities sizeForImageAtIndex:0 inRect:2 forItemCount:v9 scope:*&v62.origin, v16, v18];
    v32 = v31;
    v34 = v33;
    for (i = 0; i != v10; ++i)
    {
      v36 = [v8 objectAtIndexedSubscript:i];
      [v9 scale];
      v13[i] = [a1 cgImageForLikenessProvider:v36 pointSize:objc_msgSend(v9 scale:"style") style:1 alwaysUsePointSize:{v32, v34, v37}];
    }

    v57 = v10;
    v58 = v13;
    v60 = v8;
  }

  else
  {
    v57 = 0;
    v58 = v13;
    v59 = &v56;
    v60 = v8;
    v32 = *MEMORY[0x1E695F060];
    v34 = *(MEMORY[0x1E695F060] + 8);
  }

  v38 = [v61 count];
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
      v45 = [v61 objectAtIndexedSubscript:j];
      [v9 scale];
      *&v41[8 * j] = [a1 cgImageForLikenessProvider:v45 pointSize:objc_msgSend(v9 scale:"style") style:1 alwaysUsePointSize:{v32, v34, v46}];
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

  Image = [CNUISnowglobeUtilities imageForAvatarImages:v58 badgeImages:v41 badgeTypes:v43 rect:v57 itemCount:v9 scope:*&v62.origin, v16, v18];

  v8 = v60;
LABEL_27:
  CGImageGetWidth(Image);
  CGImageGetHeight(Image);
  [v9 scale];
  v53 = [NSClassFromString(&cfstr_Uiimage.isa) imageWithCGImage:Image scale:0 orientation:v52];

  return v53;
}

+ (CGImage)cgImageForLikenessProvider:(id)a3 scope:(id)a4 alwaysUsePointSize:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v10 = [v8 _cnui_imageForScope:v9];
  }

  else
  {
    [v9 pointSize];
    v12 = v11;
    v14 = v13;
    [v9 scale];
    v10 = [a1 cgImageForLikenessProvider:v8 pointSize:objc_msgSend(v9 scale:"style") style:v5 alwaysUsePointSize:{v12, v14, v15}];
  }

  v16 = v10;

  return v16;
}

+ (CGImage)cgImageForLikenessProvider:(id)a3 pointSize:(CGSize)a4 scale:(double)a5 style:(unint64_t)a6 alwaysUsePointSize:(BOOL)a7
{
  v7 = a7;
  height = a4.height;
  width = a4.width;
  v12 = a3;
  if (v7 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v13 = [v12 _cnui_imageForSize:width scale:{height, a5}];
LABEL_6:
    v14 = v13;
    goto LABEL_20;
  }

  if (objc_opt_respondsToSelector())
  {
    v13 = [v12 _cnui_image];
    goto LABEL_6;
  }

  if (a6 == 1)
  {
    if (objc_opt_respondsToSelector())
    {
      v13 = [v12 _cnui_roundedRectImageForSize:width scale:{height, a5}];
      goto LABEL_6;
    }
  }

  else if (!a6 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v13 = [v12 _cnui_circularImageForSize:width scale:{height, a5}];
    goto LABEL_6;
  }

  if (objc_opt_respondsToSelector())
  {
    [v12 _cnui_likenessForSize:width scale:{height, a5}];
  }

  else
  {
    [v12 _cnui_likeness];
  }
  v15 = ;
  v16 = [v15 snapshotWithSize:0 scale:width options:{height, a5}];
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