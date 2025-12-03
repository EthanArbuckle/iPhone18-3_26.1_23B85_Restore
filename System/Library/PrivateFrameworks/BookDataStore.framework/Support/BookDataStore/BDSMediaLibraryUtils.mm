@interface BDSMediaLibraryUtils
+ (id)_storeRepresentativeItem:(id)item;
+ (id)representativeDAAPMediaItemsWithAssetId:(id)id;
@end

@implementation BDSMediaLibraryUtils

+ (id)representativeDAAPMediaItemsWithAssetId:(id)id
{
  idCopy = id;
  v5 = objc_autoreleasePoolPush();
  v6 = +[MPMediaQuery audiobooksQuery];
  [v6 setIgnoreSystemFilterPredicates:1];
  if (v6)
  {
    v7 = [MPMediaPropertyPredicate predicateWithValue:idCopy forProperty:MPMediaItemPropertyStoreID];
    [v6 addFilterPredicate:v7];
    collections = [v6 collections];
    if ([collections count])
    {
      lastObject = [collections lastObject];
      v10 = [self _storeRepresentativeItem:lastObject];

      if (v10)
      {
LABEL_12:

        goto LABEL_13;
      }

      v11 = sub_10000DC90();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1001C29F8(idCopy, v11);
      }
    }

    else
    {
      v11 = sub_10000DC90();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1001C2A70(idCopy, v11);
      }
    }

    v10 = 0;
    goto LABEL_12;
  }

  v7 = sub_10000DC90();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1001C2AE8(v7);
  }

  v10 = 0;
LABEL_13:

  objc_autoreleasePoolPop(v5);

  return v10;
}

+ (id)_storeRepresentativeItem:(id)item
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  items = [item items];
  v4 = [items countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    v7 = MPMediaItemPropertyPurchaseHistoryID;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(items);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 valueForProperty:v7];
        if ([v9 mediaType] == 4 && objc_msgSend(v10, "longLongValue"))
        {
          v11 = v9;

          goto LABEL_12;
        }
      }

      v5 = [items countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_12:

  return v11;
}

@end