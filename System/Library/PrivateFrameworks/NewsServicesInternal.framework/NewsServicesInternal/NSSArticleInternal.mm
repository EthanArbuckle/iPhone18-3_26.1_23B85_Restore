@interface NSSArticleInternal
+ (id)imageWithURL:(id)l;
+ (void)_articleFromCoreSpotlightIdentifier:(id)identifier domain:(id)domain completion:(id)completion;
+ (void)articleFromCoreSpotlightIdentifier:(id)identifier completion:(id)completion;
+ (void)articleFromNotification:(id)notification completion:(id)completion;
+ (void)articleFromNotificationUserInfo:(id)info thumbnailFileURL:(id)l publisherLogoFileURL:(id)rL publisherLogoMaskFileURL:(id)uRL completion:(id)completion;
- (NSSArticleInternal)initWithCoder:(id)coder;
- (NSSArticleInternal)initWithThumbnailImage:(id)image title:(id)title shortExcerpt:(id)excerpt publishDate:(id)date publisherName:(id)name publisherLogoImage:(id)logoImage publisherLogoMaskImage:(id)maskImage;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSSArticleInternal

+ (void)articleFromNotification:(id)notification completion:(id)completion
{
  v42 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  completionCopy = completion;
  request = [notificationCopy request];
  content = [request content];
  userInfo = [content userInfo];

  v31 = userInfo;
  v30 = [userInfo objectForKeyedSubscript:@"news"];
  v34 = notificationCopy;
  request2 = [notificationCopy request];
  content2 = [request2 content];
  attachments = [content2 attachments];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v12 = attachments;
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
        identifier = [v18 identifier];
        v20 = [identifier isEqualToString:@"thumbnail-attachment"];

        if (v20)
        {
          v21 = [v18 URL];
          v22 = v15;
          v15 = v21;
        }

        else
        {
          identifier2 = [v18 identifier];
          v24 = [identifier2 isEqualToString:@"publisherLogo-attachment"];

          if (v24)
          {
            v25 = [v18 URL];
            v22 = v36;
            v36 = v25;
          }

          else
          {
            identifier3 = [v18 identifier];
            v27 = [identifier3 isEqualToString:@"publisherLogoMask-attachment"];

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

  [self articleFromNotificationUserInfo:v30 thumbnailFileURL:v15 publisherLogoFileURL:v36 publisherLogoMaskFileURL:v35 completion:completionCopy];
  v29 = *MEMORY[0x277D85DE8];
}

+ (void)articleFromNotificationUserInfo:(id)info thumbnailFileURL:(id)l publisherLogoFileURL:(id)rL publisherLogoMaskFileURL:(id)uRL completion:(id)completion
{
  infoCopy = info;
  lCopy = l;
  rLCopy = rL;
  uRLCopy = uRL;
  completionCopy = completion;
  v17 = [infoCopy objectForKeyedSubscript:@"ti"];
  v18 = [infoCopy objectForKeyedSubscript:@"ex"];
  v19 = [infoCopy objectForKeyedSubscript:@"pd"];
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

  v35 = [infoCopy objectForKeyedSubscript:@"pn"];
  v22 = [infoCopy objectForKeyedSubscript:@"td"];
  v33 = lCopy;
  if (v22)
  {
    v23 = [MEMORY[0x277D755B8] imageWithData:v22];
  }

  else
  {
    if (!lCopy)
    {
      v34 = 0;
      if (rLCopy)
      {
        goto LABEL_9;
      }

      goto LABEL_11;
    }

    v23 = [objc_opt_class() imageWithURL:lCopy];
  }

  v34 = v23;
  if (rLCopy)
  {
LABEL_9:
    v24 = [objc_opt_class() imageWithURL:rLCopy];
    goto LABEL_12;
  }

LABEL_11:
  v24 = 0;
LABEL_12:
  v32 = uRLCopy;
  if (uRLCopy)
  {
    [objc_opt_class() imageWithURL:uRLCopy];
    v25 = v18;
    v26 = v17;
    v27 = completionCopy;
    v29 = v28 = rLCopy;
    uRLCopy = [v29 imageWithRenderingMode:2];

    rLCopy = v28;
    completionCopy = v27;
    v17 = v26;
    v18 = v25;
  }

  v30 = [[self alloc] initWithThumbnailImage:v34 title:v17 shortExcerpt:v18 publishDate:v31 publisherName:v35 publisherLogoImage:v24 publisherLogoMaskImage:uRLCopy];
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, v30);
    }
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __128__NSSArticleInternal_articleFromNotificationUserInfo_thumbnailFileURL_publisherLogoFileURL_publisherLogoMaskFileURL_completion___block_invoke;
    block[3] = &unk_2799809C8;
    v38 = completionCopy;
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

+ (id)imageWithURL:(id)l
{
  lCopy = l;
  v4 = lCopy;
  if (lCopy && [lCopy startAccessingSecurityScopedResource])
  {
    v5 = MEMORY[0x277CBEA90];
    path = [v4 path];
    v7 = [v5 dataWithContentsOfFile:path];

    v8 = [MEMORY[0x277D755B8] imageWithData:v7];
    [v4 stopAccessingSecurityScopedResource];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (void)_articleFromCoreSpotlightIdentifier:(id)identifier domain:(id)domain completion:(id)completion
{
  identifierCopy = identifier;
  domainCopy = domain;
  completionCopy = completion;
  v11 = completionCopy;
  if (identifierCopy && domainCopy)
  {
    v12 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__NSSArticleInternal__articleFromCoreSpotlightIdentifier_domain_completion___block_invoke_2;
    block[3] = &unk_279980A90;
    v13 = &v15;
    v15 = domainCopy;
    v16 = identifierCopy;
    selfCopy = self;
    v17 = v11;
    dispatch_async(v12, block);

LABEL_6:
    goto LABEL_7;
  }

  if (completionCopy)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __76__NSSArticleInternal__articleFromCoreSpotlightIdentifier_domain_completion___block_invoke;
    v19[3] = &unk_2799809F0;
    v13 = &v20;
    v20 = completionCopy;
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

+ (void)articleFromCoreSpotlightIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__NSSArticleInternal_articleFromCoreSpotlightIdentifier_completion___block_invoke;
  v10[3] = &unk_279980AB8;
  v12 = completionCopy;
  selfCopy = self;
  v11 = identifierCopy;
  v8 = completionCopy;
  v9 = identifierCopy;
  [self _articleFromCoreSpotlightIdentifier:v9 domain:@"com.apple.news.article.history" completion:v10];
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

- (NSSArticleInternal)initWithThumbnailImage:(id)image title:(id)title shortExcerpt:(id)excerpt publishDate:(id)date publisherName:(id)name publisherLogoImage:(id)logoImage publisherLogoMaskImage:(id)maskImage
{
  imageCopy = image;
  titleCopy = title;
  excerptCopy = excerpt;
  dateCopy = date;
  nameCopy = name;
  logoImageCopy = logoImage;
  maskImageCopy = maskImage;
  v34.receiver = self;
  v34.super_class = NSSArticleInternal;
  v22 = [(NSSArticleInternal *)&v34 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_thumbnailImage, image);
    v24 = [titleCopy copy];
    title = v23->_title;
    v23->_title = v24;

    v26 = [excerptCopy copy];
    shortExcerpt = v23->_shortExcerpt;
    v23->_shortExcerpt = v26;

    v28 = [dateCopy copy];
    publishDate = v23->_publishDate;
    v23->_publishDate = v28;

    v30 = [nameCopy copy];
    publisherName = v23->_publisherName;
    v23->_publisherName = v30;

    objc_storeStrong(&v23->_publisherLogoImage, logoImage);
    objc_storeStrong(&v23->_publisherLogoMaskImage, maskImage);
  }

  return v23;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  thumbnailImage = [(NSSArticleInternal *)self thumbnailImage];

  if (thumbnailImage)
  {
    thumbnailImage2 = [(NSSArticleInternal *)self thumbnailImage];
    [coderCopy encodeObject:thumbnailImage2 forKey:@"thumbnailImage"];
  }

  title = [(NSSArticleInternal *)self title];

  if (title)
  {
    title2 = [(NSSArticleInternal *)self title];
    [coderCopy encodeObject:title2 forKey:@"title"];
  }

  shortExcerpt = [(NSSArticleInternal *)self shortExcerpt];

  if (shortExcerpt)
  {
    shortExcerpt2 = [(NSSArticleInternal *)self shortExcerpt];
    [coderCopy encodeObject:shortExcerpt2 forKey:@"shortExcerpt"];
  }

  publishDate = [(NSSArticleInternal *)self publishDate];

  if (publishDate)
  {
    publishDate2 = [(NSSArticleInternal *)self publishDate];
    [coderCopy encodeObject:publishDate2 forKey:@"publishDate"];
  }

  publisherName = [(NSSArticleInternal *)self publisherName];

  if (publisherName)
  {
    publisherName2 = [(NSSArticleInternal *)self publisherName];
    [coderCopy encodeObject:publisherName2 forKey:@"publisherName"];
  }

  publisherLogoImage = [(NSSArticleInternal *)self publisherLogoImage];

  if (publisherLogoImage)
  {
    publisherLogoImage2 = [(NSSArticleInternal *)self publisherLogoImage];
    [coderCopy encodeObject:publisherLogoImage2 forKey:@"publisherLogoImage"];
  }

  publisherLogoMaskImage = [(NSSArticleInternal *)self publisherLogoMaskImage];

  v17 = coderCopy;
  if (publisherLogoMaskImage)
  {
    publisherLogoMaskImage2 = [(NSSArticleInternal *)self publisherLogoMaskImage];
    [coderCopy encodeObject:publisherLogoMaskImage2 forKey:@"publisherLogoMaskImage"];

    v17 = coderCopy;
  }
}

- (NSSArticleInternal)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectForKey:@"thumbnailImage"];
  v6 = [coderCopy decodeObjectForKey:@"title"];
  v7 = [coderCopy decodeObjectForKey:@"shortExcerpt"];
  v8 = [coderCopy decodeObjectForKey:@"publishDate"];
  v9 = [coderCopy decodeObjectForKey:@"publisherName"];
  v10 = [coderCopy decodeObjectForKey:@"publisherLogoImage"];
  v11 = [coderCopy decodeObjectForKey:@"publisherLogoMaskImage"];

  v12 = [(NSSArticleInternal *)self initWithThumbnailImage:v5 title:v6 shortExcerpt:v7 publishDate:v8 publisherName:v9 publisherLogoImage:v10 publisherLogoMaskImage:v11];
  return v12;
}

@end