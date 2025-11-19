@interface ContentItemMarkupGenerator
+ (BOOL)isDisplayableImageContentItem:(id)a3;
+ (BOOL)isPDFContentItem:(id)a3;
+ (OS_os_log)log;
+ (id)attachmentElementMarkupStringForContentItem:(id)a3;
+ (id)markupStringForDisplayForContentItem:(id)a3;
@end

@implementation ContentItemMarkupGenerator

+ (OS_os_log)log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__ContentItemMarkupGenerator_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken != -1)
  {
    dispatch_once(&log_onceToken, block);
  }

  v2 = log_log;

  return v2;
}

void __33__ContentItemMarkupGenerator_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.mobilemail", [v3 UTF8String]);
  v2 = log_log;
  log_log = v1;
}

+ (id)markupStringForDisplayForContentItem:(id)a3
{
  v22[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 type];
  v6 = [v4 contentID];
  v7 = [v4 isAvailableLocally];
  if (([a1 isDisplayableInlineContentItem:v4] & v7) == 1)
  {
    v8 = [MEMORY[0x277CBEB38] dictionary];
    v9 = *MEMORY[0x277CE1E08];
    if ([v5 conformsToType:*MEMORY[0x277CE1E08]])
    {
      [v8 setObject:@"rgb(254 forKeyedSubscript:{254, 254)", @"background-color"}];
      [v8 setObject:@"none" forKeyedSubscript:@"-apple-color-filter"];
    }

    if ([MEMORY[0x277D75418] mf_isPadIdiom])
    {
      if ([v5 conformsToType:v9])
      {
        [v8 setObject:@"100%" forKeyedSubscript:@"max-width"];
      }

      [v8 setObject:@"1px 0px 1px 0px" forKeyedSubscript:@"padding"];
    }

    v22[0] = v8;
    v21[0] = @"style";
    v21[1] = @"src";
    v10 = MFCreateURLForContentID();
    v21[2] = @"id";
    v22[1] = v10;
    v22[2] = v6;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];

    v12 = [MEMORY[0x277D07158] htmlSnippetWithTag:@"img" includeTrailingTag:0 attributes:v11];
  }

  else
  {
    v12 = [a1 attachmentElementMarkupStringForContentItem:v4];
  }

  v13 = +[ContentItemMarkupGenerator log];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v4 ef_publicDescription];
    v17 = 138543618;
    v18 = v14;
    v19 = 2112;
    v20 = v12;
    _os_log_impl(&dword_2149C9000, v13, OS_LOG_TYPE_DEFAULT, "Content Item %{public}@ generated snippet: %@", &v17, 0x16u);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)attachmentElementMarkupStringForContentItem:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[ContentItemMarkupGenerator log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 contentID];
    *buf = 138412290;
    v30 = v5;
    _os_log_impl(&dword_2149C9000, v4, OS_LOG_TYPE_DEFAULT, "Start to set up markup string for content item: %@", buf, 0xCu);
  }

  v6 = [v3 displayName];
  v7 = [v3 type];
  v8 = [MEMORY[0x277CBEB38] dictionary];
  v9 = [v3 contentID];
  [v8 setObject:v9 forKeyedSubscript:@"id"];

  v10 = [v3 contentID];
  [v8 setObject:v10 forKeyedSubscript:@"src"];

  if (v6)
  {
    v11 = v6;
  }

  else
  {
    v11 = @"---";
  }

  [v8 setObject:v11 forKeyedSubscript:@"title"];
  v12 = [v7 identifier];
  [v8 setObject:v12 forKeyedSubscript:@"type"];

  v13 = MFLookupLocalizedString();
  [v8 setObject:v13 forKeyedSubscript:@"_mf_downloadingStatus"];

  v14 = MFLookupLocalizedString();
  [v8 setObject:v14 forKeyedSubscript:@"_mf_downloadableStatus"];

  v15 = [MEMORY[0x277CCABB0] numberWithBool:_os_feature_enabled_impl()];
  [v8 setObject:v15 forKeyedSubscript:@"_mf_show_save"];

  if ([v3 isAvailableLocally])
  {
    [v8 setObject:&unk_2826DC950 forKeyedSubscript:@"_mf_state"];
    if (_os_feature_enabled_impl())
    {
      [v8 setObject:@"save" forKeyedSubscript:@"save"];
    }
  }

  else
  {
    [v8 setObject:&unk_2826DC968 forKeyedSubscript:@"_mf_state"];
    v16 = MFLookupLocalizedString();
    [v8 setObject:v16 forKeyedSubscript:@"action"];
  }

  if ([v7 conformsToType:*MEMORY[0x277CE1F20]])
  {
    v17 = 1;
  }

  else
  {
    v17 = [v7 conformsToType:*MEMORY[0x277CE1F18]];
  }

  if ([v3 isAvailableLocally] & v17)
  {
    v18 = +[ContentItemMarkupGenerator log];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [v3 ef_publicDescription];
      v20 = [0 ef_publicDescription];
      [(ContentItemMarkupGenerator *)v19 attachmentElementMarkupStringForContentItem:v20, buf, v18];
    }
  }

  v21 = [v3 storageByteCount];
  if ([v3 exchangeEventUID])
  {
    if ([v3 exchangeEventUID] != -1)
    {
      goto LABEL_27;
    }

    v22 = _EFLocalizedString();
    [v8 setObject:v22 forKeyedSubscript:@"subtitle"];
  }

  else if (v21)
  {
    v22 = [MEMORY[0x277CCA8E8] stringFromByteCount:v21 countStyle:0];
    [v8 setObject:v22 forKeyedSubscript:@"subtitle"];
  }

  else
  {
    v23 = [v3 dataTransferByteCount];
    if (v23)
    {
      v22 = [MEMORY[0x277CCA8E8] stringFromByteCount:v23 countStyle:1];
      [v8 setObject:v22 forKeyedSubscript:@"subtitle"];
    }

    else
    {
      v22 = +[ContentItemMarkupGenerator log];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v24 = [v3 ef_publicDescription];
        [(ContentItemMarkupGenerator *)v24 attachmentElementMarkupStringForContentItem:v28, v22];
      }
    }
  }

