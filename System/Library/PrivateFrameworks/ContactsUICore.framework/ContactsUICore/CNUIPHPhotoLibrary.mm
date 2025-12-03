@interface CNUIPHPhotoLibrary
+ (BOOL)isAvailable;
+ (BOOL)isAvailableAndAuthorized;
+ (id)photoLibraryWithError:(id *)error;
- (CNUIPHPhotoLibrary)initWithWrappedLibrary:(id)library;
- (id)fetchAssetWithID:(id)d;
- (id)fetchSuggestedAssetsOfType:(int64_t)type;
- (void)createAssetFromImage:(id)image completionHandler:(id)handler;
@end

@implementation CNUIPHPhotoLibrary

- (CNUIPHPhotoLibrary)initWithWrappedLibrary:(id)library
{
  libraryCopy = library;
  v9.receiver = self;
  v9.super_class = CNUIPHPhotoLibrary;
  v6 = [(CNUIPHPhotoLibrary *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wrappedLibrary, library);
  }

  return v7;
}

+ (BOOL)isAvailable
{
  if (isAvailable_onceToken != -1)
  {
    +[CNUIPHPhotoLibrary isAvailable];
  }

  return isAvailable_enabled;
}

void __33__CNUIPHPhotoLibrary_isAvailable__block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v4 = [v0 objectForInfoDictionaryKey:@"NSPhotoLibraryUsageDescription"];

  v1 = v4;
  if (v4)
  {
    v2 = 1;
  }

  else
  {
    v3 = TCCAccessPreflight() == 0;
    v1 = 0;
    v2 = v3;
  }

  isAvailable_enabled = v2;
}

+ (BOOL)isAvailableAndAuthorized
{
  v2 = +[CNUIPHPhotoLibrary isAvailable];
  if (v2)
  {
    LOBYTE(v2) = [(objc_class *)getPHPhotoLibraryClass() authorizationStatusForAccessLevel:2]== 3;
  }

  return v2;
}

+ (id)photoLibraryWithError:(id *)error
{
  if (!+[CNUIPHPhotoLibrary isAvailable])
  {
    goto LABEL_7;
  }

  isMultiLibraryModeEnabled = [(objc_class *)getPHPhotoLibraryClass() isMultiLibraryModeEnabled];
  PHPhotoLibraryClass = getPHPhotoLibraryClass();
  if (isMultiLibraryModeEnabled)
  {
    [(objc_class *)PHPhotoLibraryClass openPhotoLibraryWithWellKnownIdentifier:1 error:error];
  }

  else
  {
    [(objc_class *)PHPhotoLibraryClass sharedPhotoLibrary];
  }
  v7 = ;
  if (v7)
  {
    v8 = [[self alloc] initWithWrappedLibrary:v7];
  }

  else
  {
LABEL_7:
    v8 = 0;
  }

  return v8;
}

- (id)fetchAssetWithID:(id)d
{
  v13[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_wrappedLibrary librarySpecificFetchOptions];
  [librarySpecificFetchOptions setIncludeGuestAssets:1];
  PHAssetClass = getPHAssetClass();
  v13[0] = dCopy;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v8 = [(objc_class *)PHAssetClass fetchAssetsWithUUIDs:v7 options:librarySpecificFetchOptions];
  firstObject = [v8 firstObject];

  if (firstObject)
  {
    v10 = [[CNUIPHAsset alloc] initWithWrappedAsset:firstObject];
  }

  else
  {
    v11 = +[CNUICoreLogProvider photos_os_log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CNUIPHPhotoLibrary fetchAssetWithID:];
    }

    v10 = 0;
  }

  return v10;
}

- (id)fetchSuggestedAssetsOfType:(int64_t)type
{
  if (type > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = dword_1A34D9258[type];
  }

  librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_wrappedLibrary librarySpecificFetchOptions];
  v6 = MEMORY[0x1E696AE18];
  v7 = NSStringFromSelector(sel_subtype);
  v8 = [v6 predicateWithFormat:@"%K == %d", v7, v4];
  [librarySpecificFetchOptions setPredicate:v8];

  v9 = [(objc_class *)getPHSuggestionClass() fetchSuggestionsWithOptions:librarySpecificFetchOptions];
  librarySpecificFetchOptions2 = [(PHPhotoLibrary *)self->_wrappedLibrary librarySpecificFetchOptions];
  [librarySpecificFetchOptions2 setFetchLimit:10];
  v11 = [(objc_class *)getPHAssetClass() fetchKeyAssetForEachSuggestion:v9 options:librarySpecificFetchOptions2 useSuggestionsSortOrder:0];
  array = [MEMORY[0x1E695DF70] array];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __49__CNUIPHPhotoLibrary_fetchSuggestedAssetsOfType___block_invoke;
  v15[3] = &unk_1E76E8078;
  v13 = array;
  v16 = v13;
  [v11 enumerateObjectsUsingBlock:v15];

  return v13;
}

void __49__CNUIPHPhotoLibrary_fetchSuggestedAssetsOfType___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [[CNUIPHAsset alloc] initWithWrappedAsset:v3];

  [v2 addObject:v4];
}

- (void)createAssetFromImage:(id)image completionHandler:(id)handler
{
  imageCopy = image;
  handlerCopy = handler;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = __Block_byref_object_copy__0;
  v17[4] = __Block_byref_object_dispose__0;
  v18 = 0;
  wrappedLibrary = self->_wrappedLibrary;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __61__CNUIPHPhotoLibrary_createAssetFromImage_completionHandler___block_invoke;
  v14[3] = &unk_1E76E80A0;
  v9 = imageCopy;
  v15 = v9;
  v16 = v17;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__CNUIPHPhotoLibrary_createAssetFromImage_completionHandler___block_invoke_2;
  v11[3] = &unk_1E76E80C8;
  v10 = handlerCopy;
  v12 = v10;
  v13 = v17;
  [(PHPhotoLibrary *)wrappedLibrary performChanges:v14 completionHandler:v11];

  _Block_object_dispose(v17, 8);
}

void __61__CNUIPHPhotoLibrary_createAssetFromImage_completionHandler___block_invoke(uint64_t a1)
{
  v6 = [getPHAssetChangeRequestClass[0]() creationRequestForAssetFromImage:*(a1 + 32)];
  v2 = [v6 placeholderForCreatedAsset];
  v3 = [v2 uuid];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

@end