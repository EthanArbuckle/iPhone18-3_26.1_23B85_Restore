@interface IMChatTranscriptItemLayoutAttributes
- (CGRect)frame;
- (CGSize)size;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setFrame:(CGRect)frame;
- (void)setSize:(CGSize)size;
@end

@implementation IMChatTranscriptItemLayoutAttributes

- (id)copyWithZone:(_NSZone *)zone
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

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (!CGRectEqualToRect(frame, self->_frame))
  {
    self->_frame.origin.x = x;
    self->_frame.origin.y = y;
    self->_frame.size.width = width;
    self->_frame.size.height = height;
    self->_size.width = width;
    self->_size.height = height;
  }
}

- (void)setSize:(CGSize)size
{
  if (size.width != self->_size.width || size.height != self->_size.height)
  {
    self->_size = size;
    self->_frame.size = size;
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