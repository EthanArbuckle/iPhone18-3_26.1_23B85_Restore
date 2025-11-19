@interface NSSArticleInternal
+ (id)imageWithURL:(id)a3;
+ (void)_articleFromCoreSpotlightIdentifier:(id)a3 domain:(id)a4 completion:(id)a5;
+ (void)articleFromCoreSpotlightIdentifier:(id)a3 completion:(id)a4;
+ (void)articleFromNotification:(id)a3 completion:(id)a4;
+ (void)articleFromNotificationUserInfo:(id)a3 thumbnailFileURL:(id)a4 publisherLogoFileURL:(id)a5 publisherLogoMaskFileURL:(id)a6 completion:(id)a7;
- (NSSArticleInternal)initWithCoder:(id)a3;
- (NSSArticleInternal)initWithThumbnailImage:(id)a3 title:(id)a4 shortExcerpt:(id)a5 publishDate:(id)a6 publisherName:(id)a7 publisherLogoImage:(id)a8 publisherLogoMaskImage:(id)a9;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSSArticleInternal

+ (void)articleFromNotification:(id)a3 completion:(id)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v33 = a4;
  v6 = [v5 request];
  v7 = [v6 content];
  v8 = [v7 userInfo];

  v31 = v8;
  v30 = [v8 objectForKeyedSubscript:@"news"];
  v34 = v5;
  v9 = [v5 request];
  v10 = [v9 content];
  v11 = [v10 attachments];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v13)
  {
    v14 = v13;
    v35 = 0;
    v36 = 0;
    v15 = 0;
    v16 = *v38;
    while (1)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v38 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v37 + 1) + 8 * i);
        v19 = [v18 identifier];
        v20 = [v19 isEqualToString:@"thumbnail-attachment"];

        if (v20)
        {
          v21 = [v18 URL];
          v22 = v15;
          v15 = v21;
        }

        else
        {
          v23 = [v18 identifier];
          v24 = [v23 isEqualToString:@"publisherLogo-attachment"];

          if (v24)
          {
            v25 = [v18 URL];
            v22 = v36;
            v36 = v25;
          }

          else
          {
            v26 = [v18 identifier];
            v27 = [v26 isEqualToString:@"publisherLogoMask-attachment"];

            if (!v27)
            {
              continue;
            }

            v28 = [v18 URL];
            v22 = v35;
            v35 = v28;
          }
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v37 objects:v41 count:16];
      if (!v14)
      {
        goto LABEL_17;
      }
    }
  }

  v35 = 0;
  v36 = 0;
  v15 = 0;
LABEL_17:

  [a1 articleFromNotificationUserInfo:v30 thumbnailFileURL:v15 publisherLogoFileURL:v36 publisherLogoMaskFileURL:v35 completion:v33];
  v29 = *MEMORY[0x277D85DE8];
}

+ (void)articleFromNotificationUserInfo:(id)a3 thumbnailFileURL:(id)a4 publisherLogoFileURL:(id)a5 publisherLogoMaskFileURL:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [v12 objectForKeyedSubscript:@"ti"];
  v18 = [v12 objectForKeyedSubscript:@"ex"];
  v19 = [v12 objectForKeyedSubscript:@"pd"];
  [v19 doubleValue];
  v21 = v20;

  if (v21 <= 0.0)
  {
    v31 = 0;
  }

  else
  {
    v31 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v21];
  }

  v35 = [v12 objectForKeyedSubscript:@"pn"];
  v22 = [v12 objectForKeyedSubscript:@"td"];
  v33 = v13;
  if (v22)
  {
    v23 = [MEMORY[0x277D755B8] imageWithData:v22];
  }

  else
  {
    if (!v13)
    {
      v34 = 0;
      if (v14)
      {
        goto LABEL_9;
      }

      goto LABEL_11;
    }

    v23 = [objc_opt_class() imageWithURL:v13];
  }

  v34 = v23;
  if (v14)
  {
LABEL_9:
    v24 = [objc_opt_class() imageWithURL:v14];
    goto LABEL_12;
  }

LABEL_11:
  v24 = 0;
LABEL_12:
  v32 = v15;
  if (v15)
  {
    [objc_opt_class() imageWithURL:v15];
    v25 = v18;
    v26 = v17;
    v27 = v16;
    v29 = v28 = v14;
    v15 = [v29 imageWithRenderingMode:2];

    v14 = v28;
    v16 = v27;
    v17 = v26;
    v18 = v25;
  }

  v30 = [[a1 alloc] initWithThumbnailImage:v34 title:v17 shortExcerpt:v18 publishDate:v31 publisherName:v35 publisherLogoImage:v24 publisherLogoMaskImage:v15];
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    if (v16)
    {
      v16[2](v16, v30);
    }
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __128__NSSArticleInternal_articleFromNotificationUserInfo_thumbnailFileURL_publisherLogoFileURL_publisherLogoMaskFileURL_completion___block_invoke;
    block[3] = &unk_2799809C8;
    v38 = v16;
    v37 = v30;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

