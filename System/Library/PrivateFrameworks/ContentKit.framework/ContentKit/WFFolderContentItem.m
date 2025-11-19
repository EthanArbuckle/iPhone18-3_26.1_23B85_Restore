@interface WFFolderContentItem
+ (id)contentCategories;
+ (id)contentsPropertyBuilder;
+ (id)localizedPluralTypeDescriptionWithContext:(id)a3;
+ (id)localizedTypeDescriptionWithContext:(id)a3;
+ (id)ownedTypes;
+ (id)propertyBuilders;
- (id)defaultSourceForRepresentation:(id)a3;
@end

@implementation WFFolderContentItem

- (id)defaultSourceForRepresentation:(id)a3
{
  v4 = objc_alloc(MEMORY[0x277CD3A58]);
  v5 = [v4 initWithBundleIdentifier:*MEMORY[0x277D7A240]];
  v6 = [(WFContentItem *)self cachingIdentifier];
  v7 = [WFContentAttributionSet attributionSetWithAppDescriptor:v5 disclosureLevel:1 originalItemIdentifier:v6];

  return v7;
}

+ (id)localizedPluralTypeDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Folders", @"Folders");
  v5 = [v3 localize:v4];

  return v5;
}

+ (id)localizedTypeDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Folder", @"Folder");
  v5 = [v3 localize:v4];

  return v5;
}

+ (id)contentCategories
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = @"Documents";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

+ (id)ownedTypes
{
  v2 = MEMORY[0x277CBEB70];
  v3 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1D80]];
  v4 = [v2 orderedSetWithObjects:{v3, 0}];

  return v4;
}

+ (id)propertyBuilders
{
  v9[2] = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == a1)
  {
    v4 = [a1 contentsPropertyBuilder];
    v9[0] = v4;
    v5 = WFLocalizedContentPropertyNameMarker(@"Number of Items");
    v6 = [WFContentPropertyBuilder block:&__block_literal_global_63 name:v5 class:objc_opt_class()];
    v7 = [v6 multipleValues:0];
    v9[1] = v7;
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __39__WFFolderContentItem_propertyBuilders__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a2;
  v6 = a4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __39__WFFolderContentItem_propertyBuilders__block_invoke_2;
  v9[3] = &unk_278348570;
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  [v8 getFileRepresentation:v9 forType:0];
}

void __39__WFFolderContentItem_propertyBuilders__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  if ([v3 includesHiddenFiles])
  {
    v5 = 0;
  }

  else
  {
    v5 = 4;
  }

  v6 = MEMORY[0x277CCABB0];
  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = [v4 fileURL];

  v9 = [v7 contentsOfDirectoryAtURL:v8 includingPropertiesForKeys:0 options:v5 error:0];
  v10 = [v6 numberWithUnsignedInteger:{objc_msgSend(v9, "count")}];

  (*(*(a1 + 40) + 16))();
}

+ (id)contentsPropertyBuilder
{
  v2 = WFLocalizedContentPropertyNameMarker(@"Contents");
  v3 = [WFContentPropertyBuilder block:&__block_literal_global_11125 name:v2 class:objc_opt_class()];
  v4 = [v3 multipleValues:1];
  v5 = [v4 userInfo:@"WFFolderContents"];

  return v5;
}

void __46__WFFolderContentItem_contentsPropertyBuilder__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a2;
  v6 = a4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__WFFolderContentItem_contentsPropertyBuilder__block_invoke_2;
  v9[3] = &unk_278348570;
  v10 = v5;
  v11 = v6;
  v7 = v5;
  v8 = v6;
  [v7 getFileRepresentation:v9 forType:0];
}

void __46__WFFolderContentItem_contentsPropertyBuilder__block_invoke_2(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 fileURL];

  if (v4)
  {
    v5 = [WFiCloudFileDownloadOperation alloc];
    v6 = [v3 fileURL];
    v7 = [(WFiCloudFileDownloadOperation *)v5 initWithFileURL:v6 retrieveFolderContents:1 progress:0];

    [(WFiCloudFileDownloadOperation *)v7 start];
    [(WFiCloudFileDownloadOperation *)v7 waitUntilFinished];
    v8 = [(WFiCloudFileDownloadOperation *)v7 downloadError];

    if (v8)
    {
      v9 = getWFFilesLogObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = [v3 fileURL];
        v11 = [(WFiCloudFileDownloadOperation *)v7 downloadError];
        v19 = 136315650;
        v20 = "+[WFFolderContentItem contentsPropertyBuilder]_block_invoke";
        v21 = 2112;
        v22 = v10;
        v23 = 2112;
        v24 = v11;
        _os_log_impl(&dword_21E1BD000, v9, OS_LOG_TYPE_ERROR, "%s Could not download contents of directory: %@ with error: %@", &v19, 0x20u);
      }

      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v14 = [*(a1 + 32) includesHiddenFiles];
      v15 = *(a1 + 40);
      v16 = [(WFiCloudFileDownloadOperation *)v7 downloadedFiles];
      v17 = v16;
      if (v14)
      {
        (*(v15 + 16))(v15, v16);
      }

      else
      {
        v18 = [v16 if_compactMap:&__block_literal_global_55_11130];
        (*(v15 + 16))(v15, v18);
      }
    }
  }

  else
  {
    v12 = getWFFilesLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [v3 fileURL];
      v19 = 136315394;
      v20 = "+[WFFolderContentItem contentsPropertyBuilder]_block_invoke_2";
      v21 = 2112;
      v22 = v13;
      _os_log_impl(&dword_21E1BD000, v12, OS_LOG_TYPE_ERROR, "%s Error resolving file URL: %@", &v19, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void *__46__WFFolderContentItem_contentsPropertyBuilder__block_invoke_52(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isHidden])
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  v4 = v3;

  return v3;
}

@end