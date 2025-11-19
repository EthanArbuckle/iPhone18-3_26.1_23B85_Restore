@interface ICPreviewDeviceInfo
+ (id)previewDeviceInfoForPreviewImage:(id)a3;
- (BOOL)isEqual:(id)a3;
- (ICPreviewDeviceInfo)init;
- (ICPreviewDeviceInfo)initWithImageSize:(double)a3 scale:(double)a4;
- (ICPreviewDeviceInfo)initWithImageSize:(double)a3 scale:(double)a4 appearanceInfo:(id)a5;
- (id)description;
- (id)deviceInfoFromAddingAppearanceInfo:(id)a3;
- (unint64_t)hash;
@end

@implementation ICPreviewDeviceInfo

- (ICPreviewDeviceInfo)init
{
  [(ICPreviewDeviceInfo *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (ICPreviewDeviceInfo)initWithImageSize:(double)a3 scale:(double)a4
{
  v9.receiver = self;
  v9.super_class = ICPreviewDeviceInfo;
  v6 = [(ICPreviewDeviceInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(ICPreviewDeviceInfo *)v6 setImageSize:a3];
    [(ICPreviewDeviceInfo *)v7 setScale:a4];
  }

  return v7;
}

- (ICPreviewDeviceInfo)initWithImageSize:(double)a3 scale:(double)a4 appearanceInfo:(id)a5
{
  v8 = a5;
  v9 = [(ICPreviewDeviceInfo *)self initWithImageSize:a3 scale:a4];
  v10 = v9;
  if (v9)
  {
    [(ICPreviewDeviceInfo *)v9 setAppearanceInfo:v8];
  }

  return v10;
}

- (id)deviceInfoFromAddingAppearanceInfo:(id)a3
{
  v4 = a3;
  v5 = [ICPreviewDeviceInfo alloc];
  [(ICPreviewDeviceInfo *)self imageSize];
  v7 = v6;
  [(ICPreviewDeviceInfo *)self scale];
  v9 = [(ICPreviewDeviceInfo *)v5 initWithImageSize:v4 scale:v7 appearanceInfo:v8];

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  [(ICPreviewDeviceInfo *)self imageSize];
  v5 = v4;
  [(ICPreviewDeviceInfo *)self scale];
  v7 = v6;
  v8 = [(ICPreviewDeviceInfo *)self appearanceInfo];
  v9 = [v3 stringWithFormat:@"size %f scale %f appearanceType %d", v5, v7, objc_msgSend(v8, "type")];

  return v9;
}

+ (id)previewDeviceInfoForPreviewImage:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = [ICPreviewDeviceInfo alloc];
    [v3 size];
    v6 = v5;
    [v3 scale];
    v8 = v7;
    v9 = [v3 appearanceType];

    v10 = [ICAppearanceInfo appearanceInfoWithType:v9];
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
    v8 = [(ICPreviewDeviceInfo *)self appearanceInfo];
    [v8 hash];
    self->_hash = ICHashWithHashKeys(v5, v9, v10, v11, v12, v13, v14, v15, v7);

    return self->_hash;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = ICDynamicCast();

  if (v5 && ((-[ICPreviewDeviceInfo imageSize](self, "imageSize"), v7 = v6, [v5 imageSize], v7 == v8) || vabdd_f64(v7, v8) < fabs(v8 * 0.000000999999997)) && (-[ICPreviewDeviceInfo scale](self, "scale"), v10 = v9, objc_msgSend(v5, "scale"), v10 == v11))
  {
    v12 = [(ICPreviewDeviceInfo *)self appearanceInfo];
    v13 = [v5 appearanceInfo];
    v14 = [v12 isEqual:v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end