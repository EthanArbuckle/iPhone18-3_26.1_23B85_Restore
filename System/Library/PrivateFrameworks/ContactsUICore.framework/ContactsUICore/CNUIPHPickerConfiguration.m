@interface CNUIPHPickerConfiguration
+ (id)configurationForMeContact:(BOOL)a3;
- (CNUIPHPickerConfiguration)initWithWrappedConfiguration:(id)a3;
@end

@implementation CNUIPHPickerConfiguration

- (CNUIPHPickerConfiguration)initWithWrappedConfiguration:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CNUIPHPickerConfiguration;
  v6 = [(CNUIPHPickerConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wrappedConfiguration, a3);
  }

  return v7;
}

+ (id)configurationForMeContact:(BOOL)a3
{
  v3 = a3;
  v16 = 0;
  v5 = [CNUIPHPhotoLibrary photoLibraryWithError:&v16];
  v6 = v16;
  if (!v5)
  {
    v7 = +[CNUICoreLogProvider photos_os_log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[CNUIPHPickerConfiguration configurationForMeContact:];
    }
  }

  v8 = objc_alloc(getPHPickerConfigurationClass[0]());
  v9 = [v5 wrappedLibrary];
  v10 = [v8 initWithPhotoLibrary:v9];

  v11 = [getPHPickerFilterClass[0]() imagesFilter];
  [v10 setFilter:v11];

  [v10 _setDisabledPrivateCapabilities:8];
  v12 = get_PHPickerSuggestionGroupClass[0]();
  if (v3)
  {
    [(objc_class *)v12 deviceOwnerSuggestionGroup];
  }

  else
  {
    [(objc_class *)v12 wallpaperLikeSuggestionGroup];
  }
  v13 = ;
  [v10 set_suggestionGroup:v13];

  v14 = [[a1 alloc] initWithWrappedConfiguration:v10];

  return v14;
}

@end