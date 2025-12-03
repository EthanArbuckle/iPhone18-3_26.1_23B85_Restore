@interface _NTKCFaceDetailPigmentAddCell
+ (id)reuseIdentifier;
- (_NTKCFaceDetailPigmentAddCell)initWithFrame:(CGRect)frame;
- (_NTKCFaceDetailPigmentAddCellDelegate)delegate;
- (void)_tapped;
- (void)layoutSubviews;
@end

@implementation _NTKCFaceDetailPigmentAddCell

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (_NTKCFaceDetailPigmentAddCell)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = _NTKCFaceDetailPigmentAddCell;
  v3 = [(_NTKCFaceDetailCollectionCell *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_opt_new();
    button = v3->_button;
    v3->_button = v4;

    [(UIButton *)v3->_button addTarget:v3 action:sel__tapped forControlEvents:64];
    contentView = [(_NTKCFaceDetailPigmentAddCell *)v3 contentView];
    [contentView addSubview:v3->_button];
  }

  return v3;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = _NTKCFaceDetailPigmentAddCell;
  [(_NTKCFaceDetailCollectionCell *)&v3 layoutSubviews];
  [(_NTKCFaceDetailCollectionCell *)self swatchFrame];
  [(UIButton *)self->_button setFrame:?];
}

- (void)_tapped
{
  delegate = [(_NTKCFaceDetailPigmentAddCell *)self delegate];
  [delegate addCellTapped:self];
}

- (_NTKCFaceDetailPigmentAddCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end