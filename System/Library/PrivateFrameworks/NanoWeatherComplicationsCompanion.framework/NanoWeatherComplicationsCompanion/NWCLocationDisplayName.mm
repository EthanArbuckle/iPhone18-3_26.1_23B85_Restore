@interface NWCLocationDisplayName
+ (id)_attributedDisplayName:(id)a3 prefixedWithLocationGlyph:(id)a4;
+ (id)attributedDisplayNameWithLocationGlyph:(id)a3 inFont:(id)a4;
+ (id)attributedDisplayNameWithLocationGlyph:(id)a3 withTextStyle:(id)a4;
@end

@implementation NWCLocationDisplayName

+ (id)attributedDisplayNameWithLocationGlyph:(id)a3 inFont:(id)a4
{
  v6 = MEMORY[0x277D755D0];
  v7 = a4;
  v8 = a3;
  v9 = [v6 configurationWithFont:v7 scale:1];
  v10 = [MEMORY[0x277D755B8] systemImageNamed:@"location.fill" withConfiguration:v9];
  v11 = [a1 _attributedDisplayName:v8 prefixedWithLocationGlyph:v10];

  v12 = [v11 mutableCopy];
  [v12 addAttribute:*MEMORY[0x277D740A8] value:v7 range:{0, objc_msgSend(v12, "length")}];

  v13 = [v12 copy];

  return v13;
}

+ (id)attributedDisplayNameWithLocationGlyph:(id)a3 withTextStyle:(id)a4
{
  v5 = MEMORY[0x277D755D0];
  v6 = *MEMORY[0x277D76918];
  v7 = a3;
  v8 = [v5 configurationWithTextStyle:v6 scale:1];
  v9 = [MEMORY[0x277D755B8] systemImageNamed:@"location.fill" withConfiguration:v8];
  v10 = [a1 _attributedDisplayName:v7 prefixedWithLocationGlyph:v9];

  return v10;
}

+ (id)_attributedDisplayName:(id)a3 prefixedWithLocationGlyph:(id)a4
{
  v5 = a3;
  v6 = [a4 imageWithRenderingMode:2];
  v7 = objc_alloc_init(MEMORY[0x277D74270]);
  [v7 setImage:v6];
  v8 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v7];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@" %@", v5];

  v10 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v9];
  [v10 insertAttributedString:v8 atIndex:0];
  [v10 addAttribute:*MEMORY[0x277D74078] value:&unk_286D01FE0 range:{0, 1}];
  v11 = [v10 copy];

  return v11;
}

@end