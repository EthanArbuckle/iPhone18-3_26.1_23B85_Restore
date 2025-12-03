@interface WXCommon
+ (TCEnumerationMap)customNumberFormatEnumMap;
+ (TCEnumerationMap)heightTypeEnumMap;
+ (TCEnumerationMap)justifyEnumMap;
+ (TCEnumerationMap)numberFormatEnumMap;
+ (TCEnumerationMap)strictJustifyEnumMap;
+ (TCEnumerationMap)strictTextDirectionEnumMap;
+ (TCEnumerationMap)tableWidthTypeEnumMap;
+ (TCEnumerationMap)textDirectionEnumMap;
+ (void)customNumberFormatEnumMap;
+ (void)heightTypeEnumMap;
+ (void)initialize;
+ (void)justifyEnumMap;
+ (void)numberFormatEnumMap;
+ (void)strictJustifyEnumMap;
+ (void)strictTextDirectionEnumMap;
+ (void)tableWidthTypeEnumMap;
+ (void)textDirectionEnumMap;
@end

@implementation WXCommon

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = [TCTaggedMessage alloc];
    v3 = TCBundle();
    v4 = [v3 localizedStringForKey:@"The XML document isn\\U2019t in Word format." value:&stru_286EE1130 table:@"TCCompatibility"];
    v5 = [(TCTaggedMessage *)v2 initWithMessageText:v4];
    v6 = WXBadFormat;
    WXBadFormat = v5;

    v7 = [TCTaggedMessage alloc];
    v8 = TCBundle();
    v9 = [v8 localizedStringForKey:@"Equations authored with Microsoft Office were removed." value:&stru_286EE1130 table:@"TCCompatibility"];
    v10 = [(TCTaggedMessage *)v7 initWithMessageText:v9];
    v11 = WXMathMLNotSupported;
    WXMathMLNotSupported = v10;

    v12 = [TCTaggedMessage alloc];
    v13 = TCBundle();
    v14 = [v13 localizedStringForKey:@"Form components aren\\U2019t supported and were removed." value:&stru_286EE1130 table:@"TCCompatibility"];
    v15 = [(TCTaggedMessage *)v12 initWithMessageText:v14];
    v16 = WXFormsNotSupported;
    WXFormsNotSupported = v15;

    v17 = [TCTaggedMessage alloc];
    v18 = TCBundle();
    v19 = [v18 localizedStringForKey:@"Some tracked changes had no associated time stamp. The current date/time was used instead." value:&stru_286EE1130 table:@"TCCompatibility"];
    v20 = [(TCTaggedMessage *)v17 initWithMessageText:v19];
    v21 = WXFoundMissingCTDate;
    WXFoundMissingCTDate = v20;

    v22 = [[CXNamespace alloc] initWithUri:"urn:schemas-microsoft-com:office:word"];
    v23 = WXVmlNamespace;
    WXVmlNamespace = v22;

    v24 = [[CXNamespace alloc] initWithUri:"http://schemas.microsoft.com/office/word/2006/wordml"];
    v25 = WXWord2006Namespace;
    WXWord2006Namespace = v24;

    v26 = [[CXNamespace alloc] initWithUri:"http://schemas.microsoft.com/office/word/2010/wordml"];
    v27 = WXWord2010Namespace;
    WXWord2010Namespace = v26;

    v28 = [[CXNamespace alloc] initWithUri:"http://schemas.microsoft.com/office/word/2012/wordml"];
    v29 = WXWord2012Namespace;
    WXWord2012Namespace = v28;

    v30 = [[CXNamespace alloc] initWithUri:"http://schemas.microsoft.com/office/word/2012/wordprocessingDrawing"];
    v31 = WXWord2012DrawingNamespace;
    WXWord2012DrawingNamespace = v30;

    v32 = [[CXNamespace alloc] initWithUri:"http://schemas.openxmlformats.org/officeDocument/2006/bibliography"];
    v33 = WXOOBibliographyNamespace;
    WXOOBibliographyNamespace = v32;

    v34 = [[CXNamespace alloc] initWithUri:"http://schemas.openxmlformats.org/officeDocument/2006/relationships"];
    v35 = WXRelationshipNamespace;
    WXRelationshipNamespace = v34;

    v36 = [[CXNamespace alloc] initWithUri:"http://schemas.microsoft.com/office/word/2010/wordprocessingShape"];
    v37 = WXShapeNamespace;
    WXShapeNamespace = v36;

    v38 = [[CXNamespace alloc] initWithUri:"http://schemas.microsoft.com/office/word/2010/wordprocessingGroup"];
    v39 = WXGroupNamespace;
    WXGroupNamespace = v38;
  }
}

