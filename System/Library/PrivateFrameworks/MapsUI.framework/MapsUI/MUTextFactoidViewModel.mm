@interface MUTextFactoidViewModel
- (MUTextFactoidViewModel)initWithTitle:(id)title valueString:(id)string symbolName:(id)name symbolColor:(id)color darkSymbolColor:(id)symbolColor shouldReverseForRTLLayout:(BOOL)layout;
- (id)buildSymbolWithFont:(id)font;
@end

@implementation MUTextFactoidViewModel

- (id)buildSymbolWithFont:(id)font
{
  v3 = MEMORY[0x1E69DCAB8];
  symbolName = self->_symbolName;
  fontCopy = font;
  v6 = [v3 _mapsui_systemImageNamed:symbolName];
  v7 = [MEMORY[0x1E69DCAD8] configurationWithFont:fontCopy scale:1];

  v8 = [v6 imageWithSymbolConfiguration:v7];

  return v8;
}

- (MUTextFactoidViewModel)initWithTitle:(id)title valueString:(id)string symbolName:(id)name symbolColor:(id)color darkSymbolColor:(id)symbolColor shouldReverseForRTLLayout:(BOOL)layout
{
  titleCopy = title;
  stringCopy = string;
  nameCopy = name;
  colorCopy = color;
  symbolColorCopy = symbolColor;
  v23.receiver = self;
  v23.super_class = MUTextFactoidViewModel;
  v18 = [(MUTextFactoidViewModel *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_titleString, title);
    objc_storeStrong(&v19->_valueString, string);
    objc_storeStrong(&v19->_symbolName, name);
    objc_storeStrong(&v19->_symbolColor, color);
    objc_storeStrong(&v19->_darkSymbolColor, symbolColor);
    v19->_shouldReverseForRTLLayout = layout;
  }

  return v19;
}

@end