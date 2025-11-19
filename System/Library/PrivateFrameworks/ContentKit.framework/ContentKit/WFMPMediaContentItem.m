@interface WFMPMediaContentItem
+ (id)contentCategories;
+ (id)localizedFilterDescriptionWithContext:(id)a3;
+ (id)localizedPluralFilterDescriptionWithContext:(id)a3;
+ (id)localizedPluralTypeDescriptionWithContext:(id)a3;
+ (id)localizedTypeDescriptionWithContext:(id)a3;
+ (id)outputTypes;
+ (id)ownedTypes;
+ (id)propertyBuilders;
+ (id)stringConversionBehavior;
+ (void)runQuery:(id)a3 withItems:(id)a4 permissionRequestor:(id)a5 completionHandler:(id)a6;
- (BOOL)getListAltText:(id)a3;
- (BOOL)getListSubtitle:(id)a3;
- (BOOL)getListThumbnail:(id)a3 forSize:(CGSize)a4;
- (MPMediaItem)mediaItem;
- (NSDictionary)additionalRepresentationsForSerialization;
- (NSString)albumTitle;
- (NSString)artist;
- (NSString)title;
- (WFFileType)preferredFileType;
- (id)assetURL;
- (id)generateObjectRepresentationForClass:(Class)a3 options:(id)a4 error:(id *)a5;
- (void)getPreferredFileSize:(id)a3;
@end

@implementation WFMPMediaContentItem

- (id)generateObjectRepresentationForClass:(Class)a3 options:(id)a4 error:(id *)a5
{
  v45[2] = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == a3)
  {
    v13 = [(WFMPMediaContentItem *)self mediaItem];
    v14 = getMPMediaItemPropertyArtwork();
    v10 = [v13 valueForProperty:v14];

    v15 = [(WFMPMediaContentItem *)self mediaItem];
    v16 = getMPMediaItemPropertyAlbumTitle();
    v17 = [v15 valueForProperty:v16];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = [(WFContentItem *)self name];
    }

    v11 = v19;

    [v10 bounds];
    v22 = [v10 imageWithSize:{v20, v21}];
    if (v22)
    {
      v23 = [objc_alloc(MEMORY[0x277D79FC8]) initWithPlatformImage:v22];
      a5 = [WFObjectRepresentation object:v23 named:v11];
    }

    else if (a5)
    {
      v41 = MEMORY[0x277CCA9B8];
      v24 = *MEMORY[0x277CCA5B8];
      v44[0] = *MEMORY[0x277CCA470];
      v25 = WFLocalizedString(@"Item Has No Album Art");
      v45[0] = v25;
      v44[1] = *MEMORY[0x277CCA450];
      v26 = MEMORY[0x277CCACA8];
      v27 = WFLocalizedString(@"The item “%@” cannot be converted to an image, because it has no artwork.");
      v28 = [(WFContentItem *)self name];
      v29 = [v26 localizedStringWithFormat:v27, v28];
      v45[1] = v29;
      v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:2];
      *a5 = [v41 errorWithDomain:v24 code:79 userInfo:v30];

      a5 = 0;
    }

    goto LABEL_20;
  }

  v8 = NSStringFromClass(a3);
  v9 = [@"AVAsset" isEqualToString:v8];

  if (v9)
  {
    v10 = [(WFMPMediaContentItem *)self assetURL];
    if (!v10)
    {
      if (a5)
      {
        v31 = MEMORY[0x277CCA9B8];
        v32 = *MEMORY[0x277CCA5B8];
        v42[0] = *MEMORY[0x277CCA470];
        v33 = WFLocalizedString(@"Item Not Downloaded");
        v43[0] = v33;
        v42[1] = *MEMORY[0x277CCA450];
        v34 = MEMORY[0x277CCACA8];
        v35 = WFLocalizedString(@"The item “%@” cannot be exported, likely because it is only stored in iCloud or has not yet been synced to this device.");
        v36 = [(WFContentItem *)self name];
        v37 = [v34 localizedStringWithFormat:v35, v36];
        v43[1] = v37;
        v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:2];
        *a5 = [v31 errorWithDomain:v32 code:79 userInfo:v38];

        a5 = 0;
      }

      goto LABEL_21;
    }

    v11 = [getAVURLAssetClass_10395() assetWithURL:v10];
    v12 = [(WFContentItem *)self name];
    a5 = [WFObjectRepresentation object:v11 named:v12];
  }

  else
  {
    if (objc_opt_class() != a3)
    {
      a5 = 0;
      goto LABEL_22;
    }

    v10 = [(WFMPMediaContentItem *)self mediaItem];
    v11 = [v10 releaseDate];
    if (!v11)
    {
      a5 = 0;
      goto LABEL_20;
    }

    v12 = [(WFMPMediaContentItem *)self mediaItem];
    v39 = [v12 releaseDate];
    a5 = [WFObjectRepresentation object:v39 named:@"Release Date"];
  }

LABEL_20:
LABEL_21:

LABEL_22:

  return a5;
}

- (WFFileType)preferredFileType
{
  v3 = [(WFMPMediaContentItem *)self assetURL];
  v4 = [v3 pathExtension];

  if ([v4 length])
  {
    v5 = [MEMORY[0x277D79F68] typeFromFileExtension:v4];
    if ([v5 conformsToUTType:*MEMORY[0x277CE1DE0]])
    {
      v6 = [MEMORY[0x277D79F68] typeWithString:*MEMORY[0x277D7A418]];
    }

    else
    {
      v6 = v5;
    }

    v7 = v6;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = WFMPMediaContentItem;
    v7 = [(WFContentItem *)&v9 preferredFileType];
  }

  return v7;
}

