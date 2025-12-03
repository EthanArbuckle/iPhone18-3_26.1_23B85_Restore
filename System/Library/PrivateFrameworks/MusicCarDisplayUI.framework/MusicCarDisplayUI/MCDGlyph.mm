@interface MCDGlyph
+ (id)glyphFactory:(id)factory pointSize:(double)size weight:(int64_t)weight scale:(int64_t)scale;
@end

@implementation MCDGlyph

+ (id)glyphFactory:(id)factory pointSize:(double)size weight:(int64_t)weight scale:(int64_t)scale
{
  v9 = MEMORY[0x277D755D0];
  factoryCopy = factory;
  v11 = [v9 configurationWithPointSize:weight weight:scale scale:size];
  v12 = MEMORY[0x277D755B8];
  _currentTraitCollection = [MEMORY[0x277D75C80] _currentTraitCollection];
  v14 = [v12 systemImageNamed:factoryCopy compatibleWithTraitCollection:_currentTraitCollection];

  v15 = [v14 imageWithSymbolConfiguration:v11];

  return v15;
}

@end