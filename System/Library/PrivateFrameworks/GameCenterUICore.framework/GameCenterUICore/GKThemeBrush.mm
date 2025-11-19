@interface GKThemeBrush
- (GKThemeBrush)initWithTheme:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation GKThemeBrush

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = GKThemeBrush;
  v4 = [(GKBrush *)&v7 copyWithZone:a3];
  v5 = [(GKThemeBrush *)self theme];
  [v4 setTheme:v5];

  return v4;
}

- (GKThemeBrush)initWithTheme:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = GKThemeBrush;
  v5 = [(GKThemeBrush *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(GKThemeBrush *)v5 setTheme:v4];
  }

  return v6;
}

@end