- (void)getPreferredFileSize:(id)a3
{
  v4 = a3;
  v5 = [(WFMPMediaContentItem *)self assetURL];

  if (!v5)
  {
    v4[2](v4, 0);
LABEL_21:

    return;
  }

  AVURLAssetClass_10395 = getAVURLAssetClass_10395();
  v7 = [(WFMPMediaContentItem *)self assetURL];
  v8 = [AVURLAssetClass_10395 assetWithURL:v7];

  v9 = [(WFMPMediaContentItem *)self preferredFileType];
  if (([v9 conformsToString:*MEMORY[0x277D7A418]] & 1) == 0)
  {
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __45__WFMPMediaContentItem_getPreferredFileSize___block_invoke;
    v32[3] = &unk_278349F78;
    v33 = v4;
    [(WFContentItem *)self getFileRepresentation:v32 forType:0];
    v15 = v33;
LABEL_20:

    goto LABEL_21;
  }

  *&v34 = 0;
  *(&v34 + 1) = &v34;
  v35 = 0x2050000000;
  v10 = getAVAssetExportSessionClass_softClass_10441;
  v36 = getAVAssetExportSessionClass_softClass_10441;
  if (!getAVAssetExportSessionClass_softClass_10441)
  {
    *&v24 = MEMORY[0x277D85DD0];
    *(&v24 + 1) = 3221225472;
    *&v25 = __getAVAssetExportSessionClass_block_invoke_10442;
    *(&v25 + 1) = &unk_27834A178;
    *&v26 = &v34;
    __getAVAssetExportSessionClass_block_invoke_10442(&v24);
    v10 = *(*(&v34 + 1) + 24);
  }

  v11 = v10;
  _Block_object_dispose(&v34, 8);
  *&v34 = 0;
  *(&v34 + 1) = &v34;
  v35 = 0x2020000000;
  v12 = getAVAssetExportPresetAppleM4ASymbolLoc_ptr_10443;
  v36 = getAVAssetExportPresetAppleM4ASymbolLoc_ptr_10443;
  if (!getAVAssetExportPresetAppleM4ASymbolLoc_ptr_10443)
  {
    *&v24 = MEMORY[0x277D85DD0];
    *(&v24 + 1) = 3221225472;
    *&v25 = __getAVAssetExportPresetAppleM4ASymbolLoc_block_invoke_10444;
    *(&v25 + 1) = &unk_27834A178;
    *&v26 = &v34;
    v13 = AVFoundationLibrary_10402();
    v14 = dlsym(v13, "AVAssetExportPresetAppleM4A");
    *(*(v26 + 8) + 24) = v14;
    getAVAssetExportPresetAppleM4ASymbolLoc_ptr_10443 = *(*(v26 + 8) + 24);
    v12 = *(*(&v34 + 1) + 24);
  }

  _Block_object_dispose(&v34, 8);
  if (v12)
  {
    v15 = [v10 exportSessionWithAsset:v8 presetName:*v12];
    *&v34 = 0;
    *(&v34 + 1) = &v34;
    v35 = 0x2020000000;
    v16 = getkCMTimeZeroSymbolLoc_ptr_10447;
    v36 = getkCMTimeZeroSymbolLoc_ptr_10447;
    if (!getkCMTimeZeroSymbolLoc_ptr_10447)
    {
      *&v24 = MEMORY[0x277D85DD0];
      *(&v24 + 1) = 3221225472;
      *&v25 = __getkCMTimeZeroSymbolLoc_block_invoke_10448;
      *(&v25 + 1) = &unk_27834A178;
      *&v26 = &v34;
      v17 = CoreMediaLibrary_10449();
      v18 = dlsym(v17, "kCMTimeZero");
      *(*(v26 + 8) + 24) = v18;
      getkCMTimeZeroSymbolLoc_ptr_10447 = *(*(v26 + 8) + 24);
      v16 = *(*(&v34 + 1) + 24);
    }

    _Block_object_dispose(&v34, 8);
    if (v16)
    {
      v29 = *v16;
      v30 = *(v16 + 16);
      if (v8)
      {
        [v8 duration];
      }

      else
      {
        v27 = 0uLL;
        v28 = 0;
      }

      *&v34 = 0;
      *(&v34 + 1) = &v34;
      v35 = 0x2020000000;
      v19 = getCMTimeRangeMakeSymbolLoc_ptr_10451;
      v36 = getCMTimeRangeMakeSymbolLoc_ptr_10451;
      if (!getCMTimeRangeMakeSymbolLoc_ptr_10451)
      {
        *&v24 = MEMORY[0x277D85DD0];
        *(&v24 + 1) = 3221225472;
        *&v25 = __getCMTimeRangeMakeSymbolLoc_block_invoke_10452;
        *(&v25 + 1) = &unk_27834A178;
        *&v26 = &v34;
        v20 = CoreMediaLibrary_10449();
        v21 = dlsym(v20, "CMTimeRangeMake");
        *(*(v26 + 8) + 24) = v21;
        getCMTimeRangeMakeSymbolLoc_ptr_10451 = *(*(v26 + 8) + 24);
        v19 = *(*(&v34 + 1) + 24);
      }

      _Block_object_dispose(&v34, 8);
      if (v19)
      {
        v24 = v29;
        *&v25 = v30;
        v34 = v27;
        v35 = v28;
        v19(v31, &v24, &v34);
        v24 = v31[0];
        v25 = v31[1];
        v26 = v31[2];
        [v15 setTimeRange:&v24];
        v4[2](v4, [v15 estimatedOutputFileLength]);
        goto LABEL_20;
      }

      v22 = [MEMORY[0x277CCA890] currentHandler];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CMTimeRange soft_CMTimeRangeMake(CMTime, CMTime)"}];
      [v22 handleFailureInFunction:v23 file:@"WFMPMediaContentItem.m" lineNumber:25 description:{@"%s", dlerror()}];
    }

    else
    {
      v22 = [MEMORY[0x277CCA890] currentHandler];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"CMTime getkCMTimeZero(void)"];
      [v22 handleFailureInFunction:v23 file:@"WFMPMediaContentItem.m" lineNumber:24 description:{@"%s", dlerror()}];
    }
  }

  else
  {
    v22 = [MEMORY[0x277CCA890] currentHandler];
    v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getAVAssetExportPresetAppleM4A(void)"];
    [v22 handleFailureInFunction:v23 file:@"WFMPMediaContentItem.m" lineNumber:30 description:{@"%s", dlerror()}];
  }

  __break(1u);
}

uint64_t __45__WFMPMediaContentItem_getPreferredFileSize___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 fileSize];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

- (NSString)albumTitle
{
  v2 = [(WFMPMediaContentItem *)self mediaItem];
  v3 = [v2 albumTitle];

  return v3;
}

- (NSString)artist
{
  v2 = [(WFMPMediaContentItem *)self mediaItem];
  v3 = [v2 artist];

  return v3;
}

- (NSString)title
{
  v2 = [(WFMPMediaContentItem *)self mediaItem];
  v3 = [v2 title];

  return v3;
}

- (NSDictionary)additionalRepresentationsForSerialization
{
  v10.receiver = self;
  v10.super_class = WFMPMediaContentItem;
  v3 = [(WFContentItem *)&v10 additionalRepresentationsForSerialization];
  v4 = [v3 mutableCopy];

  v5 = [(WFMPMediaContentItem *)self preferredFileType];
  v6 = [v5 string];
  [v4 setObject:v6 forKey:@"link.contentkit.remoteitem.preferredfiletype"];

  v7 = [(WFMPMediaContentItem *)self artist];
  [v4 setValue:v7 forKey:@"link.contentkit.mpmediaitem.artist"];

  v8 = [(WFMPMediaContentItem *)self albumTitle];
  [v4 setValue:v8 forKey:@"link.contentkit.mpmediaitem.album"];

  return v4;
}

- (id)assetURL
{
  v2 = [(WFMPMediaContentItem *)self mediaItem];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v3 = getMPMediaItemPropertyAssetURLSymbolLoc_ptr;
  v12 = getMPMediaItemPropertyAssetURLSymbolLoc_ptr;
  if (!getMPMediaItemPropertyAssetURLSymbolLoc_ptr)
  {
    v4 = MediaPlayerLibrary();
    v10[3] = dlsym(v4, "MPMediaItemPropertyAssetURL");
    getMPMediaItemPropertyAssetURLSymbolLoc_ptr = v10[3];
    v3 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  if (v3)
  {
    v5 = [v2 valueForProperty:*v3];

    return v5;
  }

  else
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMPMediaItemPropertyAssetURL(void)"];
    [v7 handleFailureInFunction:v8 file:@"WFMPMediaContentItem.m" lineNumber:35 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

- (MPMediaItem)mediaItem
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2050000000;
  v3 = getMPMediaItemClass_softClass_10468;
  v11 = getMPMediaItemClass_softClass_10468;
  if (!getMPMediaItemClass_softClass_10468)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __getMPMediaItemClass_block_invoke_10469;
    v7[3] = &unk_27834A178;
    v7[4] = &v8;
    __getMPMediaItemClass_block_invoke_10469(v7);
    v3 = v9[3];
  }

  v4 = v3;
  _Block_object_dispose(&v8, 8);
  v5 = [(WFContentItem *)self objectForClass:v3];

  return v5;
}

+ (id)localizedPluralFilterDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Music (plural)", @"Music");
  v5 = [v3 localize:v4];

  return v5;
}

