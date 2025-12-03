@interface MusicKit_SoftLinking_MPModelLibraryImportChangeRequest
- (MusicKit_SoftLinking_MPModelLibraryImportChangeRequest)init;
- (void)setModelObjects:(id)objects;
- (void)setReferralObject:(id)object;
@end

@implementation MusicKit_SoftLinking_MPModelLibraryImportChangeRequest

- (MusicKit_SoftLinking_MPModelLibraryImportChangeRequest)init
{
  v8.receiver = self;
  v8.super_class = MusicKit_SoftLinking_MPModelLibraryImportChangeRequest;
  v2 = [(MusicKit_SoftLinking_MPModelLibraryImportChangeRequest *)&v8 init];
  if (v2)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v3 = getMPModelLibraryImportChangeRequestClass_softClass_0;
    v13 = getMPModelLibraryImportChangeRequestClass_softClass_0;
    if (!getMPModelLibraryImportChangeRequestClass_softClass_0)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __getMPModelLibraryImportChangeRequestClass_block_invoke_0;
      v9[3] = &unk_1E84C3838;
      v9[4] = &v10;
      __getMPModelLibraryImportChangeRequestClass_block_invoke_0(v9);
      v3 = v11[3];
    }

    v4 = v3;
    _Block_object_dispose(&v10, 8);
    v5 = objc_alloc_init(v3);
    underlyingLibraryImportChangeRequest = v2->_underlyingLibraryImportChangeRequest;
    v2->_underlyingLibraryImportChangeRequest = v5;
  }

  return v2;
}

- (void)setModelObjects:(id)objects
{
  objectsCopy = objects;
  v5 = [objectsCopy copy];
  modelObjects = self->_modelObjects;
  self->_modelObjects = v5;

  v12 = 0;
  v13 = &v12;
  v14 = 0x2050000000;
  v7 = getMPMutableSectionedCollectionClass_softClass_3;
  v15 = getMPMutableSectionedCollectionClass_softClass_3;
  if (!getMPMutableSectionedCollectionClass_softClass_3)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __getMPMutableSectionedCollectionClass_block_invoke_3;
    v11[3] = &unk_1E84C3838;
    v11[4] = &v12;
    __getMPMutableSectionedCollectionClass_block_invoke_3(v11);
    v7 = v13[3];
  }

  v8 = v7;
  _Block_object_dispose(&v12, 8);
  v9 = objc_alloc_init(v7);
  [v9 appendSection:&stru_1F50C75D0];
  v10 = [objectsCopy msv_map:&__block_literal_global_10];
  [v9 appendItems:v10];

  [(MPModelLibraryImportChangeRequest *)self->_underlyingLibraryImportChangeRequest setModelObjects:v9];
}

- (void)setReferralObject:(id)object
{
  objc_storeStrong(&self->_referralObject, object);
  objectCopy = object;
  underlyingLibraryImportChangeRequest = self->_underlyingLibraryImportChangeRequest;
  _underlyingModelObject = [(MusicKit_SoftLinking_MPModelObject *)self->_referralObject _underlyingModelObject];
  [(MPModelLibraryImportChangeRequest *)underlyingLibraryImportChangeRequest setReferralObject:_underlyingModelObject];
}

@end