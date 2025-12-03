@interface PKPassLibrary
- (id)npkPassWithUniqueID:(id)d;
- (id)npkPassesOfType:(unint64_t)type;
- (void)npkSanitizePass:(id)pass;
@end

@implementation PKPassLibrary

- (void)npkSanitizePass:(id)pass
{
  passCopy = pass;
  embeddedLocationsArray = [passCopy embeddedLocationsArray];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100008250;
  v13[3] = &unk_1000710A0;
  v5 = passCopy;
  v14 = v5;
  [embeddedLocationsArray enumerateObjectsUsingBlock:v13];
  [v5 setEmbeddedLocationsArray:embeddedLocationsArray];
  embeddedBeacons = [v5 embeddedBeacons];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_100008398;
  v11 = &unk_1000710C8;
  v12 = v5;
  v7 = v5;
  [embeddedBeacons enumerateObjectsUsingBlock:&v8];
  [v7 setEmbeddedBeacons:{embeddedBeacons, v8, v9, v10, v11}];
}

- (id)npkPassWithUniqueID:(id)d
{
  dCopy = d;
  v5 = [(PKPassLibrary *)self passWithUniqueID:dCopy];
  v6 = [PKFileDataAccessor alloc];
  v7 = sub_100008598(dCopy);

  v8 = [v6 initWithFileURL:v7 error:0];
  [v5 setDataAccessor:v8];

  [(PKPassLibrary *)self npkSanitizePass:v5];

  return v5;
}

- (id)npkPassesOfType:(unint64_t)type
{
  v4 = [(PKPassLibrary *)self passesOfType:type];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [PKFileDataAccessor alloc];
        uniqueID = [v9 uniqueID];
        v12 = sub_100008598(uniqueID);
        v13 = [v10 initWithFileURL:v12 error:0];
        [v9 setDataAccessor:v13];

        [(PKPassLibrary *)self npkSanitizePass:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  return v4;
}

@end