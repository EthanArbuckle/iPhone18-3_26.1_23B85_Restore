@interface PKRemoteDataAccessor
- (PKRemoteDataAccessor)initWithLibrary:(id)library objectUniqueID:(id)d;
- (id)cachedImageSetForType:(int64_t)type withDisplayProfile:(id)profile displayTraits:(id)traits;
- (id)content;
- (id)dataForBundleResource:(id)resource;
- (id)imageSetForType:(int64_t)type screenScale:(double)scale suffix:(id)suffix displayProfile:(id)profile preheat:(BOOL)preheat;
- (void)contentWithCompletion:(id)completion;
- (void)imageSetForType:(int64_t)type screenScale:(double)scale suffix:(id)suffix displayProfile:(id)profile preheat:(BOOL)preheat withCompletion:(id)completion;
- (void)requestUpdateWithCompletion:(id)completion;
- (void)revocationStatusWithCompletion:(id)completion;
@end

@implementation PKRemoteDataAccessor

- (id)content
{
  if (self->_library)
  {
    v3 = [(PKPassLibrary *)self->_library contentForUniqueID:self->_objectUniqueID];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (PKRemoteDataAccessor)initWithLibrary:(id)library objectUniqueID:(id)d
{
  libraryCopy = library;
  dCopy = d;
  v12.receiver = self;
  v12.super_class = PKRemoteDataAccessor;
  v9 = [(PKRemoteDataAccessor *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_library, library);
    objc_storeStrong(&v10->_objectUniqueID, d);
  }

  return v10;
}

- (void)revocationStatusWithCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 0, 0);
  }
}

- (void)requestUpdateWithCompletion:(id)completion
{
  completionCopy = completion;
  library = self->_library;
  if (library)
  {
    [(PKPassLibrary *)library requestUpdateOfObjectWithUniqueIdentifier:self->_objectUniqueID completion:?];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }

  MEMORY[0x1EEE66C30]();
}

- (void)contentWithCompletion:(id)completion
{
  completionCopy = completion;
  library = self->_library;
  if (library)
  {
    [(PKPassLibrary *)library fetchContentForUniqueID:self->_objectUniqueID withCompletion:?];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }

  MEMORY[0x1EEE66C30]();
}

- (id)cachedImageSetForType:(int64_t)type withDisplayProfile:(id)profile displayTraits:(id)traits
{
  if (self->_library)
  {
    v6 = [(PKPassLibrary *)self->_library cachedImageSetForUniqueID:self->_objectUniqueID type:type withDisplayProfile:profile displayTraits:traits];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)imageSetForType:(int64_t)type screenScale:(double)scale suffix:(id)suffix displayProfile:(id)profile preheat:(BOOL)preheat
{
  if (self->_library)
  {
    scale = [(PKPassLibrary *)self->_library imageSetForUniqueID:self->_objectUniqueID ofType:type displayProfile:profile suffix:suffix, scale];
  }

  else
  {
    scale = 0;
  }

  return scale;
}

- (void)imageSetForType:(int64_t)type screenScale:(double)scale suffix:(id)suffix displayProfile:(id)profile preheat:(BOOL)preheat withCompletion:(id)completion
{
  suffixCopy = suffix;
  profileCopy = profile;
  completionCopy = completion;
  library = self->_library;
  if (library)
  {
    [(PKPassLibrary *)library fetchImageSetForUniqueID:self->_objectUniqueID ofType:type displayProfile:profileCopy suffix:suffixCopy withCompletion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (id)dataForBundleResource:(id)resource
{
  resourceCopy = resource;
  name = [resourceCopy name];
  extension = [resourceCopy extension];

  v7 = [(PKRemoteDataAccessor *)self dataForBundleResourceNamed:name withExtension:extension];

  return v7;
}

@end