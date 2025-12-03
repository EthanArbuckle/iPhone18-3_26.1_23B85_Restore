@interface MUPhotoTileOverlay
- (BOOL)shouldBeShown;
@end

@implementation MUPhotoTileOverlay

- (BOOL)shouldBeShown
{
  attributionTitle = [(MUPhotoTileOverlay *)self attributionTitle];
  if ([attributionTitle length])
  {
    v4 = 1;
  }

  else
  {
    badgeTitle = [(MUPhotoTileOverlay *)self badgeTitle];
    if ([badgeTitle length])
    {
      v4 = 1;
    }

    else
    {
      tileTitle = [(MUPhotoTileOverlay *)self tileTitle];
      v4 = [tileTitle length] != 0;
    }
  }

  return v4;
}

@end