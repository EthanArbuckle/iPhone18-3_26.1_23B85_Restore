@interface MCDGlyph
+ (id)glyphFactory:(id)a3 pointSize:(double)a4 weight:(int64_t)a5 scale:(int64_t)a6;
@end

@implementation MCDGlyph

+ (id)glyphFactory:(id)a3 pointSize:(double)a4 weight:(int64_t)a5 scale:(int64_t)a6
{
  v9 = MEMORY[0x277D755D0];
  v10 = a3;
  v11 = [v9 configurationWithPointSize:a5 weight:a6 scale:a4];
  v12 = MEMORY[0x277D755B8];
  v13 = [MEMORY[0x277D75C80] _currentTraitCollection];
  v14 = [v12 systemImageNamed:v10 compatibleWithTraitCollection:v13];

  v15 = [v14 imageWithSymbolConfiguration:v11];

  return v15;
}

@end