@interface NUArticleContext
- (NUArticleContext)initWithShouldAutoPlayVideo:(BOOL)video scrollPosition:(id)position;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation NUArticleContext

- (NUArticleContext)initWithShouldAutoPlayVideo:(BOOL)video scrollPosition:(id)position
{
  positionCopy = position;
  v11.receiver = self;
  v11.super_class = NUArticleContext;
  v8 = [(NUArticleContext *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_shouldAutoPlayVideo = video;
    objc_storeStrong(&v8->_scrollPosition, position);
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  *(v4 + 8) = self->_shouldAutoPlayVideo;
  objc_storeStrong((v4 + 16), self->_scrollPosition);
  return v4;
}

@end