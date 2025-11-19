@interface NTKVideoPlayerSingleVideoDataSource
+ (id)dataSourceForDevice:(id)a3 withPosterImage:(id)a4 andListing:(id)a5;
+ (id)dataSourceForDevice:(id)a3 withPosterImage:(id)a4 endBehavior:(unint64_t)a5 andFilename:(id)a6;
- (id)initForDevice:(id)a3 listing:(id)a4 posterImage:(id)a5;
@end

@implementation NTKVideoPlayerSingleVideoDataSource

+ (id)dataSourceForDevice:(id)a3 withPosterImage:(id)a4 andListing:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[NTKVideoPlayerSingleVideoDataSource alloc] initForDevice:v9 listing:v7 posterImage:v8];

  return v10;
}

+ (id)dataSourceForDevice:(id)a3 withPosterImage:(id)a4 endBehavior:(unint64_t)a5 andFilename:(id)a6
{
  v9 = a4;
  v10 = a3;
  v11 = [NTKVideoPlayerListing listingForDevice:v10 withFilename:a6];
  [v11 setEndBehavior:a5];
  v12 = [[NTKVideoPlayerSingleVideoDataSource alloc] initForDevice:v10 listing:v11 posterImage:v9];

  return v12;
}

- (id)initForDevice:(id)a3 listing:(id)a4 posterImage:(id)a5
{
  v8 = a4;
  v9 = a5;
  v13.receiver = self;
  v13.super_class = NTKVideoPlayerSingleVideoDataSource;
  v10 = [(NTKVideoPlayerDataSource *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_listing, a4);
    [(NTKVideoPlayerDataSource *)v11 setPosterImage:v9];
  }

  return v11;
}

@end