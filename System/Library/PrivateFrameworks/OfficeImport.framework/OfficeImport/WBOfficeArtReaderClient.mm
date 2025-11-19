@interface WBOfficeArtReaderClient
+ (BOOL)allowOverlap:(EshContentProperties *)a3;
+ (BOOL)behindText:(EshContentProperties *)a3;
+ (double)wrapDistanceBottom:(EshContentProperties *)a3;
+ (double)wrapDistanceLeft:(EshContentProperties *)a3;
+ (double)wrapDistanceRight:(EshContentProperties *)a3;
+ (double)wrapDistanceTop:(EshContentProperties *)a3;
+ (id)readDrawableFromPackagePart:(id)a3 foundInObject:(id)a4 state:(id)a5;
+ (int)horizontalPosition:(EshContentProperties *)a3;
+ (int)relativeHorizontalPosition:(EshContentProperties *)a3;
+ (int)relativeVerticalPosition:(EshContentProperties *)a3;
+ (int)verticalPosition:(EshContentProperties *)a3;
+ (void)readClientDataFromGroup:(id)a3 toGroup:(id)a4 state:(id)a5;
+ (void)readClientDataFromObject:(id)a3 toDrawable:(id)a4 state:(id)a5;
+ (void)readClientDataFromShape:(id)a3 toGraphic:(id)a4 includeText:(BOOL)a5 state:(id)a6;
+ (void)readFrom:(EshContentProperties *)a3 to:(id)a4;
@end

@implementation WBOfficeArtReaderClient

+ (void)readClientDataFromShape:(id)a3 toGraphic:(id)a4 includeText:(BOOL)a5 state:(id)a6
{
  v7 = a5;
  v20 = a3;
  v10 = a4;
  v11 = a6;
  v12 = objc_alloc_init(WDAContent);
  [v10 setClientData:v12];
  [(WDAContent *)v12 setDrawable:v10];
  objc_opt_class();
  v13 = v11;
  -[WDAContent setTextType:](v12, "setTextType:", [v13 currentTextType]);

  v14 = [v20 eshShape];
  if ([OABReaderClient sourceDrawableIsTopLevel:v20])
  {
    v15 = [(WDAContent *)v12 createAnchor];
    v16 = (*(*v14 + 168))(v14);
    v17 = [(WDAContent *)v12 anchor];
    [a1 readFrom:v16 to:v17];
  }

  if (v7)
  {
    if (v14)
    {
    }

    else
    {
      v18 = 0;
    }

    objc_opt_class();
    v19 = [v13 reader];
    [WBTextBox readFrom:v18 parent:v12 reader:v19];
  }
}

+ (void)readClientDataFromGroup:(id)a3 toGroup:(id)a4 state:(id)a5
{
  v16 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(WDAContent);
  [v8 setClientData:v10];
  [(WDAContent *)v10 setDrawable:v8];
  objc_opt_class();
  v11 = v9;
  -[WDAContent setTextType:](v10, "setTextType:", [v11 currentTextType]);

  if ([OABReaderClient sourceDrawableIsTopLevel:v16])
  {
    v12 = [(WDAContent *)v10 createAnchor];
    v13 = [v16 eshGroup];
    v14 = (*(*v13 + 136))(v13);
    v15 = [(WDAContent *)v10 anchor];
    [a1 readFrom:v14 to:v15];
  }
}

+ (void)readClientDataFromObject:(id)a3 toDrawable:(id)a4 state:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_opt_class();
  v12 = TSUDynamicCast(v11, v9);
  objc_opt_class();
  if (v12)
  {
    v13 = v8;
    [a1 readClientDataFromGroup:v13 toGroup:v12 state:v10];
    v14 = [v12 children];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __69__WBOfficeArtReaderClient_readClientDataFromObject_toDrawable_state___block_invoke;
    v16[3] = &unk_2799CD930;
    v19 = a1;
    v15 = v13;
    v17 = v15;
    v18 = v10;
    [v14 enumerateObjectsUsingBlock:v16];
  }

  else
  {
    [a1 readClientDataFromShape:v8 toGraphic:v9 includeText:1 state:v10];
  }
}

void __69__WBOfficeArtReaderClient_readClientDataFromObject_toDrawable_state___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  v5 = *(a1 + 48);
  v6 = [*(a1 + 32) childAt:a3 + 1];
  [v5 readClientDataFromObject:v6 toDrawable:v7 state:*(a1 + 40)];
}

+ (id)readDrawableFromPackagePart:(id)a3 foundInObject:(id)a4 state:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_opt_class();
  v11 = v10;
  v12 = [v11 xmlDrawingState];
  [v12 setPackagePart:v8];
  v13 = OCXGetRootElement([v8 xmlDocument]);
  v14 = [v8 contentType];
  v15 = [v14 isEqualToString:@"application/vnd.ms-office.DrsE2oDoc+xml"];

  if (v15)
  {
    v16 = [OAXGraphicalObject readFromParentXmlNode:v13 inNamespace:0 drawingState:v12];
    [a1 readClientDataFromObject:v9 toDrawable:v16 state:v11];
  }

  else
  {
    v16 = 0;
  }

  [v12 setPackagePart:0];

  return v16;
}

