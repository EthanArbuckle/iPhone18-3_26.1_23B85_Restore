@interface CNUIPHPickerConfiguration
+ (id)configurationForMeContact:(BOOL)contact;
- (CNUIPHPickerConfiguration)initWithWrappedConfiguration:(id)configuration;
@end

@implementation CNUIPHPickerConfiguration

- (CNUIPHPickerConfiguration)initWithWrappedConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v9.receiver = self;
  v9.super_class = CNUIPHPickerConfiguration;
  v6 = [(CNUIPHPickerConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wrappedConfiguration, configuration);
  }

  return v7;
}

+ (id)configurationForMeContact:(BOOL)contact
{
  contactCopy = contact;
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
  wrappedLibrary = [v5 wrappedLibrary];
  v10 = [v8 initWithPhotoLibrary:wrappedLibrary];

  imagesFilter = [getPHPickerFilterClass[0]() imagesFilter];
  [v10 setFilter:imagesFilter];

  [v10 _setDisabledPrivateCapabilities:8];
  v12 = get_PHPickerSuggestionGroupClass[0]();
  if (contactCopy)
  {
    [(objc_class *)v12 deviceOwnerSuggestionGroup];
  }

  else
  {
    [(objc_class *)v12 wallpaperLikeSuggestionGroup];
  }
  v13 = ;
  [v10 set_suggestionGroup:v13];

  v14 = [[self alloc] initWithWrappedConfiguration:v10];

  return v14;
}

@end