@interface OABGroup
+ (id)readGroup:(id)a3 state:(id)a4;
@end

@implementation OABGroup

+ (id)readGroup:(id)a3 state:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 eshGroup];
  if (!v7)
  {
    v11 = 0;
    goto LABEL_11;
  }

  if (![objc_msgSend(v6 "client")] || !EshContentProperties::isXmlEquivalentSet(v7 + 12))
  {
    goto LABEL_10;
  }

  v8 = [OABDrawable readDrawableFromZipPackageData:EshContentProperties::getXmlEquivalent(v7 + 12) foundInObject:v5 state:v6];
  v9 = objc_opt_class();
  v10 = TSUDynamicCast(v9, v8);
  v11 = v10;
  if (!v10)
  {

LABEL_10:
    v11 = objc_alloc_init(OADGroup);
    [OABContent readFromContainer:v5 toDrawable:v11 state:v6];
    var2 = v7[11].var2;
    [(OADGroup *)v11 setLogicalBounds:var2[7], var2[8], (var2[9] - var2[7]), (var2[10] - var2[8])];
    [v6 pushGroup:v11];
    v15 = [OABDrawable readDrawablesFromContainer:v5 state:v6];
    [(OADGroup *)v11 addChildren:v15];

    v16 = [v6 popGroup];
    [objc_msgSend(v6 "client")];
    goto LABEL_11;
  }

  if (![(OADGroup *)v10 childCount])
  {
    [v6 pushGroup:v11];
    v12 = [OABDrawable readDrawablesFromContainer:v5 state:v6];
    [(OADGroup *)v11 addChildren:v12];

    v13 = [v6 popGroup];
  }

LABEL_11:

  return v11;
}

@end