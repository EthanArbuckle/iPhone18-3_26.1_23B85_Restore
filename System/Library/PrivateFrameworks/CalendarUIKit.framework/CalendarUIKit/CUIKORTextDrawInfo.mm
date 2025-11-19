@interface CUIKORTextDrawInfo
- (CGSize)contentSize;
- (CUIKORTextDrawInfo)initWithContentSize:(CGSize)a3 renderingBlock:(id)a4;
@end

@implementation CUIKORTextDrawInfo

- (CUIKORTextDrawInfo)initWithContentSize:(CGSize)a3 renderingBlock:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = CUIKORTextDrawInfo;
  v8 = [(CUIKORTextDrawInfo *)&v12 init];
  if (v8)
  {
    v9 = _Block_copy(v7);
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