@interface NUAnimationFactory
- (NUAnimationFactory)initWithMediaTimingFunction:(id)a3;
@end

@implementation NUAnimationFactory

- (NUAnimationFactory)initWithMediaTimingFunction:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NUAnimationFactory;
  v6 = [(NUAnimationFactory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mediaTimingFunction, a3);
  }

  return v7;
}

@end