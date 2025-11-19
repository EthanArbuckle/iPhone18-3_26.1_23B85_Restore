@interface OAVGroup
+ (id)readFromGroup:(_xmlNode *)a3 inNamespace:(id)a4 state:(id)a5;
@end

@implementation OAVGroup

+ (id)readFromGroup:(_xmlNode *)a3 inNamespace:(id)a4 state:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = objc_alloc_init(OADGroup);
  [OAVDrawable readFromDrawable:a3 toDrawable:v9 state:v8];
  v10 = [OAVDrawable readDrawablesFromParent:a3 inNamespace:v7 state:v8];
  [(OADGroup *)v9 addChildren:v10];

  [OAVDrawable readCoordBounds:a3];
  [(OADGroup *)v9 setLogicalBounds:?];
  [objc_msgSend(v8 "client")];

  return v9;
}

@end