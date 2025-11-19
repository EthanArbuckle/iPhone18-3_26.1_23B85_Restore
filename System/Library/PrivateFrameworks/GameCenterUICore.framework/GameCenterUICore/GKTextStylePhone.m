@interface GKTextStylePhone
- (id)cellActionItem;
- (id)header1;
- (id)header2;
- (id)header4;
- (id)sectionCaptionSmall;
- (id)smallInfo;
@end

@implementation GKTextStylePhone

- (id)header1
{
  v4 = [(GKTextStyle *)self copy];
  v5 = [(GKTextStyle *)self palette];
  v6 = [v5 emphasizedTextColor];
  [v4 setColor:v6];

  [v4 setFontName:@"GKMagicLightSystemFont" rebaseSelector:a2];
  [v4 setFontSize:a2 rebaseSelector:30.0];

  return v4;
}

- (id)header2
{
  v4 = [(GKTextStyle *)self copy];
  v5 = [(GKTextStyle *)self palette];
  v6 = [v5 emphasizedTextColor];
  [v4 setColor:v6];

  [v4 setFontName:@"GKMagicLightSystemFont" rebaseSelector:a2];
  [v4 setFontSize:a2 rebaseSelector:23.0];

  return v4;
}

- (id)header4
{
  v4 = [(GKTextStyle *)self copy];
  v5 = [(GKTextStyle *)self palette];
  v6 = [v5 emphasizedTextColor];
  [v4 setColor:v6];

  [v4 setFontName:@"GKMagicSystemFont" rebaseSelector:a2];
  [v4 setFontSize:a2 rebaseSelector:14.0];

  return v4;
}

- (id)smallInfo
{
  v4 = [(GKTextStyle *)self copy];
  v5 = [(GKTextStyle *)self palette];
  v6 = [v5 standardTextColor];
  [v4 setColor:v6];

  [v4 setFontName:@"GKMagicSystemFont" rebaseSelector:a2];
  [v4 setFontSize:a2 rebaseSelector:12.0];

  return v4;
}

- (id)sectionCaptionSmall
{
  v3 = [(GKTextStyle *)self copy];
  [v3 setFontName:@"GKMagicSystemFont" rebaseSelector:a2];
  [v3 setFontSize:a2 rebaseSelector:9.0];

  return v3;
}

- (id)cellActionItem
{
  v4 = [(GKTextStyle *)self copy];
  v5 = [(GKTextStyle *)self palette];
  v6 = [v5 emphasizedTextOnDarkBackgroundColor];
  [v4 setColor:v6];

  [v4 setFontSize:a2 rebaseSelector:18.0];
  [v4 setTextAlignment:1];

  return v4;
}

@end