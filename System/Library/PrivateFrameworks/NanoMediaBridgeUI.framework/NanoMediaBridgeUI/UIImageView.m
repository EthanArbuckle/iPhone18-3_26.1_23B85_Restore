@interface UIImageView
@end

@implementation UIImageView

void __88__UIImageView_MPArtworkCatalog__setArtworkCatalog_withPlaceholderImage_withDesiredSize___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (v8 && WeakRetained == v5)
  {
    v7 = [WeakRetained _imageFromImage:v8 scaledToSize:{*(a1 + 40), *(a1 + 48)}];
    [WeakRetained setImage:v7];
  }
}

@end