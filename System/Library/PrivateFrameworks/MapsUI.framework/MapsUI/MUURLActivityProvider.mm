@interface MUURLActivityProvider
+ (id)activityProviderFromDataProvider:(id)provider;
- (id)activityViewController:(id)controller itemForActivityType:(id)type;
- (id)activityViewController:(id)controller subjectForActivityType:(id)type;
- (id)activityViewController:(id)controller thumbnailForActivityType:(id)type;
- (id)activityViewControllerPlaceholderItem:(id)item;
- (void)registerSocialThumbnailImage:(id)image;
- (void)registerThumbnailImage:(id)image;
- (void)registerURL:(id)l;
@end

@implementation MUURLActivityProvider

- (id)activityViewController:(id)controller thumbnailForActivityType:(id)type
{
  v5 = [type isEqualToString:*MEMORY[0x1E69CDA78]];
  socialThumbnailImageProvider = self->_socialThumbnailImageProvider;
  if (socialThumbnailImageProvider)
  {
    v6.n128_u64[0] = 0x4055000000000000;
    v7.n128_u64[0] = 0x4066800000000000;
    if (v5)
    {
      v6.n128_f64[0] = 240.0;
    }

    else
    {
      v7.n128_f64[0] = 84.0;
    }

    socialThumbnailImageProvider = socialThumbnailImageProvider[2](v6, v7);
  }

  return socialThumbnailImageProvider;
}

- (id)activityViewController:(id)controller subjectForActivityType:(id)type
{
  v15 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  v6 = MUGetMUActivityProvidersLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v13 = 138412290;
    v14 = typeCopy;
    _os_log_impl(&dword_1C5620000, v6, OS_LOG_TYPE_INFO, "Fetching subject for activity view controller with activity type %@", &v13, 0xCu);
  }

  if ([typeCopy isEqualToString:*MEMORY[0x1E69CDA78]] && self->_airDropJSON)
  {
    v7 = MUGetMUActivityProvidersLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_1C5620000, v7, OS_LOG_TYPE_INFO, "This is AirDrop and there is AirDrop JSON registered so returning it", &v13, 2u);
    }

    v8 = [MEMORY[0x1E696ACB0] dataWithJSONObject:self->_airDropJSON options:0 error:0];
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v8 encoding:4];
  }

  else
  {
    v10 = MUGetMUActivityProvidersLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_1C5620000, v10, OS_LOG_TYPE_INFO, "Returning subject title", &v13, 2u);
    }

    v9 = self->_subjectTitle;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)activityViewControllerPlaceholderItem:(id)item
{
  v3 = MUGetMUActivityProvidersLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_1C5620000, v3, OS_LOG_TYPE_INFO, "Fetching placeholder URL for activity for activity view controller", v7, 2u);
  }

  v4 = objc_alloc_init(MEMORY[0x1E696ACA0]);
  identifier = [*MEMORY[0x1E6983030] identifier];
  [v4 registerItemForTypeIdentifier:identifier loadHandler:&__block_literal_global_2153];

  return v4;
}

void __63__MUURLActivityProvider_activityViewControllerPlaceholderItem___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695DFF8];
  v3 = a2;
  v4 = [[v2 alloc] initWithString:@"https://apple.com"];
  v5 = MUGetMUActivityProvidersLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_1C5620000, v5, OS_LOG_TYPE_INFO, "Returning placeholder url", v6, 2u);
  }

  v3[2](v3, v4, 0);
}

- (id)activityViewController:(id)controller itemForActivityType:(id)type
{
  v19 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  typeCopy = type;
  v8 = MUGetMUActivityProvidersLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v18 = typeCopy;
    _os_log_impl(&dword_1C5620000, v8, OS_LOG_TYPE_INFO, "Fetching URL for activity view controller with activity type %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v9 = objc_alloc_init(MEMORY[0x1E696ACA0]);
  identifier = [*MEMORY[0x1E6983030] identifier];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __68__MUURLActivityProvider_activityViewController_itemForActivityType___block_invoke;
  v14[3] = &unk_1E8218BA0;
  objc_copyWeak(&v16, buf);
  v11 = typeCopy;
  v15 = v11;
  [v9 registerItemForTypeIdentifier:identifier loadHandler:v14];

  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);

  v12 = *MEMORY[0x1E69E9840];

  return v9;
}

void __68__MUURLActivityProvider_activityViewController_itemForActivityType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if ([*(a1 + 32) isEqual:@"com.apple.Maps.RoutingAppsActivity"])
    {
      v5 = MUGetMUActivityProvidersLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1C5620000, v5, OS_LOG_TYPE_INFO, "This is a routing app activity so using rison", buf, 2u);
      }

      v6 = WeakRetained[2];
      v7 = MUGetMUActivityProvidersLog();
      v8 = v7;
      if (v6)
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1C5620000, v8, OS_LOG_TYPE_INFO, "Rison is present, returning URL", buf, 2u);
        }

        v9 = WeakRetained[2];
