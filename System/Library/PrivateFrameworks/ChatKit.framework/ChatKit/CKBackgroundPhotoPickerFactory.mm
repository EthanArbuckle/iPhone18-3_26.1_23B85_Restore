@interface CKBackgroundPhotoPickerFactory
+ (id)fetchOptionsForPicker:(id)picker;
+ (id)makeNewSystemPhotoLibraryInstance;
+ (id)photoPickerWithBackgroundWallpaperSuggestionGroup:(id)group;
@end

@implementation CKBackgroundPhotoPickerFactory

+ (id)makeNewSystemPhotoLibraryInstance
{
  v2 = objc_alloc(MEMORY[0x1E69789A8]);
  systemPhotoLibraryURL = [MEMORY[0x1E69789A8] systemPhotoLibraryURL];
  v4 = [v2 initWithPhotoLibraryURL:systemPhotoLibraryURL];

  return v4;
}

+ (id)photoPickerWithBackgroundWallpaperSuggestionGroup:(id)group
{
  v3 = MEMORY[0x1E69789A8];
  groupCopy = group;
  v5 = [v3 alloc];
  systemPhotoLibraryURL = [MEMORY[0x1E69789A8] systemPhotoLibraryURL];
  v7 = [v5 initWithPhotoLibraryURL:systemPhotoLibraryURL];

  v8 = [objc_alloc(MEMORY[0x1E69790E0]) initWithPhotoLibrary:v7];
  imagesFilter = [MEMORY[0x1E69790E8] imagesFilter];
  [v8 setFilter:imagesFilter];

  [v8 setDisabledCapabilities:2];
  [v8 _setDisabledPrivateCapabilities:268];
  if (objc_opt_respondsToSelector())
  {
    [MEMORY[0x1E6979178] backdropWallpaperSuggestionGroup];
  }

  else
  {
    [MEMORY[0x1E6979178] wallpaperSuggestionGroup];
  }
  v10 = ;
  [v8 set_suggestionGroup:v10];

  v11 = [objc_alloc(MEMORY[0x1E69790F8]) initWithConfiguration:v8];
  [v11 setDelegate:groupCopy];

  return v11;
}

+ (id)fetchOptionsForPicker:(id)picker
{
  configuration = [picker configuration];
  photoLibrary = [configuration photoLibrary];

  v5 = [MEMORY[0x1E6978830] fetchOptionsWithPhotoLibrary:photoLibrary orObject:0];

  return v5;
}

@end