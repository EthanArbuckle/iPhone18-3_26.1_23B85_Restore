@interface EXCellFormat
+ (id)edCellFormatFromXmlCellFormatElement:(_xmlNode *)a3 isStyle:(BOOL)a4 state:(id)a5;
@end

@implementation EXCellFormat

+ (id)edCellFormatFromXmlCellFormatElement:(_xmlNode *)a3 isStyle:(BOOL)a4 state:(id)a5
{
  v5 = a4;
  v7 = a5;
  if (a3)
  {
    if (v5)
    {
      v8 = [EDNamedStyle alloc];
      v9 = [v7 resources];
      v10 = [(EDStyle *)v8 initWithResources:v9];

      v11 = 0;
    }

    else
    {
      v12 = [EDStyle alloc];
      v13 = [v7 resources];
      v10 = [(EDStyle *)v12 initWithResources:v13];

      v11 = [v7 cellStyleXfsOffset];
    }

    v26 = 0;
    if (CXOptionalLongAttribute(a3, CXNoNamespace, "xfId", &v26))
    {
      [(EDStyle *)v10 setParentIndex:v26 + v11];
    }

    v25 = 0;
    if (CXOptionalLongAttribute(a3, CXNoNamespace, "fontId", &v25))
    {
      [(EDStyle *)v10 setFontIndex:v25];
      v24[0] = 1;
      CXOptionalBoolAttribute(a3, CXNoNamespace, "applyFont", v24);
      [(EDStyle *)v10 setFontApplied:v24[0]];
    }

    *v24 = 0;
    if (CXOptionalLongAttribute(a3, CXNoNamespace, "borderId", v24))
    {
      [(EDStyle *)v10 setBordersIndex:*v24];
      v23[0] = 1;
      CXOptionalBoolAttribute(a3, CXNoNamespace, "applyBorder", v23);
      [(EDStyle *)v10 setBordersApplied:v23[0]];
    }

    *v23 = 0;
    if (CXOptionalLongAttribute(a3, CXNoNamespace, "fillId", v23))
    {
      [(EDStyle *)v10 setFillIndex:*v23];
      v22[0] = 1;
      CXOptionalBoolAttribute(a3, CXNoNamespace, "applyFill", v22);
      [(EDStyle *)v10 setFillApplied:v22[0]];
    }

    *v22 = 0;
    if (CXOptionalLongAttribute(a3, CXNoNamespace, "numFmtId", v22))
    {
      [(EDStyle *)v10 setContentFormatId:*v22];
      v21 = 1;
      if (CXOptionalBoolAttribute(a3, CXNoNamespace, "applyNumberFormat", &v21))
      {
        [(EDStyle *)v10 setContentFormatApplied:v21];
      }
    }

    v14 = [v7 EXSpreadsheetMLNamespace];
    v15 = OCXFindChild(a3, v14, "protection");

    v16 = [EXProtection edProtectionFromXmlElement:v15 state:v7];
    [(EDStyle *)v10 setProtection:v16];

    [(EDStyle *)v10 setProtectionOverridden:v15 != 0];
    if (v15)
    {
      v21 = 1;
      CXOptionalBoolAttribute(a3, CXNoNamespace, "applyProtection", &v21);
      [(EDStyle *)v10 setProtectionApplied:v21];
    }

    v17 = [v7 EXSpreadsheetMLNamespace];
    v18 = OCXFindChild(a3, v17, "alignment");

    v19 = [EXAlignmentInfo edAlignmentInfoFromXmlAlignmentInfoElement:v18 state:v7];
    [(EDStyle *)v10 setAlignmentInfo:v19];

    [(EDStyle *)v10 setAlignmentInfoOverridden:v18 != 0];
    if (v18)
    {
      v21 = 1;
      CXOptionalBoolAttribute(a3, CXNoNamespace, "applyAlignment", &v21);
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