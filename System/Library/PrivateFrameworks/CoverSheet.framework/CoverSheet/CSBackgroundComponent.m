@interface CSBackgroundComponent
- (CSBackgroundComponent)init;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setStyle:(id)a3;
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

- (void)setStyle:(id)a3
{
  v6 = a3;
  v4 = [(CSComponent *)self value];

  v5 = v6;
  if (v4 != v6)
  {
    [(CSComponent *)self setValue:v6];
    v5 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = CSBackgroundComponent;
  v4 = [(CSComponent *)&v6 copyWithZone:a3];
  [(CSBackgroundComponent *)self transitionProgress];
  [v4 setTransitionProgress:?];
  return v4;
}

@end