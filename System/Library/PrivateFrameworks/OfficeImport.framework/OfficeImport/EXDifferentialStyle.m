@interface EXDifferentialStyle
+ (id)edDifferentialStyleFromXmlDifferentialStyleElement:(_xmlNode *)a3 state:(id)a4;
@end

@implementation EXDifferentialStyle

+ (id)edDifferentialStyleFromXmlDifferentialStyleElement:(_xmlNode *)a3 state:(id)a4
{
  v5 = a4;
  if (a3)
  {
    v6 = objc_alloc_init(EDDifferentialStyle);
    v7 = [v5 EXSpreadsheetMLNamespace];
    v8 = OCXFindChild(a3, v7, "numFmt");

    v9 = [EXContentFormat edContentFormatFromXmlContentFormatElement:v8];
    [(EDDifferentialStyle *)v6 setContentFormat:v9];

    v10 = [v5 EXSpreadsheetMLNamespace];
    v11 = OCXFindChild(a3, v10, "font");

    v12 = [EXFont edFontFromXmlFontElement:v11 inConditionalFormat:1 returnDefaultIfEmpty:1 state:v5];
    [(EDDifferentialStyle *)v6 setFont:v12];

    v13 = [v5 EXSpreadsheetMLNamespace];
    v14 = OCXFindChild(a3, v13, "border");

    v15 = [EXBorders edBordersFromXmlBordersElement:v14 state:v5];
    [(EDDifferentialStyle *)v6 setBorders:v15];

    v16 = [v5 EXSpreadsheetMLNamespace];
    v17 = OCXFindChild(a3, v16, "fill");

    v18 = [EXFill edFillFromXmlFillElement:v17 differentialFill:1 state:v5];
    [(EDDifferentialStyle *)v6 setFill:v18];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end