uint64_t __128__NSSArticleInternal_articleFromNotificationUserInfo_thumbnailFileURL_publisherLogoFileURL_publisherLogoMaskFileURL_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

+ (id)imageWithURL:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 startAccessingSecurityScopedResource])
  {
    v5 = MEMORY[0x277CBEA90];
    v6 = [v4 path];
    v7 = [v5 dataWithContentsOfFile:v6];

    v8 = [MEMORY[0x277D755B8] imageWithData:v7];
    [v4 stopAccessingSecurityScopedResource];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (void)_articleFromCoreSpotlightIdentifier:(id)a3 domain:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v8 && v9)
  {
    v12 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__NSSArticleInternal__articleFromCoreSpotlightIdentifier_domain_completion___block_invoke_2;
    block[3] = &unk_279980A90;
    v13 = &v15;
    v15 = v9;
    v16 = v8;
    v18 = a1;
    v17 = v11;
    dispatch_async(v12, block);

LABEL_6:
    goto LABEL_7;
  }

  if (v10)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __76__NSSArticleInternal__articleFromCoreSpotlightIdentifier_domain_completion___block_invoke;
    v19[3] = &unk_2799809F0;
    v13 = &v20;
    v20 = v10;
    dispatch_async(MEMORY[0x277D85CD0], v19);
    goto LABEL_6;
  }

LABEL_7:
}

void __76__NSSArticleInternal__articleFromCoreSpotlightIdentifier_domain_completion___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ == %@", @"domainIdentifier", *(a1 + 32)];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  v22 = [objc_alloc(MEMORY[0x277CC3498]) initWithQueryString:v2 attributes:&unk_286D8E478];
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = __Block_byref_object_copy_;
  v15[4] = __Block_byref_object_dispose_;
  v16 = 0;
  v3 = v18[5];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __76__NSSArticleInternal__articleFromCoreSpotlightIdentifier_domain_completion___block_invoke_31;
  v11[3] = &unk_279980A18;
  v13 = v15;
  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  v12 = v4;
  v14 = v5;
  [v3 setFoundItemsHandler:v11];
  v6 = v18[5];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__NSSArticleInternal__articleFromCoreSpotlightIdentifier_domain_completion___block_invoke_2_35;
  v7[3] = &unk_279980A68;
  v8 = *(a1 + 48);
  v9 = v15;
  v10 = &v17;
  [v6 setCompletionHandler:v7];
  [v18[5] start];

  _Block_object_dispose(v15, 8);
  _Block_object_dispose(&v17, 8);
}

void __76__NSSArticleInternal__articleFromCoreSpotlightIdentifier_domain_completion___block_invoke_31(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (!*(*(*(a1 + 40) + 8) + 40) && [v3 count])
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v39;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v39 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v38 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 = [v10 uniqueIdentifier];
            v12 = [v11 isEqualToString:*(a1 + 32)];

            if (v12)
            {
              v13 = [v10 attributeSet];
              v14 = [v13 title];

              v15 = [v10 attributeSet];
              v16 = [v15 contentDescription];

              v17 = [v10 attributeSet];
              v35 = [v17 contentCreationDate];

              v18 = [v10 attributeSet];
              v19 = [v18 namedLocation];

              v20 = [v10 attributeSet];
              v21 = [v20 thumbnailURL];

              objc_opt_class();
              v36 = v16;
              v37 = v14;
              if (objc_opt_isKindOfClass())
              {
                v22 = [MEMORY[0x277CBEBC0] URLWithString:v21];

                v21 = v22;
              }

              v23 = MEMORY[0x277D755B8];
              v24 = [v10 attributeSet];
              v25 = [v24 thumbnailData];
              v26 = [v23 imageWithData:v25];
              v27 = v26;
              if (v26)
              {
                v28 = v26;
              }

              else
              {
                v29 = MEMORY[0x277D755B8];
                v30 = [v21 path];
                v28 = [v29 imageWithContentsOfFile:v30];
              }

              v31 = [objc_alloc(*(a1 + 48)) initWithThumbnailImage:v28 title:v37 shortExcerpt:v36 publishDate:v35 publisherName:v19 publisherLogoImage:0 publisherLogoMaskImage:0];
              v32 = *(*(a1 + 40) + 8);
              v33 = *(v32 + 40);
              *(v32 + 40) = v31;

              goto LABEL_19;
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v38 objects:v42 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_19:
  }

  v34 = *MEMORY[0x277D85DE8];
}

void __76__NSSArticleInternal__articleFromCoreSpotlightIdentifier_domain_completion___block_invoke_2_35(uint64_t a1)
{
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      (*(v2 + 16))(v2, *(*(*(a1 + 40) + 8) + 40));
    }
  }

  else
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __76__NSSArticleInternal__articleFromCoreSpotlightIdentifier_domain_completion___block_invoke_3;
    v7[3] = &unk_279980A40;
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v8 = v3;
    v9 = v4;
    dispatch_async(MEMORY[0x277D85CD0], v7);
  }

  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

