@interface EXOfficeArtClient
- (void)readClientDataFromNode:(_xmlNode *)node toDrawable:(id)drawable state:(id)state;
@end

@implementation EXOfficeArtClient

- (void)readClientDataFromNode:(_xmlNode *)node toDrawable:(id)drawable state:(id)state
{
  drawableCopy = drawable;
  stateCopy = state;
  objc_opt_class();
  excelState = [stateCopy excelState];
  v9 = objc_alloc_init(EDOfficeArtClient);
  [drawableCopy setClientData:v9];
  currentSheet = [excelState currentSheet];
  [(EDOfficeArtClient *)v9 setSheet:currentSheet];

  oAXMainNamespace = [stateCopy OAXMainNamespace];
  v12 = OCXFindChild(node, oAXMainNamespace, "xfrm");

  if (v12)
  {
    v13 = *MEMORY[0x277CBF3A0];
    v14 = *(MEMORY[0x277CBF3A0] + 8);
    v15 = *(MEMORY[0x277CBF3A0] + 16);
    v16 = *(MEMORY[0x277CBF3A0] + 24);
    oAXMainNamespace2 = [stateCopy OAXMainNamespace];
    v18 = OCXFindChild(v12, oAXMainNamespace2, "off");

    if (v18)
    {
      [OAXBaseTypes readPoint2DFromXmlNode:v18];
      v13 = v19;
      v14 = v20;
    }

    oAXMainNamespace3 = [stateCopy OAXMainNamespace];
    v22 = OCXFindChild(v12, oAXMainNamespace3, "ext");

    if (v22)
    {
      [OAXBaseTypes readSize2DFromXmlNode:v22];
      v15 = v23;
      v16 = v24;
    }

    [(EDOfficeArtClient *)v9 setBounds:v13, v14, v15, v16];
  }

  else
  {
    drawableProperties = [drawableCopy drawableProperties];
    hasOrientedBounds = [drawableProperties hasOrientedBounds];

    if (hasOrientedBounds)
    {
      drawableProperties2 = [drawableCopy drawableProperties];
      orientedBounds = [drawableProperties2 orientedBounds];

      [orientedBounds bounds];
      [(EDOfficeArtClient *)v9 setBounds:?];
    }
  }
}

@end