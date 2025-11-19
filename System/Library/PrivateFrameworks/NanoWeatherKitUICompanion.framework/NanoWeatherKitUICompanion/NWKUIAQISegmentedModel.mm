@interface NWKUIAQISegmentedModel
- (NWKUIAQISegmentedModel)initWithName:(id)a3 label:(id)a4 categoryDescription:(id)a5 color:(id)a6 date:(id)a7 expiration:(id)a8 segments:(id)a9 glyph:(id)a10;
- (id)_createGlyphWithName:(id)a3;
@end

@implementation NWKUIAQISegmentedModel

- (NWKUIAQISegmentedModel)initWithName:(id)a3 label:(id)a4 categoryDescription:(id)a5 color:(id)a6 date:(id)a7 expiration:(id)a8 segments:(id)a9 glyph:(id)a10
{
  v17 = a9;
  v18 = a10;
  v23.receiver = self;
  v23.super_class = NWKUIAQISegmentedModel;
  v19 = [(NWKUIAQIModel *)&v23 initWithName:a3 label:a4 categoryDescription:a5 color:a6 date:a7 expiration:a8];
  if (v19)
  {
    v20 = [v17 copy];
    segments = v19->_segments;
    v19->_segments = v20;

    objc_storeStrong(&v19->_glyph, a10);
  }

  return v19;
}

- (id)_createGlyphWithName:(id)a3
{
  v17[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 containsString:@"high"])
  {
    v5 = [MEMORY[0x277D75348] yellowColor];
    v17[0] = v5;
    v6 = [(NWKUIAQIModel *)self color];
    v17[1] = v6;
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

  v14 = [MEMORY[0x277D755B8] systemImageNamed:v4 withConfiguration:v13];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

@end