LABEL_27:
  v25 = [MEMORY[0x277D07158] htmlSnippetWithTag:@"attachment" includeTrailingTag:1 attributes:v8];

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

+ (BOOL)isDisplayableImageContentItem:(id)a3
{
  v3 = a3;
  v4 = [v3 uniformTypeIdentifier];

  if (v4)
  {
    v5 = [v3 type];
    if ([v5 conformsToType:*MEMORY[0x277CE1DC0]] & 1) != 0 || (objc_msgSend(v5, "conformsToType:", *MEMORY[0x277CE1E10]) & 1) != 0 || (objc_msgSend(v5, "conformsToType:", *MEMORY[0x277CE1D88]))
    {
      v6 = 1;
    }

    else
    {
      v6 = [v5 conformsToType:*MEMORY[0x277CE1DB0]];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)isPDFContentItem:(id)a3
{
  v3 = [a3 type];
  v4 = [v3 conformsToType:*MEMORY[0x277CE1E08]];

  return v4;
}

+ (void)attachmentElementMarkupStringForContentItem:(uint8_t *)buf .cold.1(__CFString *a1, void *a2, uint8_t *buf, os_log_t log)
{
  v6 = @"non-extended-content-item";
  if (a1)
  {
    v6 = a1;
  }

  *buf = 138543618;
  *(buf + 4) = v6;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_2149C9000, log, OS_LOG_TYPE_ERROR, "error creating pass from content item %{public}@: %{public}@", buf, 0x16u);
}

+ (void)attachmentElementMarkupStringForContentItem:(os_log_t)log .cold.2(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_2149C9000, log, OS_LOG_TYPE_ERROR, "content item %{public}@ had neither a storage or data transfer byte count", buf, 0xCu);
}

@end