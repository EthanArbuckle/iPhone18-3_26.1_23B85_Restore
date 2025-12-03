@interface NTKGreenfieldCompanionActivityViewController
- (NTKGreenfieldCompanionActivityViewController)initWithDraftRecipe:(id)recipe previewImage:(id)image;
- (id)_customizationGroupsForActivityViewController:(id)controller;
- (void)_handleCustomizationValueChange:(id)change sharingOption:(id)option;
- (void)companionActivityItemProvider:(id)provider handleError:(id)error;
@end

@implementation NTKGreenfieldCompanionActivityViewController

- (NTKGreenfieldCompanionActivityViewController)initWithDraftRecipe:(id)recipe previewImage:(id)image
{
  v22[1] = *MEMORY[0x277D85DE8];
  recipeCopy = recipe;
  imageCopy = image;
  v9 = [[NTKGreenfieldCompanionActivityItemProvider alloc] initWithDraftRecipe:recipeCopy previewImage:imageCopy];

  [(NTKGreenfieldCompanionActivityItemProvider *)v9 setDelegate:self];
  v22[0] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v20.receiver = self;
  v20.super_class = NTKGreenfieldCompanionActivityViewController;
  v11 = [(NTKGreenfieldCompanionActivityViewController *)&v20 initWithActivityItems:v10 applicationActivities:0];

  if (v11)
  {
    objc_storeStrong(&v11->_draftRecipe, recipe);
    [(NTKGreenfieldCompanionActivityViewController *)v11 setObjectManipulationDelegate:v11];
    v12 = *MEMORY[0x277D54760];
    v21[0] = *MEMORY[0x277D54748];
    v21[1] = v12;
    v13 = *MEMORY[0x277D54778];
    v21[2] = *MEMORY[0x277D54770];
    v21[3] = v13;
    v14 = *MEMORY[0x277D54780];
    v21[4] = *MEMORY[0x277D54718];
    v21[5] = v14;
    v15 = *MEMORY[0x277D54750];
    v21[6] = *MEMORY[0x277D54708];
    v21[7] = v15;
    v16 = *MEMORY[0x277D54758];
    v21[8] = *MEMORY[0x277D54768];
    v21[9] = v16;
    v17 = *MEMORY[0x277D54730];
    v21[10] = *MEMORY[0x277D54740];
    v21[11] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:12];
    [(NTKGreenfieldCompanionActivityViewController *)v11 setExcludedActivityTypes:v18];
  }

  return v11;
}

- (id)_customizationGroupsForActivityViewController:(id)controller
{
  v46 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  val = self;
  draftRecipe = self->_draftRecipe;
  if (draftRecipe)
  {
    sortedComplicationSharingOptions = [(NTKGreenfieldDraftRecipe *)draftRecipe sortedComplicationSharingOptions];
    if ([sortedComplicationSharingOptions count])
    {
      array = [MEMORY[0x277CBEB18] array];
      [(NTKGreenfieldDraftRecipe *)self->_draftRecipe sortedComplicationSharingOptions];
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      obj = v41 = 0u;
      v35 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
      if (v35)
      {
        v33 = *v41;
        do
        {
          for (i = 0; i != v35; ++i)
          {
            if (*v41 != v33)
            {
              objc_enumerationMutation(obj);
            }

            v6 = *(*(&v40 + 1) + 8 * i);
            v7 = val->_draftRecipe;
            uniqueIdentifier = [v6 uniqueIdentifier];
            v9 = [(NTKGreenfieldDraftRecipe *)v7 optionForComplicationUniqueIdentifier:uniqueIdentifier];

            v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
            optionType = [v6 optionType];
            if (optionType == 1)
            {
              v15 = [NTKGreenfieldDraftRecipe titleFromComplicationOption:0];
              [v10 addObject:v15];

              v16 = [NTKGreenfieldDraftRecipe titleFromComplicationOption:1];
              [v10 addObject:v16];

              v17 = [NTKGreenfieldDraftRecipe titleFromComplicationOption:2];
              [v10 addObject:v17];

              if (v9 == 2)
              {
                v14 = 2;
              }

              else
              {
                v14 = v9 == 1;
              }
            }

            else if (optionType)
            {
              v14 = 0;
            }

            else
            {
              v12 = [NTKGreenfieldDraftRecipe titleFromComplicationOption:1];
              [v10 addObject:v12];

              v13 = [NTKGreenfieldDraftRecipe titleFromComplicationOption:2];
              [v10 addObject:v13];

              v14 = v9 == 2;
            }

            v18 = [NTKGreenfieldDraftRecipe descriptionFromComplicationOption:v9];
            v19 = MEMORY[0x277CCACA8];
            uniqueIdentifier2 = [v6 uniqueIdentifier];
            v21 = [v19 stringWithFormat:@"%@.picker", uniqueIdentifier2];

            objc_initWeak(&location, val);
            v22 = MEMORY[0x277D546F8];
            v37[0] = MEMORY[0x277D85DD0];
            v37[1] = 3221225472;
            v37[2] = __94__NTKGreenfieldCompanionActivityViewController__customizationGroupsForActivityViewController___block_invoke;
            v37[3] = &unk_2787850D0;
            objc_copyWeak(&v38, &location);
            v37[4] = v6;
            v23 = [v22 pickerCustomizationWithIdentifier:v21 options:v10 selectedOptionIndex:v14 footerText:v18 valueChangedHandler:v37];
            v24 = objc_alloc(MEMORY[0x277D54700]);
            name = [v6 name];
            uniqueIdentifier3 = [v6 uniqueIdentifier];
            v44 = v23;
            v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
            v28 = [v24 _initGroupWithName:name identifier:uniqueIdentifier3 customizations:v27];

            [array addObject:v28];
            objc_destroyWeak(&v38);
            objc_destroyWeak(&location);
          }

          v35 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
        }

        while (v35);
      }
    }

    else
    {
      array = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    array = MEMORY[0x277CBEBF8];
  }

  return array;
}

void __94__NTKGreenfieldCompanionActivityViewController__customizationGroupsForActivityViewController___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleCustomizationValueChange:v3 sharingOption:*(a1 + 32)];
}