+ (id)localizedFilterDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Music (singular)", @"Music");
  v5 = [v3 localize:v4];

  return v5;
}

+ (id)localizedPluralTypeDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"iTunes media (plural)", @"iTunes media");
  v5 = [v3 localize:v4];

  return v5;
}

+ (id)localizedTypeDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"iTunes media (singular)", @"iTunes media");
  v5 = [v3 localize:v4];

  return v5;
}

+ (id)contentCategories
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = @"Media";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

+ (id)outputTypes
{
  v2 = MEMORY[0x277CBEB70];
  v3 = [WFObjectType typeWithClassName:@"AVAsset" frameworkName:@"AVFoundation" location:0];
  v4 = [WFObjectType typeWithClass:objc_opt_class()];
  v5 = [WFObjectType typeWithClass:objc_opt_class()];
  v6 = [v2 orderedSetWithObjects:{v3, v4, v5, 0}];

  return v6;
}

+ (id)ownedTypes
{
  v2 = MEMORY[0x277CBEB70];
  v3 = [WFObjectType typeWithClassName:@"MPMediaItem" frameworkName:@"MediaPlayer" location:2];
  v4 = [v2 orderedSetWithObject:v3];

  return v4;
}

+ (void)runQuery:(id)a3 withItems:(id)a4 permissionRequestor:(id)a5 completionHandler:(id)a6
{
  v35 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [a1 allProperties];
  v15 = getMPMediaItemPropertyDiscNumber();
  v16 = [v14 objectMatchingKey:@"userInfo" value:v15];

  v17 = getMPMediaItemPropertyAlbumTrackNumber();
  v18 = [v14 objectMatchingKey:@"userInfo" value:v17];

  v19 = getMPMediaItemPropertyAlbumTitle();
  WFInsertSortDescriptorAroundDescriptorMatchingUserInfo(v10, v18, 0, 1u, v19);

  v20 = getMPMediaItemPropertyAlbumTrackNumber();
  WFInsertSortDescriptorAroundDescriptorMatchingUserInfo(v10, v16, 1, 0, v20);

  v21 = getWFContentGraphLogObject();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v30 = "+[WFMPMediaContentItem runQuery:withItems:permissionRequestor:completionHandler:]";
    v31 = 2112;
    v32 = v10;
    v33 = 2048;
    v34 = [v11 count];
    _os_log_impl(&dword_21E1BD000, v21, OS_LOG_TYPE_INFO, "%s Running query %@ with %lu input items", buf, 0x20u);
  }

  if ([v11 count])
  {
    v28.receiver = a1;
    v28.super_class = &OBJC_METACLASS___WFMPMediaContentItem;
    objc_msgSendSuper2(&v28, sel_runQuery_withItems_permissionRequestor_completionHandler_, v10, v11, v12, v13);
  }

  else
  {
    v22 = [v10 predicate];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __81__WFMPMediaContentItem_runQuery_withItems_permissionRequestor_completionHandler___block_invoke;
    v23[3] = &unk_278346D70;
    v24 = v10;
    v25 = v12;
    v26 = v13;
    v27 = a1;
    [(WFContentLibraryANDFiltering *)WFMPMediaLibraryFiltering getItemsMatchingPredicate:v22 resultHandler:v23];
  }
}

void __81__WFMPMediaContentItem_runQuery_withItems_permissionRequestor_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [[WFContentQuery alloc] initWithPredicate:0];

    v6 = [*(a1 + 32) sortDescriptors];
    [(WFContentQuery *)v5 setSortDescriptors:v6];

    v7 = [*(a1 + 32) slice];
    [(WFContentQuery *)v5 setSlice:v7, v8];
    v9 = [*(a1 + 32) userInfo];
    [(WFContentQuery *)v5 setUserInfo:v9];

    v4 = v5;
  }

  else
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2050000000;
    v10 = getMPMediaQueryClass_softClass;
    v21 = getMPMediaQueryClass_softClass;
    if (!getMPMediaQueryClass_softClass)
    {
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __getMPMediaQueryClass_block_invoke;
      v17[3] = &unk_27834A178;
      v17[4] = &v18;
      __getMPMediaQueryClass_block_invoke(v17);
      v10 = v19[3];
    }

    v11 = v10;
    _Block_object_dispose(&v18, 8);
    v12 = objc_opt_new();
    v3 = [v12 items];
  }

  v13 = [v3 if_map:&__block_literal_global_154_10523];
  v14 = *(a1 + 48);
  v15 = *(a1 + 40);
  v16.receiver = *(a1 + 56);
  v16.super_class = &OBJC_METACLASS___WFMPMediaContentItem;
  objc_msgSendSuper2(&v16, sel_runQuery_withItems_permissionRequestor_completionHandler_, v4, v13, v15, v14);
}

+ (id)stringConversionBehavior
{
  v2 = [a1 propertyForName:@"Title"];
  v3 = [WFContentItemStringConversionBehavior accessingProperty:v2];

  return v3;
}

