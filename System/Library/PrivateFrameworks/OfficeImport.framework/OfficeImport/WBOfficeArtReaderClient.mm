@interface WBOfficeArtReaderClient
+ (BOOL)allowOverlap:(EshContentProperties *)overlap;
+ (BOOL)behindText:(EshContentProperties *)text;
+ (double)wrapDistanceBottom:(EshContentProperties *)bottom;
+ (double)wrapDistanceLeft:(EshContentProperties *)left;
+ (double)wrapDistanceRight:(EshContentProperties *)right;
+ (double)wrapDistanceTop:(EshContentProperties *)top;
+ (id)readDrawableFromPackagePart:(id)part foundInObject:(id)object state:(id)state;
+ (int)horizontalPosition:(EshContentProperties *)position;
+ (int)relativeHorizontalPosition:(EshContentProperties *)position;
+ (int)relativeVerticalPosition:(EshContentProperties *)position;
+ (int)verticalPosition:(EshContentProperties *)position;
+ (void)readClientDataFromGroup:(id)group toGroup:(id)toGroup state:(id)state;
+ (void)readClientDataFromObject:(id)object toDrawable:(id)drawable state:(id)state;
+ (void)readClientDataFromShape:(id)shape toGraphic:(id)graphic includeText:(BOOL)text state:(id)state;
+ (void)readFrom:(EshContentProperties *)from to:(id)to;
@end

@implementation WBOfficeArtReaderClient

+ (void)readClientDataFromShape:(id)shape toGraphic:(id)graphic includeText:(BOOL)text state:(id)state
{
  textCopy = text;
  shapeCopy = shape;
  graphicCopy = graphic;
  stateCopy = state;
  v12 = objc_alloc_init(WDAContent);
  [graphicCopy setClientData:v12];
  [(WDAContent *)v12 setDrawable:graphicCopy];
  objc_opt_class();
  v13 = stateCopy;
  -[WDAContent setTextType:](v12, "setTextType:", [v13 currentTextType]);

  eshShape = [shapeCopy eshShape];
  if ([OABReaderClient sourceDrawableIsTopLevel:shapeCopy])
  {
    createAnchor = [(WDAContent *)v12 createAnchor];
    v16 = (*(*eshShape + 168))(eshShape);
    anchor = [(WDAContent *)v12 anchor];
    [self readFrom:v16 to:anchor];
  }

  if (textCopy)
  {
    if (eshShape)
    {
    }

    else
    {
      v18 = 0;
    }

    objc_opt_class();
    reader = [v13 reader];
    [WBTextBox readFrom:v18 parent:v12 reader:reader];
  }
}

+ (void)readClientDataFromGroup:(id)group toGroup:(id)toGroup state:(id)state
{
  groupCopy = group;
  toGroupCopy = toGroup;
  stateCopy = state;
  v10 = objc_alloc_init(WDAContent);
  [toGroupCopy setClientData:v10];
  [(WDAContent *)v10 setDrawable:toGroupCopy];
  objc_opt_class();
  v11 = stateCopy;
  -[WDAContent setTextType:](v10, "setTextType:", [v11 currentTextType]);

  if ([OABReaderClient sourceDrawableIsTopLevel:groupCopy])
  {
    createAnchor = [(WDAContent *)v10 createAnchor];
    eshGroup = [groupCopy eshGroup];
    v14 = (*(*eshGroup + 136))(eshGroup);
    anchor = [(WDAContent *)v10 anchor];
    [self readFrom:v14 to:anchor];
  }
}

+ (void)readClientDataFromObject:(id)object toDrawable:(id)drawable state:(id)state
{
  objectCopy = object;
  drawableCopy = drawable;
  stateCopy = state;
  v11 = objc_opt_class();
  v12 = TSUDynamicCast(v11, drawableCopy);
  objc_opt_class();
  if (v12)
  {
    v13 = objectCopy;
    [self readClientDataFromGroup:v13 toGroup:v12 state:stateCopy];
    children = [v12 children];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __69__WBOfficeArtReaderClient_readClientDataFromObject_toDrawable_state___block_invoke;
    v16[3] = &unk_2799CD930;
    selfCopy = self;
    v15 = v13;
    v17 = v15;
    v18 = stateCopy;
    [children enumerateObjectsUsingBlock:v16];
  }

  else
  {
    [self readClientDataFromShape:objectCopy toGraphic:drawableCopy includeText:1 state:stateCopy];
  }
}

void __69__WBOfficeArtReaderClient_readClientDataFromObject_toDrawable_state___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  v5 = *(a1 + 48);
  v6 = [*(a1 + 32) childAt:a3 + 1];
  [v5 readClientDataFromObject:v6 toDrawable:v7 state:*(a1 + 40)];
}

+ (id)readDrawableFromPackagePart:(id)part foundInObject:(id)object state:(id)state
{
  partCopy = part;
  objectCopy = object;
  stateCopy = state;
  objc_opt_class();
  v11 = stateCopy;
  xmlDrawingState = [v11 xmlDrawingState];
  [xmlDrawingState setPackagePart:partCopy];
  v13 = OCXGetRootElement([partCopy xmlDocument]);
  contentType = [partCopy contentType];
  v15 = [contentType isEqualToString:@"application/vnd.ms-office.DrsE2oDoc+xml"];

  if (v15)
  {
    v16 = [OAXGraphicalObject readFromParentXmlNode:v13 inNamespace:0 drawingState:xmlDrawingState];
    [self readClientDataFromObject:objectCopy toDrawable:v16 state:v11];
  }

  else
  {
    v16 = 0;
  }

  [xmlDrawingState setPackagePart:0];

  return v16;
}

