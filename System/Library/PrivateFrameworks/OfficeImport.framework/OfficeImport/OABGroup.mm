@interface OABGroup
+ (id)readGroup:(id)group state:(id)state;
@end

@implementation OABGroup

+ (id)readGroup:(id)group state:(id)state
{
  groupCopy = group;
  stateCopy = state;
  eshGroup = [groupCopy eshGroup];
  if (!eshGroup)
  {
    v11 = 0;
    goto LABEL_11;
  }

  if (![objc_msgSend(stateCopy "client")] || !EshContentProperties::isXmlEquivalentSet(eshGroup + 12))
  {
    goto LABEL_10;
  }

  v8 = [OABDrawable readDrawableFromZipPackageData:EshContentProperties::getXmlEquivalent(eshGroup + 12) foundInObject:groupCopy state:stateCopy];
  v9 = objc_opt_class();
  v10 = TSUDynamicCast(v9, v8);
  v11 = v10;
  if (!v10)
  {

LABEL_10:
    v11 = objc_alloc_init(OADGroup);
    [OABContent readFromContainer:groupCopy toDrawable:v11 state:stateCopy];
    var2 = eshGroup[11].var2;
    [(OADGroup *)v11 setLogicalBounds:var2[7], var2[8], (var2[9] - var2[7]), (var2[10] - var2[8])];
    [stateCopy pushGroup:v11];
    v15 = [OABDrawable readDrawablesFromContainer:groupCopy state:stateCopy];
    [(OADGroup *)v11 addChildren:v15];

    popGroup = [stateCopy popGroup];
    [objc_msgSend(stateCopy "client")];
    goto LABEL_11;
  }

  if (![(OADGroup *)v10 childCount])
  {
    [stateCopy pushGroup:v11];
    v12 = [OABDrawable readDrawablesFromContainer:groupCopy state:stateCopy];
    [(OADGroup *)v11 addChildren:v12];

    popGroup2 = [stateCopy popGroup];
  }

LABEL_11:

  return v11;
}

@end