@interface WFPhotoItemProviderContentItem
+ (id)itemWithItemProviderItem:(id)a3 photoMediaFileRepresentation:(id)a4 assetIdentifier:(id)a5;
+ (id)localizedPluralTypeDescriptionWithContext:(id)a3;
+ (id)localizedTypeDescriptionWithContext:(id)a3;
+ (id)outputTypes;
- (id)defaultSourceForRepresentation:(id)a3;
- (id)outputTypes;
@end

@implementation WFPhotoItemProviderContentItem

+ (id)localizedPluralTypeDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Photos app media (plural)", @"Photos app media");
  v5 = [v3 localize:v4];

  return v5;
}

+ (id)localizedTypeDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Photos app media (singular)", @"Photos app media");
  v5 = [v3 localize:v4];

  return v5;
}

+ (id)outputTypes
{
  v2 = MEMORY[0x277CBEB70];
  v3 = [WFObjectType typeWithClassName:@"PHAsset" frameworkName:@"Photos" location:0];
  v4 = [v2 orderedSetWithObject:v3];

  return v4;
}

+ (id)itemWithItemProviderItem:(id)a3 photoMediaFileRepresentation:(id)a4 assetIdentifier:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [WFPhotoMediaContentItem itemWithAssetIdentifier:v10 assetFile:v9];
  if (v11)
  {
    v12 = [v8 itemProvider];
    v13 = [a1 itemWithObject:v12 named:0];

    v14 = [v8 contentName];
    [v13 setContentName:v14];

    v15 = [v11 asset];
    v16 = [WFObjectRepresentation object:v15];
    v27 = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
    v22 = 0;
    v23 = &v22;
    v24 = 0x2050000000;
    v18 = getPHAssetClass_softClass_18330;
    v25 = getPHAssetClass_softClass_18330;
    if (!getPHAssetClass_softClass_18330)
    {
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __getPHAssetClass_block_invoke_18331;
      v29 = &unk_27834A178;
      v30 = &v22;
      __getPHAssetClass_block_invoke_18331(buf);
      v18 = v23[3];
    }

    v19 = v18;
    _Block_object_dispose(&v22, 8);
    [v13 setObjectRepresentations:v17 forClass:{v18, v22}];

    v26 = v11;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
    [v13 setSubItems:v20 forClass:objc_opt_class()];
  }

  else
  {
    v20 = getWFContentGraphLogObject();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      *&buf[4] = "+[WFPhotoItemProviderContentItem itemWithItemProviderItem:photoMediaFileRepresentation:assetIdentifier:]";
      *&buf[12] = 2112;
      *&buf[14] = v10;
      _os_log_impl(&dword_21E1BD000, v20, OS_LOG_TYPE_FAULT, "%s Failed to create photo asset with share sheet asset identifier %@", buf, 0x16u);
    }

    v13 = 0;
  }

  return v13;
}

- (id)defaultSourceForRepresentation:(id)a3
{
  v4 = objc_alloc(MEMORY[0x277CD3A58]);
  v5 = [v4 initWithBundleIdentifier:*MEMORY[0x277D7A2A8]];
  v6 = [MEMORY[0x277CD3A88] sharedResolver];
  v7 = [v6 resolvedAppMatchingDescriptor:v5];

  v8 = [(WFContentItem *)self cachingIdentifier];
  v9 = [WFContentAttributionSet attributionSetWithAppDescriptor:v7 disclosureLevel:1 originalItemIdentifier:v8];

  return v9;
}

- (id)outputTypes
{
  v2 = [objc_opt_class() outputTypes];
  v3 = [v2 mutableCopy];

  v4 = [WFObjectType typeWithClass:objc_opt_class()];
  [v3 addObject:v4];

  return v3;
}

@end