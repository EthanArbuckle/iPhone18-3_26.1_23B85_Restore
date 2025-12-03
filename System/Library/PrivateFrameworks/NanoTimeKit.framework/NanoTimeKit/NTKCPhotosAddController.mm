@interface NTKCPhotosAddController
+ (id)_sharedInstance;
+ (id)pickerConfigurationWithLimit:(unint64_t)limit;
+ (void)presentPhotosAddControllerFromViewController:(id)controller configuration:(id)configuration withCompletion:(id)completion;
+ (void)presentPhotosAddControllerFromViewController:(id)controller selectionLimit:(unint64_t)limit withCompletion:(id)completion;
+ (void)presentSinglePhotoAddControllerFromViewController:(id)controller withCompletion:(id)completion;
- (void)picker:(id)picker didFinishPicking:(id)picking;
- (void)presentationControllerDidDismiss:(id)dismiss;
@end

@implementation NTKCPhotosAddController

+ (id)pickerConfigurationWithLimit:(unint64_t)limit
{
  v12[2] = *MEMORY[0x277D85DE8];
  mEMORY[0x277CD9948] = [MEMORY[0x277CD9948] sharedPhotoLibrary];
  v5 = [objc_alloc(MEMORY[0x277CD9D68]) initWithPhotoLibrary:mEMORY[0x277CD9948]];
  v6 = MEMORY[0x277CD9D70];
  livePhotosFilter = [MEMORY[0x277CD9D70] livePhotosFilter];
  v12[0] = livePhotosFilter;
  imagesFilter = [MEMORY[0x277CD9D70] imagesFilter];
  v12[1] = imagesFilter;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v10 = [v6 anyFilterMatchingSubfilters:v9];
  [v5 setFilter:v10];

  [v5 setSelectionLimit:limit];

  return v5;
}

+ (void)presentPhotosAddControllerFromViewController:(id)controller selectionLimit:(unint64_t)limit withCompletion:(id)completion
{
  completionCopy = completion;
  controllerCopy = controller;
  v10 = [self pickerConfigurationWithLimit:limit];
  [v10 setSelectionLimit:limit];
  [self presentPhotosAddControllerFromViewController:controllerCopy configuration:v10 withCompletion:completionCopy];
}

+ (void)presentSinglePhotoAddControllerFromViewController:(id)controller withCompletion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __92__NTKCPhotosAddController_presentSinglePhotoAddControllerFromViewController_withCompletion___block_invoke;
  v8[3] = &unk_27877F810;
  v9 = completionCopy;
  v7 = completionCopy;
  [self presentPhotosAddControllerFromViewController:controller selectionLimit:1 withCompletion:v8];
}

uint64_t __92__NTKCPhotosAddController_presentSinglePhotoAddControllerFromViewController_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  if (!*(a1 + 32))
  {
    return 0;
  }

  v5 = a2;
  v6 = [a3 firstObject];
  v7 = (*(*(a1 + 32) + 16))();

  return v7;
}

+ (void)presentPhotosAddControllerFromViewController:(id)controller configuration:(id)configuration withCompletion:(id)completion
{
  controllerCopy = controller;
  configurationCopy = configuration;
  completionCopy = completion;
  if (!configurationCopy)
  {
    configurationCopy = [self pickerConfigurationWithLimit:0];
  }

  _sharedInstance = [self _sharedInstance];
  [_sharedInstance setCompletion:completionCopy];
  v11 = [objc_alloc(MEMORY[0x277CD9D78]) initWithConfiguration:configurationCopy];
  [v11 setDelegate:_sharedInstance];
  presentationController = [v11 presentationController];
  [presentationController setDelegate:_sharedInstance];

  if (controllerCopy)
  {
    [controllerCopy presentViewController:v11 animated:1 completion:0];
  }

  else
  {
    _applicationKeyWindow = [MEMORY[0x277D75DA0] _applicationKeyWindow];
    rootViewController = [_applicationKeyWindow rootViewController];
    [rootViewController presentViewController:v11 animated:1 completion:0];
  }
}

+ (id)_sharedInstance
{
  if (_sharedInstance_onceToken != -1)
  {
    +[NTKCPhotosAddController _sharedInstance];
  }

  v3 = _sharedInstance_sharedInstance;

  return v3;
}

void __42__NTKCPhotosAddController__sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = _sharedInstance_sharedInstance;
  _sharedInstance_sharedInstance = v0;
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  completion = self->_completion;
  if (completion)
  {
    (*(completion + 2))(completion, 0, 0);
  }

  [(NTKCPhotosAddController *)self setCompletion:0];
}

- (void)picker:(id)picker didFinishPicking:(id)picking
{
  selfCopy = self;
  v40 = *MEMORY[0x277D85DE8];
  pickerCopy = picker;
  pickingCopy = picking;
  array = [MEMORY[0x277CBEB18] array];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v7 = pickingCopy;
  v8 = [v7 countByEnumeratingWithState:&v32 objects:v39 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v33;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v33 != v10)
        {
          objc_enumerationMutation(v7);
        }

        assetIdentifier = [*(*(&v32 + 1) + 8 * i) assetIdentifier];
        if (assetIdentifier)
        {
          [array addObject:assetIdentifier];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v32 objects:v39 count:16];
    }

    while (v9);
  }

  v13 = [array copy];
  v14 = NTKPHAssetsForLocalIdentifiers(v13);

  array2 = [MEMORY[0x277CBEB18] array];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v16 = v14;
  v17 = [v16 countByEnumeratingWithState:&v28 objects:v38 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v29;
    v20 = *MEMORY[0x277D76A88];
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v29 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v22 = *(*(&v28 + 1) + 8 * j);
        v36 = v20;
        v37 = v22;
        v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:{1, selfCopy}];
        [array2 addObject:v23];
      }

      v18 = [v16 countByEnumeratingWithState:&v28 objects:v38 count:16];
    }

    while (v18);
  }

  completion = selfCopy->_completion;
  if (completion)
  {
    v25 = completion[2](completion, pickerCopy, array2);
    [(NTKCPhotosAddController *)selfCopy setCompletion:0];
    if (v25)
    {
      goto LABEL_22;
    }
  }

  else
  {
    [(NTKCPhotosAddController *)selfCopy setCompletion:0];
  }

  [pickerCopy dismissViewControllerAnimated:1 completion:{0, selfCopy}];
LABEL_22:
}

@end