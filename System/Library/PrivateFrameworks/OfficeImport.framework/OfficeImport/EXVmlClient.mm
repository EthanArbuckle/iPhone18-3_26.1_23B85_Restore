@interface EXVmlClient
+ (id)edTextBoxForVmlTextInShape:(_xmlNode *)shape to:(id)to state:(id)state;
+ (id)readComment:(_xmlNode *)comment to:(id)to state:(id)state;
+ (void)readAnchor:(_xmlNode *)anchor to:(id)to;
+ (void)readClientDataFromShape:(_xmlNode *)shape toGraphic:(id)graphic state:(id)state;
@end

@implementation EXVmlClient

+ (void)readClientDataFromShape:(_xmlNode *)shape toGraphic:(id)graphic state:(id)state
{
  graphicCopy = graphic;
  stateCopy = state;
  v10 = objc_alloc_init(EDOfficeArtClient);
  [graphicCopy setClientData:v10];
  objc_opt_class();
  v11 = stateCopy;
  exState = [v11 exState];
  currentSheet = [exState currentSheet];
  [(EDOfficeArtClient *)v10 setSheet:currentSheet];

  v14 = OCXFindChild(shape, EXVmlNamespace, "ClientData");
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
      v19 = [self readComment:v15 to:v10 state:exState];
      if (!v19)
      {
        v22 = 0;
        goto LABEL_23;
      }

      v20 = v19;
      goto LABEL_21;
    }

LABEL_19:
    v21 = [self edTextBoxForVmlTextInShape:shape to:v10 state:exState];
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
    v23 = [EXAlignmentInfo edAlignmentInfoFromVmlAlignmentInfoElement:v15 state:exState];
    [v20 setAlignmentInfo:v23];

    exState2 = [v11 exState];
    v25 = [EXProtection edProtectionFromXmlElement:v15 state:exState2];
    [v20 setProtection:v25];

    v22 = v20;
    goto LABEL_22;
  }

LABEL_24:
}

+ (void)readAnchor:(_xmlNode *)anchor to:(id)to
{
  toCopy = to;
  v5 = OCXFindChild(anchor, EXVmlNamespace, "Anchor");
  if (v5)
  {
    v29 = [objc_alloc(MEMORY[0x277CCACA8]) tc_initWithContentOfXmlNode:v5];
    whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v7 = [v29 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

    v28 = v7;
    v8 = [v7 componentsSeparatedByString:{@", "}];
    if ([v8 count] != 8)
    {
      [TCMessageException raise:TCInvalidFileFormatMessage];
    }

    v9 = [v8 objectAtIndex:0];
    intValue = [v9 intValue];

    v10 = [v8 objectAtIndex:1];
    intValue2 = [v10 intValue];

    v12 = [v8 objectAtIndex:2];
    intValue3 = [v12 intValue];

    v14 = [v8 objectAtIndex:3];
    intValue4 = [v14 intValue];

    v16 = [v8 objectAtIndex:4];
    intValue5 = [v16 intValue];

    v18 = [v8 objectAtIndex:5];
    LODWORD(v16) = [v18 intValue];

    v19 = [v8 objectAtIndex:6];
    LODWORD(v18) = [v19 intValue];

    v20 = [v8 objectAtIndex:7];
    LODWORD(v19) = [v20 intValue];

    v21 = objc_alloc_init(EDTwoCellAnchor);
    *&v22 = intValue2 / 100.0 * 72.0;
    *&v23 = intValue4 / 100.0 * 72.0;
    [(EDTwoCellAnchor *)v21 setFrom:intValue | (v22 << 32), intValue3 | (v23 << 32)];
    *&v24 = v16 / 100.0 * 72.0;
    *&v25 = v19 / 100.0 * 72.0;
    [(EDTwoCellAnchor *)v21 setTo:intValue5 | (v24 << 32), v18 | (v25 << 32)];
    [(EDTwoCellAnchor *)v21 setRelative:0];
    if (OCXFindChild(anchor, EXVmlNamespace, "SizeWithCells"))
    {
      if (OCXFindChild(anchor, EXVmlNamespace, "MoveWithCells"))
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
    [toCopy setAnchor:v21];
  }
}

+ (id)readComment:(_xmlNode *)comment to:(id)to state:(id)state
{
  toCopy = to;
  stateCopy = state;
  v9 = OCXFindChild(comment, EXVmlNamespace, "Row");
  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x277CCACA8]) tc_initWithContentOfXmlNode:v9];
    intValue = [v10 intValue];
  }

  else
  {
    intValue = 0xFFFFFFFFLL;
  }

  v12 = OCXFindChild(comment, EXVmlNamespace, "Column");
  if (v12)
  {
    v13 = [objc_alloc(MEMORY[0x277CCACA8]) tc_initWithContentOfXmlNode:v12];
    intValue2 = [v13 intValue];

    v15 = 0;
    if (intValue != -1 && intValue2 != -1)
    {
      v16 = [EDReference referenceWithFirstRow:intValue lastRow:intValue firstColumn:intValue2 lastColumn:intValue2];
      v17 = objc_alloc_init(EDComment);
      [(EDComment *)v17 setRowIndex:intValue];
      [(EDComment *)v17 setColumnIndex:intValue2];
      v18 = [stateCopy authorForReference:v16];
      [(EDComment *)v17 setAuthor:v18];

      [(EDComment *)v17 setVisible:OCXFindChild(comment, EXVmlNamespace, "Visible") != 0];
      [toCopy setComment:v17];
      v15 = [stateCopy textBoxForReference:v16];
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)edTextBoxForVmlTextInShape:(_xmlNode *)shape to:(id)to state:(id)state
{
  stateCopy = state;
  v7 = OCXFindChild(shape, OAVOfficeMainNamespace, "textbox");
  if (v7 && (v8 = OCXFindChild(v7, CXNoNamespace, "div")) != 0)
  {
    v9 = +[EDTextBox textBox];
    v10 = [EXString edStringWithRunsFromXmlDivElement:v8 state:stateCopy];
    [v9 setText:v10];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end