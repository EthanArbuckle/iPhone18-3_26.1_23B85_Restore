@interface CSSlideableContentComponent
- (CSSlideableContentComponent)init;
@end

@implementation CSSlideableContentComponent

- (CSSlideableContentComponent)init
{
  v5.receiver = self;
  v5.super_class = CSSlideableContentComponent;
  v2 = [(CSComponent *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CSComponent *)v2 setType:5];
  }

  return v3;
}

@end