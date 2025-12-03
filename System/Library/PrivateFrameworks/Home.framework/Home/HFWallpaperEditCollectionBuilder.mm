@interface HFWallpaperEditCollectionBuilder
- (HFWallpaperEditCollectionBuilder)initWithHomeKitObject:(id)object;
- (HFWallpaperEditCollectionBuilder)initWithHomeKitObject:(id)object namedWallpaperCollectionType:(int64_t)type;
- (NAFuture)initialEditCollectionFuture;
- (id)commitWallpaper;
- (id)description;
- (id)editCollectionForWallpaper:(id)wallpaper image:(id)image;
- (id)wallpaperEditCollectionFuture;
- (void)setHkObject:(id)object;
- (void)setWallpaper:(id)wallpaper image:(id)image;
@end

@implementation HFWallpaperEditCollectionBuilder

- (HFWallpaperEditCollectionBuilder)initWithHomeKitObject:(id)object namedWallpaperCollectionType:(int64_t)type
{
  objectCopy = object;
  v11.receiver = self;
  v11.super_class = HFWallpaperEditCollectionBuilder;
  v8 = [(HFWallpaperEditCollectionBuilder *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_hkObject, object);
    v9->_namedWallpaperCollectionType = type;
  }

  return v9;
}

- (HFWallpaperEditCollectionBuilder)initWithHomeKitObject:(id)object
{
  objectCopy = object;
  v9.receiver = self;
  v9.super_class = HFWallpaperEditCollectionBuilder;
  v6 = [(HFWallpaperEditCollectionBuilder *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_hkObject, object);
  }

  return v7;
}

- (id)description
{
  namedWallpaperCollectionType = [(HFWallpaperEditCollectionBuilder *)self namedWallpaperCollectionType];
  v4 = @"room";
  if (!namedWallpaperCollectionType)
  {
    v4 = @"home";
  }

  v5 = MEMORY[0x277CCACA8];
  v6 = v4;
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  updatedEditCollection = [(HFWallpaperEditCollectionBuilder *)self updatedEditCollection];
  v10 = [v5 stringWithFormat:@"<%@: %p, type = %@, editCollection = %@>", v8, self, v6, updatedEditCollection];

  return v10;
}

- (void)setHkObject:(id)object
{
  p_hkObject = &self->_hkObject;
  objectCopy = object;
  if (([*p_hkObject isEqual:?] & 1) == 0)
  {
    v6 = *p_hkObject;
    if (*p_hkObject)
    {
      initialEditCollectionFuture = [(HFWallpaperEditCollectionBuilder *)self initialEditCollectionFuture];
      [initialEditCollectionFuture cancel];

      [(HFWallpaperEditCollectionBuilder *)self setInitialEditCollectionFuture:0];
    }

    [(HFWallpaperEditCollectionBuilder *)self setHkObjectNewlyCreated:v6 == 0];
    objc_storeStrong(&self->_hkObject, object);
  }
}

- (id)wallpaperEditCollectionFuture
{
  updatedEditCollection = [(HFWallpaperEditCollectionBuilder *)self updatedEditCollection];
  if (updatedEditCollection)
  {
    v4 = MEMORY[0x277D2C900];
    updatedEditCollection2 = [(HFWallpaperEditCollectionBuilder *)self updatedEditCollection];
    initialEditCollectionFuture = [v4 futureWithResult:updatedEditCollection2];
  }

  else
  {
    initialEditCollectionFuture = [(HFWallpaperEditCollectionBuilder *)self initialEditCollectionFuture];
  }

  return initialEditCollectionFuture;
}

- (void)setWallpaper:(id)wallpaper image:(id)image
{
  v5 = [(HFWallpaperEditCollectionBuilder *)self editCollectionForWallpaper:wallpaper image:image];
  [(HFWallpaperEditCollectionBuilder *)self setUpdatedEditCollection:v5];
}

- (id)commitWallpaper
{
  initialEditCollectionFuture = [(HFWallpaperEditCollectionBuilder *)self initialEditCollectionFuture];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__HFWallpaperEditCollectionBuilder_commitWallpaper__block_invoke;
  v6[3] = &unk_277DFB600;
  v6[4] = self;
  v4 = [initialEditCollectionFuture flatMap:v6];

  return v4;
}

