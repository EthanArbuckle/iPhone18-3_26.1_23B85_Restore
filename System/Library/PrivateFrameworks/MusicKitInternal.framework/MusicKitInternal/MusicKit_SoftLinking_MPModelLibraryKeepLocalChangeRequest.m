@interface MusicKit_SoftLinking_MPModelLibraryKeepLocalChangeRequest
- (MusicKit_SoftLinking_MPModelLibraryKeepLocalChangeRequest)init;
- (void)setEnableState:(int64_t)a3;
- (void)setModelObject:(id)a3;
@end

@implementation MusicKit_SoftLinking_MPModelLibraryKeepLocalChangeRequest

- (MusicKit_SoftLinking_MPModelLibraryKeepLocalChangeRequest)init
{
  v8.receiver = self;
  v8.super_class = MusicKit_SoftLinking_MPModelLibraryKeepLocalChangeRequest;
  v2 = [(MusicKit_SoftLinking_MPModelLibraryKeepLocalChangeRequest *)&v8 init];
  if (v2)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v3 = getMPModelLibraryKeepLocalChangeRequestClass_softClass;
    v13 = getMPModelLibraryKeepLocalChangeRequestClass_softClass;
    if (!getMPModelLibraryKeepLocalChangeRequestClass_softClass)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __getMPModelLibraryKeepLocalChangeRequestClass_block_invoke;
      v9[3] = &unk_1E84C3838;
      v9[4] = &v10;
      __getMPModelLibraryKeepLocalChangeRequestClass_block_invoke(v9);
      v3 = v11[3];
    }

    v4 = v3;
    _Block_object_dispose(&v10, 8);
    v5 = objc_alloc_init(v3);
    underlyingLibraryKeepLocalChangeRequest = v2->_underlyingLibraryKeepLocalChangeRequest;
    v2->_underlyingLibraryKeepLocalChangeRequest = v5;
  }

  return v2;
}

- (void)setModelObject:(id)a3
{
  objc_storeStrong(&self->_modelObject, a3);
  v5 = a3;
  underlyingLibraryKeepLocalChangeRequest = self->_underlyingLibraryKeepLocalChangeRequest;
  v7 = [v5 _underlyingModelObject];
  [(MPModelLibraryKeepLocalChangeRequest *)underlyingLibraryKeepLocalChangeRequest setModelObject:v7];
}

- (void)setEnableState:(int64_t)a3
{
  self->_enableState = a3;
  if (a3 >= 5)
  {
    v3 = 0;
  }

  else
  {
    v3 = a3 - 1;
  }

  [(MPModelLibraryKeepLocalChangeRequest *)self->_underlyingLibraryKeepLocalChangeRequest setEnableState:v3];
}

@end