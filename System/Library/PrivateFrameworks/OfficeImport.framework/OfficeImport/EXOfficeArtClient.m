@interface EXOfficeArtClient
- (void)readClientDataFromNode:(_xmlNode *)a3 toDrawable:(id)a4 state:(id)a5;
@end

@implementation EXOfficeArtClient

- (void)readClientDataFromNode:(_xmlNode *)a3 toDrawable:(id)a4 state:(id)a5
{
  v29 = a4;
  v7 = a5;
  objc_opt_class();
  v8 = [v7 excelState];
  v9 = objc_alloc_init(EDOfficeArtClient);
  [v29 setClientData:v9];
  v10 = [v8 currentSheet];
  [(EDOfficeArtClient *)v9 setSheet:v10];

  v11 = [v7 OAXMainNamespace];
  v12 = OCXFindChild(a3, v11, "xfrm");

  if (v12)
  {
    v13 = *MEMORY[0x277CBF3A0];
    v14 = *(MEMORY[0x277CBF3A0] + 8);
    v15 = *(MEMORY[0x277CBF3A0] + 16);
    v16 = *(MEMORY[0x277CBF3A0] + 24);
    v17 = [v7 OAXMainNamespace];
    v18 = OCXFindChild(v12, v17, "off");

    if (v18)
    {
      [OAXBaseTypes readPoint2DFromXmlNode:v18];
      v13 = v19;
      v14 = v20;
    }

    v21 = [v7 OAXMainNamespace];
    v22 = OCXFindChild(v12, v21, "ext");

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
    v25 = [v29 drawableProperties];
    v26 = [v25 hasOrientedBounds];

    if (v26)
    {
      v27 = [v29 drawableProperties];
      v28 = [v27 orientedBounds];

      [v28 bounds];
      [(EDOfficeArtClient *)v9 setBounds:?];
    }
  }
}

@end