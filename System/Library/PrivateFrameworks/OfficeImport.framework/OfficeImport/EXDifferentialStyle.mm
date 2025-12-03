@interface EXDifferentialStyle
+ (id)edDifferentialStyleFromXmlDifferentialStyleElement:(_xmlNode *)element state:(id)state;
@end

@implementation EXDifferentialStyle

+ (id)edDifferentialStyleFromXmlDifferentialStyleElement:(_xmlNode *)element state:(id)state
{
  stateCopy = state;
  if (element)
  {
    v6 = objc_alloc_init(EDDifferentialStyle);
    eXSpreadsheetMLNamespace = [stateCopy EXSpreadsheetMLNamespace];
    v8 = OCXFindChild(element, eXSpreadsheetMLNamespace, "numFmt");

    v9 = [EXContentFormat edContentFormatFromXmlContentFormatElement:v8];
    [(EDDifferentialStyle *)v6 setContentFormat:v9];

    eXSpreadsheetMLNamespace2 = [stateCopy EXSpreadsheetMLNamespace];
    v11 = OCXFindChild(element, eXSpreadsheetMLNamespace2, "font");

    v12 = [EXFont edFontFromXmlFontElement:v11 inConditionalFormat:1 returnDefaultIfEmpty:1 state:stateCopy];
    [(EDDifferentialStyle *)v6 setFont:v12];

    eXSpreadsheetMLNamespace3 = [stateCopy EXSpreadsheetMLNamespace];
    v14 = OCXFindChild(element, eXSpreadsheetMLNamespace3, "border");

    v15 = [EXBorders edBordersFromXmlBordersElement:v14 state:stateCopy];
    [(EDDifferentialStyle *)v6 setBorders:v15];

    eXSpreadsheetMLNamespace4 = [stateCopy EXSpreadsheetMLNamespace];
    v17 = OCXFindChild(element, eXSpreadsheetMLNamespace4, "fill");

    v18 = [EXFill edFillFromXmlFillElement:v17 differentialFill:1 state:stateCopy];
    [(EDDifferentialStyle *)v6 setFill:v18];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end