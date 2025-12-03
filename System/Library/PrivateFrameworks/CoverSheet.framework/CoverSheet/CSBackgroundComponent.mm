@interface CSBackgroundComponent
- (CSBackgroundComponent)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setStyle:(id)style;
@end

@implementation CSBackgroundComponent

- (CSBackgroundComponent)init
{
  v5.receiver = self;
  v5.super_class = CSBackgroundComponent;
  v2 = [(CSComponent *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CSComponent *)v2 setType:19];
  }

  return v3;
}

- (void)setStyle:(id)style
{
  styleCopy = style;
  value = [(CSComponent *)self value];

  v5 = styleCopy;
  if (value != styleCopy)
  {
    [(CSComponent *)self setValue:styleCopy];
    v5 = styleCopy;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = CSBackgroundComponent;
  v4 = [(CSComponent *)&v6 copyWithZone:zone];
  [(CSBackgroundComponent *)self transitionProgress];
  [v4 setTransitionProgress:?];
  return v4;
}

@end