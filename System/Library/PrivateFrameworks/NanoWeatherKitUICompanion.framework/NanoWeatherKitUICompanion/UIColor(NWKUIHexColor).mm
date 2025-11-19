@interface UIColor(NWKUIHexColor)
+ (id)nwkui_colorFromHexString:()NWKUIHexColor;
- (id)nwkui_hexString;
@end

@implementation UIColor(NWKUIHexColor)

+ (id)nwkui_colorFromHexString:()NWKUIHexColor
{
  v3 = a3;
  if ([v3 length] == 7)
  {
    v4 = [v3 substringToIndex:1];
    if ([v4 containsString:@"#"])
    {
      v8 = 0;
      v5 = [MEMORY[0x277CCAC80] scannerWithString:v3];
      [v5 setScanLocation:1];
      [v5 scanHexInt:&v8];
      v6 = [MEMORY[0x277D75348] colorWithRed:BYTE2(v8) / 255.0 green:BYTE1(v8) / 255.0 blue:v8 / 255.0 alpha:1.0];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)nwkui_hexString
{
  v5 = 0.0;
  v6 = 0.0;
  v4 = 0.0;
  v3 = 0;
  [a1 getRed:&v6 green:&v5 blue:&v4 alpha:&v3];
  v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"%#02x%02x%02x", (v6 * 255.0), (v5 * 255.0), (v4 * 255.0)];

  return v1;
}

@end