+ (id)propertyBuilders
{
  v254[26] = *MEMORY[0x277D85DE8];
  v2 = WFMPMediaTypeMapping();
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __40__WFMPMediaContentItem_propertyBuilders__block_invoke_3;
  aBlock[3] = &unk_278346C90;
  v244 = &__block_literal_global_10535;
  v222 = v2;
  v243 = v222;
  v223 = _Block_copy(aBlock);
  v237 = WFLocalizedContentPropertyNameMarker(@"Title");
  v236 = [WFContentPropertyBuilder block:&__block_literal_global_10535 name:v237 class:objc_opt_class()];
  v250 = 0;
  v251 = &v250;
  v252 = 0x2020000000;
  v3 = getMPMediaItemPropertyTitleSymbolLoc_ptr;
  v253 = getMPMediaItemPropertyTitleSymbolLoc_ptr;
  if (!getMPMediaItemPropertyTitleSymbolLoc_ptr)
  {
    v245 = MEMORY[0x277D85DD0];
    v246 = 3221225472;
    v247 = __getMPMediaItemPropertyTitleSymbolLoc_block_invoke;
    v248 = &unk_27834A178;
    v249 = &v250;
    v4 = MediaPlayerLibrary();
    v5 = dlsym(v4, "MPMediaItemPropertyTitle");
    *(v249[1] + 24) = v5;
    getMPMediaItemPropertyTitleSymbolLoc_ptr = *(v249[1] + 24);
    v3 = v251[3];
  }

  _Block_object_dispose(&v250, 8);
  if (!v3)
  {
    v65 = [MEMORY[0x277CCA890] currentHandler];
    v66 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMPMediaItemPropertyTitle(void)"];
    [v65 handleFailureInFunction:v66 file:@"WFMPMediaContentItem.m" lineNumber:36 description:{@"%s", dlerror()}];

    goto LABEL_72;
  }

  v116 = *v3;
  v235 = [v236 userInfo:?];
  v254[0] = v235;
  v234 = WFLocalizedContentPropertyNameMarkerWithContext(@"Album", @"Music Content Item");
  v233 = [WFContentPropertyBuilder block:&__block_literal_global_10535 name:v234 class:objc_opt_class()];
  v232 = getMPMediaItemPropertyAlbumTitle();
  v231 = [v233 userInfo:v232];
  v254[1] = v231;
  v230 = WFLocalizedContentPropertyNameMarker(@"Artist");
  v229 = [WFContentPropertyBuilder block:&__block_literal_global_10535 name:v230 class:objc_opt_class()];
  v250 = 0;
  v251 = &v250;
  v252 = 0x2020000000;
  v6 = getMPMediaItemPropertyArtistSymbolLoc_ptr;
  v253 = getMPMediaItemPropertyArtistSymbolLoc_ptr;
  if (!getMPMediaItemPropertyArtistSymbolLoc_ptr)
  {
    v245 = MEMORY[0x277D85DD0];
    v246 = 3221225472;
    v247 = __getMPMediaItemPropertyArtistSymbolLoc_block_invoke;
    v248 = &unk_27834A178;
    v249 = &v250;
    v7 = MediaPlayerLibrary();
    v8 = dlsym(v7, "MPMediaItemPropertyArtist");
    *(v249[1] + 24) = v8;
    getMPMediaItemPropertyArtistSymbolLoc_ptr = *(v249[1] + 24);
    v6 = v251[3];
  }

  _Block_object_dispose(&v250, 8);
  if (!v6)
  {
    v67 = [MEMORY[0x277CCA890] currentHandler];
    v68 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMPMediaItemPropertyArtist(void)"];
    [v67 handleFailureInFunction:v68 file:@"WFMPMediaContentItem.m" lineNumber:38 description:{@"%s", dlerror()}];

    goto LABEL_72;
  }

  v115 = *v6;
  v228 = [v229 userInfo:?];
  v254[2] = v228;
  v227 = WFLocalizedContentPropertyNameMarker(@"Album Artist");
  v226 = [WFContentPropertyBuilder block:&__block_literal_global_10535 name:v227 class:objc_opt_class()];
  v250 = 0;
  v251 = &v250;
  v252 = 0x2020000000;
  v9 = getMPMediaItemPropertyAlbumArtistSymbolLoc_ptr;
  v253 = getMPMediaItemPropertyAlbumArtistSymbolLoc_ptr;
  if (!getMPMediaItemPropertyAlbumArtistSymbolLoc_ptr)
  {
    v245 = MEMORY[0x277D85DD0];
    v246 = 3221225472;
    v247 = __getMPMediaItemPropertyAlbumArtistSymbolLoc_block_invoke;
    v248 = &unk_27834A178;
    v249 = &v250;
    v10 = MediaPlayerLibrary();
    v11 = dlsym(v10, "MPMediaItemPropertyAlbumArtist");
    *(v249[1] + 24) = v11;
    getMPMediaItemPropertyAlbumArtistSymbolLoc_ptr = *(v249[1] + 24);
    v9 = v251[3];
  }

  _Block_object_dispose(&v250, 8);
  if (!v9)
  {
    v69 = [MEMORY[0x277CCA890] currentHandler];
    v70 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMPMediaItemPropertyAlbumArtist(void)"];
    [v69 handleFailureInFunction:v70 file:@"WFMPMediaContentItem.m" lineNumber:39 description:{@"%s", dlerror()}];

    goto LABEL_72;
  }

  v114 = *v9;
  v225 = [v226 userInfo:?];
  v254[3] = v225;
  v224 = WFLocalizedContentPropertyNameMarker(@"Genre");
  v221 = [WFContentPropertyBuilder block:&__block_literal_global_10535 name:v224 class:objc_opt_class()];
  v250 = 0;
  v251 = &v250;
  v252 = 0x2020000000;
  v12 = getMPMediaItemPropertyGenreSymbolLoc_ptr;
  v253 = getMPMediaItemPropertyGenreSymbolLoc_ptr;
  if (!getMPMediaItemPropertyGenreSymbolLoc_ptr)
  {
    v245 = MEMORY[0x277D85DD0];
    v246 = 3221225472;
    v247 = __getMPMediaItemPropertyGenreSymbolLoc_block_invoke;
    v248 = &unk_27834A178;
    v249 = &v250;
    v13 = MediaPlayerLibrary();
    v14 = dlsym(v13, "MPMediaItemPropertyGenre");
    *(v249[1] + 24) = v14;
    getMPMediaItemPropertyGenreSymbolLoc_ptr = *(v249[1] + 24);
    v12 = v251[3];
  }

  _Block_object_dispose(&v250, 8);
  if (!v12)
  {
    v71 = [MEMORY[0x277CCA890] currentHandler];
    v72 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMPMediaItemPropertyGenre(void)"];
    [v71 handleFailureInFunction:v72 file:@"WFMPMediaContentItem.m" lineNumber:40 description:{@"%s", dlerror()}];

    goto LABEL_72;
  }

  v113 = *v12;
  v220 = [v221 userInfo:?];
  v254[4] = v220;
  v219 = WFLocalizedContentPropertyNameMarker(@"Composer");
  v218 = [WFContentPropertyBuilder block:&__block_literal_global_10535 name:v219 class:objc_opt_class()];
  v250 = 0;
  v251 = &v250;
  v252 = 0x2020000000;
  v15 = getMPMediaItemPropertyComposerSymbolLoc_ptr;
  v253 = getMPMediaItemPropertyComposerSymbolLoc_ptr;
  if (!getMPMediaItemPropertyComposerSymbolLoc_ptr)
  {
    v245 = MEMORY[0x277D85DD0];
    v246 = 3221225472;
    v247 = __getMPMediaItemPropertyComposerSymbolLoc_block_invoke;
    v248 = &unk_27834A178;
    v249 = &v250;
    v16 = MediaPlayerLibrary();
    v17 = dlsym(v16, "MPMediaItemPropertyComposer");
    *(v249[1] + 24) = v17;
    getMPMediaItemPropertyComposerSymbolLoc_ptr = *(v249[1] + 24);
    v15 = v251[3];
  }

  _Block_object_dispose(&v250, 8);
  if (!v15)
  {
    v73 = [MEMORY[0x277CCA890] currentHandler];
    v74 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMPMediaItemPropertyComposer(void)"];
    [v73 handleFailureInFunction:v74 file:@"WFMPMediaContentItem.m" lineNumber:41 description:{@"%s", dlerror()}];

    goto LABEL_72;
  }

  v112 = *v15;
  v217 = [v218 userInfo:?];
  v254[5] = v217;
  v216 = WFLocalizedContentPropertyNameMarker(@"Date Added");
  v215 = [WFContentPropertyBuilder block:&__block_literal_global_10535 name:v216 class:objc_opt_class()];
  v250 = 0;
  v251 = &v250;
  v252 = 0x2020000000;
  v18 = getMPMediaItemPropertyDateAddedSymbolLoc_ptr;
  v253 = getMPMediaItemPropertyDateAddedSymbolLoc_ptr;
  if (!getMPMediaItemPropertyDateAddedSymbolLoc_ptr)
  {
    v245 = MEMORY[0x277D85DD0];
    v246 = 3221225472;
    v247 = __getMPMediaItemPropertyDateAddedSymbolLoc_block_invoke;
    v248 = &unk_27834A178;
    v249 = &v250;
    v19 = MediaPlayerLibrary();
    v20 = dlsym(v19, "MPMediaItemPropertyDateAdded");
    *(v249[1] + 24) = v20;
    getMPMediaItemPropertyDateAddedSymbolLoc_ptr = *(v249[1] + 24);
    v18 = v251[3];
  }

  _Block_object_dispose(&v250, 8);
  if (!v18)
  {
    v75 = [MEMORY[0x277CCA890] currentHandler];
    v76 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMPMediaItemPropertyDateAdded(void)"];
    [v75 handleFailureInFunction:v76 file:@"WFMPMediaContentItem.m" lineNumber:42 description:{@"%s", dlerror()}];

    goto LABEL_72;
  }

  v111 = *v18;
  v214 = [v215 userInfo:?];
  v213 = [v214 tense:1];
  v254[6] = v213;
  v212 = WFLocalizedContentPropertyNameMarker(@"Media Kind");
  v211 = [WFContentPropertyBuilder block:v223 name:v212 class:objc_opt_class()];
  v210 = [v222 allValues];
  v209 = [v211 possibleValues:v210];
  v250 = 0;
  v251 = &v250;
  v252 = 0x2020000000;
  v21 = getMPMediaItemPropertyMediaTypeSymbolLoc_ptr;
  v253 = getMPMediaItemPropertyMediaTypeSymbolLoc_ptr;
  if (!getMPMediaItemPropertyMediaTypeSymbolLoc_ptr)
  {
    v245 = MEMORY[0x277D85DD0];
    v246 = 3221225472;
    v247 = __getMPMediaItemPropertyMediaTypeSymbolLoc_block_invoke;
    v248 = &unk_27834A178;
    v249 = &v250;
    v22 = MediaPlayerLibrary();
    v23 = dlsym(v22, "MPMediaItemPropertyMediaType");
    *(v249[1] + 24) = v23;
    getMPMediaItemPropertyMediaTypeSymbolLoc_ptr = *(v249[1] + 24);
    v21 = v251[3];
  }

  _Block_object_dispose(&v250, 8);
  if (!v21)
  {
    v77 = [MEMORY[0x277CCA890] currentHandler];
    v78 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMPMediaItemPropertyMediaType(void)"];
    [v77 handleFailureInFunction:v78 file:@"WFMPMediaContentItem.m" lineNumber:43 description:{@"%s", dlerror()}];

    goto LABEL_72;
  }

  v110 = *v21;
  v208 = [v209 userInfo:?];
  v254[7] = v208;
  v240[0] = MEMORY[0x277D85DD0];
  v240[1] = 3221225472;
  v240[2] = __40__WFMPMediaContentItem_propertyBuilders__block_invoke_5;
  v240[3] = &unk_278346CE0;
  v241 = &__block_literal_global_10535;
  v207 = WFLocalizedContentPropertyNameMarker(@"Duration");
  v206 = [WFContentPropertyBuilder block:v240 name:v207 class:objc_opt_class()];
  v250 = 0;
  v251 = &v250;
  v252 = 0x2020000000;
  v24 = getMPMediaItemPropertyPlaybackDurationSymbolLoc_ptr;
  v253 = getMPMediaItemPropertyPlaybackDurationSymbolLoc_ptr;
  if (!getMPMediaItemPropertyPlaybackDurationSymbolLoc_ptr)
  {
    v245 = MEMORY[0x277D85DD0];
    v246 = 3221225472;
    v247 = __getMPMediaItemPropertyPlaybackDurationSymbolLoc_block_invoke;
    v248 = &unk_27834A178;
    v249 = &v250;
    v25 = MediaPlayerLibrary();
    v26 = dlsym(v25, "MPMediaItemPropertyPlaybackDuration");
    *(v249[1] + 24) = v26;
    getMPMediaItemPropertyPlaybackDurationSymbolLoc_ptr = *(v249[1] + 24);
    v24 = v251[3];
  }

  _Block_object_dispose(&v250, 8);
  if (!v24)
  {
    v79 = [MEMORY[0x277CCA890] currentHandler];
    v80 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMPMediaItemPropertyPlaybackDuration(void)"];
    [v79 handleFailureInFunction:v80 file:@"WFMPMediaContentItem.m" lineNumber:44 description:{@"%s", dlerror()}];

    goto LABEL_72;
  }

  v109 = *v24;
  v205 = [v206 userInfo:?];
  v204 = [v205 timeUnits:224];
  v254[8] = v204;
  v203 = WFLocalizedContentPropertyNameMarker(@"Play Count");
  v202 = [WFContentPropertyBuilder block:&__block_literal_global_10535 name:v203 class:objc_opt_class()];
  v250 = 0;
  v251 = &v250;
  v252 = 0x2020000000;
  v27 = getMPMediaItemPropertyPlayCountSymbolLoc_ptr;
  v253 = getMPMediaItemPropertyPlayCountSymbolLoc_ptr;
  if (!getMPMediaItemPropertyPlayCountSymbolLoc_ptr)
  {
    v245 = MEMORY[0x277D85DD0];
    v246 = 3221225472;
    v247 = __getMPMediaItemPropertyPlayCountSymbolLoc_block_invoke;
    v248 = &unk_27834A178;
    v249 = &v250;
    v28 = MediaPlayerLibrary();
    v29 = dlsym(v28, "MPMediaItemPropertyPlayCount");
    *(v249[1] + 24) = v29;
    getMPMediaItemPropertyPlayCountSymbolLoc_ptr = *(v249[1] + 24);
    v27 = v251[3];
  }

  _Block_object_dispose(&v250, 8);
  if (!v27)
  {
    v81 = [MEMORY[0x277CCA890] currentHandler];
    v82 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMPMediaItemPropertyPlayCount(void)"];
    [v81 handleFailureInFunction:v82 file:@"WFMPMediaContentItem.m" lineNumber:45 description:{@"%s", dlerror()}];

    goto LABEL_72;
  }

  v108 = *v27;
  v201 = [v202 userInfo:?];
  v254[9] = v201;
  v200 = [WFContentPropertyBuilder block:&__block_literal_global_10535 name:@"Album Track #" class:objc_opt_class()];
  v199 = getMPMediaItemPropertyAlbumTrackNumber();
  v198 = [v200 userInfo:v199];
  v197 = WFLocalizedContentPropertyNameMarker(@"Track Number");
  v196 = [v198 displayName:v197];
  v254[10] = v196;
  v195 = [WFContentPropertyBuilder block:&__block_literal_global_10535 name:@"Disc #" class:objc_opt_class()];
  v194 = getMPMediaItemPropertyDiscNumber();
  v193 = [v195 userInfo:v194];
  v192 = WFLocalizedContentPropertyNameMarker(@"Disc Number");
  v191 = [v193 displayName:v192];
  v254[11] = v191;
  v238[0] = MEMORY[0x277D85DD0];
  v238[1] = 3221225472;
  v238[2] = __40__WFMPMediaContentItem_propertyBuilders__block_invoke_7;
  v238[3] = &unk_278346CE0;
  v239 = &__block_literal_global_10535;
  v190 = WFLocalizedContentPropertyNameMarker(@"Album Artwork");
  v189 = [WFContentPropertyBuilder block:v238 name:v190 class:objc_opt_class()];
  v188 = getMPMediaItemPropertyArtwork();
  v187 = [v189 userInfo:v188];
  v254[12] = v187;
  v185 = WFLocalizedContentPropertyNameMarker(@"Is Explicit");
  v186 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v184 = [WFContentPropertyBuilder block:&__block_literal_global_6 name:v185 class:objc_opt_class()];
  v250 = 0;
  v251 = &v250;
  v252 = 0x2020000000;
  v30 = getMPMediaItemPropertyIsExplicitSymbolLoc_ptr;
  v253 = getMPMediaItemPropertyIsExplicitSymbolLoc_ptr;
  if (!getMPMediaItemPropertyIsExplicitSymbolLoc_ptr)
  {
    v245 = MEMORY[0x277D85DD0];
    v246 = 3221225472;
    v247 = __getMPMediaItemPropertyIsExplicitSymbolLoc_block_invoke;
    v248 = &unk_27834A178;
    v249 = &v250;
    v31 = MediaPlayerLibrary();
    v32 = dlsym(v31, "MPMediaItemPropertyIsExplicit");
    *(v249[1] + 24) = v32;
    getMPMediaItemPropertyIsExplicitSymbolLoc_ptr = *(v249[1] + 24);
    v30 = v251[3];
  }

  _Block_object_dispose(&v250, 8);
  if (!v30)
  {
    v83 = [MEMORY[0x277CCA890] currentHandler];
    v84 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMPMediaItemPropertyIsExplicit(void)"];
    [v83 handleFailureInFunction:v84 file:@"WFMPMediaContentItem.m" lineNumber:49 description:{@"%s", dlerror()}];

    goto LABEL_72;
  }

  v107 = *v30;
  v183 = [v184 userInfo:?];
  v182 = WFLocalizedContentPropertyNameMarker(@"Is Not Explicit");
  v181 = [v183 negativeName:v182];
  v180 = WFLocalizedStringWithKey(@"Track (item name)", @"Track");
  v179 = [v181 singularItemName:v180];
  v254[13] = v179;
  v178 = WFLocalizedContentPropertyNameMarker(@"Lyrics");
  v177 = [WFContentPropertyBuilder block:&__block_literal_global_10535 name:v178 class:objc_opt_class()];
  v250 = 0;
  v251 = &v250;
  v252 = 0x2020000000;
  v33 = getMPMediaItemPropertyLyricsSymbolLoc_ptr;
  v253 = getMPMediaItemPropertyLyricsSymbolLoc_ptr;
  if (!getMPMediaItemPropertyLyricsSymbolLoc_ptr)
  {
    v245 = MEMORY[0x277D85DD0];
    v246 = 3221225472;
    v247 = __getMPMediaItemPropertyLyricsSymbolLoc_block_invoke;
    v248 = &unk_27834A178;
    v249 = &v250;
    v34 = MediaPlayerLibrary();
    v35 = dlsym(v34, "MPMediaItemPropertyLyrics");
    *(v249[1] + 24) = v35;
    getMPMediaItemPropertyLyricsSymbolLoc_ptr = *(v249[1] + 24);
    v33 = v251[3];
  }

  _Block_object_dispose(&v250, 8);
  if (!v33)
  {
    v85 = [MEMORY[0x277CCA890] currentHandler];
    v86 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMPMediaItemPropertyLyrics(void)"];
    [v85 handleFailureInFunction:v86 file:@"WFMPMediaContentItem.m" lineNumber:50 description:{@"%s", dlerror()}];

    goto LABEL_72;
  }

  v106 = *v33;
  v176 = [v177 userInfo:?];
  v175 = [v176 sortable:0];
  v254[14] = v175;
  v174 = WFLocalizedContentPropertyNameMarker(@"Release Date");
  v173 = [WFContentPropertyBuilder block:&__block_literal_global_10535 name:v174 class:objc_opt_class()];
  v250 = 0;
  v251 = &v250;
  v252 = 0x2020000000;
  v36 = getMPMediaItemPropertyReleaseDateSymbolLoc_ptr;
  v253 = getMPMediaItemPropertyReleaseDateSymbolLoc_ptr;
  if (!getMPMediaItemPropertyReleaseDateSymbolLoc_ptr)
  {
    v245 = MEMORY[0x277D85DD0];
    v246 = 3221225472;
    v247 = __getMPMediaItemPropertyReleaseDateSymbolLoc_block_invoke;
    v248 = &unk_27834A178;
    v249 = &v250;
    v37 = MediaPlayerLibrary();
    v38 = dlsym(v37, "MPMediaItemPropertyReleaseDate");
    *(v249[1] + 24) = v38;
    getMPMediaItemPropertyReleaseDateSymbolLoc_ptr = *(v249[1] + 24);
    v36 = v251[3];
  }

  _Block_object_dispose(&v250, 8);
  if (!v36)
  {
    v87 = [MEMORY[0x277CCA890] currentHandler];
    v88 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMPMediaItemPropertyReleaseDate(void)"];
    [v87 handleFailureInFunction:v88 file:@"WFMPMediaContentItem.m" lineNumber:51 description:{@"%s", dlerror()}];

    goto LABEL_72;
  }

  v105 = *v36;
  v172 = [v173 userInfo:?];
  v171 = [v172 tense:1];
  v170 = [v171 timeUnits:8220];
  v169 = [v170 comparableUnits:8220];
  v254[15] = v169;
  v168 = WFLocalizedContentPropertyNameMarker(@"Comments");
  v167 = [WFContentPropertyBuilder block:&__block_literal_global_10535 name:v168 class:objc_opt_class()];
  v250 = 0;
  v251 = &v250;
  v252 = 0x2020000000;
  v39 = getMPMediaItemPropertyCommentsSymbolLoc_ptr;
  v253 = getMPMediaItemPropertyCommentsSymbolLoc_ptr;
  if (!getMPMediaItemPropertyCommentsSymbolLoc_ptr)
  {
    v245 = MEMORY[0x277D85DD0];
    v246 = 3221225472;
    v247 = __getMPMediaItemPropertyCommentsSymbolLoc_block_invoke;
    v248 = &unk_27834A178;
    v249 = &v250;
    v40 = MediaPlayerLibrary();
    v41 = dlsym(v40, "MPMediaItemPropertyComments");
    *(v249[1] + 24) = v41;
    getMPMediaItemPropertyCommentsSymbolLoc_ptr = *(v249[1] + 24);
    v39 = v251[3];
  }

  _Block_object_dispose(&v250, 8);
  if (!v39)
  {
    v89 = [MEMORY[0x277CCA890] currentHandler];
    v90 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMPMediaItemPropertyComments(void)"];
    [v89 handleFailureInFunction:v90 file:@"WFMPMediaContentItem.m" lineNumber:52 description:{@"%s", dlerror()}];

    goto LABEL_72;
  }

  v104 = *v39;
  v166 = [v167 userInfo:?];
  v165 = [v166 sortable:0];
  v254[16] = v165;
  v163 = WFLocalizedContentPropertyNameMarker(@"Is Cloud Item");
  v164 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v162 = [WFContentPropertyBuilder block:&__block_literal_global_10535 name:v163 class:objc_opt_class()];
  v250 = 0;
  v251 = &v250;
  v252 = 0x2020000000;
  v42 = getMPMediaItemPropertyIsCloudItemSymbolLoc_ptr;
  v253 = getMPMediaItemPropertyIsCloudItemSymbolLoc_ptr;
  if (!getMPMediaItemPropertyIsCloudItemSymbolLoc_ptr)
  {
    v245 = MEMORY[0x277D85DD0];
    v246 = 3221225472;
    v247 = __getMPMediaItemPropertyIsCloudItemSymbolLoc_block_invoke;
    v248 = &unk_27834A178;
    v249 = &v250;
    v43 = MediaPlayerLibrary();
    v44 = dlsym(v43, "MPMediaItemPropertyIsCloudItem");
    *(v249[1] + 24) = v44;
    getMPMediaItemPropertyIsCloudItemSymbolLoc_ptr = *(v249[1] + 24);
    v42 = v251[3];
  }

  _Block_object_dispose(&v250, 8);
  if (!v42)
  {
    v91 = [MEMORY[0x277CCA890] currentHandler];
    v92 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMPMediaItemPropertyIsCloudItem(void)"];
    [v91 handleFailureInFunction:v92 file:@"WFMPMediaContentItem.m" lineNumber:53 description:{@"%s", dlerror()}];

    goto LABEL_72;
  }

  v103 = *v42;
  v161 = [v162 userInfo:?];
  v160 = WFLocalizedContentPropertyNameMarker(@"Is Not Cloud Item");
  v159 = [v161 negativeName:v160];
  v158 = WFLocalizedStringWithKey(@"Track (item name)", @"Track");
  v157 = [v159 singularItemName:v158];
  v254[17] = v157;
  v155 = WFLocalizedContentPropertyNameMarker(@"Has Album Artwork");
  v156 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v154 = [WFContentPropertyBuilder block:&__block_literal_global_96 name:v155 class:objc_opt_class()];
  v153 = WFLocalizedContentPropertyNameMarker(@"Has No Album Artwork");
  v152 = [v154 negativeName:v153];
  v151 = WFLocalizedContentPropertyNameMarker(@"Track");
  v150 = [v152 singularItemName:v151];
  v149 = [v150 gettable:0];
  v254[18] = v149;
  v148 = WFLocalizedContentPropertyNameMarker(@"Skip Count");
  v147 = [WFContentPropertyBuilder block:&__block_literal_global_10535 name:v148 class:objc_opt_class()];
  v250 = 0;
  v251 = &v250;
  v252 = 0x2020000000;
  v45 = getMPMediaItemPropertySkipCountSymbolLoc_ptr;
  v253 = getMPMediaItemPropertySkipCountSymbolLoc_ptr;
  if (!getMPMediaItemPropertySkipCountSymbolLoc_ptr)
  {
    v245 = MEMORY[0x277D85DD0];
    v246 = 3221225472;
    v247 = __getMPMediaItemPropertySkipCountSymbolLoc_block_invoke;
    v248 = &unk_27834A178;
    v249 = &v250;
    v46 = MediaPlayerLibrary();
    v47 = dlsym(v46, "MPMediaItemPropertySkipCount");
    *(v249[1] + 24) = v47;
    getMPMediaItemPropertySkipCountSymbolLoc_ptr = *(v249[1] + 24);
    v45 = v251[3];
  }

  _Block_object_dispose(&v250, 8);
  if (!v45)
  {
    v93 = [MEMORY[0x277CCA890] currentHandler];
    v94 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMPMediaItemPropertySkipCount(void)"];
    [v93 handleFailureInFunction:v94 file:@"WFMPMediaContentItem.m" lineNumber:54 description:{@"%s", dlerror()}];

    goto LABEL_72;
  }

  v102 = *v45;
  v146 = [v147 userInfo:?];
  v254[19] = v146;
  v145 = WFLocalizedContentPropertyNameMarker(@"Last Played Date");
  v144 = [WFContentPropertyBuilder block:&__block_literal_global_10535 name:v145 class:objc_opt_class()];
  v250 = 0;
  v251 = &v250;
  v252 = 0x2020000000;
  v48 = getMPMediaItemPropertyLastPlayedDateSymbolLoc_ptr;
  v253 = getMPMediaItemPropertyLastPlayedDateSymbolLoc_ptr;
  if (!getMPMediaItemPropertyLastPlayedDateSymbolLoc_ptr)
  {
    v245 = MEMORY[0x277D85DD0];
    v246 = 3221225472;
    v247 = __getMPMediaItemPropertyLastPlayedDateSymbolLoc_block_invoke;
    v248 = &unk_27834A178;
    v249 = &v250;
    v49 = MediaPlayerLibrary();
    v50 = dlsym(v49, "MPMediaItemPropertyLastPlayedDate");
    *(v249[1] + 24) = v50;
    getMPMediaItemPropertyLastPlayedDateSymbolLoc_ptr = *(v249[1] + 24);
    v48 = v251[3];
  }

  _Block_object_dispose(&v250, 8);
  if (!v48)
  {
    v95 = [MEMORY[0x277CCA890] currentHandler];
    v96 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMPMediaItemPropertyLastPlayedDate(void)"];
    [v95 handleFailureInFunction:v96 file:@"WFMPMediaContentItem.m" lineNumber:55 description:{@"%s", dlerror()}];

    goto LABEL_72;
  }

  v101 = *v48;
  v143 = [v144 userInfo:?];
  v142 = [v143 tense:1];
  v141 = [v142 timeUnits:8444];
  v254[20] = v141;
  v140 = WFLocalizedContentPropertyNameMarker(@"Rating");
  v139 = [WFContentPropertyBuilder block:&__block_literal_global_10535 name:v140 class:objc_opt_class()];
  v250 = 0;
  v251 = &v250;
  v252 = 0x2020000000;
  v51 = getMPMediaItemPropertyRatingSymbolLoc_ptr;
  v253 = getMPMediaItemPropertyRatingSymbolLoc_ptr;
  if (!getMPMediaItemPropertyRatingSymbolLoc_ptr)
  {
    v245 = MEMORY[0x277D85DD0];
    v246 = 3221225472;
    v247 = __getMPMediaItemPropertyRatingSymbolLoc_block_invoke;
    v248 = &unk_27834A178;
    v249 = &v250;
    v52 = MediaPlayerLibrary();
    v53 = dlsym(v52, "MPMediaItemPropertyRating");
    *(v249[1] + 24) = v53;
    getMPMediaItemPropertyRatingSymbolLoc_ptr = *(v249[1] + 24);
    v51 = v251[3];
  }

  _Block_object_dispose(&v250, 8);
  if (!v51)
  {
    v97 = [MEMORY[0x277CCA890] currentHandler];
    v98 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMPMediaItemPropertyRating(void)"];
    [v97 handleFailureInFunction:v98 file:@"WFMPMediaContentItem.m" lineNumber:56 description:{@"%s", dlerror()}];

LABEL_72:
    __break(1u);
  }

  v100 = *v51;
  v138 = [v139 userInfo:?];
  v254[21] = v138;
  v137 = WFLocalizedContentPropertyNameMarker(@"File Size");
  v136 = [WFContentPropertyBuilder block:&__block_literal_global_114 name:v137 class:objc_opt_class()];
  v135 = [v136 userInfo:@"WFFileSizeProperty"];
  v134 = [v135 sortable:0];
  v133 = [v134 filterable:0];
  v132 = [v133 gettable:0];
  v254[22] = v132;
  v131 = WFLocalizedContentPropertyNameMarker(@"File Extension");
  v130 = [WFContentPropertyBuilder block:&__block_literal_global_121_10583 name:v131 class:objc_opt_class()];
  v129 = [v130 userInfo:@"WFFileExtensionProperty"];
  v128 = [v129 caseInsensitive:1];
  v127 = [v128 sortable:0];
  v126 = [v127 filterable:0];
  v125 = [v126 gettable:0];
  v254[23] = v125;
  v124 = [WFContentPropertyBuilder block:&__block_literal_global_126 name:@"Last Modified Date" class:objc_opt_class()];
  v123 = WFLocalizedContentPropertyNameMarker(@"Date Modified");
  v122 = [v124 displayName:v123];
  v121 = [v122 userInfo:@"WFFileModificationDate"];
  v120 = [v121 tense:1];
  v119 = [v120 timeUnits:8444];
  v118 = [v119 sortable:0];
  v117 = [v118 filterable:0];
  v54 = [v117 gettable:0];
  v254[24] = v54;
  v55 = [WFContentPropertyBuilder block:&__block_literal_global_134_10586 name:@"Creation Date" class:objc_opt_class()];
  v56 = WFLocalizedContentPropertyNameMarker(@"Date Created");
  v57 = [v55 displayName:v56];
  v58 = [v57 userInfo:@"WFFileCreationDate"];
  v59 = [v58 tense:1];
  v60 = [v59 timeUnits:8444];
  v61 = [v60 sortable:0];
  v62 = [v61 filterable:0];
  v63 = [v62 gettable:0];
  v254[25] = v63;
  v99 = [MEMORY[0x277CBEA60] arrayWithObjects:v254 count:26];

  return v99;
}

