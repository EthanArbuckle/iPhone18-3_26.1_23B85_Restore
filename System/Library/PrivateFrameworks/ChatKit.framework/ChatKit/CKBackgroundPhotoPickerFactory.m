@interface CKBackgroundPhotoPickerFactory
+ (id)fetchOptionsForPicker:(id)a3;
+ (id)makeNewSystemPhotoLibraryInstance;
+ (id)photoPickerWithBackgroundWallpaperSuggestionGroup:(id)a3;
@end

@implementation CKBackgroundPhotoPickerFactory

+ (id)makeNewSystemPhotoLibraryInstance
{
  v2 = objc_alloc(MEMORY[0x1E69789A8]);
  v3 = [MEMORY[0x1E69789A8] systemPhotoLibraryURL];
  v4 = [v2 initWithPhotoLibraryURL:v3];

  return v4;
}

+ (id)photoPickerWithBackgroundWallpaperSuggestionGroup:(id)a3
{
  v3 = MEMORY[0x1E69789A8];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [MEMORY[0x1E69789A8] systemPhotoLibraryURL];
  v7 = [v5 initWithPhotoLibraryURL:v6];

  v8 = [objc_alloc(MEMORY[0x1E69790E0]) initWithPhotoLibrary:v7];
  v9 = [MEMORY[0x1E69790E8] imagesFilter];
  [v8 setFilter:v9];

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
  [v11 setDelegate:v4];

  return v11;
}

+ (id)fetchOptionsForPicker:(id)a3
{
  v3 = [a3 configuration];
  v4 = [v3 photoLibrary];

  v5 = [MEMORY[0x1E6978830] fetchOptionsWithPhotoLibrary:v4 orObject:0];

  return v5;
}

@end