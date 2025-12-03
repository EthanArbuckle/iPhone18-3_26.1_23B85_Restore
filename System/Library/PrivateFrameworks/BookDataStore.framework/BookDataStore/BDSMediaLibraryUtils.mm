@interface BDSMediaLibraryUtils
+ (id)_storeRepresentativeItem:(id)item;
+ (id)representativeDAAPMediaItemsWithAssetId:(id)id;
@end

@implementation BDSMediaLibraryUtils

+ (id)representativeDAAPMediaItemsWithAssetId:(id)id
{
  idCopy = id;
  v5 = objc_autoreleasePoolPush();
  audiobooksQuery = [MEMORY[0x1E6970618] audiobooksQuery];
  [audiobooksQuery setIgnoreSystemFilterPredicates:1];
  if (audiobooksQuery)
  {
    v7 = [MEMORY[0x1E6970610] predicateWithValue:idCopy forProperty:*MEMORY[0x1E696FB60]];
    [audiobooksQuery addFilterPredicate:v7];
    collections = [audiobooksQuery collections];
    if ([collections count])
    {
      lastObject = [collections lastObject];
      v10 = [self _storeRepresentativeItem:lastObject];

      if (v10)
      {
LABEL_12:

        goto LABEL_13;
      }

      v11 = BDSCloudKitAudiobookLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1E4701C30(idCopy, v11);
      }
    }

    else
    {
      v11 = BDSCloudKitAudiobookLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1E4701CA8(idCopy, v11);
      }
    }

    v10 = 0;
    goto LABEL_12;
  }

  v7 = BDSCloudKitAudiobookLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1E4701D20(v7);
  }

  v10 = 0;
LABEL_13:

  objc_autoreleasePoolPop(v5);

  return v10;
}

+ (id)_storeRepresentativeItem:(id)item
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  items = [item items];
  v4 = [items countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    v7 = *MEMORY[0x1E696FAC8];
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(items);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 valueForProperty:v7];
        if ([v9 mediaType] == 4 && objc_msgSend(v10, "longLongValue"))
        {
          v11 = v9;

          goto LABEL_12;
        }
      }

      v5 = [items countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_12:

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

@end