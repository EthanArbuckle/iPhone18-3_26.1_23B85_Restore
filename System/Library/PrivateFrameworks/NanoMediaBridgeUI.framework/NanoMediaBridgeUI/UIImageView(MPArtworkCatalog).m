@interface UIImageView(MPArtworkCatalog)
- (id)_imageFromImage:()MPArtworkCatalog scaledToSize:;
- (void)setArtworkCatalog:()MPArtworkCatalog withPlaceholderImage:withDesiredSize:;
@end

@implementation UIImageView(MPArtworkCatalog)

- (void)setArtworkCatalog:()MPArtworkCatalog withPlaceholderImage:withDesiredSize:
{
  v10 = a5;
  v11 = a6;
  if (v11)
  {
    v12 = [a1 _imageFromImage:v11 scaledToSize:{a2, a3}];
    [a1 setImage:v12];
  }

  if (v10)
  {
    v13 = [MEMORY[0x277D759A0] mainScreen];
    [v13 scale];
    [v10 setDestinationScale:?];

    [v10 setFittingSize:{a2, a3}];
    objc_initWeak(&location, a1);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __88__UIImageView_MPArtworkCatalog__setArtworkCatalog_withPlaceholderImage_withDesiredSize___block_invoke;
    v14[3] = &unk_27993BE50;
    objc_copyWeak(v15, &location);
    v15[1] = *&a2;
    v15[2] = *&a3;
    [v10 setDestination:a1 configurationBlock:v14];
    objc_destroyWeak(v15);
    objc_destroyWeak(&location);
  }
}

- (id)_imageFromImage:()MPArtworkCatalog scaledToSize:
{
  v7 = a5;
  v11.width = a1;
  v11.height = a2;
  UIGraphicsBeginImageContextWithOptions(v11, 0, 0.0);
  [v7 drawInRect:{0.0, 0.0, a1, a2}];

  v8 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v8;
}

@end