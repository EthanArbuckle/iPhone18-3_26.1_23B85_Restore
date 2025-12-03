@interface NWKUIAQISegmentedModel
- (NWKUIAQISegmentedModel)initWithName:(id)name label:(id)label categoryDescription:(id)description color:(id)color date:(id)date expiration:(id)expiration segments:(id)segments glyph:(id)self0;
- (id)_createGlyphWithName:(id)name;
@end

@implementation NWKUIAQISegmentedModel

- (NWKUIAQISegmentedModel)initWithName:(id)name label:(id)label categoryDescription:(id)description color:(id)color date:(id)date expiration:(id)expiration segments:(id)segments glyph:(id)self0
{
  segmentsCopy = segments;
  glyphCopy = glyph;
  v23.receiver = self;
  v23.super_class = NWKUIAQISegmentedModel;
  v19 = [(NWKUIAQIModel *)&v23 initWithName:name label:label categoryDescription:description color:color date:date expiration:expiration];
  if (v19)
  {
    v20 = [segmentsCopy copy];
    segments = v19->_segments;
    v19->_segments = v20;

    objc_storeStrong(&v19->_glyph, glyph);
  }

  return v19;
}

- (id)_createGlyphWithName:(id)name
{
  v17[2] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if ([nameCopy containsString:@"high"])
  {
    yellowColor = [MEMORY[0x277D75348] yellowColor];
    v17[0] = yellowColor;
    color = [(NWKUIAQIModel *)self color];
    v17[1] = color;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];

    v8 = [MEMORY[0x277D755D0] _configurationWithHierarchicalColors:v7];
    v9 = MEMORY[0x277D755D0];
    v10 = MEMORY[0x277D74300];
    [MEMORY[0x277D74300] systemFontSize];
    v11 = [v10 systemFontOfSize:?];
    v12 = [v9 configurationWithFont:v11];

    v13 = [v12 configurationByApplyingConfiguration:v8];
  }

  else
  {
    v13 = 0;
  }

  v14 = [MEMORY[0x277D755B8] systemImageNamed:nameCopy withConfiguration:v13];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

@end