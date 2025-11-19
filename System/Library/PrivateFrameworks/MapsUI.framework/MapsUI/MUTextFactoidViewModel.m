@interface MUTextFactoidViewModel
- (MUTextFactoidViewModel)initWithTitle:(id)a3 valueString:(id)a4 symbolName:(id)a5 symbolColor:(id)a6 darkSymbolColor:(id)a7 shouldReverseForRTLLayout:(BOOL)a8;
- (id)buildSymbolWithFont:(id)a3;
@end

@implementation MUTextFactoidViewModel

- (id)buildSymbolWithFont:(id)a3
{
  v3 = MEMORY[0x1E69DCAB8];
  symbolName = self->_symbolName;
  v5 = a3;
  v6 = [v3 _mapsui_systemImageNamed:symbolName];
  v7 = [MEMORY[0x1E69DCAD8] configurationWithFont:v5 scale:1];

  v8 = [v6 imageWithSymbolConfiguration:v7];

  return v8;
}

- (MUTextFactoidViewModel)initWithTitle:(id)a3 valueString:(id)a4 symbolName:(id)a5 symbolColor:(id)a6 darkSymbolColor:(id)a7 shouldReverseForRTLLayout:(BOOL)a8
{
  v22 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v23.receiver = self;
  v23.super_class = MUTextFactoidViewModel;
  v18 = [(MUTextFactoidViewModel *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_titleString, a3);
    objc_storeStrong(&v19->_valueString, a4);
    objc_storeStrong(&v19->_symbolName, a5);
    objc_storeStrong(&v19->_symbolColor, a6);
    objc_storeStrong(&v19->_darkSymbolColor, a7);
    v19->_shouldReverseForRTLLayout = a8;
  }

  return v19;
}

@end