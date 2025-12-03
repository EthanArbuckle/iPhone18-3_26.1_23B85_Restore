@interface WFObjectNameProvider
+ (id)sharedProvider;
- (WFObjectNameProvider)init;
- (id)nameForObject:(id)object;
@end

@implementation WFObjectNameProvider

- (id)nameForObject:(id)object
{
  objectCopy = object;
  v5 = objc_opt_class();
  while (1)
  {
    contents = [(WFObjectNameProvider *)self contents];
    v7 = NSStringFromClass(v5);
    v8 = [contents objectForKey:v7];

    if (v8)
    {
      break;
    }

    v5 = [(objc_class *)v5 superclass];
    if (!v5)
    {
      v9 = 0;
      goto LABEL_6;
    }
  }

  v9 = (v8)[2](v8, objectCopy);

LABEL_6:

  return v9;
}

- (WFObjectNameProvider)init
{
  v9[8] = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = WFObjectNameProvider;
  v2 = [(WFObjectNameProvider *)&v7 init];
  if (v2)
  {
    v8[0] = @"PHAsset";
    v8[1] = @"PHAssetCollection";
    v9[0] = &__block_literal_global_31;
    v9[1] = &__block_literal_global_37;
    v8[2] = @"EKCalendarItem";
    v8[3] = @"REMReminder";
    v9[2] = &__block_literal_global_51;
    v9[3] = &__block_literal_global_57;
    v8[4] = @"MKMapItem";
    v8[5] = @"CLPlacemark";
    v9[4] = &__block_literal_global_63_22058;
    v9[5] = &__block_literal_global_69_22060;
    v8[6] = @"MPMediaItem";
    v8[7] = @"AVAsset";
    v9[6] = &__block_literal_global_75_22062;
    v9[7] = &__block_literal_global_81;
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:8];
    contents = v2->_contents;
    v2->_contents = v3;

    v5 = v2;
  }

  return v2;
}

id __28__WFObjectNameProvider_init__block_invoke_8(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v20 = a2;
  v2 = [v20 commonMetadata];
  v3 = [v2 countByEnumeratingWithState:&v21 objects:v34 count:16];
  if (v3)
  {
    v4 = *v22;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v22 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v21 + 1) + 8 * i);
        v7 = [v6 commonKey];
        v30 = 0;
        v31 = &v30;
        v32 = 0x2020000000;
        v8 = getAVMetadataCommonKeyTitleSymbolLoc_ptr_22066;
        v33 = getAVMetadataCommonKeyTitleSymbolLoc_ptr_22066;
        if (!getAVMetadataCommonKeyTitleSymbolLoc_ptr_22066)
        {
          v25 = MEMORY[0x277D85DD0];
          v26 = 3221225472;
          v27 = __getAVMetadataCommonKeyTitleSymbolLoc_block_invoke_22067;
          v28 = &unk_27834A178;
          v29 = &v30;
          v9 = AVFoundationLibrary_22068();
          v10 = dlsym(v9, "AVMetadataCommonKeyTitle");
          *(v29[1] + 24) = v10;
          getAVMetadataCommonKeyTitleSymbolLoc_ptr_22066 = *(v29[1] + 24);
          v8 = v31[3];
        }

        _Block_object_dispose(&v30, 8);
        if (!v8)
        {
          v18 = [MEMORY[0x277CCA890] currentHandler];
          v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"AVMetadataKey getAVMetadataCommonKeyTitle(void)"];
          [v18 handleFailureInFunction:v19 file:@"WFObjectNameProvider.m" lineNumber:40 description:{@"%s", dlerror()}];

          __break(1u);
        }

        v11 = [v7 isEqual:*v8];

        if (v11)
        {
          v16 = [v6 stringValue];
          goto LABEL_19;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v21 objects:v34 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v2 = v20;
  if (!v2)
  {
    goto LABEL_18;
  }

  v30 = 0;
  v31 = &v30;
  v32 = 0x2050000000;
  v12 = getAVURLAssetClass_softClass_22075;
  v33 = getAVURLAssetClass_softClass_22075;
  if (!getAVURLAssetClass_softClass_22075)
  {
    v25 = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = __getAVURLAssetClass_block_invoke_22076;
    v28 = &unk_27834A178;
    v29 = &v30;
    __getAVURLAssetClass_block_invoke_22076(&v25);
    v12 = v31[3];
  }

  v13 = v12;
  _Block_object_dispose(&v30, 8);
  if (objc_opt_isKindOfClass())
  {
    v14 = [v2 URL];
    v15 = [v14 lastPathComponent];
    v16 = [v15 stringByDeletingPathExtension];
  }

  else
  {
LABEL_18:
    v16 = 0;
  }

LABEL_19:

  return v16;
}

void __28__WFObjectNameProvider_init__block_invoke_7(uint64_t a1, void *a2)
{
  v2 = a2;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v3 = getMPMediaItemPropertyTitleSymbolLoc_ptr_22094;
  v12 = getMPMediaItemPropertyTitleSymbolLoc_ptr_22094;
  if (!getMPMediaItemPropertyTitleSymbolLoc_ptr_22094)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __getMPMediaItemPropertyTitleSymbolLoc_block_invoke_22095;
    v8[3] = &unk_27834A178;
    v8[4] = &v9;
    __getMPMediaItemPropertyTitleSymbolLoc_block_invoke_22095(v8);
    v3 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  if (v3)
  {
    v4 = [v2 valueForProperty:*v3];

    v5 = v4;
  }

  else
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMPMediaItemPropertyTitle(void)"];
    [v6 handleFailureInFunction:v7 file:@"WFObjectNameProvider.m" lineNumber:36 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

id __28__WFObjectNameProvider_init__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 title];
  v3 = [v2 string];

  return v3;
}

id __28__WFObjectNameProvider_init__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 localizedTitle];

  if (v3)
  {
    v4 = [v2 localizedTitle];
    goto LABEL_10;
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x2050000000;
  v5 = getPHImportSessionClass_softClass;
  v17 = getPHImportSessionClass_softClass;
  if (!getPHImportSessionClass_softClass)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __getPHImportSessionClass_block_invoke;
    v13[3] = &unk_27834A178;
    v13[4] = &v14;
    __getPHImportSessionClass_block_invoke(v13);
    v5 = v15[3];
  }

  v6 = v5;
  _Block_object_dispose(&v14, 8);
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  v4 = [v2 startDate];
  if (!v4)
  {
    goto LABEL_10;
  }

  v7 = MEMORY[0x277CCA968];
  v8 = [v2 startDate];
  v9 = [v7 localizedStringFromDate:v8 dateStyle:1 timeStyle:0];

  if (v9)
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = WFLocalizedString(@"Imported on %@");
    v4 = [v10 localizedStringWithFormat:v11, v9];
  }

  else
  {
LABEL_9:
    v4 = 0;
  }

LABEL_10:

  return v4;
}

id __28__WFObjectNameProvider_init__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 originalFilename];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 stringByDeletingPathExtension];
  }

  else
  {
    v6 = [v2 filename];
    v5 = [v6 stringByDeletingPathExtension];
  }

  return v5;
}

+ (id)sharedProvider
{
  if (sharedProvider_onceToken_22139 != -1)
  {
    dispatch_once(&sharedProvider_onceToken_22139, &__block_literal_global_22140);
  }

  v3 = sharedProvider_sharedProvider;

  return v3;
}

uint64_t __38__WFObjectNameProvider_sharedProvider__block_invoke()
{
  sharedProvider_sharedProvider = objc_alloc_init(WFObjectNameProvider);

  return MEMORY[0x2821F96F8]();
}

@end