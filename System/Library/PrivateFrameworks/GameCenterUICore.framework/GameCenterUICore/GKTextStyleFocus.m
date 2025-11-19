@interface GKTextStyleFocus
- (id)bannerTitle;
@end

@implementation GKTextStyleFocus

- (id)bannerTitle
{
  v4 = [(GKTextStyle *)self copy];
  v5 = [(GKTextStyle *)self palette];
  v6 = [v5 emphasizedTextColor];
  [v4 setColor:v6];

  [v4 setTextAlignment:4];
  [v4 setLineBreakMode:4];
  [v4 setFontName:@"GKMagicBoldSystemFont" rebaseSelector:a2];
  [v4 setFontSize:a2 rebaseSelector:18.0];

  return v4;
}

@end