LABEL_9:
        v3[2](v3, v9, 0);
        goto LABEL_23;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v10 = "Rison is not present so completing with no results";
        goto LABEL_20;
      }
    }

    else
    {
      if (![*(a1 + 32) isEqualToString:*MEMORY[0x1E69CDAA0]])
      {
        if (![*(a1 + 32) hasPrefix:@"com.apple.shortcuts.Run-Workflow"] || !GEOConfigGetBOOL())
        {
          v13 = WeakRetained[1];
          v14[0] = MEMORY[0x1E69E9820];
          v14[1] = 3221225472;
          v14[2] = __68__MUURLActivityProvider_activityViewController_itemForActivityType___block_invoke_142;
          v14[3] = &unk_1E8218B78;
          v15 = v3;
          (*(v13 + 16))(v13, v14);

          goto LABEL_23;
        }

        v11 = MUGetMUActivityProvidersLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1C5620000, v11, OS_LOG_TYPE_INFO, "Activity type is Shortcuts action. Completing with original URL", buf, 2u);
        }

        v9 = WeakRetained[7];
        goto LABEL_9;
      }

      v8 = MUGetMUActivityProvidersLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v10 = "This is mail app activity so completing with no results";
LABEL_20:
        _os_log_impl(&dword_1C5620000, v8, OS_LOG_TYPE_ERROR, v10, buf, 2u);
      }
    }

    v12 = _MUCreateNoResultsActivityProviderError();
    (v3)[2](v3, 0, v12);
  }

LABEL_23:
}

void __68__MUURLActivityProvider_activityViewController_itemForActivityType___block_invoke_142(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = MUGetMUActivityProvidersLog();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
  if (v6)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_1C5620000, v7, OS_LOG_TYPE_ERROR, "Error with fetching URL so completing with no results", buf, 2u);
    }

    v9 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (v8)
    {
      *v10 = 0;
      _os_log_impl(&dword_1C5620000, v7, OS_LOG_TYPE_ERROR, "URL is present so completing with url", v10, 2u);
    }

    v9 = *(*(a1 + 32) + 16);
  }

  v9();
}

- (void)registerSocialThumbnailImage:(id)image
{
  v4 = _Block_copy(image);
  socialThumbnailImageProvider = self->_socialThumbnailImageProvider;
  self->_socialThumbnailImageProvider = v4;

  MEMORY[0x1EEE66BB8](v4, socialThumbnailImageProvider);
}

- (void)registerThumbnailImage:(id)image
{
  v4 = _Block_copy(image);
  thumbnailImageProvider = self->_thumbnailImageProvider;
  self->_thumbnailImageProvider = v4;

  MEMORY[0x1EEE66BB8](v4, thumbnailImageProvider);
}

- (void)registerURL:(id)l
{
  v4 = _Block_copy(l);
  urlProviderBlock = self->_urlProviderBlock;
  self->_urlProviderBlock = v4;

  MEMORY[0x1EEE66BB8](v4, urlProviderBlock);
}

+ (id)activityProviderFromDataProvider:(id)provider
{
  providerCopy = provider;
  v4 = objc_alloc_init(MUURLActivityProvider);
  activityURL = [providerCopy activityURL];
  [(MUURLActivityProvider *)v4 setOriginalURL:activityURL];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __58__MUURLActivityProvider_activityProviderFromDataProvider___block_invoke;
  v17[3] = &unk_1E8218BE8;
  v6 = providerCopy;
  v18 = v6;
  [(MUURLActivityProvider *)v4 registerURL:v17];
  airDropJSON = [v6 airDropJSON];
  [(MUURLActivityProvider *)v4 registerAirDropJSON:airDropJSON];

  subjectTitle = [v6 subjectTitle];
  [(MUURLActivityProvider *)v4 registerSubjectTitle:subjectTitle];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __58__MUURLActivityProvider_activityProviderFromDataProvider___block_invoke_3;
  v15[3] = &unk_1E8218C10;
  v9 = v6;
  v16 = v9;
  [(MUURLActivityProvider *)v4 registerThumbnailImage:v15];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    risonActivityURL = [v9 risonActivityURL];
    [(MUURLActivityProvider *)v4 registerRisonURL:risonActivityURL];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MUURLActivityProvider *)v4 registerSLAttachmentType:2];
    v11 = v9;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __58__MUURLActivityProvider_activityProviderFromDataProvider___block_invoke_4;
    v13[3] = &unk_1E8218C10;
    v14 = v11;
    [(MUURLActivityProvider *)v4 registerSocialThumbnailImage:v13];
  }

  return v4;
}

void __58__MUURLActivityProvider_activityProviderFromDataProvider___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__MUURLActivityProvider_activityProviderFromDataProvider___block_invoke_2;
  v6[3] = &unk_1E8218B78;
  v7 = v3;
  v5 = v3;
  [v4 fetchActivityURLWithCompletion:v6];
}

@end