id __51__HFWallpaperEditCollectionBuilder_commitWallpaper__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) hkObjectNewlyCreated])
  {
    goto LABEL_4;
  }

  v4 = [*(a1 + 32) updatedEditCollection];
  if (v4)
  {
    v5 = v4;
    v6 = [v3 wallpaper];
    v7 = [*(a1 + 32) updatedEditCollection];
    v8 = [v7 wallpaper];
    v9 = [v6 isEqual:v8];

    if ((v9 & 1) == 0)
    {
LABEL_4:
      v10 = [*(a1 + 32) updatedEditCollection];
      v11 = v10;
      if (v10)
      {
        v12 = v10;
      }

      else
      {
        v12 = v3;
      }

      v13 = v12;

      v14 = +[HFWallpaperManager sharedInstance];
      v15 = [v13 wallpaper];
      v16 = [v13 originalImage];

      v17 = [*(a1 + 32) hkObject];
      [v14 setWallpaper:v15 image:v16 forHomeKitObject:v17];

      [*(a1 + 32) setInitialEditCollectionFuture:0];
      [*(a1 + 32) setHkObjectNewlyCreated:0];
    }
  }

  v18 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEC38]];

  return v18;
}

- (NAFuture)initialEditCollectionFuture
{
  if (!self->_initialEditCollectionFuture)
  {
    hkObject = [(HFWallpaperEditCollectionBuilder *)self hkObject];

    if (hkObject)
    {
      objc_initWeak(&location, self);
      v4 = MEMORY[0x277D2C900];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __63__HFWallpaperEditCollectionBuilder_initialEditCollectionFuture__block_invoke;
      v17[3] = &unk_277DF4F68;
      objc_copyWeak(&v18, &location);
      v5 = [v4 lazyFutureWithBlock:v17];
      initialEditCollectionFuture = self->_initialEditCollectionFuture;
      self->_initialEditCollectionFuture = v5;

      objc_destroyWeak(&v18);
      objc_destroyWeak(&location);
    }

    else
    {
      v7 = +[HFWallpaperManager sharedInstance];
      v8 = [v7 defaultWallpaperForCollectionType:{-[HFWallpaperEditCollectionBuilder namedWallpaperCollectionType](self, "namedWallpaperCollectionType")}];

      v9 = +[HFWallpaperManager sharedInstance];
      v10 = [v9 wallpaperImageForWallpaper:v8 variant:0];

      v11 = MEMORY[0x277D2C900];
      v12 = [(HFWallpaperEditCollectionBuilder *)self editCollectionForWallpaper:v8 image:v10];
      v13 = [v11 futureWithResult:v12];
      v14 = self->_initialEditCollectionFuture;
      self->_initialEditCollectionFuture = v13;
    }
  }

  v15 = self->_initialEditCollectionFuture;

  return v15;
}

void __63__HFWallpaperEditCollectionBuilder_initialEditCollectionFuture__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[HFWallpaperManager sharedInstance];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained hkObject];
  v7 = [v4 wallpaperForHomeKitObject:v6];
  v10 = [v7 flatMap:&__block_literal_global_112];

  v8 = [v3 completionHandlerAdapter];

  v9 = [v10 addCompletionBlock:v8];
}

id __63__HFWallpaperEditCollectionBuilder_initialEditCollectionFuture__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[HFWallpaperManager sharedInstance];
  v4 = [v3 wallpaperImageForWallpaper:v2 variant:0];

  v5 = +[HFWallpaperManager sharedInstance];
  v6 = [v5 wallpaperImageForWallpaper:v2 variant:1];

  v7 = [[HFWallpaperEditCollection alloc] initWithWallpaper:v2 originalImage:v4 processedImage:v6];
  v8 = [MEMORY[0x277D2C900] futureWithResult:v7];

  return v8;
}

- (id)editCollectionForWallpaper:(id)wallpaper image:(id)image
{
  imageCopy = image;
  wallpaperCopy = wallpaper;
  v7 = +[HFWallpaperManager sharedInstance];
  v8 = [v7 generateProcessedImageFromWallpaper:wallpaperCopy originalImage:imageCopy];

  v9 = [[HFWallpaperEditCollection alloc] initWithWallpaper:wallpaperCopy originalImage:imageCopy processedImage:v8];

  return v9;
}

@end