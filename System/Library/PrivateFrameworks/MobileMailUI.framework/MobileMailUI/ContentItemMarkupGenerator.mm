@interface ContentItemMarkupGenerator
+ (BOOL)isDisplayableImageContentItem:(id)item;
+ (BOOL)isPDFContentItem:(id)item;
+ (OS_os_log)log;
+ (id)attachmentElementMarkupStringForContentItem:(id)item;
+ (id)markupStringForDisplayForContentItem:(id)item;
@end

@implementation ContentItemMarkupGenerator

+ (OS_os_log)log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__ContentItemMarkupGenerator_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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

+ (id)markupStringForDisplayForContentItem:(id)item
{
  v22[3] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  type = [itemCopy type];
  contentID = [itemCopy contentID];
  isAvailableLocally = [itemCopy isAvailableLocally];
  if (([self isDisplayableInlineContentItem:itemCopy] & isAvailableLocally) == 1)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v9 = *MEMORY[0x277CE1E08];
    if ([type conformsToType:*MEMORY[0x277CE1E08]])
    {
      [dictionary setObject:@"rgb(254 forKeyedSubscript:{254, 254)", @"background-color"}];
      [dictionary setObject:@"none" forKeyedSubscript:@"-apple-color-filter"];
    }

    if ([MEMORY[0x277D75418] mf_isPadIdiom])
    {
      if ([type conformsToType:v9])
      {
        [dictionary setObject:@"100%" forKeyedSubscript:@"max-width"];
      }

      [dictionary setObject:@"1px 0px 1px 0px" forKeyedSubscript:@"padding"];
    }

    v22[0] = dictionary;
    v21[0] = @"style";
    v21[1] = @"src";
    v10 = MFCreateURLForContentID();
    v21[2] = @"id";
    v22[1] = v10;
    v22[2] = contentID;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];

    v12 = [MEMORY[0x277D07158] htmlSnippetWithTag:@"img" includeTrailingTag:0 attributes:v11];
  }

  else
  {
    v12 = [self attachmentElementMarkupStringForContentItem:itemCopy];
  }

  v13 = +[ContentItemMarkupGenerator log];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    ef_publicDescription = [itemCopy ef_publicDescription];
    v17 = 138543618;
    v18 = ef_publicDescription;
    v19 = 2112;
    v20 = v12;
    _os_log_impl(&dword_2149C9000, v13, OS_LOG_TYPE_DEFAULT, "Content Item %{public}@ generated snippet: %@", &v17, 0x16u);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)attachmentElementMarkupStringForContentItem:(id)item
{
  v31 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v4 = +[ContentItemMarkupGenerator log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    contentID = [itemCopy contentID];
    *buf = 138412290;
    v30 = contentID;
    _os_log_impl(&dword_2149C9000, v4, OS_LOG_TYPE_DEFAULT, "Start to set up markup string for content item: %@", buf, 0xCu);
  }

  displayName = [itemCopy displayName];
  type = [itemCopy type];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  contentID2 = [itemCopy contentID];
  [dictionary setObject:contentID2 forKeyedSubscript:@"id"];

  contentID3 = [itemCopy contentID];
  [dictionary setObject:contentID3 forKeyedSubscript:@"src"];

  if (displayName)
  {
    v11 = displayName;
  }

  else
  {
    v11 = @"---";
  }

  [dictionary setObject:v11 forKeyedSubscript:@"title"];
  identifier = [type identifier];
  [dictionary setObject:identifier forKeyedSubscript:@"type"];

  v13 = MFLookupLocalizedString();
  [dictionary setObject:v13 forKeyedSubscript:@"_mf_downloadingStatus"];

  v14 = MFLookupLocalizedString();
  [dictionary setObject:v14 forKeyedSubscript:@"_mf_downloadableStatus"];

  v15 = [MEMORY[0x277CCABB0] numberWithBool:_os_feature_enabled_impl()];
  [dictionary setObject:v15 forKeyedSubscript:@"_mf_show_save"];

  if ([itemCopy isAvailableLocally])
  {
    [dictionary setObject:&unk_2826DC950 forKeyedSubscript:@"_mf_state"];
    if (_os_feature_enabled_impl())
    {
      [dictionary setObject:@"save" forKeyedSubscript:@"save"];
    }
  }

  else
  {
    [dictionary setObject:&unk_2826DC968 forKeyedSubscript:@"_mf_state"];
    v16 = MFLookupLocalizedString();
    [dictionary setObject:v16 forKeyedSubscript:@"action"];
  }

  if ([type conformsToType:*MEMORY[0x277CE1F20]])
  {
    v17 = 1;
  }

  else
  {
    v17 = [type conformsToType:*MEMORY[0x277CE1F18]];
  }

  if ([itemCopy isAvailableLocally] & v17)
  {
    v18 = +[ContentItemMarkupGenerator log];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      ef_publicDescription = [itemCopy ef_publicDescription];
      ef_publicDescription2 = [0 ef_publicDescription];
      [(ContentItemMarkupGenerator *)ef_publicDescription attachmentElementMarkupStringForContentItem:ef_publicDescription2, buf, v18];
    }
  }

  storageByteCount = [itemCopy storageByteCount];
  if ([itemCopy exchangeEventUID])
  {
    if ([itemCopy exchangeEventUID] != -1)
    {
      goto LABEL_27;
    }

    v22 = _EFLocalizedString();
    [dictionary setObject:v22 forKeyedSubscript:@"subtitle"];
  }

  else if (storageByteCount)
  {
    v22 = [MEMORY[0x277CCA8E8] stringFromByteCount:storageByteCount countStyle:0];
    [dictionary setObject:v22 forKeyedSubscript:@"subtitle"];
  }

  else
  {
    dataTransferByteCount = [itemCopy dataTransferByteCount];
    if (dataTransferByteCount)
    {
      v22 = [MEMORY[0x277CCA8E8] stringFromByteCount:dataTransferByteCount countStyle:1];
      [dictionary setObject:v22 forKeyedSubscript:@"subtitle"];
    }

    else
    {
      v22 = +[ContentItemMarkupGenerator log];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        ef_publicDescription3 = [itemCopy ef_publicDescription];
        [(ContentItemMarkupGenerator *)ef_publicDescription3 attachmentElementMarkupStringForContentItem:v28, v22];
      }
    }
  }

LABEL_27:
  v25 = [MEMORY[0x277D07158] htmlSnippetWithTag:@"attachment" includeTrailingTag:1 attributes:dictionary];

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

+ (BOOL)isDisplayableImageContentItem:(id)item
{
  itemCopy = item;
  uniformTypeIdentifier = [itemCopy uniformTypeIdentifier];

  if (uniformTypeIdentifier)
  {
    type = [itemCopy type];
    if ([type conformsToType:*MEMORY[0x277CE1DC0]] & 1) != 0 || (objc_msgSend(type, "conformsToType:", *MEMORY[0x277CE1E10]) & 1) != 0 || (objc_msgSend(type, "conformsToType:", *MEMORY[0x277CE1D88]))
    {
      v6 = 1;
    }

    else
    {
      v6 = [type conformsToType:*MEMORY[0x277CE1DB0]];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)isPDFContentItem:(id)item
{
  type = [item type];
  v4 = [type conformsToType:*MEMORY[0x277CE1E08]];

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