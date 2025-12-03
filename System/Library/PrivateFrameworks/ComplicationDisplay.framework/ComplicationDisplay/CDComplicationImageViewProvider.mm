@interface CDComplicationImageViewProvider
+ (BOOL)existingImageView:(id)view supportsImageProvider:(id)provider;
+ (id)viewForImageProvider:(id)provider;
@end

@implementation CDComplicationImageViewProvider

+ (id)viewForImageProvider:(id)provider
{
  providerCopy = provider;
  v4 = providerCopy;
  if (providerCopy)
  {
    imageViewCreationHandler = [providerCopy imageViewCreationHandler];
    if (imageViewCreationHandler)
    {
      [v4 maxSize];
      v6 = imageViewCreationHandler[2](imageViewCreationHandler);
    }

    else
    {
      v6 = objc_alloc_init(CDStackedImagesComplicationImageView);
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)existingImageView:(id)view supportsImageProvider:(id)provider
{
  viewCopy = view;
  imageViewCreationHandler = [provider imageViewCreationHandler];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v8 = 0;
  if (viewCopy && provider)
  {
    v8 = (imageViewCreationHandler != 0) ^ isKindOfClass;
  }

  return v8 & 1;
}

@end