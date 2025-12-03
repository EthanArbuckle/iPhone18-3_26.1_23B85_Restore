@interface OAVGroup
+ (id)readFromGroup:(_xmlNode *)group inNamespace:(id)namespace state:(id)state;
@end

@implementation OAVGroup

+ (id)readFromGroup:(_xmlNode *)group inNamespace:(id)namespace state:(id)state
{
  namespaceCopy = namespace;
  stateCopy = state;
  v9 = objc_alloc_init(OADGroup);
  [OAVDrawable readFromDrawable:group toDrawable:v9 state:stateCopy];
  v10 = [OAVDrawable readDrawablesFromParent:group inNamespace:namespaceCopy state:stateCopy];
  [(OADGroup *)v9 addChildren:v10];

  [OAVDrawable readCoordBounds:group];
  [(OADGroup *)v9 setLogicalBounds:?];
  [objc_msgSend(stateCopy "client")];

  return v9;
}

@end