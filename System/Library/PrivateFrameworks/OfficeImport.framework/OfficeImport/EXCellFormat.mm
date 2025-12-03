@interface EXCellFormat
+ (id)edCellFormatFromXmlCellFormatElement:(_xmlNode *)element isStyle:(BOOL)style state:(id)state;
@end

@implementation EXCellFormat

+ (id)edCellFormatFromXmlCellFormatElement:(_xmlNode *)element isStyle:(BOOL)style state:(id)state
{
  styleCopy = style;
  stateCopy = state;
  if (element)
  {
    if (styleCopy)
    {
      v8 = [EDNamedStyle alloc];
      resources = [stateCopy resources];
      v10 = [(EDStyle *)v8 initWithResources:resources];

      cellStyleXfsOffset = 0;
    }

    else
    {
      v12 = [EDStyle alloc];
      resources2 = [stateCopy resources];
      v10 = [(EDStyle *)v12 initWithResources:resources2];

      cellStyleXfsOffset = [stateCopy cellStyleXfsOffset];
    }

    v26 = 0;
    if (CXOptionalLongAttribute(element, CXNoNamespace, "xfId", &v26))
    {
      [(EDStyle *)v10 setParentIndex:v26 + cellStyleXfsOffset];
    }

    v25 = 0;
    if (CXOptionalLongAttribute(element, CXNoNamespace, "fontId", &v25))
    {
      [(EDStyle *)v10 setFontIndex:v25];
      v24[0] = 1;
      CXOptionalBoolAttribute(element, CXNoNamespace, "applyFont", v24);
      [(EDStyle *)v10 setFontApplied:v24[0]];
    }

    *v24 = 0;
    if (CXOptionalLongAttribute(element, CXNoNamespace, "borderId", v24))
    {
      [(EDStyle *)v10 setBordersIndex:*v24];
      v23[0] = 1;
      CXOptionalBoolAttribute(element, CXNoNamespace, "applyBorder", v23);
      [(EDStyle *)v10 setBordersApplied:v23[0]];
    }

    *v23 = 0;
    if (CXOptionalLongAttribute(element, CXNoNamespace, "fillId", v23))
    {
      [(EDStyle *)v10 setFillIndex:*v23];
      v22[0] = 1;
      CXOptionalBoolAttribute(element, CXNoNamespace, "applyFill", v22);
      [(EDStyle *)v10 setFillApplied:v22[0]];
    }

    *v22 = 0;
    if (CXOptionalLongAttribute(element, CXNoNamespace, "numFmtId", v22))
    {
      [(EDStyle *)v10 setContentFormatId:*v22];
      v21 = 1;
      if (CXOptionalBoolAttribute(element, CXNoNamespace, "applyNumberFormat", &v21))
      {
        [(EDStyle *)v10 setContentFormatApplied:v21];
      }
    }

    eXSpreadsheetMLNamespace = [stateCopy EXSpreadsheetMLNamespace];
    v15 = OCXFindChild(element, eXSpreadsheetMLNamespace, "protection");

    v16 = [EXProtection edProtectionFromXmlElement:v15 state:stateCopy];
    [(EDStyle *)v10 setProtection:v16];

    [(EDStyle *)v10 setProtectionOverridden:v15 != 0];
    if (v15)
    {
      v21 = 1;
      CXOptionalBoolAttribute(element, CXNoNamespace, "applyProtection", &v21);
      [(EDStyle *)v10 setProtectionApplied:v21];
    }

    eXSpreadsheetMLNamespace2 = [stateCopy EXSpreadsheetMLNamespace];
    v18 = OCXFindChild(element, eXSpreadsheetMLNamespace2, "alignment");

    v19 = [EXAlignmentInfo edAlignmentInfoFromXmlAlignmentInfoElement:v18 state:stateCopy];
    [(EDStyle *)v10 setAlignmentInfo:v19];

    [(EDStyle *)v10 setAlignmentInfoOverridden:v18 != 0];
    if (v18)
    {
      v21 = 1;
      CXOptionalBoolAttribute(element, CXNoNamespace, "applyAlignment", &v21);
      [(EDStyle *)v10 setAlignmentInfoApplied:v21];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end