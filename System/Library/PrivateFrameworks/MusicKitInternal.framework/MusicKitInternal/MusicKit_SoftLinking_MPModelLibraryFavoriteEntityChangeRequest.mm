@interface MusicKit_SoftLinking_MPModelLibraryFavoriteEntityChangeRequest
+ (int64_t)_underlyingFavoriteEntityChangeRequestActionFrom:(int64_t)from;
- (MusicKit_SoftLinking_MPModelLibraryFavoriteEntityChangeRequest)initWithModelObject:(id)object requestActionType:(int64_t)type;
@end

@implementation MusicKit_SoftLinking_MPModelLibraryFavoriteEntityChangeRequest

- (MusicKit_SoftLinking_MPModelLibraryFavoriteEntityChangeRequest)initWithModelObject:(id)object requestActionType:(int64_t)type
{
  objectCopy = object;
  v19.receiver = self;
  v19.super_class = MusicKit_SoftLinking_MPModelLibraryFavoriteEntityChangeRequest;
  v7 = [(MusicKit_SoftLinking_MPModelLibraryFavoriteEntityChangeRequest *)&v19 init];
  if (v7)
  {
    v8 = [MusicKit_SoftLinking_MPModelLibraryFavoriteEntityChangeRequest _underlyingFavoriteEntityChangeRequestActionFrom:type];
    v25 = 0;
    v26 = &v25;
    v27 = 0x2050000000;
    v9 = getMPModelLibraryFavoriteEntityRequestActionClass_softClass;
    v28 = getMPModelLibraryFavoriteEntityRequestActionClass_softClass;
    if (!getMPModelLibraryFavoriteEntityRequestActionClass_softClass)
    {
      v20 = MEMORY[0x1E69E9820];
      v21 = 3221225472;
      v22 = __getMPModelLibraryFavoriteEntityRequestActionClass_block_invoke;
      v23 = &unk_1E84C3838;
      v24 = &v25;
      __getMPModelLibraryFavoriteEntityRequestActionClass_block_invoke(&v20);
      v9 = v26[3];
    }

    v10 = v9;
    _Block_object_dispose(&v25, 8);
    v11 = [[v9 alloc] initWithChangeAction:v8];
    v25 = 0;
    v26 = &v25;
    v27 = 0x2050000000;
    v12 = getMPModelLibraryFavoriteEntityChangeRequestClass_softClass;
    v28 = getMPModelLibraryFavoriteEntityChangeRequestClass_softClass;
    if (!getMPModelLibraryFavoriteEntityChangeRequestClass_softClass)
    {
      v20 = MEMORY[0x1E69E9820];
      v21 = 3221225472;
      v22 = __getMPModelLibraryFavoriteEntityChangeRequestClass_block_invoke;
      v23 = &unk_1E84C3838;
      v24 = &v25;
      __getMPModelLibraryFavoriteEntityChangeRequestClass_block_invoke(&v20);
      v12 = v26[3];
    }

    v13 = v12;
    _Block_object_dispose(&v25, 8);
    v14 = objc_alloc_init(v12);
    underlyingFavoriteEntityChangeRequest = v7->_underlyingFavoriteEntityChangeRequest;
    v7->_underlyingFavoriteEntityChangeRequest = v14;

    v16 = v7->_underlyingFavoriteEntityChangeRequest;
    _underlyingModelObject = [objectCopy _underlyingModelObject];
    [(MPModelLibraryFavoriteEntityChangeRequest *)v16 setModelObject:_underlyingModelObject];

    [(MPModelLibraryFavoriteEntityChangeRequest *)v7->_underlyingFavoriteEntityChangeRequest setRequestAction:v11];
  }

  return v7;
}

+ (int64_t)_underlyingFavoriteEntityChangeRequestActionFrom:(int64_t)from
{
  if ((from - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return from;
  }
}

@end