+ (void)readFrom:(EshContentProperties *)from to:(id)to
{
  toCopy = to;
  [toCopy setHorizontalPosition:{objc_msgSend(self, "horizontalPosition:", from)}];
  [toCopy setRelativeHorizontalPosition:{objc_msgSend(self, "relativeHorizontalPosition:", from)}];
  [toCopy setVerticalPosition:{objc_msgSend(self, "verticalPosition:", from)}];
  [toCopy setRelativeVerticalPosition:{objc_msgSend(self, "relativeVerticalPosition:", from)}];
  [self wrapDistanceLeft:from];
  [toCopy setWrapDistanceLeft:?];
  [self wrapDistanceTop:from];
  [toCopy setWrapDistanceTop:?];
  [self wrapDistanceRight:from];
  [toCopy setWrapDistanceRight:?];
  [self wrapDistanceBottom:from];
  [toCopy setWrapDistanceBottom:?];
  [toCopy setAllowOverlap:{objc_msgSend(self, "allowOverlap:", from)}];
  [toCopy setZIndex:{objc_msgSend(toCopy, "zIndex") + 2}];
  if ([self behindText:from])
  {
    [toCopy setZIndex:{objc_msgSend(toCopy, "zIndex") - 503316480}];
  }
}

+ (BOOL)behindText:(EshContentProperties *)text
{
  isBehindTextSet = EshContentProperties::isBehindTextSet(text);
  if (isBehindTextSet)
  {

    return EshContentProperties::getBehindText(text);
  }

  else
  {

    return EshContentProperties::getDefaultPositionHorizontal(isBehindTextSet);
  }
}

+ (BOOL)allowOverlap:(EshContentProperties *)overlap
{
  isAllowOverlapSet = EshContentProperties::isAllowOverlapSet(overlap);
  if (isAllowOverlapSet)
  {

    return EshContentProperties::getAllowOverlap(overlap);
  }

  else
  {

    return EshContentProperties::getDefaultAllowOverlap(isAllowOverlapSet);
  }
}

+ (int)horizontalPosition:(EshContentProperties *)position
{
  isPositionHorizontalSet = EshContentProperties::isPositionHorizontalSet(position);
  if (isPositionHorizontalSet)
  {
    result = EshContentProperties::getPositionHorizontal(position);
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

+ (int)relativeHorizontalPosition:(EshContentProperties *)position
{
  isPositionHorizontalRelativeSet = EshContentProperties::isPositionHorizontalRelativeSet(position);
  if (isPositionHorizontalRelativeSet)
  {
    result = EshContentProperties::getPositionHorizontalRelative(position);
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

+ (int)verticalPosition:(EshContentProperties *)position
{
  isPositionVerticalSet = EshContentProperties::isPositionVerticalSet(position);
  if (isPositionVerticalSet)
  {
    result = EshContentProperties::getPositionVertical(position);
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

+ (int)relativeVerticalPosition:(EshContentProperties *)position
{
  isPositionVerticalRelativeSet = EshContentProperties::isPositionVerticalRelativeSet(position);
  if (isPositionVerticalRelativeSet)
  {
    result = EshContentProperties::getPositionVerticalRelative(position);
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

+ (double)wrapDistanceLeft:(EshContentProperties *)left
{
  isWrapDistanceLeftSet = EshContentProperties::isWrapDistanceLeftSet(left);
  if (isWrapDistanceLeftSet)
  {
    WrapDistanceLeft = EshContentProperties::getWrapDistanceLeft(left);
  }

  else
  {
    WrapDistanceLeft = EshContentProperties::getDefaultWrapDistanceLeft(isWrapDistanceLeftSet);
  }

  return WrapDistanceLeft / 12700.0;
}

+ (double)wrapDistanceTop:(EshContentProperties *)top
{
  isWrapDistanceTopSet = EshContentProperties::isWrapDistanceTopSet(top);
  if (isWrapDistanceTopSet)
  {
    WrapDistanceTop = EshContentProperties::getWrapDistanceTop(top);
  }

  else
  {
    WrapDistanceTop = EshContentProperties::getDefaultPositionHorizontal(isWrapDistanceTopSet);
  }

  return WrapDistanceTop / 12700.0;
}

+ (double)wrapDistanceRight:(EshContentProperties *)right
{
  isWrapDistanceRightSet = EshContentProperties::isWrapDistanceRightSet(right);
  if (isWrapDistanceRightSet)
  {
    WrapDistanceRight = EshContentProperties::getWrapDistanceRight(right);
  }

  else
  {
    WrapDistanceRight = EshContentProperties::getDefaultWrapDistanceLeft(isWrapDistanceRightSet);
  }

  return WrapDistanceRight / 12700.0;
}

+ (double)wrapDistanceBottom:(EshContentProperties *)bottom
{
  isWrapDistanceBottomSet = EshContentProperties::isWrapDistanceBottomSet(bottom);
  if (isWrapDistanceBottomSet)
  {
    WrapDistanceBottom = EshContentProperties::getWrapDistanceBottom(bottom);
  }

  else
  {
    WrapDistanceBottom = EshContentProperties::getDefaultPositionHorizontal(isWrapDistanceBottomSet);
  }

  return WrapDistanceBottom / 12700.0;
}

@end