+ (TCEnumerationMap)textDirectionEnumMap
{
  {
    +[WXCommon textDirectionEnumMap];
  }

  if (+[WXCommon textDirectionEnumMap]::onceToken != -1)
  {
    +[WXCommon textDirectionEnumMap];
  }

  v2 = +[WXCommon textDirectionEnumMap]::sTextDirectionEnumMap;

  return v2;
}

void __32__WXCommon_textDirectionEnumMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[WXCommon textDirectionEnumMap]::sTextDirectionEnumStructs count:6 caseSensitive:1];
  v1 = +[WXCommon textDirectionEnumMap]::sTextDirectionEnumMap;
  +[WXCommon textDirectionEnumMap]::sTextDirectionEnumMap = v0;
}

+ (TCEnumerationMap)strictTextDirectionEnumMap
{
  {
    +[WXCommon strictTextDirectionEnumMap];
  }

  if (+[WXCommon strictTextDirectionEnumMap]::onceToken != -1)
  {
    +[WXCommon strictTextDirectionEnumMap];
  }

  v2 = +[WXCommon strictTextDirectionEnumMap]::sStrictTextDirectionEnumMap;

  return v2;
}

void __38__WXCommon_strictTextDirectionEnumMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[WXCommon strictTextDirectionEnumMap]::sStrictTextDirectionEnumStructs count:6 caseSensitive:1];
  v1 = +[WXCommon strictTextDirectionEnumMap]::sStrictTextDirectionEnumMap;
  +[WXCommon strictTextDirectionEnumMap]::sStrictTextDirectionEnumMap = v0;
}

+ (TCEnumerationMap)justifyEnumMap
{
  {
    +[WXCommon justifyEnumMap];
  }

  if (+[WXCommon justifyEnumMap]::onceToken != -1)
  {
    +[WXCommon justifyEnumMap];
  }

  v2 = +[WXCommon justifyEnumMap]::sJustifyEnumMap;

  return v2;
}

void __26__WXCommon_justifyEnumMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[WXCommon justifyEnumMap]::sJustifyEnumStructs count:10 caseSensitive:1];
  v1 = +[WXCommon justifyEnumMap]::sJustifyEnumMap;
  +[WXCommon justifyEnumMap]::sJustifyEnumMap = v0;
}

+ (TCEnumerationMap)strictJustifyEnumMap
{
  {
    +[WXCommon strictJustifyEnumMap];
  }

  if (+[WXCommon strictJustifyEnumMap]::onceToken != -1)
  {
    +[WXCommon strictJustifyEnumMap];
  }

  v2 = +[WXCommon strictJustifyEnumMap]::sStrictJustifyEnumMap;

  return v2;
}

void __32__WXCommon_strictJustifyEnumMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[WXCommon strictJustifyEnumMap]::sStrictJustifyEnumStructs count:10 caseSensitive:1];
  v1 = +[WXCommon strictJustifyEnumMap]::sStrictJustifyEnumMap;
  +[WXCommon strictJustifyEnumMap]::sStrictJustifyEnumMap = v0;
}

+ (TCEnumerationMap)tableWidthTypeEnumMap
{
  {
    +[WXCommon tableWidthTypeEnumMap];
  }

  if (+[WXCommon tableWidthTypeEnumMap]::onceToken != -1)
  {
    +[WXCommon tableWidthTypeEnumMap];
  }

  v2 = +[WXCommon tableWidthTypeEnumMap]::sTableWidthTypeEnumMap;

  return v2;
}

