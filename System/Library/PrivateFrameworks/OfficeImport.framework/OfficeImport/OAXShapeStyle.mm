@interface OAXShapeStyle
+ (void)readFromNode:(_xmlNode *)node shapeStyle:(id)style drawingState:(id)state;
@end

@implementation OAXShapeStyle

+ (void)readFromNode:(_xmlNode *)node shapeStyle:(id)style drawingState:(id)state
{
  styleCopy = style;
  stateCopy = state;
  oAXMainNamespace = [stateCopy OAXMainNamespace];
  v9 = OCXFirstChild(node, oAXMainNamespace, "lnRef");

  v10 = [OAXStyleMatrix readReferenceFromNode:v9];
  [styleCopy setLineReference:v10];

  oAXMainNamespace2 = [stateCopy OAXMainNamespace];
  v12 = OCXNextSibling(v9, oAXMainNamespace2, "fillRef");

  v13 = [OAXStyleMatrix readReferenceFromNode:v12];
  [styleCopy setFillReference:v13];

  oAXMainNamespace3 = [stateCopy OAXMainNamespace];
  v15 = OCXNextSibling(v12, oAXMainNamespace3, "effectRef");

  v16 = [OAXStyleMatrix readReferenceFromNode:v15];
  [styleCopy setEffectReference:v16];

  oAXMainNamespace4 = [stateCopy OAXMainNamespace];
  v18 = OCXNextSibling(v15, oAXMainNamespace4, "fontRef");

  v19 = objc_alloc_init(OADFontReference);
  [OAXFontReference readFromNode:v18 fontReference:v19];
  [styleCopy setFontReference:v19];
}

@end