+ (void)readFrom:(EshContentProperties *)a3 to:(id)a4
{
  v6 = a4;
  [v6 setHorizontalPosition:{objc_msgSend(a1, "horizontalPosition:", a3)}];
  [v6 setRelativeHorizontalPosition:{objc_msgSend(a1, "relativeHorizontalPosition:", a3)}];
  [v6 setVerticalPosition:{objc_msgSend(a1, "verticalPosition:", a3)}];
  [v6 setRelativeVerticalPosition:{objc_msgSend(a1, "relativeVerticalPosition:", a3)}];
  [a1 wrapDistanceLeft:a3];
  [v6 setWrapDistanceLeft:?];
  [a1 wrapDistanceTop:a3];
  [v6 setWrapDistanceTop:?];
  [a1 wrapDistanceRight:a3];
  [v6 setWrapDistanceRight:?];
  [a1 wrapDistanceBottom:a3];
  [v6 setWrapDistanceBottom:?];
  [v6 setAllowOverlap:{objc_msgSend(a1, "allowOverlap:", a3)}];
  [v6 setZIndex:{objc_msgSend(v6, "zIndex") + 2}];
  if ([a1 behindText:a3])
  {
    [v6 setZIndex:{objc_msgSend(v6, "zIndex") - 503316480}];
  }
}

+ (BOOL)behindText:(EshContentProperties *)a3
{
  isBehindTextSet = EshContentProperties::isBehindTextSet(a3);
  if (isBehindTextSet)
  {

    return EshContentProperties::getBehindText(a3);
  }

  else
  {

    return EshContentProperties::getDefaultPositionHorizontal(isBehindTextSet);
  }
}

+ (BOOL)allowOverlap:(EshContentProperties *)a3
{
  isAllowOverlapSet = EshContentProperties::isAllowOverlapSet(a3);
  if (isAllowOverlapSet)
  {

    return EshContentProperties::getAllowOverlap(a3);
  }

  else
  {

    return EshContentProperties::getDefaultAllowOverlap(isAllowOverlapSet);
  }
}

+ (int)horizontalPosition:(EshContentProperties *)a3
{
  isPositionHorizontalSet = EshContentProperties::isPositionHorizontalSet(a3);
  if (isPositionHorizontalSet)
  {
    result = EshContentProperties::getPositionHorizontal(a3);
  }

  else
  {
    result = EshContentProperties::getDefaultPositionHorizontal(isPositionHorizontalSet);
  }

  if ((result - 1) >= 5)
  {
    return 0;
  }

  return result;
}

+ (int)relativeHorizontalPosition:(EshContentProperties *)a3
{
  isPositionHorizontalRelativeSet = EshContentProperties::isPositionHorizontalRelativeSet(a3);
  if (isPositionHorizontalRelativeSet)
  {
    result = EshContentProperties::getPositionHorizontalRelative(a3);
  }

  else
  {
    result = EshContentProperties::getDefaultPositionHorizontalRelative(isPositionHorizontalRelativeSet);
  }

  if (result >= 4)
  {
    return 2;
  }

  return result;
}

+ (int)verticalPosition:(EshContentProperties *)a3
{
  isPositionVerticalSet = EshContentProperties::isPositionVerticalSet(a3);
  if (isPositionVerticalSet)
  {
    result = EshContentProperties::getPositionVertical(a3);
  }

  else
  {
    result = EshContentProperties::getDefaultPositionHorizontal(isPositionVerticalSet);
  }

  if ((result - 1) >= 5)
  {
    return 0;
  }

  return result;
}

+ (int)relativeVerticalPosition:(EshContentProperties *)a3
{
  isPositionVerticalRelativeSet = EshContentProperties::isPositionVerticalRelativeSet(a3);
  if (isPositionVerticalRelativeSet)
  {
    result = EshContentProperties::getPositionVerticalRelative(a3);
  }

  else
  {
    result = EshContentProperties::getDefaultPositionHorizontalRelative(isPositionVerticalRelativeSet);
  }

  if (result >= 4)
  {
    return 2;
  }

  return result;
}

+ (double)wrapDistanceLeft:(EshContentProperties *)a3
{
  isWrapDistanceLeftSet = EshContentProperties::isWrapDistanceLeftSet(a3);
  if (isWrapDistanceLeftSet)
  {
    WrapDistanceLeft = EshContentProperties::getWrapDistanceLeft(a3);
  }

  else
  {
    WrapDistanceLeft = EshContentProperties::getDefaultWrapDistanceLeft(isWrapDistanceLeftSet);
  }

  return WrapDistanceLeft / 12700.0;
}

+ (double)wrapDistanceTop:(EshContentProperties *)a3
{
  isWrapDistanceTopSet = EshContentProperties::isWrapDistanceTopSet(a3);
  if (isWrapDistanceTopSet)
  {
    WrapDistanceTop = EshContentProperties::getWrapDistanceTop(a3);
  }

  else
  {
    WrapDistanceTop = EshContentProperties::getDefaultPositionHorizontal(isWrapDistanceTopSet);
  }

  return WrapDistanceTop / 12700.0;
}

+ (double)wrapDistanceRight:(EshContentProperties *)a3
{
  isWrapDistanceRightSet = EshContentProperties::isWrapDistanceRightSet(a3);
  if (isWrapDistanceRightSet)
  {
    WrapDistanceRight = EshContentProperties::getWrapDistanceRight(a3);
  }

  else
  {
    WrapDistanceRight = EshContentProperties::getDefaultWrapDistanceLeft(isWrapDistanceRightSet);
  }

  return WrapDistanceRight / 12700.0;
}

+ (double)wrapDistanceBottom:(EshContentProperties *)a3
{
  isWrapDistanceBottomSet = EshContentProperties::isWrapDistanceBottomSet(a3);
  if (isWrapDistanceBottomSet)
  {
    WrapDistanceBottom = EshContentProperties::getWrapDistanceBottom(a3);
  }

  else
  {
    WrapDistanceBottom = EshContentProperties::getDefaultPositionHorizontal(isWrapDistanceBottomSet);
  }

  return WrapDistanceBottom / 12700.0;
}

@end