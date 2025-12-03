@interface NUArticleScrollPosition
- (NUArticleScrollPosition)initWithPosition:(id)position source:(int64_t)source;
@end

@implementation NUArticleScrollPosition

- (NUArticleScrollPosition)initWithPosition:(id)position source:(int64_t)source
{
  positionCopy = position;
  v11.receiver = self;
  v11.super_class = NUArticleScrollPosition;
  v8 = [(NUArticleScrollPosition *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_position, position);
    v9->_source = source;
  }

  return v9;
}

@end