- (void)_handleCustomizationValueChange:(id)change sharingOption:(id)option
{
  changeCopy = change;
  optionCopy = option;
  optionType = [optionCopy optionType];
  if (optionType != 1)
  {
    if (!optionType)
    {
      v9 = 1;
      if (![changeCopy selectedOptionIndex])
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (![changeCopy selectedOptionIndex])
  {
LABEL_8:
    v9 = 0;
    goto LABEL_11;
  }

  if ([changeCopy selectedOptionIndex] != 1)
  {
    v9 = 2;
LABEL_10:
    v9 = 2 * ([changeCopy selectedOptionIndex] == v9);
    goto LABEL_11;
  }

  v9 = 1;
LABEL_11:
  draftRecipe = self->_draftRecipe;
  uniqueIdentifier = [optionCopy uniqueIdentifier];
  [(NTKGreenfieldDraftRecipe *)draftRecipe setComplicationOption:v9 forComplicationUniqueIdentifier:uniqueIdentifier];

  v12 = self->_draftRecipe;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __94__NTKGreenfieldCompanionActivityViewController__handleCustomizationValueChange_sharingOption___block_invoke;
  v13[3] = &unk_278781600;
  v13[4] = self;
  [NTKGreenfieldUtilities generateFacePreviewImageFromDraftRecipe:v12 borderType:1 completionBlock:v13];
}

void __94__NTKGreenfieldCompanionActivityViewController__handleCustomizationValueChange_sharingOption___block_invoke(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = [[NTKGreenfieldCompanionActivityItemProvider alloc] initWithDraftRecipe:*(*(a1 + 32) + 1384) previewImage:v3];
    [(NTKGreenfieldCompanionActivityItemProvider *)v4 setDelegate:*(a1 + 32)];
    v5 = *(a1 + 32);
    v7[0] = v4;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
    [v5 _updateActivityItems:v6];
  }

  else
  {
    v4 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
    if (os_log_type_enabled(&v4->super.super.super, OS_LOG_TYPE_ERROR))
    {
      __94__NTKGreenfieldCompanionActivityViewController__handleCustomizationValueChange_sharingOption___block_invoke_cold_1(&v4->super.super.super);
    }
  }
}

- (void)companionActivityItemProvider:(id)provider handleError:(id)error
{
  errorCopy = error;
  completionWithItemsHandler = [(NTKGreenfieldCompanionActivityViewController *)self completionWithItemsHandler];

  if (completionWithItemsHandler)
  {
    completionWithItemsHandler2 = [(NTKGreenfieldCompanionActivityViewController *)self completionWithItemsHandler];
    (completionWithItemsHandler2)[2](completionWithItemsHandler2, @"Greenfield", 0, 0, errorCopy);

    [(NTKGreenfieldCompanionActivityViewController *)self setCompletionWithItemsHandler:0];
  }
}

@end