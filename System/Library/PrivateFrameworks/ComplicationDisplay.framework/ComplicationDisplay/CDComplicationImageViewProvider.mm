@interface CDComplicationImageViewProvider
+ (BOOL)existingImageView:(id)a3 supportsImageProvider:(id)a4;
+ (id)viewForImageProvider:(id)a3;
@end

@implementation CDComplicationImageViewProvider

+ (id)viewForImageProvider:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 imageViewCreationHandler];
    if (v5)
    {
      [v4 maxSize];
      v6 = v5[2](v5);
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

+ (BOOL)existingImageView:(id)a3 supportsImageProvider:(id)a4
{
  v5 = a3;
  v6 = [a4 imageViewCreationHandler];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v8 = 0;
  if (v5 && a4)
  {
    v8 = (v6 != 0) ^ isKindOfClass;
  }

  return v8 & 1;
}

@end