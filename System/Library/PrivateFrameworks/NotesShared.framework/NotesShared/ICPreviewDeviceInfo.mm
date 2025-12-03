@interface ICPreviewDeviceInfo
+ (id)previewDeviceInfoForPreviewImage:(id)image;
- (BOOL)isEqual:(id)equal;
- (ICPreviewDeviceInfo)init;
- (ICPreviewDeviceInfo)initWithImageSize:(double)size scale:(double)scale;
- (ICPreviewDeviceInfo)initWithImageSize:(double)size scale:(double)scale appearanceInfo:(id)info;
- (id)description;
- (id)deviceInfoFromAddingAppearanceInfo:(id)info;
- (unint64_t)hash;
@end

@implementation ICPreviewDeviceInfo

- (ICPreviewDeviceInfo)init
{
  [(ICPreviewDeviceInfo *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (ICPreviewDeviceInfo)initWithImageSize:(double)size scale:(double)scale
{
  v9.receiver = self;
  v9.super_class = ICPreviewDeviceInfo;
  v6 = [(ICPreviewDeviceInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(ICPreviewDeviceInfo *)v6 setImageSize:size];
    [(ICPreviewDeviceInfo *)v7 setScale:scale];
  }

  return v7;
}

- (ICPreviewDeviceInfo)initWithImageSize:(double)size scale:(double)scale appearanceInfo:(id)info
{
  infoCopy = info;
  v9 = [(ICPreviewDeviceInfo *)self initWithImageSize:size scale:scale];
  v10 = v9;
  if (v9)
  {
    [(ICPreviewDeviceInfo *)v9 setAppearanceInfo:infoCopy];
  }

  return v10;
}

- (id)deviceInfoFromAddingAppearanceInfo:(id)info
{
  infoCopy = info;
  v5 = [ICPreviewDeviceInfo alloc];
  [(ICPreviewDeviceInfo *)self imageSize];
  v7 = v6;
  [(ICPreviewDeviceInfo *)self scale];
  v9 = [(ICPreviewDeviceInfo *)v5 initWithImageSize:infoCopy scale:v7 appearanceInfo:v8];

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  [(ICPreviewDeviceInfo *)self imageSize];
  v5 = v4;
  [(ICPreviewDeviceInfo *)self scale];
  v7 = v6;
  appearanceInfo = [(ICPreviewDeviceInfo *)self appearanceInfo];
  v9 = [v3 stringWithFormat:@"size %f scale %f appearanceType %d", v5, v7, objc_msgSend(appearanceInfo, "type")];

  return v9;
}

+ (id)previewDeviceInfoForPreviewImage:(id)image
{
  if (image)
  {
    imageCopy = image;
    v4 = [ICPreviewDeviceInfo alloc];
    [imageCopy size];
    v6 = v5;
    [imageCopy scale];
    v8 = v7;
    appearanceType = [imageCopy appearanceType];

    v10 = [ICAppearanceInfo appearanceInfoWithType:appearanceType];
    v11 = [(ICPreviewDeviceInfo *)v4 initWithImageSize:v10 scale:v6 appearanceInfo:v8];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  result = self->_hash;
  if (!result)
  {
    [(ICPreviewDeviceInfo *)self scale];
    v5 = v4;
    [(ICPreviewDeviceInfo *)self imageSize];
    v7 = v6;
    appearanceInfo = [(ICPreviewDeviceInfo *)self appearanceInfo];
    [appearanceInfo hash];
    self->_hash = ICHashWithHashKeys(v5, v9, v10, v11, v12, v13, v14, v15, v7);

    return self->_hash;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = ICDynamicCast();

  if (v5 && ((-[ICPreviewDeviceInfo imageSize](self, "imageSize"), v7 = v6, [v5 imageSize], v7 == v8) || vabdd_f64(v7, v8) < fabs(v8 * 0.000000999999997)) && (-[ICPreviewDeviceInfo scale](self, "scale"), v10 = v9, objc_msgSend(v5, "scale"), v10 == v11))
  {
    appearanceInfo = [(ICPreviewDeviceInfo *)self appearanceInfo];
    appearanceInfo2 = [v5 appearanceInfo];
    v14 = [appearanceInfo isEqual:appearanceInfo2];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end