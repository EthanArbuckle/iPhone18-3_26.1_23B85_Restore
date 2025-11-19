@interface BoundingBoxWithLabel
- (BoundingBoxWithLabel)initWithLabel:(unsigned __int16)a3;
@end

@implementation BoundingBoxWithLabel

- (BoundingBoxWithLabel)initWithLabel:(unsigned __int16)a3
{
  v9.receiver = self;
  v9.super_class = BoundingBoxWithLabel;
  v4 = [(BoundingBoxWithLabel *)&v9 init];
  v5 = v4;
  if (v4)
  {
    *&v6 = 0xFFFFLL;
    *(&v6 + 1) = 0xFFFFLL;
    *&v4->_minX = v6;
    v4->_depth = 0.0;
    v4->_maxX = 0;
    v4->_maxY = 0;
    v4->_label = a3;
    v4->_alias = 0;
    v7 = v4;
  }

  return v5;
}

@end