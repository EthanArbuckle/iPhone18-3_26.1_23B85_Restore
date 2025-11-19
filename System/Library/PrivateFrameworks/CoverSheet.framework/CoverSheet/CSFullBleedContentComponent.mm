@interface CSFullBleedContentComponent
- (CSFullBleedContentComponent)init;
@end

@implementation CSFullBleedContentComponent

- (CSFullBleedContentComponent)init
{
  v5.receiver = self;
  v5.super_class = CSFullBleedContentComponent;
  v2 = [(CSComponent *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CSComponent *)v2 setType:26];
  }

  return v3;
}

@end