void __40__WFMPMediaContentItem_propertyBuilders__block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __40__WFMPMediaContentItem_propertyBuilders__block_invoke_4;
  v11[3] = &unk_278347EB0;
  v13 = v7;
  v8 = *(a1 + 40);
  v12 = *(a1 + 32);
  v9 = *(v8 + 16);
  v10 = v7;
  v9(v8, a2, a3, v11);
}

void __40__WFMPMediaContentItem_propertyBuilders__block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = *(a1 + 32);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __40__WFMPMediaContentItem_propertyBuilders__block_invoke_6;
  v11[3] = &unk_278346CB8;
  v12 = v7;
  v9 = *(v8 + 16);
  v10 = v7;
  v9(v8, a2, a3, v11);
}

void __40__WFMPMediaContentItem_propertyBuilders__block_invoke_7(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = *(a1 + 32);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __40__WFMPMediaContentItem_propertyBuilders__block_invoke_8;
  v11[3] = &unk_278346D08;
  v12 = v7;
  v9 = *(v8 + 16);
  v10 = v7;
  v9(v8, a2, a3, v11);
}

void __40__WFMPMediaContentItem_propertyBuilders__block_invoke_10(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__WFMPMediaContentItem_propertyBuilders__block_invoke_11;
  v7[3] = &unk_278349780;
  v8 = v5;
  v6 = v5;
  [a2 getPreferredFileSize:v7];
}

