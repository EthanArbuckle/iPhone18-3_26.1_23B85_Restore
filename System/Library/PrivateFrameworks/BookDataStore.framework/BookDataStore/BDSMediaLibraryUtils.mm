@interface BDSMediaLibraryUtils
+ (id)_storeRepresentativeItem:(id)a3;
+ (id)representativeDAAPMediaItemsWithAssetId:(id)a3;
@end

@implementation BDSMediaLibraryUtils

+ (id)representativeDAAPMediaItemsWithAssetId:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [MEMORY[0x1E6970618] audiobooksQuery];
  [v6 setIgnoreSystemFilterPredicates:1];
  if (v6)
  {
    v7 = [MEMORY[0x1E6970610] predicateWithValue:v4 forProperty:*MEMORY[0x1E696FB60]];
    [v6 addFilterPredicate:v7];
    v8 = [v6 collections];
    if ([v8 count])
    {
      v9 = [v8 lastObject];
      v10 = [a1 _storeRepresentativeItem:v9];

      if (v10)
      {
LABEL_12:

        goto LABEL_13;
      }

      v11 = BDSCloudKitAudiobookLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1E4701C30(v4, v11);
      }
    }

    else
    {
      v11 = BDSCloudKitAudiobookLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1E4701CA8(v4, v11);
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

+ (id)_storeRepresentativeItem:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [a3 items];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 valueForProperty:v7];
        if ([v9 mediaType] == 4 && objc_msgSend(v10, "longLongValue"))
        {
          v11 = v9;

          goto LABEL_12;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
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