@interface GKTextStylePad
- (id)cellActionItem;
- (id)header1;
- (id)header2;
- (id)header3;
- (id)header4;
- (id)sectionCaptionSmall;
- (id)smallInfo;
@end

@implementation GKTextStylePad

- (id)header1
{
  v4 = [(GKTextStyle *)self copy];
  palette = [(GKTextStyle *)self palette];
  emphasizedTextColor = [palette emphasizedTextColor];
  [v4 setColor:emphasizedTextColor];

  [v4 setFontName:@"GKMagicLightSystemFont" rebaseSelector:a2];
  [v4 setFontSize:a2 rebaseSelector:48.0];

  return v4;
}

- (id)header2
{
  v4 = [(GKTextStyle *)self copy];
  palette = [(GKTextStyle *)self palette];
  emphasizedTextColor = [palette emphasizedTextColor];
  [v4 setColor:emphasizedTextColor];

  [v4 setFontName:@"GKMagicLightSystemFont" rebaseSelector:a2];
  [v4 setFontSize:a2 rebaseSelector:41.0];

  return v4;
}

- (id)header3
{
  v4 = [(GKTextStyle *)self copy];
  palette = [(GKTextStyle *)self palette];
  emphasizedTextColor = [palette emphasizedTextColor];
  [v4 setColor:emphasizedTextColor];

  [v4 setFontName:@"GKMagicLightSystemFont" rebaseSelector:a2];
  [v4 setFontSize:a2 rebaseSelector:32.0];

  return v4;
}

- (id)header4
{
  v4 = [(GKTextStyle *)self copy];
  palette = [(GKTextStyle *)self palette];
  emphasizedTextColor = [palette emphasizedTextColor];
  [v4 setColor:emphasizedTextColor];

  [v4 setFontName:@"GKMagicSystemFont" rebaseSelector:a2];
  [v4 setFontSize:a2 rebaseSelector:18.0];

  return v4;
}

- (id)smallInfo
{
  v4 = [(GKTextStyle *)self copy];
  palette = [(GKTextStyle *)self palette];
  standardTextColor = [palette standardTextColor];
  [v4 setColor:standardTextColor];

  [v4 setFontName:@"GKMagicSystemFont" rebaseSelector:a2];
  [v4 setFontSize:a2 rebaseSelector:14.0];

  return v4;
}

- (id)sectionCaptionSmall
{
  v3 = [(GKTextStyle *)self copy];
  [v3 setFontName:@"GKMagicSystemFont" rebaseSelector:a2];
  [v3 setFontSize:a2 rebaseSelector:10.0];

  return v3;
}

- (id)cellActionItem
{
  v4 = [(GKTextStyle *)self copy];
  palette = [(GKTextStyle *)self palette];
  emphasizedTextOnDarkBackgroundColor = [palette emphasizedTextOnDarkBackgroundColor];
  [v4 setColor:emphasizedTextOnDarkBackgroundColor];

  [v4 setFontSize:a2 rebaseSelector:18.0];
  [v4 setTextAlignment:1];

  return v4;
}

@end