@interface MKMapItemPhoto(MUPhotoTileProvider)
- (void)configureWithSize:()MUPhotoTileProvider imageProvider:;
@end

@implementation MKMapItemPhoto(MUPhotoTileProvider)

- (void)configureWithSize:()MUPhotoTileProvider imageProvider:
{
  v8 = a5;
  v9 = [MEMORY[0x1E696F3B8] sharedInstance];
  [v9 screenScale];
  v11 = v10;

  v12 = [MEMORY[0x1E69A21D8] defaultPhotoOptionsWithAllowSmaller:1];
  v13 = [a1 geoMapItemPhoto];
  v14 = [v13 bestPhotoForFrameSize:v12 displayScale:a2 options:{a3, v11}];

  v15 = [v14 url];
  v16 = [v15 absoluteString];
  v17 = [v16 length];

  if (v17)
  {
    v18 = [MEMORY[0x1E696F190] sharedImageManager];
    v19 = [v14 url];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __71__MKMapItemPhoto_MUPhotoTileProvider__configureWithSize_imageProvider___block_invoke;
    v20[3] = &unk_1E821A058;
    v21 = v8;
    v22 = a2;
    v23 = a3;
    v24 = v11;
    [v18 loadAppImageAtURL:v19 completionHandler:v20];
  }

  else
  {
    (*(v8 + 2))(v8, 0, 0, 0);
  }
}

@end