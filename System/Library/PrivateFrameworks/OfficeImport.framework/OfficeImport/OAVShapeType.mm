@interface OAVShapeType
+ (id)readFromShapeType:(_xmlNode *)type state:(id)state;
@end

@implementation OAVShapeType

+ (id)readFromShapeType:(_xmlNode *)type state:(id)state
{
  stateCopy = state;
  v6 = CXRequiredStringAttribute(type, CXNoNamespace, "id");
  [stateCopy setShapeType:CXRequiredUnsignedLongAttribute(type forId:{OAVOfficeDrawingNamespace, "spt"), v6}];

  return 0;
}

@end