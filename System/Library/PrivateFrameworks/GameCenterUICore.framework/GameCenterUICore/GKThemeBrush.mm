@interface GKThemeBrush
- (GKThemeBrush)initWithTheme:(id)theme;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation GKThemeBrush

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = GKThemeBrush;
  v4 = [(GKBrush *)&v7 copyWithZone:zone];
  theme = [(GKThemeBrush *)self theme];
  [v4 setTheme:theme];

  return v4;
}

- (GKThemeBrush)initWithTheme:(id)theme
{
  themeCopy = theme;
  v8.receiver = self;
  v8.super_class = GKThemeBrush;
  v5 = [(GKThemeBrush *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(GKThemeBrush *)v5 setTheme:themeCopy];
  }

  return v6;
}

@end