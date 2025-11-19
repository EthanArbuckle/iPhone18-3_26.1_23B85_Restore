@interface PXPhotosViewLensAllowedActionsForCuratedLens
@end

@implementation PXPhotosViewLensAllowedActionsForCuratedLens

void ___PXPhotosViewLensAllowedActionsForCuratedLens_block_invoke()
{
  v15[53] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v15[0] = *MEMORY[0x277D3CF08];
  v15[1] = @"PXPhotosGridActionSetAllLibrariesFilter";
  v15[2] = @"PXPhotosGridActionSetPersonalLibraryFilter";
  v15[3] = @"PXPhotosGridActionSetSharedLibraryFilter";
  v15[4] = @"PXPhotosGridActionToggleSharedLibraryBadge";
  v15[5] = @"PXPhotosGridActionToggleFaceMode";
  v1 = *MEMORY[0x277D3CF10];
  v15[6] = *MEMORY[0x277D3CF18];
  v15[7] = v1;
  v2 = *MEMORY[0x277D3CE98];
  v15[8] = *MEMORY[0x277D3CF30];
  v15[9] = v2;
  v3 = *MEMORY[0x277D3CF40];
  v15[10] = *MEMORY[0x277D3CEA0];
  v15[11] = v3;
  v4 = *MEMORY[0x277D3CEC8];
  v15[12] = *MEMORY[0x277D3CEC0];
  v15[13] = v4;
  v5 = *MEMORY[0x277D3CEA8];
  v15[14] = *MEMORY[0x277D3CED8];
  v15[15] = v5;
  v6 = *MEMORY[0x277D3CEF8];
  v15[16] = *MEMORY[0x277D3CEB0];
  v15[17] = v6;
  v7 = *MEMORY[0x277D3CF00];
  v15[18] = *MEMORY[0x277D3CF28];
  v15[19] = v7;
  v8 = *MEMORY[0x277D3CE78];
  v15[20] = *MEMORY[0x277D3CE80];
  v15[21] = v8;
  v9 = *MEMORY[0x277D3CE88];
  v15[22] = *MEMORY[0x277D3CF20];
  v15[23] = v9;
  v10 = *MEMORY[0x277D3CF38];
  v15[24] = *MEMORY[0x277D3CE68];
  v15[25] = v10;
  v11 = *MEMORY[0x277D3CEB8];
  v15[26] = *MEMORY[0x277D3CEE0];
  v15[27] = v11;
  v15[28] = *MEMORY[0x277D3CE90];
  v15[29] = @"PXPhotosGridActionShare";
  v15[30] = *MEMORY[0x277D3CE70];
  v15[31] = @"PXPhotosGridActionShowFilters";
  v15[32] = @"PXPhotosGridActionUnfilter";
  v15[33] = @"PXPhotosGridActionRemoveFilters";
  v15[34] = @"PXPhotosGridActionToggleFavoritesFilter";
  v15[35] = @"PXPhotosGridActionToggleImagesFilter";
  v15[36] = @"PXPhotosGridActionToggleEditedFilter";
  v15[37] = @"PXPhotosGridActionToggleInUserAlbumFilter";
  v15[38] = @"PXPhotosGridActionToggleNotInUserAlbumFilter";
  v15[39] = @"PXPhotosGridActionToggleVideosFilter";
  v15[40] = @"PXPhotosGridActionToggleIncludeScreenshotsFilter";
  v15[41] = @"PXPhotosGridActionToggleShowOnlyScreenshotsFilter";
  v15[42] = @"PXPhotosGridActionToggleIncludeFromMyMacFilter";
  v15[43] = @"PXPhotosGridActionToggleShowOnlyFromMyMacFilter";
  v15[44] = @"PXPhotosGridActionToggleAspectFit";
  v15[45] = @"PXPhotosGridActionSearch";
  v15[46] = @"PXPhotosGridActionToggleIncludeOthersInSocialGroupAssetsFilter";
  v15[47] = @"PXPhotosGridActionTogglePreviewHeader";
  v15[48] = *MEMORY[0x277D3CEE8];
  v15[49] = @"PXPhotosGridActionReverseDefaultSortOrder";
  v15[50] = @"PXPhotosGridSearchActionCentralizedFeedbackPositiveAction";
  v15[51] = @"PXPhotosGridSearchActionCentralizedFeedbackNegativeAction";
  v15[52] = @"PXPhotosGridSearchActionCentralizedFeedbackFCSAction";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:53];
  v13 = [v0 setWithArray:v12];
  v14 = _PXPhotosViewLensAllowedActionsForCuratedLens_allowedActions;
  _PXPhotosViewLensAllowedActionsForCuratedLens_allowedActions = v13;
}

@end