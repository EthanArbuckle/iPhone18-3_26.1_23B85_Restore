@interface CUIKORTextDrawInfo
- (CGSize)contentSize;
- (CUIKORTextDrawInfo)initWithContentSize:(CGSize)size renderingBlock:(id)block;
@end

@implementation CUIKORTextDrawInfo

- (CUIKORTextDrawInfo)initWithContentSize:(CGSize)size renderingBlock:(id)block
{
  height = size.height;
  width = size.width;
  blockCopy = block;
  v12.receiver = self;
  v12.super_class = CUIKORTextDrawInfo;
  v8 = [(CUIKORTextDrawInfo *)&v12 init];
  if (v8)
  {
    v9 = _Block_copy(blockCopy);
    renderingBlock = v8->_renderingBlock;
    v8->_renderingBlock = v9;

    v8->_contentSize.width = width;
    v8->_contentSize.height = height;
  }

  return v8;
}

- (CGSize)contentSize
{
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end