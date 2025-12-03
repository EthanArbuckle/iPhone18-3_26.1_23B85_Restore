@interface MUSizeLayout
- (CGSize)size;
- (MUSizeLayout)initWithItem:(id)item size:(CGSize)size;
- (MUSizeLayout)initWithItem:(id)item size:(CGSize)size priority:(float)priority;
@end

@implementation MUSizeLayout

- (CGSize)size
{
  [(MUSizeLayoutInternal *)self->_internal size];
  result.height = v3;
  result.width = v2;
  return result;
}

- (MUSizeLayout)initWithItem:(id)item size:(CGSize)size priority:(float)priority
{
  height = size.height;
  width = size.width;
  itemCopy = item;
  v10 = [MUSizeLayoutInternal alloc];
  *&v11 = priority;
  v12 = [(MUSizeLayoutInternal *)v10 initWithItem:itemCopy size:width priority:height, v11];

  v16.receiver = self;
  v16.super_class = MUSizeLayout;
  v13 = [(MUConstraintLayout *)&v16 initWithInternal:v12];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_internal, v12);
  }

  return v14;
}

- (MUSizeLayout)initWithItem:(id)item size:(CGSize)size
{
  height = size.height;
  width = size.width;
  itemCopy = item;
  height = [[MUSizeLayoutInternal alloc] initWithItem:itemCopy size:width, height];

  v12.receiver = self;
  v12.super_class = MUSizeLayout;
  v9 = [(MUConstraintLayout *)&v12 initWithInternal:height];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_internal, height);
  }

  return v10;
}

@end