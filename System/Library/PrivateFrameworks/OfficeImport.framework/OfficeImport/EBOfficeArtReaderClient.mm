@interface EBOfficeArtReaderClient
+ (id)readDrawableFromPackagePart:(id)part foundInObject:(id)object state:(id)state;
+ (void)readClientDataFromGroup:(id)group toGroup:(id)toGroup state:(id)state;
+ (void)readClientDataFromShape:(id)shape toGraphic:(id)graphic state:(id)state;
+ (void)readEshClientAnchor:(const void *)anchor targetClientData:(id)data state:(id)state;
+ (void)setAutoInsetForShape:(void *)shape;
@end

@implementation EBOfficeArtReaderClient

+ (void)readClientDataFromShape:(id)shape toGraphic:(id)graphic state:(id)state
{
  shapeCopy = shape;
  graphicCopy = graphic;
  stateCopy = state;
  v10 = objc_alloc_init(EDOfficeArtClient);
  eshObject = [shapeCopy eshObject];
  if (eshObject)
  {
  }

  v12 = eshObject[72];
  if (v12)
  {
    [EBOfficeArtReaderClient readEshClientAnchor:v12 targetClientData:v10 state:stateCopy];
  }

  else
  {
    [(EDOfficeArtClient *)v10 setBounds:*(eshObject + 64), *(eshObject + 65), (*(eshObject + 66) - *(eshObject + 64)), (*(eshObject + 67) - *(eshObject + 65))];
  }

  [graphicCopy setClientData:v10];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    textBody = [graphicCopy textBody];
    properties = [textBody properties];

    [properties setVerticalOverflowType:2];
    [self setAutoInsetForShape:{objc_msgSend(shapeCopy, "eshShape")}];
  }
}

+ (void)readClientDataFromGroup:(id)group toGroup:(id)toGroup state:(id)state
{
  groupCopy = group;
  toGroupCopy = toGroup;
  stateCopy = state;
  if (v9)
  {
    v10 = objc_alloc_init(EDOfficeArtClient);
    [EBOfficeArtReaderClient readEshClientAnchor:v9 targetClientData:v10 state:stateCopy];
    [toGroupCopy setClientData:v10];
  }
}

+ (id)readDrawableFromPackagePart:(id)part foundInObject:(id)object state:(id)state
{
  partCopy = part;
  xmlDrawingState = [state xmlDrawingState];
  excelState = [xmlDrawingState excelState];
  [xmlDrawingState setPackagePart:partCopy];
  v9 = OCXGetRootElement([partCopy xmlDocument]);
  if (xmlStrEqual(v9->name, "anchor"))
  {
    v10 = [EXDrawing readAnchorNode:OCXFirstChild(v9) state:excelState];
  }

  else if (xmlStrEqual(v9->name, "object"))
  {
    v11 = OCXFirstChild(v9);
    eXSpreadsheetDrawingNamespace = [excelState EXSpreadsheetDrawingNamespace];
    v10 = [OAXDrawable readDrawableFromXmlNode:v11 inNamespace:eXSpreadsheetDrawingNamespace drawingState:xmlDrawingState];
  }

  else
  {
    v10 = 0;
  }

  [xmlDrawingState setPackagePart:0];

  return v10;
}

+ (void)setAutoInsetForShape:(void *)shape
{
  DefaultPositionHorizontal = EshContentProperties::getDefaultPositionHorizontal(self);
  if (EshTextBox::isAutoInsetSet((shape + 272)))
  {
    if ((EshTextBox::getAutoInset((shape + 272)) & 1) == 0)
    {
      return;
    }
  }

  else if (!DefaultPositionHorizontal)
  {
    return;
  }

  EshTextBox::setInsetLeft((shape + 272), 0x594Cu);
  EshTextBox::setInsetRight((shape + 272), 0x594Cu);
  EshTextBox::setInsetTop((shape + 272), 0x594Cu);

  EshTextBox::setInsetBottom((shape + 272), 0x594Cu);
}

+ (void)readEshClientAnchor:(const void *)anchor targetClientData:(id)data state:(id)state
{
  dataCopy = data;
  v6 = objc_alloc_init(EDTwoCellAnchor);
  [dataCopy setAnchor:v6];
  [(EDTwoCellAnchor *)v6 setRelative:1];
  v7 = *(anchor + 14);
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
  v10 = *(anchor + 4);
  v11 = vcvt_f32_s32(*(anchor + 48));
  v12.i32[0] = 981467136;
  v12.i32[0] = vmul_f32(v11, v12).u32[0];
  v13 = vdup_n_s32(0x437E0000u);
  v12.i32[1] = vdiv_f32(v11, v13).i32[1];
  v14.i64[0] = v10;
  v14.i64[1] = HIDWORD(v10);
  [(EDTwoCellAnchor *)v6 setFrom:vorrq_s8(vshll_n_s32(v12, 0x20uLL), v14)];
  v15 = *(anchor + 5);
  v16 = vcvt_f32_s32(*(anchor + 56));
  v17.i32[0] = 981467136;
  v17.i32[0] = vmul_f32(v16, v17).u32[0];
  v17.i32[1] = vdiv_f32(v16, v13).i32[1];
  v14.i64[0] = v15;
  v14.i64[1] = HIDWORD(v15);
  [(EDTwoCellAnchor *)v6 setTo:vorrq_s8(vshll_n_s32(v17, 0x20uLL), v14)];
}

@end