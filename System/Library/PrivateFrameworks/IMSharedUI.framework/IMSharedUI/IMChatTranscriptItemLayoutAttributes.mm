@interface IMChatTranscriptItemLayoutAttributes
- (CGRect)frame;
- (CGSize)size;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setFrame:(CGRect)a3;
- (void)setSize:(CGSize)a3;
@end

@implementation IMChatTranscriptItemLayoutAttributes

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v7 = objc_msgSend_copy(self->_indexPath, v5, v6);
  v8 = v4[1];
  v4[1] = v7;

  *(v4 + 1) = self->_size;
  size = self->_frame.size;
  *(v4 + 2) = self->_frame.origin;
  *(v4 + 3) = size;
  return v4;
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (!CGRectEqualToRect(a3, self->_frame))
  {
    self->_frame.origin.x = x;
    self->_frame.origin.y = y;
    self->_frame.size.width = width;
    self->_frame.size.height = height;
    self->_size.width = width;
    self->_size.height = height;
  }
}

- (void)setSize:(CGSize)a3
{
  if (a3.width != self->_size.width || a3.height != self->_size.height)
  {
    self->_size = a3;
    self->_frame.size = a3;
  }
}

- (CGRect)frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end