@interface NTKVideoPlayerSingleVideoDataSource
+ (id)dataSourceForDevice:(id)device withPosterImage:(id)image andListing:(id)listing;
+ (id)dataSourceForDevice:(id)device withPosterImage:(id)image endBehavior:(unint64_t)behavior andFilename:(id)filename;
- (id)initForDevice:(id)device listing:(id)listing posterImage:(id)image;
@end

@implementation NTKVideoPlayerSingleVideoDataSource

+ (id)dataSourceForDevice:(id)device withPosterImage:(id)image andListing:(id)listing
{
  listingCopy = listing;
  imageCopy = image;
  deviceCopy = device;
  v10 = [[NTKVideoPlayerSingleVideoDataSource alloc] initForDevice:deviceCopy listing:listingCopy posterImage:imageCopy];

  return v10;
}

+ (id)dataSourceForDevice:(id)device withPosterImage:(id)image endBehavior:(unint64_t)behavior andFilename:(id)filename
{
  imageCopy = image;
  deviceCopy = device;
  v11 = [NTKVideoPlayerListing listingForDevice:deviceCopy withFilename:filename];
  [v11 setEndBehavior:behavior];
  v12 = [[NTKVideoPlayerSingleVideoDataSource alloc] initForDevice:deviceCopy listing:v11 posterImage:imageCopy];

  return v12;
}

- (id)initForDevice:(id)device listing:(id)listing posterImage:(id)image
{
  listingCopy = listing;
  imageCopy = image;
  v13.receiver = self;
  v13.super_class = NTKVideoPlayerSingleVideoDataSource;
  v10 = [(NTKVideoPlayerDataSource *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_listing, listing);
    [(NTKVideoPlayerDataSource *)v11 setPosterImage:imageCopy];
  }

  return v11;
}

@end