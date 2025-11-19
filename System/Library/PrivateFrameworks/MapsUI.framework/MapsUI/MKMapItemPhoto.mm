@interface MKMapItemPhoto
@end

@implementation MKMapItemPhoto

void __71__MKMapItemPhoto_MUPhotoTileProvider__configureWithSize_imageProvider___block_invoke(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5)
{
  v8 = a2;
  if (!v8 || a5)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v9 = *(a1 + 56);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __71__MKMapItemPhoto_MUPhotoTileProvider__configureWithSize_imageProvider___block_invoke_2;
    v10[3] = &unk_1E8219758;
    v13 = *(a1 + 32);
    v11 = v8;
    v12 = 0;
    v14 = a3;
    [MapsUIUtilities resizeImageIfNeeded:v11 toFrameSize:v10 displayScale:*(a1 + 40) completion:*(a1 + 48), v9];
  }
}

uint64_t __71__MKMapItemPhoto_MUPhotoTileProvider__configureWithSize_imageProvider___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  if (!a2)
  {
    a2 = *(a1 + 32);
  }

  return (*(v3 + 16))(v3, a2, *(a1 + 40), *(a1 + 56));
}

@end