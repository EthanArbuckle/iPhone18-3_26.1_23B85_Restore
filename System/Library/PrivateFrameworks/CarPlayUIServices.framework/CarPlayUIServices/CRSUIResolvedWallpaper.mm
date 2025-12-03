@interface CRSUIResolvedWallpaper
- (CRSUIResolvedWallpaper)initWithWallpaperInformation:(id)information imageResolver:(id)resolver thumbnailResolver:(id)thumbnailResolver statefulPackage:(id)package color:(id)color;
- (id)thumbnailWithCompatibleTraitCollection:(id)collection;
- (id)view;
@end

@implementation CRSUIResolvedWallpaper

- (CRSUIResolvedWallpaper)initWithWallpaperInformation:(id)information imageResolver:(id)resolver thumbnailResolver:(id)thumbnailResolver statefulPackage:(id)package color:(id)color
{
  informationCopy = information;
  resolverCopy = resolver;
  thumbnailResolverCopy = thumbnailResolver;
  packageCopy = package;
  colorCopy = color;
  v25.receiver = self;
  v25.super_class = CRSUIResolvedWallpaper;
  v18 = [(CRSUIResolvedWallpaper *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_wallpaper, information);
    v20 = MEMORY[0x245D2CF20](resolverCopy);
    imageResolver = v19->_imageResolver;
    v19->_imageResolver = v20;

    v22 = MEMORY[0x245D2CF20](thumbnailResolverCopy);
    thumbnailResolver = v19->_thumbnailResolver;
    v19->_thumbnailResolver = v22;

    objc_storeStrong(&v19->_statefulPackage, package);
    objc_storeStrong(&v19->_color, color);
  }

  return v19;
}

- (id)view
{
  if (self->_color)
  {
    v3 = objc_alloc_init(MEMORY[0x277D75D18]);
    [v3 setBackgroundColor:self->_color];
    goto LABEL_8;
  }

  imageResolver = self->_imageResolver;
  if (imageResolver)
  {
    v5 = CRSUIImageViewWithResolver(imageResolver);
LABEL_7:
    v3 = v5;
    goto LABEL_8;
  }

  statefulPackage = self->_statefulPackage;
  if (statefulPackage)
  {
    v5 = CRSUICAPackageViewWithStatefulPackage(statefulPackage);
    goto LABEL_7;
  }

  v8 = CRSUILogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
  {
    [(CRSUIResolvedWallpaper *)v8 view];
  }

  v3 = 0;
LABEL_8:

  return v3;
}

- (id)thumbnailWithCompatibleTraitCollection:(id)collection
{
  thumbnailResolver = self->_thumbnailResolver;
  if (thumbnailResolver)
  {
    thumbnailResolver = (thumbnailResolver)[2](thumbnailResolver, collection);
    v3 = vars8;
  }

  return thumbnailResolver;
}

@end