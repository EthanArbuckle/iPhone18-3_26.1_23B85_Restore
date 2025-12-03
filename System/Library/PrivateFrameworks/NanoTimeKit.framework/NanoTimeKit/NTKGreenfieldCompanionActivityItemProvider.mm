@interface NTKGreenfieldCompanionActivityItemProvider
- (NTKGreenfieldCompanionActivityItemProvider)initWithDraftRecipe:(id)recipe previewImage:(id)image;
- (NTKGreenfieldCompanionActivityItemProviderDelegate)delegate;
- (id)activityViewController:(id)controller itemsForActivityType:(id)type;
- (id)activityViewController:(id)controller subjectForActivityType:(id)type;
- (id)activityViewControllerLinkPresentationMetadata:(id)metadata;
- (id)item;
- (id)writeImageToDisk:(id)disk suffix:(id)suffix;
@end

@implementation NTKGreenfieldCompanionActivityItemProvider

- (NTKGreenfieldCompanionActivityItemProvider)initWithDraftRecipe:(id)recipe previewImage:(id)image
{
  recipeCopy = recipe;
  imageCopy = image;
  v9 = objc_alloc_init(MEMORY[0x277CCAA88]);
  [v9 registerDataRepresentationForTypeIdentifier:@"com.apple.watchface" visibility:0 loadHandler:&__block_literal_global_16];
  v13.receiver = self;
  v13.super_class = NTKGreenfieldCompanionActivityItemProvider;
  v10 = [(UIActivityItemProvider *)&v13 initWithPlaceholderItem:v9];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_draftRecipe, recipe);
    objc_storeStrong(&v11->_previewImage, image);
  }

  return v11;
}

- (id)activityViewControllerLinkPresentationMetadata:(id)metadata
{
  v4 = MEMORY[0x277CD46C8];
  v5 = self->_previewImage;
  v6 = objc_alloc_init(v4);
  faceForSharing = [(NTKGreenfieldDraftRecipe *)self->_draftRecipe faceForSharing];
  faceSharingName = [faceForSharing faceSharingName];
  [v6 setTitle:faceSharingName];

  v9 = objc_alloc_init(MEMORY[0x277CD46B8]);
  [v9 setType:5];
  v10 = [objc_alloc(MEMORY[0x277CD46B0]) initWithPlatformImage:v5 properties:v9];
  [v6 setImage:v10];

  faceForSharingComplicationOptionsCount = [(NTKGreenfieldDraftRecipe *)self->_draftRecipe faceForSharingComplicationOptionsCount];
  if (faceForSharingComplicationOptionsCount)
  {
    v12 = objc_alloc_init(MEMORY[0x277CD46F0]);
    v13 = NTKClockFaceLocalizedString(@"GREENFIELD_COMPLICATION_COUNT_DESCRIPTION", @"%lu Complications");
    v14 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v13, faceForSharingComplicationOptionsCount];
    v15 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v14];
    [v12 setStatus:v15];

    [v6 setSpecialization:v12];
  }

  return v6;
}

- (id)activityViewController:(id)controller subjectForActivityType:(id)type
{
  if (*MEMORY[0x277D54728] == type)
  {
    faceForSharing = [(NTKGreenfieldDraftRecipe *)self->_draftRecipe faceForSharing];
    faceSharingName = [faceForSharing faceSharingName];

    v7 = NTKClockFaceLocalizedString(@"GREENFIELD_SHARE_WATCH_FACE_SUBJECT", @"Apple Watch Face — %@");
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:v7, faceSharingName];
  }

  else
  {
    v4 = &stru_284110E98;
  }

  return v4;
}

- (id)item
{
  v3 = dispatch_semaphore_create(0);
  draftRecipe = self->_draftRecipe;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __50__NTKGreenfieldCompanionActivityItemProvider_item__block_invoke;
  v12 = &unk_27877EEF0;
  selfCopy = self;
  v14 = v3;
  v5 = v3;
  [NTKGreenfieldUtilities encodeRecipeFromDraftRecipe:draftRecipe completionBlock:&v9];
  v6 = dispatch_time(0, 10000000000);
  dispatch_semaphore_wait(v5, v6);
  v7 = [(NTKGreenfieldEncodedRecipe *)self->_encodedRecipe watchFaceDataUrl:v9];

  return v7;
}

void __50__NTKGreenfieldCompanionActivityItemProvider_item__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __50__NTKGreenfieldCompanionActivityItemProvider_item__block_invoke_2;
    v14[3] = &unk_27877E438;
    v14[4] = *(a1 + 32);
    v15 = v7;
    dispatch_async(MEMORY[0x277D85CD0], v14);
  }

  else
  {
    objc_storeStrong((*(a1 + 32) + 280), a2);
    v9 = [v6 watchFaceImage];
    v10 = [NTKGreenfieldUtilities addBorder:3 toWatchFaceImage:v9];

    v11 = [*(a1 + 32) writeImageToDisk:v10 suffix:@"email"];
    v12 = *(a1 + 32);
    v13 = *(v12 + 288);
    *(v12 + 288) = v11;
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void __50__NTKGreenfieldCompanionActivityItemProvider_item__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 companionActivityItemProvider:*(a1 + 32) handleError:*(a1 + 40)];
}

- (id)writeImageToDisk:(id)disk suffix:(id)suffix
{
  if (disk)
  {
    suffixCopy = suffix;
    v7 = UIImagePNGRepresentation(disk);
    v8 = MEMORY[0x277CCACA8];
    watchFaceName = [(NTKGreenfieldEncodedRecipe *)self->_encodedRecipe watchFaceName];
    suffixCopy = [v8 stringWithFormat:@"%@_%@@2x.png", watchFaceName, suffixCopy];

    v11 = NSTemporaryDirectory();
    v12 = [v11 stringByAppendingString:suffixCopy];

    v13 = [MEMORY[0x277CBEBC0] fileURLWithPath:v12];
    [v7 writeToURL:v13 atomically:1];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)activityViewController:(id)controller itemsForActivityType:(id)type
{
  v11.receiver = self;
  v11.super_class = NTKGreenfieldCompanionActivityItemProvider;
  typeCopy = type;
  v7 = [(UIActivityItemProvider *)&v11 activityViewController:controller itemForActivityType:typeCopy];
  array = [MEMORY[0x277CBEB18] array];
  v9 = [typeCopy isEqualToString:*MEMORY[0x277D54728]];

  if (v9 && self->_emailImageUrl)
  {
    [array addObject:?];
  }

  if (v7)
  {
    [array addObject:v7];
  }

  return array;
}

- (NTKGreenfieldCompanionActivityItemProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end