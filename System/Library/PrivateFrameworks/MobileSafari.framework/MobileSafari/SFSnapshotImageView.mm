@interface SFSnapshotImageView
- (BOOL)isTransparentFocusItem;
@end

@implementation SFSnapshotImageView

- (BOOL)isTransparentFocusItem
{
  if (([(SFSnapshotImageView *)self isHidden]& 1) != 0)
  {
    return 1;
  }

  [(SFSnapshotImageView *)self alpha];
  if (v3 < 0.01)
  {
    return 1;
  }

  image = [(SFSnapshotImageView *)self image];
  v4 = image == 0;

  return v4;
}

@end