uint64_t __76__NSSArticleInternal__articleFromCoreSpotlightIdentifier_domain_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 40) + 8) + 40));
  }

  return result;
}

+ (void)articleFromCoreSpotlightIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__NSSArticleInternal_articleFromCoreSpotlightIdentifier_completion___block_invoke;
  v10[3] = &unk_279980AB8;
  v12 = v7;
  v13 = a1;
  v11 = v6;
  v8 = v7;
  v9 = v6;
  [a1 _articleFromCoreSpotlightIdentifier:v9 domain:@"com.apple.news.article.history" completion:v10];
}

uint64_t __68__NSSArticleInternal_articleFromCoreSpotlightIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      (*(v3 + 16))();
    }
  }

  else
  {
    [*(a1 + 48) _articleFromCoreSpotlightIdentifier:*(a1 + 32) domain:@"NSSSpotlightArticleDomainIdentifier" completion:*(a1 + 40)];
  }

  return MEMORY[0x2821F96F8]();
}

- (NSSArticleInternal)initWithThumbnailImage:(id)a3 title:(id)a4 shortExcerpt:(id)a5 publishDate:(id)a6 publisherName:(id)a7 publisherLogoImage:(id)a8 publisherLogoMaskImage:(id)a9
{
  v33 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v34.receiver = self;
  v34.super_class = NSSArticleInternal;
  v22 = [(NSSArticleInternal *)&v34 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_thumbnailImage, a3);
    v24 = [v16 copy];
    title = v23->_title;
    v23->_title = v24;

    v26 = [v17 copy];
    shortExcerpt = v23->_shortExcerpt;
    v23->_shortExcerpt = v26;

    v28 = [v18 copy];
    publishDate = v23->_publishDate;
    v23->_publishDate = v28;

    v30 = [v19 copy];
    publisherName = v23->_publisherName;
    v23->_publisherName = v30;

    objc_storeStrong(&v23->_publisherLogoImage, a8);
    objc_storeStrong(&v23->_publisherLogoMaskImage, a9);
  }

  return v23;
}

- (void)encodeWithCoder:(id)a3
{
  v19 = a3;
  v4 = [(NSSArticleInternal *)self thumbnailImage];

  if (v4)
  {
    v5 = [(NSSArticleInternal *)self thumbnailImage];
    [v19 encodeObject:v5 forKey:@"thumbnailImage"];
  }

  v6 = [(NSSArticleInternal *)self title];

  if (v6)
  {
    v7 = [(NSSArticleInternal *)self title];
    [v19 encodeObject:v7 forKey:@"title"];
  }

  v8 = [(NSSArticleInternal *)self shortExcerpt];

  if (v8)
  {
    v9 = [(NSSArticleInternal *)self shortExcerpt];
    [v19 encodeObject:v9 forKey:@"shortExcerpt"];
  }

  v10 = [(NSSArticleInternal *)self publishDate];

  if (v10)
  {
    v11 = [(NSSArticleInternal *)self publishDate];
    [v19 encodeObject:v11 forKey:@"publishDate"];
  }

  v12 = [(NSSArticleInternal *)self publisherName];

  if (v12)
  {
    v13 = [(NSSArticleInternal *)self publisherName];
    [v19 encodeObject:v13 forKey:@"publisherName"];
  }

  v14 = [(NSSArticleInternal *)self publisherLogoImage];

  if (v14)
  {
    v15 = [(NSSArticleInternal *)self publisherLogoImage];
    [v19 encodeObject:v15 forKey:@"publisherLogoImage"];
  }

  v16 = [(NSSArticleInternal *)self publisherLogoMaskImage];

  v17 = v19;
  if (v16)
  {
    v18 = [(NSSArticleInternal *)self publisherLogoMaskImage];
    [v19 encodeObject:v18 forKey:@"publisherLogoMaskImage"];

    v17 = v19;
  }
}

- (NSSArticleInternal)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectForKey:@"thumbnailImage"];
  v6 = [v4 decodeObjectForKey:@"title"];
  v7 = [v4 decodeObjectForKey:@"shortExcerpt"];
  v8 = [v4 decodeObjectForKey:@"publishDate"];
  v9 = [v4 decodeObjectForKey:@"publisherName"];
  v10 = [v4 decodeObjectForKey:@"publisherLogoImage"];
  v11 = [v4 decodeObjectForKey:@"publisherLogoMaskImage"];

  v12 = [(NSSArticleInternal *)self initWithThumbnailImage:v5 title:v6 shortExcerpt:v7 publishDate:v8 publisherName:v9 publisherLogoImage:v10 publisherLogoMaskImage:v11];
  return v12;
}

@end