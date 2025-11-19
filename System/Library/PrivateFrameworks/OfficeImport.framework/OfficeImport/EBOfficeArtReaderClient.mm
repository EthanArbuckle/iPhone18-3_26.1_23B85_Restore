@interface EBOfficeArtReaderClient
+ (id)readDrawableFromPackagePart:(id)a3 foundInObject:(id)a4 state:(id)a5;
+ (void)readClientDataFromGroup:(id)a3 toGroup:(id)a4 state:(id)a5;
+ (void)readClientDataFromShape:(id)a3 toGraphic:(id)a4 state:(id)a5;
+ (void)readEshClientAnchor:(const void *)a3 targetClientData:(id)a4 state:(id)a5;
+ (void)setAutoInsetForShape:(void *)a3;
@end

@implementation EBOfficeArtReaderClient

+ (void)readClientDataFromShape:(id)a3 toGraphic:(id)a4 state:(id)a5
{
  v15 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(EDOfficeArtClient);
  v11 = [v15 eshObject];
  if (v11)
  {
  }

  v12 = v11[72];
  if (v12)
  {
    [EBOfficeArtReaderClient readEshClientAnchor:v12 targetClientData:v10 state:v9];
  }

  else
  {
    [(EDOfficeArtClient *)v10 setBounds:*(v11 + 64), *(v11 + 65), (*(v11 + 66) - *(v11 + 64)), (*(v11 + 67) - *(v11 + 65))];
  }

  [v8 setClientData:v10];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [v8 textBody];
    v14 = [v13 properties];

    [v14 setVerticalOverflowType:2];
    [a1 setAutoInsetForShape:{objc_msgSend(v15, "eshShape")}];
  }
}

+ (void)readClientDataFromGroup:(id)a3 toGroup:(id)a4 state:(id)a5
{
  v11 = a3;
  v7 = a4;
  v8 = a5;
  if (v9)
  {
    v10 = objc_alloc_init(EDOfficeArtClient);
    [EBOfficeArtReaderClient readEshClientAnchor:v9 targetClientData:v10 state:v8];
    [v7 setClientData:v10];
  }
}

+ (id)readDrawableFromPackagePart:(id)a3 foundInObject:(id)a4 state:(id)a5
{
  v6 = a3;
  v7 = [a5 xmlDrawingState];
  v8 = [v7 excelState];
  [v7 setPackagePart:v6];
  v9 = OCXGetRootElement([v6 xmlDocument]);
  if (xmlStrEqual(v9->name, "anchor"))
  {
    v10 = [EXDrawing readAnchorNode:OCXFirstChild(v9) state:v8];
  }

  else if (xmlStrEqual(v9->name, "object"))
  {
    v11 = OCXFirstChild(v9);
    v12 = [v8 EXSpreadsheetDrawingNamespace];
    v10 = [OAXDrawable readDrawableFromXmlNode:v11 inNamespace:v12 drawingState:v7];
  }

  else
  {
    v10 = 0;
  }

  [v7 setPackagePart:0];

  return v10;
}

+ (void)setAutoInsetForShape:(void *)a3
{
  DefaultPositionHorizontal = EshContentProperties::getDefaultPositionHorizontal(a1);
  if (EshTextBox::isAutoInsetSet((a3 + 272)))
  {
    if ((EshTextBox::getAutoInset((a3 + 272)) & 1) == 0)
    {
      return;
    }
  }

  else if (!DefaultPositionHorizontal)
  {
    return;
  }

  EshTextBox::setInsetLeft((a3 + 272), 0x594Cu);
  EshTextBox::setInsetRight((a3 + 272), 0x594Cu);
  EshTextBox::setInsetTop((a3 + 272), 0x594Cu);

  EshTextBox::setInsetBottom((a3 + 272), 0x594Cu);
}

+ (void)readEshClientAnchor:(const void *)a3 targetClientData:(id)a4 state:(id)a5
{
  v18 = a4;
  v6 = objc_alloc_init(EDTwoCellAnchor);
  [v18 setAnchor:v6];
  [(EDTwoCellAnchor *)v6 setRelative:1];
  v7 = *(a3 + 14);
  v8 = v7 << 17;
  if (v7 >= 0)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  [(EDTwoCellAnchor *)v6 setEditAs:v9 & (v8 >> 31)];
  v10 = *(a3 + 4);
  v11 = vcvt_f32_s32(*(a3 + 48));
  v12.i32[0] = 981467136;
  v12.i32[0] = vmul_f32(v11, v12).u32[0];
  v13 = vdup_n_s32(0x437E0000u);
  v12.i32[1] = vdiv_f32(v11, v13).i32[1];
  v14.i64[0] = v10;
  v14.i64[1] = HIDWORD(v10);
  [(EDTwoCellAnchor *)v6 setFrom:vorrq_s8(vshll_n_s32(v12, 0x20uLL), v14)];
  v15 = *(a3 + 5);
  v16 = vcvt_f32_s32(*(a3 + 56));
  v17.i32[0] = 981467136;
  v17.i32[0] = vmul_f32(v16, v17).u32[0];
  v17.i32[1] = vdiv_f32(v16, v13).i32[1];
  v14.i64[0] = v15;
  v14.i64[1] = HIDWORD(v15);
  [(EDTwoCellAnchor *)v6 setTo:vorrq_s8(vshll_n_s32(v17, 0x20uLL), v14)];
}

@end