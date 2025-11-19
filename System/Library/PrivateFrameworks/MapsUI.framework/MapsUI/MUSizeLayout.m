@interface MUSizeLayout
- (CGSize)size;
- (MUSizeLayout)initWithItem:(id)a3 size:(CGSize)a4;
- (MUSizeLayout)initWithItem:(id)a3 size:(CGSize)a4 priority:(float)a5;
@end

@implementation MUSizeLayout

- (CGSize)size
{
  [(MUSizeLayoutInternal *)self->_internal size];
  result.height = v3;
  result.width = v2;
  return result;
}

- (MUSizeLayout)initWithItem:(id)a3 size:(CGSize)a4 priority:(float)a5
{
  height = a4.height;
  width = a4.width;
  v9 = a3;
  v10 = [MUSizeLayoutInternal alloc];
  *&v11 = a5;
  v12 = [(MUSizeLayoutInternal *)v10 initWithItem:v9 size:width priority:height, v11];

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

- (MUSizeLayout)initWithItem:(id)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  v8 = [[MUSizeLayoutInternal alloc] initWithItem:v7 size:width, height];

  v12.receiver = self;
  v12.super_class = MUSizeLayout;
  v9 = [(MUConstraintLayout *)&v12 initWithInternal:v8];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_internal, v8);
  }

  return v10;
}

@end