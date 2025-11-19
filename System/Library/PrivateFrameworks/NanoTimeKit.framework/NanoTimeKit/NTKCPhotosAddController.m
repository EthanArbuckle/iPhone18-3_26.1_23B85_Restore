@interface NTKCPhotosAddController
+ (id)_sharedInstance;
+ (id)pickerConfigurationWithLimit:(unint64_t)a3;
+ (void)presentPhotosAddControllerFromViewController:(id)a3 configuration:(id)a4 withCompletion:(id)a5;
+ (void)presentPhotosAddControllerFromViewController:(id)a3 selectionLimit:(unint64_t)a4 withCompletion:(id)a5;
+ (void)presentSinglePhotoAddControllerFromViewController:(id)a3 withCompletion:(id)a4;
- (void)picker:(id)a3 didFinishPicking:(id)a4;
- (void)presentationControllerDidDismiss:(id)a3;
@end

@implementation NTKCPhotosAddController

+ (id)pickerConfigurationWithLimit:(unint64_t)a3
{
  v12[2] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CD9948] sharedPhotoLibrary];
  v5 = [objc_alloc(MEMORY[0x277CD9D68]) initWithPhotoLibrary:v4];
  v6 = MEMORY[0x277CD9D70];
  v7 = [MEMORY[0x277CD9D70] livePhotosFilter];
  v12[0] = v7;
  v8 = [MEMORY[0x277CD9D70] imagesFilter];
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v10 = [v6 anyFilterMatchingSubfilters:v9];
  [v5 setFilter:v10];

  [v5 setSelectionLimit:a3];

  return v5;
}

+ (void)presentPhotosAddControllerFromViewController:(id)a3 selectionLimit:(unint64_t)a4 withCompletion:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [a1 pickerConfigurationWithLimit:a4];
  [v10 setSelectionLimit:a4];
  [a1 presentPhotosAddControllerFromViewController:v9 configuration:v10 withCompletion:v8];
}

+ (void)presentSinglePhotoAddControllerFromViewController:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __92__NTKCPhotosAddController_presentSinglePhotoAddControllerFromViewController_withCompletion___block_invoke;
  v8[3] = &unk_27877F810;
  v9 = v6;
  v7 = v6;
  [a1 presentPhotosAddControllerFromViewController:a3 selectionLimit:1 withCompletion:v8];
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

+ (void)presentPhotosAddControllerFromViewController:(id)a3 configuration:(id)a4 withCompletion:(id)a5
{
  v15 = a3;
  v8 = a4;
  v9 = a5;
  if (!v8)
  {
    v8 = [a1 pickerConfigurationWithLimit:0];
  }

  v10 = [a1 _sharedInstance];
  [v10 setCompletion:v9];
  v11 = [objc_alloc(MEMORY[0x277CD9D78]) initWithConfiguration:v8];
  [v11 setDelegate:v10];
  v12 = [v11 presentationController];
  [v12 setDelegate:v10];

  if (v15)
  {
    [v15 presentViewController:v11 animated:1 completion:0];
  }

  else
  {
    v13 = [MEMORY[0x277D75DA0] _applicationKeyWindow];
    v14 = [v13 rootViewController];
    [v14 presentViewController:v11 animated:1 completion:0];
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

- (void)presentationControllerDidDismiss:(id)a3
{
  completion = self->_completion;
  if (completion)
  {
    (*(completion + 2))(completion, 0, 0);
  }

  [(NTKCPhotosAddController *)self setCompletion:0];
}

- (void)picker:(id)a3 didFinishPicking:(id)a4
{
  v26 = self;
  v40 = *MEMORY[0x277D85DE8];
  v27 = a3;
  v5 = a4;
  v6 = [MEMORY[0x277CBEB18] array];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v7 = v5;
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

        v12 = [*(*(&v32 + 1) + 8 * i) assetIdentifier];
        if (v12)
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v32 objects:v39 count:16];
    }

    while (v9);
  }

  v13 = [v6 copy];
  v14 = NTKPHAssetsForLocalIdentifiers(v13);

  v15 = [MEMORY[0x277CBEB18] array];
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
        v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:{1, v26}];
        [v15 addObject:v23];
      }

      v18 = [v16 countByEnumeratingWithState:&v28 objects:v38 count:16];
    }

    while (v18);
  }

  completion = v26->_completion;
  if (completion)
  {
    v25 = completion[2](completion, v27, v15);
    [(NTKCPhotosAddController *)v26 setCompletion:0];
    if (v25)
    {
      goto LABEL_22;
    }
  }

  else
  {
    [(NTKCPhotosAddController *)v26 setCompletion:0];
  }

  [v27 dismissViewControllerAnimated:1 completion:{0, v26}];
LABEL_22:
}

@end