@interface MUPhotoTileOverlay
- (BOOL)shouldBeShown;
@end

@implementation MUPhotoTileOverlay

- (BOOL)shouldBeShown
{
  v3 = [(MUPhotoTileOverlay *)self attributionTitle];
  if ([v3 length])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(MUPhotoTileOverlay *)self badgeTitle];
    if ([v5 length])
    {
      v4 = 1;
    }

    else
    {
      v6 = [(MUPhotoTileOverlay *)self tileTitle];
      v4 = [v6 length] != 0;
    }
  }

  return v4;
}

@end