@interface PKPassPreviewImageSet
- (BOOL)isEqual:(id)a3;
- (PKPassPreviewImageSet)initWithCoder:(id)a3;
- (PKPassPreviewImageSet)initWithDisplayProfile:(id)a3 fileURL:(id)a4 screenScale:(double)a5 suffix:(id)a6;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)preheatImages;
@end

@implementation PKPassPreviewImageSet

- (PKPassPreviewImageSet)initWithDisplayProfile:(id)a3 fileURL:(id)a4 screenScale:(double)a5 suffix:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v33.receiver = self;
  v33.super_class = PKPassPreviewImageSet;
  v13 = [(PKImageSet *)&v33 initWithDisplayProfile:v10 fileURL:v11 screenScale:v12 suffix:a5];
  if (v13)
  {
    v31 = objc_autoreleasePoolPush();
    v14 = [MEMORY[0x1E696AAE8] bundleWithURL:v11];
    v15 = [PKImage imageNamed:@"icon" inBundle:v14];
    objc_storeStrong(&v13->_rawIcon, v15);
    context = objc_autoreleasePoolPush();
    v16 = objc_autoreleasePoolPush();
    v32 = 1.0;
    v17 = PKPassIconImage(v15, &v32);
    v18 = __75__PKPassPreviewImageSet_initWithDisplayProfile_fileURL_screenScale_suffix___block_invoke(v17, v32);
    iconImage = v13->_iconImage;
    v13->_iconImage = v18;

    objc_autoreleasePoolPop(v16);
    v20 = objc_autoreleasePoolPush();
    v32 = 1.0;
    v21 = v15;
    v22 = v21;
    if (!v21)
    {
      v23 = PKPassKitCoreBundle();
      v22 = [PKImage imageNamed:@"GenericIcon" inBundle:v23];
    }

    [v22 scale];
    v25 = DefaultNotificationIconDescriptor(v24);
    [v25 setShouldApplyMask:0];
    v26 = IconImageFromImage(v22, v25, &v32);

    v27 = __75__PKPassPreviewImageSet_initWithDisplayProfile_fileURL_screenScale_suffix___block_invoke(v26, v32);
    notificationIconImage = v13->_notificationIconImage;
    v13->_notificationIconImage = v27;

    objc_autoreleasePoolPop(v20);
    [MEMORY[0x1E69C70A0] purgeResources];
    objc_autoreleasePoolPop(context);

    objc_autoreleasePoolPop(v31);
  }

  return v13;
}

PKImage *__75__PKPassPreviewImageSet_initWithDisplayProfile_fileURL_screenScale_suffix___block_invoke(PKImage *a1, double a2)
{
  if (a1)
  {
    a1 = [[PKImage alloc] initWithCGImage:a1 scale:1 orientation:a2];
    v2 = vars8;
  }

  return a1;
}

- (void)preheatImages
{
  [(PKImage *)self->_iconImage preheatBitmapData];
  notificationIconImage = self->_notificationIconImage;

  [(PKImage *)notificationIconImage preheatBitmapData];
}

- (PKPassPreviewImageSet)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PKPassPreviewImageSet;
  v5 = [(PKImageSet *)&v14 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"iconImage"];
    iconImage = v5->_iconImage;
    v5->_iconImage = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"notificationIconImage"];
    notificationIconImage = v5->_notificationIconImage;
    v5->_notificationIconImage = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rawIcon"];
    rawIcon = v5->_rawIcon;
    v5->_rawIcon = v11;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = PKPassPreviewImageSet;
  [(PKImageSet *)&v6 encodeWithCoder:v4];
  v5 = objc_autoreleasePoolPush();
  [v4 encodeObject:self->_iconImage forKey:@"iconImage"];
  [v4 encodeObject:self->_notificationIconImage forKey:@"notificationIconImage"];
  [v4 encodeObject:self->_rawIcon forKey:@"rawIcon"];
  objc_autoreleasePoolPop(v5);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(PKImageSet *)self _isSetImage:self->_iconImage equalToImage:v5[3]]&& [(PKImageSet *)self _isSetImage:self->_notificationIconImage equalToImage:v5[4]]&& [(PKImageSet *)self _isSetImage:self->_rawIcon equalToImage:v5[5]];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(PKImage *)self->_notificationIconImage imageHash];
  v4 = [v3 hash];
  v5 = [(PKImage *)self->_iconImage imageHash];
  v6 = [v5 hash] + v4;
  v7 = [(PKImage *)self->_rawIcon imageHash];
  v8 = [v7 hash];

  return v6 + v8;
}

@end