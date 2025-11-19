@interface MusicKit_SoftLinking_MPModelResponseDetailedKeepLocalStatusRequesting
- (MusicKit_SoftLinking_MPModelResponseDetailedKeepLocalStatusRequesting)initWithModelObject:(id)a3 children:(id)a4;
- (id)newOperationForDetailedKeepLocalStatusConfigurationForSectionAtIndex:(int64_t)a3 responseHandler:(id)a4;
@end

@implementation MusicKit_SoftLinking_MPModelResponseDetailedKeepLocalStatusRequesting

- (MusicKit_SoftLinking_MPModelResponseDetailedKeepLocalStatusRequesting)initWithModelObject:(id)a3 children:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = MusicKit_SoftLinking_MPModelResponseDetailedKeepLocalStatusRequesting;
  v9 = [(MusicKit_SoftLinking_MPModelResponseDetailedKeepLocalStatusRequesting *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_modelObject, a3);
    v11 = [v8 copy];
    children = v10->_children;
    v10->_children = v11;
  }

  return v10;
}

- (id)newOperationForDetailedKeepLocalStatusConfigurationForSectionAtIndex:(int64_t)a3 responseHandler:(id)a4
{
  v6 = a4;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2050000000;
  v7 = getMPMutableSectionedCollectionClass_softClass_1;
  v31 = getMPMutableSectionedCollectionClass_softClass_1;
  if (!getMPMutableSectionedCollectionClass_softClass_1)
  {
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __getMPMutableSectionedCollectionClass_block_invoke_1;
    v26 = &unk_1E84C3838;
    v27 = &v28;
    __getMPMutableSectionedCollectionClass_block_invoke_1(&v23);
    v7 = v29[3];
  }

  v8 = v7;
  _Block_object_dispose(&v28, 8);
  v9 = objc_alloc_init(v7);
  v10 = [(MusicKit_SoftLinking_MPModelObject *)self->_modelObject _underlyingModelObject];
  [v9 appendSection:v10];

  v11 = [(NSArray *)self->_children msv_map:&__block_literal_global_2];
  [v9 appendItems:v11];
  v28 = 0;
  v29 = &v28;
  v30 = 0x2050000000;
  v12 = getMPStoreLibraryPersonalizationRequestClass_softClass;
  v31 = getMPStoreLibraryPersonalizationRequestClass_softClass;
  if (!getMPStoreLibraryPersonalizationRequestClass_softClass)
  {
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __getMPStoreLibraryPersonalizationRequestClass_block_invoke;
    v26 = &unk_1E84C3838;
    v27 = &v28;
    __getMPStoreLibraryPersonalizationRequestClass_block_invoke(&v23);
    v12 = v29[3];
  }

  v13 = v12;
  _Block_object_dispose(&v28, 8);
  v14 = [[v12 alloc] initWithUnpersonalizedContentDescriptors:v9];
  v28 = 0;
  v29 = &v28;
  v30 = 0x2050000000;
  v15 = getMPStoreLibraryPersonalizationResponseClass_softClass;
  v31 = getMPStoreLibraryPersonalizationResponseClass_softClass;
  if (!getMPStoreLibraryPersonalizationResponseClass_softClass)
  {
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __getMPStoreLibraryPersonalizationResponseClass_block_invoke;
    v26 = &unk_1E84C3838;
    v27 = &v28;
    __getMPStoreLibraryPersonalizationResponseClass_block_invoke(&v23);
    v15 = v29[3];
  }

  v16 = v15;
  _Block_object_dispose(&v28, 8);
  v17 = [[v15 alloc] initWithRequest:v14];
  [v17 setResults:v9];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __158__MusicKit_SoftLinking_MPModelResponseDetailedKeepLocalStatusRequesting_newOperationForDetailedKeepLocalStatusConfigurationForSectionAtIndex_responseHandler___block_invoke_2;
  v21[3] = &unk_1E84C3BF0;
  v22 = v6;
  v18 = v6;
  v19 = [v17 newOperationForDetailedKeepLocalStatusConfigurationForSectionAtIndex:a3 responseHandler:v21];

  return v19;
}

@end