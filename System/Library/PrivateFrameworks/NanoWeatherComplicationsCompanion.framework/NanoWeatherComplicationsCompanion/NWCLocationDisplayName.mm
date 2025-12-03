@interface NWCLocationDisplayName
+ (id)_attributedDisplayName:(id)name prefixedWithLocationGlyph:(id)glyph;
+ (id)attributedDisplayNameWithLocationGlyph:(id)glyph inFont:(id)font;
+ (id)attributedDisplayNameWithLocationGlyph:(id)glyph withTextStyle:(id)style;
@end

@implementation NWCLocationDisplayName

+ (id)attributedDisplayNameWithLocationGlyph:(id)glyph inFont:(id)font
{
  v6 = MEMORY[0x277D755D0];
  fontCopy = font;
  glyphCopy = glyph;
  v9 = [v6 configurationWithFont:fontCopy scale:1];
  v10 = [MEMORY[0x277D755B8] systemImageNamed:@"location.fill" withConfiguration:v9];
  v11 = [self _attributedDisplayName:glyphCopy prefixedWithLocationGlyph:v10];

  v12 = [v11 mutableCopy];
  [v12 addAttribute:*MEMORY[0x277D740A8] value:fontCopy range:{0, objc_msgSend(v12, "length")}];

  v13 = [v12 copy];

  return v13;
}

+ (id)attributedDisplayNameWithLocationGlyph:(id)glyph withTextStyle:(id)style
{
  v5 = MEMORY[0x277D755D0];
  v6 = *MEMORY[0x277D76918];
  glyphCopy = glyph;
  v8 = [v5 configurationWithTextStyle:v6 scale:1];
  v9 = [MEMORY[0x277D755B8] systemImageNamed:@"location.fill" withConfiguration:v8];
  v10 = [self _attributedDisplayName:glyphCopy prefixedWithLocationGlyph:v9];

  return v10;
}

+ (id)_attributedDisplayName:(id)name prefixedWithLocationGlyph:(id)glyph
{
  nameCopy = name;
  v6 = [glyph imageWithRenderingMode:2];
  v7 = objc_alloc_init(MEMORY[0x277D74270]);
  [v7 setImage:v6];
  v8 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v7];
  nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@" %@", nameCopy];

  v10 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:nameCopy];
  [v10 insertAttributedString:v8 atIndex:0];
  [v10 addAttribute:*MEMORY[0x277D74078] value:&unk_286D01FE0 range:{0, 1}];
  v11 = [v10 copy];

  return v11;
}

@end