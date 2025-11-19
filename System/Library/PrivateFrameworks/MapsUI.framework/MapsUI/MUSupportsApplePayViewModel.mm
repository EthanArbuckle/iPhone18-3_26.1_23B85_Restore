@interface MUSupportsApplePayViewModel
- (NSString)displayTitle;
- (id)symbolImageForFont:(id)a3;
@end

@implementation MUSupportsApplePayViewModel

- (id)symbolImageForFont:(id)a3
{
  v3 = MEMORY[0x1E69DCAB8];
  v4 = [MEMORY[0x1E69DCAD8] configurationWithFont:a3];
  v5 = [v3 _mapsui_customSymbolImageNamed:@"applePay" withConfiguration:v4];

  return v5;
}

- (NSString)displayTitle
{
  v2 = _MULocalizedStringFromThisBundle(@"Accepts Apple Pay");

  return v2;
}

@end