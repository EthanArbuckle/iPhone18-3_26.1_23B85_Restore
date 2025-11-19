@interface NTKVideoPlayerListing
+ (id)listingForDevice:(id)a3 withFilename:(id)a4;
+ (id)listingForDevice:(id)a3 withFilename:(id)a4 andColor:(id)a5;
+ (id)listingForDevice:(id)a3 withURL:(id)a4;
- (BOOL)snapshotDiffers:(id)a3;
- (CLKVideo)video;
- (NSString)debugDescription;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initForDevice:(id)a3 withFilename:(id)a4;
- (id)initForDevice:(id)a3 withURL:(id)a4;
- (void)discardAssets;
@end

@implementation NTKVideoPlayerListing

+ (id)listingForDevice:(id)a3 withURL:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[NTKVideoPlayerListing alloc] initForDevice:v6 withURL:v5];

  return v7;
}

+ (id)listingForDevice:(id)a3 withFilename:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[NTKVideoPlayerListing alloc] initForDevice:v6 withFilename:v5];

  return v7;
}

+ (id)listingForDevice:(id)a3 withFilename:(id)a4 andColor:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[NTKVideoPlayerListing alloc] initForDevice:v9 withFilename:v8];

  [v10 setColor:v7];

  return v10;
}

- (id)initForDevice:(id)a3 withFilename:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = NTKVideoPlayerListing;
  v9 = [(NTKVideoPlayerListing *)&v13 init];
  v10 = v9;
  if (v9)
  {
    attributes = v9->_attributes;
    v9->_attributes = MEMORY[0x277CBEBF8];

    objc_storeStrong(&v10->_device, a3);
    v10->_endBehavior = 0;
    objc_storeStrong(&v10->_filename, a4);
  }

  return v10;
}

- (id)initForDevice:(id)a3 withURL:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = NTKVideoPlayerListing;
  v9 = [(NTKVideoPlayerListing *)&v17 init];
  v10 = v9;
  if (v9)
  {
    attributes = v9->_attributes;
    v9->_attributes = MEMORY[0x277CBEBF8];

    v10->_endBehavior = 0;
    objc_storeStrong(&v10->_url, a4);
    v12 = [(NSURL *)v10->_url lastPathComponent];
    filename = v10->_filename;
    v10->_filename = v12;

    objc_storeStrong(&v10->_device, a3);
    v14 = [MEMORY[0x277CBBBC0] videoAtURL:v10->_url forDevice:v10->_device];
    video = v10->_video;
    v10->_video = v14;
  }

  return v10;
}

- (CLKVideo)video
{
  video = self->_video;
  if (!video)
  {
    v4 = MEMORY[0x277CBBBC0];
    filename = self->_filename;
    device = self->_device;
    v7 = NTKAssetsBundle();
    v8 = [v4 videoNamed:filename forDevice:device inBundle:v7];
    v9 = self->_video;
    self->_video = v8;

    video = self->_video;
  }

  return video;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  device = self->_device;
  filename = self->_filename;

  return [v4 initForDevice:device withFilename:filename];
}

- (BOOL)snapshotDiffers:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = ![(NSString *)self->_filename isEqualToString:v4[3]];
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)discardAssets
{
  video = self->_video;
  self->_video = 0;
}

- (NSString)debugDescription
{
  v2 = MEMORY[0x277CCACA8];
  filename = self->_filename;
  v4 = [(CLKVideo *)self->_video url];
  v5 = [v2 stringWithFormat:@"filename: '%@' url: '%@'", filename, v4];

  return v5;
}

@end