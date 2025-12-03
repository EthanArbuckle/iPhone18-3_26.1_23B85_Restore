@interface MUPhotoTileCollectionViewCell
+ (id)reuseIdentifier;
- (CGSize)targetFrameSize;
- (MUPhotoTileCollectionViewCell)initWithFrame:(CGRect)frame;
@end

@implementation MUPhotoTileCollectionViewCell

- (CGSize)targetFrameSize
{
  [(MUPhotoTileView *)self->_photoTileView targetFrameSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (MUPhotoTileCollectionViewCell)initWithFrame:(CGRect)frame
{
  v13.receiver = self;
  v13.super_class = MUPhotoTileCollectionViewCell;
  v3 = [(MUPhotoTileCollectionViewCell *)&v13 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [MUPhotoTileView alloc];
    v5 = [(MUPhotoTileView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    photoTileView = v3->_photoTileView;
    v3->_photoTileView = v5;

    contentView = [(MUPhotoTileCollectionViewCell *)v3 contentView];
    [contentView addSubview:v3->_photoTileView];

    v8 = [MUEdgeLayout alloc];
    v9 = v3->_photoTileView;
    contentView2 = [(MUPhotoTileCollectionViewCell *)v3 contentView];
    v11 = [(MUEdgeLayout *)v8 initWithItem:v9 container:contentView2];
    [(MUConstraintLayout *)v11 activate];

    [(UIView *)v3 _mapsui_setCardCorner];
  }

  return v3;
}

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end