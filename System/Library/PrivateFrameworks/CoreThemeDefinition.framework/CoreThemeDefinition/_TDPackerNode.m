@interface _TDPackerNode
- (CGPoint)origin;
- (CGSize)size;
- (void)dealloc;
@end

@implementation _TDPackerNode

- (void)dealloc
{
  [(_TDPackerNode *)self setDown:0];
  [(_TDPackerNode *)self setRight:0];
  v3.receiver = self;
  v3.super_class = _TDPackerNode;
  [(_TDPackerNode *)&v3 dealloc];
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGPoint)origin
{
  x = self->_origin.x;
  y = self->_origin.y;
  result.y = y;
  result.x = x;
  return result;
}

@end