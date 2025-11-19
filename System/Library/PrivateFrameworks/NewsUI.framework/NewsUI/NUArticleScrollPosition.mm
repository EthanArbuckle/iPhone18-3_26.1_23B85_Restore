@interface NUArticleScrollPosition
- (NUArticleScrollPosition)initWithPosition:(id)a3 source:(int64_t)a4;
@end

@implementation NUArticleScrollPosition

- (NUArticleScrollPosition)initWithPosition:(id)a3 source:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = NUArticleScrollPosition;
  v8 = [(NUArticleScrollPosition *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_position, a3);
    v9->_source = a4;
  }

  return v9;
}

@end