void __40__WFMPMediaContentItem_propertyBuilders__block_invoke_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [[WFFileSize alloc] initWithByteCount:a2];
  (*(v2 + 16))(v2, v3);
}

void __40__WFMPMediaContentItem_propertyBuilders__block_invoke_9(uint64_t a1, void *a2, uint64_t a3, void (**a4)(void, void))
{
  v6 = MEMORY[0x277CCABB0];
  v7 = a4;
  v11 = [a2 mediaItem];
  v8 = getMPMediaItemPropertyArtwork();
  v9 = [v11 valueForProperty:v8];
  v10 = [v6 numberWithInt:v9 != 0];
  (a4)[2](v7, v10);
}

void __40__WFMPMediaContentItem_propertyBuilders__block_invoke_8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277D79FC8];
  v4 = a2;
  v5 = [v3 alloc];
  [v4 bounds];
  v9 = [v4 imageWithSize:{v6, v7}];

  v8 = [v5 initWithPlatformImage:v9];
  (*(v2 + 16))(v2, v8);
}

void __40__WFMPMediaContentItem_propertyBuilders__block_invoke_6(uint64_t a1, void *a2)
{
  [a2 doubleValue];
  v4 = v3;
  v13 = [MEMORY[0x277CBEAA8] date];
  v5 = [MEMORY[0x277CBEA80] currentCalendar];
  v6 = [v13 dateByAddingTimeInterval:v4];
  v7 = 224;
  v8 = [v5 components:224 fromDate:v13 toDate:v6 options:0];

  if ([v8 hour])
  {
    v9 = 1;
  }

  else
  {
    v10 = [v8 minute];
    if (v10)
    {
      v9 = 1;
    }

    else
    {
      v9 = 0x10000;
    }

    if (v10)
    {
      v7 = 224;
    }

    else
    {
      v7 = 192;
    }
  }

  v11 = *(a1 + 32);
  v12 = [[WFTimeInterval alloc] initWithTimeInterval:v7 allowedUnits:0 unitsStyle:v9 zeroFormattingBehavior:v4];
  (*(v11 + 16))(v11, v12);
}

