@interface MusicKit_SoftLinking_MPModelLibraryDeleteEntityChangeRequest
- (MusicKit_SoftLinking_MPModelLibraryDeleteEntityChangeRequest)init;
- (void)setModelObject:(id)object;
@end

@implementation MusicKit_SoftLinking_MPModelLibraryDeleteEntityChangeRequest

- (MusicKit_SoftLinking_MPModelLibraryDeleteEntityChangeRequest)init
{
  v8.receiver = self;
  v8.super_class = MusicKit_SoftLinking_MPModelLibraryDeleteEntityChangeRequest;
  v2 = [(MusicKit_SoftLinking_MPModelLibraryDeleteEntityChangeRequest *)&v8 init];
  if (v2)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v3 = getMPModelLibraryDeleteEntityChangeRequestClass_softClass;
    v13 = getMPModelLibraryDeleteEntityChangeRequestClass_softClass;
    if (!getMPModelLibraryDeleteEntityChangeRequestClass_softClass)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __getMPModelLibraryDeleteEntityChangeRequestClass_block_invoke;
      v9[3] = &unk_1E84C3838;
      v9[4] = &v10;
      __getMPModelLibraryDeleteEntityChangeRequestClass_block_invoke(v9);
      v3 = v11[3];
    }

    v4 = v3;
    _Block_object_dispose(&v10, 8);
    v5 = objc_alloc_init(v3);
    underlyingLibraryDeleteEntityChangeRequest = v2->_underlyingLibraryDeleteEntityChangeRequest;
    v2->_underlyingLibraryDeleteEntityChangeRequest = v5;
  }

  return v2;
}

- (void)setModelObject:(id)object
{
  underlyingLibraryDeleteEntityChangeRequest = self->_underlyingLibraryDeleteEntityChangeRequest;
  _underlyingModelObject = [object _underlyingModelObject];
  [(MPModelLibraryDeleteEntityChangeRequest *)underlyingLibraryDeleteEntityChangeRequest setModelObject:_underlyingModelObject];
}

@end