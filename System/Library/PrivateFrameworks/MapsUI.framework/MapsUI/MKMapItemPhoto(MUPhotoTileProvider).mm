@interface MKMapItemPhoto(MUPhotoTileProvider)
- (void)configureWithSize:()MUPhotoTileProvider imageProvider:;
@end

@implementation MKMapItemPhoto(MUPhotoTileProvider)

- (void)configureWithSize:()MUPhotoTileProvider imageProvider:
{
  v8 = a5;
  mEMORY[0x1E696F3B8] = [MEMORY[0x1E696F3B8] sharedInstance];
  [mEMORY[0x1E696F3B8] screenScale];
  v11 = v10;

  v12 = [MEMORY[0x1E69A21D8] defaultPhotoOptionsWithAllowSmaller:1];
  geoMapItemPhoto = [self geoMapItemPhoto];
  v14 = [geoMapItemPhoto bestPhotoForFrameSize:v12 displayScale:a2 options:{a3, v11}];

  v15 = [v14 url];
  absoluteString = [v15 absoluteString];
  v17 = [absoluteString length];

  if (v17)
  {
    mEMORY[0x1E696F190] = [MEMORY[0x1E696F190] sharedImageManager];
    v19 = [v14 url];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __71__MKMapItemPhoto_MUPhotoTileProvider__configureWithSize_imageProvider___block_invoke;
    v20[3] = &unk_1E821A058;
    v21 = v8;
    v22 = a2;
    v23 = a3;
    v24 = v11;
    [mEMORY[0x1E696F190] loadAppImageAtURL:v19 completionHandler:v20];
  }

  else
  {
    (*(v8 + 2))(v8, 0, 0, 0);
  }
}

@end