void __40__WFMPMediaContentItem_propertyBuilders__block_invoke_4(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [a2 unsignedIntegerValue];
  if ((v3 & (v3 - 1)) != 0)
  {
    v8 = [*(a1 + 32) allKeys];
    v9 = [v8 sortedArrayUsingSelector:sel_compare_];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = [v9 reverseObjectEnumerator];
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v19 + 1) + 8 * i);
          if (([v15 unsignedIntegerValue] & v3) != 0)
          {
            v16 = *(a1 + 40);
            v17 = [*(a1 + 32) objectForKey:v15];
            (*(v16 + 16))(v16, v17);

            return;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = a1 + 32;
    v4 = *(a1 + 32);
    v5 = *(v6 + 8);
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v3];
    v7 = [v4 objectForKey:?];
    (*(v5 + 16))(v5, v7);
  }
}

void __40__WFMPMediaContentItem_propertyBuilders__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void (**a4)(void, void))
{
  v6 = MEMORY[0x277CCABB0];
  v7 = a4;
  v9 = [a2 mediaItem];
  v8 = [v6 numberWithInt:{objc_msgSend(v9, "isExplicitItem")}];
  (a4)[2](v7, v8);
}

void __40__WFMPMediaContentItem_propertyBuilders__block_invoke(uint64_t a1, void *a2, void *a3, void (**a4)(void, void))
{
  v7 = a4;
  v8 = a3;
  v10 = [a2 mediaItem];
  v9 = [v10 valueForProperty:v8];

  (a4)[2](v7, v9);
}

- (BOOL)getListThumbnail:(id)a3 forSize:(CGSize)a4
{
  if (a3)
  {
    height = a4.height;
    width = a4.width;
    v8 = MEMORY[0x277D79FC8];
    v9 = a3;
    v10 = [v8 alloc];
    v11 = [(WFMPMediaContentItem *)self mediaItem];
    v12 = [v11 artwork];
    v13 = [v12 imageWithSize:{width, height}];
    v14 = [v10 initWithPlatformImage:v13];
    (*(a3 + 2))(v9, v14, 0);
  }

  return 1;
}

- (BOOL)getListAltText:(id)a3
{
  v4 = a3;
  v5 = [(WFMPMediaContentItem *)self mediaItem];
  [v5 playbackDuration];
  v7 = WFChooseFromListFormatPlaybackDuration(v6);

  if (v4)
  {
    v4[2](v4, v7);
  }

  return 1;
}

- (BOOL)getListSubtitle:(id)a3
{
  if (a3)
  {
    v5 = a3;
    v6 = [(WFMPMediaContentItem *)self artist];
    (*(a3 + 2))(v5, v6);
  }

  return 1;
}

@end