void __33__WXCommon_tableWidthTypeEnumMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[WXCommon tableWidthTypeEnumMap]::sTableWidthTypeEnumStructs count:4 caseSensitive:1];
  v1 = +[WXCommon tableWidthTypeEnumMap]::sTableWidthTypeEnumMap;
  +[WXCommon tableWidthTypeEnumMap]::sTableWidthTypeEnumMap = v0;
}

+ (TCEnumerationMap)heightTypeEnumMap
{
  {
    +[WXCommon heightTypeEnumMap];
  }

  if (+[WXCommon heightTypeEnumMap]::onceToken != -1)
  {
    +[WXCommon heightTypeEnumMap];
  }

  v2 = +[WXCommon heightTypeEnumMap]::sHeightTypeEnumMap;

  return v2;
}

void __29__WXCommon_heightTypeEnumMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[WXCommon heightTypeEnumMap]::sHeightTypeEnumStructs count:2 caseSensitive:1];
  v1 = +[WXCommon heightTypeEnumMap]::sHeightTypeEnumMap;
  +[WXCommon heightTypeEnumMap]::sHeightTypeEnumMap = v0;
}

+ (TCEnumerationMap)numberFormatEnumMap
{
  {
    +[WXCommon numberFormatEnumMap];
  }

  if (+[WXCommon numberFormatEnumMap]::onceToken != -1)
  {
    +[WXCommon numberFormatEnumMap];
  }

  v2 = +[WXCommon numberFormatEnumMap]::sNumberFormatEnumMap;

  return v2;
}

void __31__WXCommon_numberFormatEnumMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[WXCommon numberFormatEnumMap]::sNumberFormatEnumStructs count:59 caseSensitive:1];
  v1 = +[WXCommon numberFormatEnumMap]::sNumberFormatEnumMap;
  +[WXCommon numberFormatEnumMap]::sNumberFormatEnumMap = v0;
}

+ (TCEnumerationMap)customNumberFormatEnumMap
{
  {
    +[WXCommon customNumberFormatEnumMap];
  }

  if (+[WXCommon customNumberFormatEnumMap]::onceToken != -1)
  {
    +[WXCommon customNumberFormatEnumMap];
  }

  v2 = +[WXCommon customNumberFormatEnumMap]::sCustomNumberFormatEnumMap;

  return v2;
}

void __37__WXCommon_customNumberFormatEnumMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[WXCommon customNumberFormatEnumMap]::sCustomNumberFormatEnumStructs count:63 caseSensitive:1];
  v1 = +[WXCommon customNumberFormatEnumMap]::sCustomNumberFormatEnumMap;
  +[WXCommon customNumberFormatEnumMap]::sCustomNumberFormatEnumMap = v0;
}

+ (void)textDirectionEnumMap
{
  if (v0)
  {
    OUTLINED_FUNCTION_0(v0, v1, &dword_25D297000);
  }
}

+ (void)strictTextDirectionEnumMap
{
  if (v0)
  {
    OUTLINED_FUNCTION_0(v0, v1, &dword_25D297000);
  }
}

+ (void)justifyEnumMap
{
  if (v0)
  {
    OUTLINED_FUNCTION_0(v0, v1, &dword_25D297000);
  }
}

+ (void)strictJustifyEnumMap
{
  if (v0)
  {
    OUTLINED_FUNCTION_0(v0, v1, &dword_25D297000);
  }
}

+ (void)tableWidthTypeEnumMap
{
  if (v0)
  {
    OUTLINED_FUNCTION_0(v0, v1, &dword_25D297000);
  }
}

+ (void)heightTypeEnumMap
{
  if (v0)
  {
    OUTLINED_FUNCTION_0(v0, v1, &dword_25D297000);
  }
}

+ (void)numberFormatEnumMap
{
  if (v0)
  {
    OUTLINED_FUNCTION_0(v0, v1, &dword_25D297000);
  }
}

+ (void)customNumberFormatEnumMap
{
  if (v0)
  {
    OUTLINED_FUNCTION_0(v0, v1, &dword_25D297000);
  }
}

@end