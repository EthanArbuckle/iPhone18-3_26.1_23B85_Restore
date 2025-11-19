@interface PKRemoteDataAccessor
- (PKRemoteDataAccessor)initWithLibrary:(id)a3 objectUniqueID:(id)a4;
- (id)cachedImageSetForType:(int64_t)a3 withDisplayProfile:(id)a4 displayTraits:(id)a5;
- (id)content;
- (id)dataForBundleResource:(id)a3;
- (id)imageSetForType:(int64_t)a3 screenScale:(double)a4 suffix:(id)a5 displayProfile:(id)a6 preheat:(BOOL)a7;
- (void)contentWithCompletion:(id)a3;
- (void)imageSetForType:(int64_t)a3 screenScale:(double)a4 suffix:(id)a5 displayProfile:(id)a6 preheat:(BOOL)a7 withCompletion:(id)a8;
- (void)requestUpdateWithCompletion:(id)a3;
- (void)revocationStatusWithCompletion:(id)a3;
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

- (PKRemoteDataAccessor)initWithLibrary:(id)a3 objectUniqueID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PKRemoteDataAccessor;
  v9 = [(PKRemoteDataAccessor *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_library, a3);
    objc_storeStrong(&v10->_objectUniqueID, a4);
  }

  return v10;
}

- (void)revocationStatusWithCompletion:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, 0, 0);
  }
}

- (void)requestUpdateWithCompletion:(id)a3
{
  v4 = a3;
  library = self->_library;
  if (library)
  {
    [(PKPassLibrary *)library requestUpdateOfObjectWithUniqueIdentifier:self->_objectUniqueID completion:?];
  }

  else if (v4)
  {
    v4[2](v4, 0);
  }

  MEMORY[0x1EEE66C30]();
}

- (void)contentWithCompletion:(id)a3
{
  v4 = a3;
  library = self->_library;
  if (library)
  {
    [(PKPassLibrary *)library fetchContentForUniqueID:self->_objectUniqueID withCompletion:?];
  }

  else if (v4)
  {
    v4[2](v4, 0);
  }

  MEMORY[0x1EEE66C30]();
}

- (id)cachedImageSetForType:(int64_t)a3 withDisplayProfile:(id)a4 displayTraits:(id)a5
{
  if (self->_library)
  {
    v6 = [(PKPassLibrary *)self->_library cachedImageSetForUniqueID:self->_objectUniqueID type:a3 withDisplayProfile:a4 displayTraits:a5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)imageSetForType:(int64_t)a3 screenScale:(double)a4 suffix:(id)a5 displayProfile:(id)a6 preheat:(BOOL)a7
{
  if (self->_library)
  {
    v8 = [(PKPassLibrary *)self->_library imageSetForUniqueID:self->_objectUniqueID ofType:a3 displayProfile:a6 suffix:a5, a4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)imageSetForType:(int64_t)a3 screenScale:(double)a4 suffix:(id)a5 displayProfile:(id)a6 preheat:(BOOL)a7 withCompletion:(id)a8
{
  v15 = a5;
  v12 = a6;
  v13 = a8;
  library = self->_library;
  if (library)
  {
    [(PKPassLibrary *)library fetchImageSetForUniqueID:self->_objectUniqueID ofType:a3 displayProfile:v12 suffix:v15 withCompletion:v13];
  }

  else if (v13)
  {
    v13[2](v13, 0);
  }
}

- (id)dataForBundleResource:(id)a3
{
  v4 = a3;
  v5 = [v4 name];
  v6 = [v4 extension];

  v7 = [(PKRemoteDataAccessor *)self dataForBundleResourceNamed:v5 withExtension:v6];

  return v7;
}

@end