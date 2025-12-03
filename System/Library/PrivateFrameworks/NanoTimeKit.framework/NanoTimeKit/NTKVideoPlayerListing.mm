@interface NTKVideoPlayerListing
+ (id)listingForDevice:(id)device withFilename:(id)filename;
+ (id)listingForDevice:(id)device withFilename:(id)filename andColor:(id)color;
+ (id)listingForDevice:(id)device withURL:(id)l;
- (BOOL)snapshotDiffers:(id)differs;
- (CLKVideo)video;
- (NSString)debugDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initForDevice:(id)device withFilename:(id)filename;
- (id)initForDevice:(id)device withURL:(id)l;
- (void)discardAssets;
@end

@implementation NTKVideoPlayerListing

+ (id)listingForDevice:(id)device withURL:(id)l
{
  lCopy = l;
  deviceCopy = device;
  v7 = [[NTKVideoPlayerListing alloc] initForDevice:deviceCopy withURL:lCopy];

  return v7;
}

+ (id)listingForDevice:(id)device withFilename:(id)filename
{
  filenameCopy = filename;
  deviceCopy = device;
  v7 = [[NTKVideoPlayerListing alloc] initForDevice:deviceCopy withFilename:filenameCopy];

  return v7;
}

+ (id)listingForDevice:(id)device withFilename:(id)filename andColor:(id)color
{
  colorCopy = color;
  filenameCopy = filename;
  deviceCopy = device;
  v10 = [[NTKVideoPlayerListing alloc] initForDevice:deviceCopy withFilename:filenameCopy];

  [v10 setColor:colorCopy];

  return v10;
}

- (id)initForDevice:(id)device withFilename:(id)filename
{
  deviceCopy = device;
  filenameCopy = filename;
  v13.receiver = self;
  v13.super_class = NTKVideoPlayerListing;
  v9 = [(NTKVideoPlayerListing *)&v13 init];
  v10 = v9;
  if (v9)
  {
    attributes = v9->_attributes;
    v9->_attributes = MEMORY[0x277CBEBF8];

    objc_storeStrong(&v10->_device, device);
    v10->_endBehavior = 0;
    objc_storeStrong(&v10->_filename, filename);
  }

  return v10;
}

- (id)initForDevice:(id)device withURL:(id)l
{
  deviceCopy = device;
  lCopy = l;
  v17.receiver = self;
  v17.super_class = NTKVideoPlayerListing;
  v9 = [(NTKVideoPlayerListing *)&v17 init];
  v10 = v9;
  if (v9)
  {
    attributes = v9->_attributes;
    v9->_attributes = MEMORY[0x277CBEBF8];

    v10->_endBehavior = 0;
    objc_storeStrong(&v10->_url, l);
    lastPathComponent = [(NSURL *)v10->_url lastPathComponent];
    filename = v10->_filename;
    v10->_filename = lastPathComponent;

    objc_storeStrong(&v10->_device, device);
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  device = self->_device;
  filename = self->_filename;

  return [v4 initForDevice:device withFilename:filename];
}

- (BOOL)snapshotDiffers:(id)differs
{
  differsCopy = differs;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = ![(NSString *)self->_filename isEqualToString:differsCopy[3]];
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