@interface EXVmlClient
+ (id)edTextBoxForVmlTextInShape:(_xmlNode *)a3 to:(id)a4 state:(id)a5;
+ (id)readComment:(_xmlNode *)a3 to:(id)a4 state:(id)a5;
+ (void)readAnchor:(_xmlNode *)a3 to:(id)a4;
+ (void)readClientDataFromShape:(_xmlNode *)a3 toGraphic:(id)a4 state:(id)a5;
@end

@implementation EXVmlClient

+ (void)readClientDataFromShape:(_xmlNode *)a3 toGraphic:(id)a4 state:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(EDOfficeArtClient);
  [v8 setClientData:v10];
  objc_opt_class();
  v11 = v9;
  v12 = [v11 exState];
  v13 = [v12 currentSheet];
  [(EDOfficeArtClient *)v10 setSheet:v13];

  v14 = OCXFindChild(a3, EXVmlNamespace, "ClientData");
  v15 = v14;
  if (!v14)
  {
    v18 = 0;
    goto LABEL_19;
  }

  v26 = 0;
  v16 = CXOptionalStringAttribute(v14, CXNoNamespace, "ObjectType", &v26);
  v17 = v26;
  v18 = v17;
  if (v16 && ([v17 isEqualToString:@"Checkbox"] & 1) == 0 && (objc_msgSend(v18, "isEqualToString:", @"Radio") & 1) == 0 && (objc_msgSend(v18, "isEqualToString:", @"Button") & 1) == 0 && (objc_msgSend(v18, "isEqualToString:", @"GBox") & 1) == 0 && (objc_msgSend(v18, "isEqualToString:", @"List") & 1) == 0 && (objc_msgSend(v18, "isEqualToString:", @"Scroll") & 1) == 0 && (objc_msgSend(v18, "isEqualToString:", @"Spin") & 1) == 0 && (objc_msgSend(v18, "isEqualToString:", @"Drop") & 1) == 0 && (objc_msgSend(v18, "isEqualToString:", @"Label") & 1) == 0 && (objc_msgSend(v18, "isEqualToString:", @"Dialog") & 1) == 0 && (objc_msgSend(v18, "isEqualToString:", @"Edit") & 1) == 0)
  {
    [EXVmlClient readAnchor:v15 to:v10];
    if (v18 && [v18 isEqualToString:@"Note"])
    {
      v19 = [a1 readComment:v15 to:v10 state:v12];
      if (!v19)
      {
        v22 = 0;
        goto LABEL_23;
      }

      v20 = v19;
      goto LABEL_21;
    }

LABEL_19:
    v21 = [a1 edTextBoxForVmlTextInShape:a3 to:v10 state:v12];
    v22 = v21;
    if (!v21)
    {
LABEL_23:

      goto LABEL_24;
    }

    v20 = v21;
    if (!v15)
    {
LABEL_22:
      [(EDOfficeArtClient *)v10 setTextBox:v22];
      goto LABEL_23;
    }

LABEL_21:
    v23 = [EXAlignmentInfo edAlignmentInfoFromVmlAlignmentInfoElement:v15 state:v12];
    [v20 setAlignmentInfo:v23];

    v24 = [v11 exState];
    v25 = [EXProtection edProtectionFromXmlElement:v15 state:v24];
    [v20 setProtection:v25];

    v22 = v20;
    goto LABEL_22;
  }

LABEL_24:
}

+ (void)readAnchor:(_xmlNode *)a3 to:(id)a4
{
  v30 = a4;
  v5 = OCXFindChild(a3, EXVmlNamespace, "Anchor");
  if (v5)
  {
    v29 = [objc_alloc(MEMORY[0x277CCACA8]) tc_initWithContentOfXmlNode:v5];
    v6 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v7 = [v29 stringByTrimmingCharactersInSet:v6];

    v28 = v7;
    v8 = [v7 componentsSeparatedByString:{@", "}];
    if ([v8 count] != 8)
    {
      [TCMessageException raise:TCInvalidFileFormatMessage];
    }

    v9 = [v8 objectAtIndex:0];
    v27 = [v9 intValue];

    v10 = [v8 objectAtIndex:1];
    v11 = [v10 intValue];

    v12 = [v8 objectAtIndex:2];
    v13 = [v12 intValue];

    v14 = [v8 objectAtIndex:3];
    v15 = [v14 intValue];

    v16 = [v8 objectAtIndex:4];
    v17 = [v16 intValue];

    v18 = [v8 objectAtIndex:5];
    LODWORD(v16) = [v18 intValue];

    v19 = [v8 objectAtIndex:6];
    LODWORD(v18) = [v19 intValue];

    v20 = [v8 objectAtIndex:7];
    LODWORD(v19) = [v20 intValue];

    v21 = objc_alloc_init(EDTwoCellAnchor);
    *&v22 = v11 / 100.0 * 72.0;
    *&v23 = v15 / 100.0 * 72.0;
    [(EDTwoCellAnchor *)v21 setFrom:v27 | (v22 << 32), v13 | (v23 << 32)];
    *&v24 = v16 / 100.0 * 72.0;
    *&v25 = v19 / 100.0 * 72.0;
    [(EDTwoCellAnchor *)v21 setTo:v17 | (v24 << 32), v18 | (v25 << 32)];
    [(EDTwoCellAnchor *)v21 setRelative:0];
    if (OCXFindChild(a3, EXVmlNamespace, "SizeWithCells"))
    {
      if (OCXFindChild(a3, EXVmlNamespace, "MoveWithCells"))
      {
        v26 = 2;
      }

      else
      {
        v26 = 1;
      }
    }

    else
    {
      v26 = 0;
    }

    [(EDTwoCellAnchor *)v21 setEditAs:v26];
    [v30 setAnchor:v21];
  }
}

+ (id)readComment:(_xmlNode *)a3 to:(id)a4 state:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = OCXFindChild(a3, EXVmlNamespace, "Row");
  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x277CCACA8]) tc_initWithContentOfXmlNode:v9];
    v11 = [v10 intValue];
  }

  else
  {
    v11 = 0xFFFFFFFFLL;
  }

  v12 = OCXFindChild(a3, EXVmlNamespace, "Column");
  if (v12)
  {
    v13 = [objc_alloc(MEMORY[0x277CCACA8]) tc_initWithContentOfXmlNode:v12];
    v14 = [v13 intValue];

    v15 = 0;
    if (v11 != -1 && v14 != -1)
    {
      v16 = [EDReference referenceWithFirstRow:v11 lastRow:v11 firstColumn:v14 lastColumn:v14];
      v17 = objc_alloc_init(EDComment);
      [(EDComment *)v17 setRowIndex:v11];
      [(EDComment *)v17 setColumnIndex:v14];
      v18 = [v8 authorForReference:v16];
      [(EDComment *)v17 setAuthor:v18];

      [(EDComment *)v17 setVisible:OCXFindChild(a3, EXVmlNamespace, "Visible") != 0];
      [v7 setComment:v17];
      v15 = [v8 textBoxForReference:v16];
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)edTextBoxForVmlTextInShape:(_xmlNode *)a3 to:(id)a4 state:(id)a5
{
  v6 = a5;
  v7 = OCXFindChild(a3, OAVOfficeMainNamespace, "textbox");
  if (v7 && (v8 = OCXFindChild(v7, CXNoNamespace, "div")) != 0)
  {
    v9 = +[EDTextBox textBox];
    v10 = [EXString edStringWithRunsFromXmlDivElement:v8 state:v6];
    [v9 setText:v10];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end