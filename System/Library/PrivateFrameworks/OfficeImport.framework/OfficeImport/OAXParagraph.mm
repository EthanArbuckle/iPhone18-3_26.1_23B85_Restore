@interface OAXParagraph
+ (void)readParagraph:(_xmlNode *)paragraph paragraph:(id)a4 drawingState:(id)state;
@end

@implementation OAXParagraph

+ (void)readParagraph:(_xmlNode *)paragraph paragraph:(id)a4 drawingState:(id)state
{
  v41 = a4;
  stateCopy = state;
  oAXMainNamespace = [stateCopy OAXMainNamespace];
  v9 = OCXFindChild(paragraph, oAXMainNamespace, "pPr");

  if (v9)
  {
    properties = [v41 properties];
    [OAXTextParaPropertyBag readParagraphProperties:v9 paragraphProperties:properties drawingState:stateCopy];
  }

  oAXMainNamespace2 = [stateCopy OAXMainNamespace];
  v12 = OCXFindChild(paragraph, oAXMainNamespace2, "endParaRPr");

  p_vtable = &OBJC_METACLASS___OAXFill.vtable;
  if (v12)
  {
    paragraphEndCharacterProperties = [v41 paragraphEndCharacterProperties];
    [OAXTextCharPropertyBag readCharacterProperties:v12 characterProperties:paragraphEndCharacterProperties drawingState:stateCopy];
  }

  v15 = OCXFirstChild(paragraph);
  v40 = *MEMORY[0x277CBE648];
  while (v15)
  {
    if (xmlStrEqual(v15->name, "r"))
    {
      addRegularTextRun = [v41 addRegularTextRun];
      oAXMainNamespace3 = [stateCopy OAXMainNamespace];
      v18 = OCXFindChild(v15, oAXMainNamespace3, "rPr");

      properties2 = [addRegularTextRun properties];
      [p_vtable + 222 readCharacterProperties:v18 characterProperties:properties2 drawingState:stateCopy];

      oAXMainNamespace4 = [stateCopy OAXMainNamespace];
      v21 = OCXFindChild(v15, oAXMainNamespace4, "t");

      properties3 = [objc_alloc(MEMORY[0x277CCACA8]) tc_initWithContentOfXmlNode:v21];
      if (properties3)
      {
        text = [addRegularTextRun text];
        [text setString:properties3];
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    if (xmlStrEqual(v15->name, "br"))
    {
      addRegularTextRun = [v41 addTextLineBreak];
      oAXMainNamespace5 = [stateCopy OAXMainNamespace];
      v25 = OCXFindChild(v15, oAXMainNamespace5, "rPr");

      properties3 = [addRegularTextRun properties];
      [p_vtable + 222 readCharacterProperties:v25 characterProperties:properties3 drawingState:stateCopy];
      goto LABEL_13;
    }

    if (xmlStrEqual(v15->name, "fld"))
    {
      properties3 = CXRequiredStringAttribute(v15, CXNoNamespace, "type");
      text = CXRequiredStringAttribute(v15, CXNoNamespace, "id");
      v26 = [OAXTextFieldIdentity identityWithGuid:text type:properties3];
      if (OAXDateTimeIdentityToFormatMap(void)::once != -1)
      {
        +[OAXParagraph readParagraph:paragraph:drawingState:];
      }

      v27 = OAXDateTimeIdentityToFormatMap(void)::theMap;
      v28 = [v27 objectForKeyedSubscript:v26];

      if (v28)
      {
        v29 = [v41 addDateTimeFieldWithFormat:objc_msgSend(v28, "intValue")];
        addRegularTextRun = 0;
      }

      else
      {
        client = [stateCopy client];
        addRegularTextRun = [client readClientTextField:v15 identity:v26 paragraph:v41 state:stateCopy];

        if (addRegularTextRun || ([v41 addGenericTextFieldWithGuid:text type:properties3], (addRegularTextRun = objc_claimAutoreleasedReturnValue()) != 0))
        {
          oAXMainNamespace6 = [stateCopy OAXMainNamespace];
          v32 = OCXFindChild(v15, oAXMainNamespace6, "rPr");

          properties4 = [addRegularTextRun properties];
          [OAXTextCharPropertyBag readCharacterProperties:v32 characterProperties:properties4 drawingState:stateCopy];

          oAXMainNamespace7 = [stateCopy OAXMainNamespace];
          v35 = OCXFindChild(v15, oAXMainNamespace7, "pPr");

          paragraphProperties = [addRegularTextRun paragraphProperties];
          [OAXTextParaPropertyBag readParagraphProperties:v35 paragraphProperties:paragraphProperties drawingState:stateCopy];

          oAXMainNamespace8 = [stateCopy OAXMainNamespace];
          v38 = OCXFindChild(v15, oAXMainNamespace8, "t");

          if (v38)
          {
            v39 = [objc_alloc(MEMORY[0x277CCACA8]) tc_initWithContentOfXmlNode:v38];
            [addRegularTextRun setText:v39];
            p_vtable = (&OBJC_METACLASS___OAXFill + 24);
          }

          else
          {
            p_vtable = (&OBJC_METACLASS___OAXFill + 24);
          }
        }
      }

LABEL_10:
LABEL_13:

      goto LABEL_14;
    }

    if (xmlStrEqual(v15->name, "m"))
    {
      [MEMORY[0x277CBEAD8] raise:v40 format:@"Cannot read math content"];
    }

LABEL_14:
    v15 = OCXNextSibling(v15);
  }
}

@end