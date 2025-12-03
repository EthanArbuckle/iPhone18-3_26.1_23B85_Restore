@interface NUAnimationFactory
- (NUAnimationFactory)initWithMediaTimingFunction:(id)function;
@end

@implementation NUAnimationFactory

- (NUAnimationFactory)initWithMediaTimingFunction:(id)function
{
  functionCopy = function;
  v9.receiver = self;
  v9.super_class = NUAnimationFactory;
  v6 = [(NUAnimationFactory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mediaTimingFunction, function);
  }

  return v7;
}

@end