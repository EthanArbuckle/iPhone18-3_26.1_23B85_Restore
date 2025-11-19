@interface OAVShapeType
+ (id)readFromShapeType:(_xmlNode *)a3 state:(id)a4;
@end

@implementation OAVShapeType

+ (id)readFromShapeType:(_xmlNode *)a3 state:(id)a4
{
  v5 = a4;
  v6 = CXRequiredStringAttribute(a3, CXNoNamespace, "id");
  [v5 setShapeType:CXRequiredUnsignedLongAttribute(a3 forId:{OAVOfficeDrawingNamespace, "spt"), v6}];

  return 0;
}

@end