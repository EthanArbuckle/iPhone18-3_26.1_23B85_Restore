@interface NSString
+ (BOOL)ds_fileNameHasClaimedFileExtension:(id)a3;
+ (id)ds_commonParentPathForItemURLs:(id)a3;
@end

@implementation NSString

+ (id)ds_commonParentPathForItemURLs:(id)a3
{
  v19 = a3;
  if ([v19 count])
  {
    v32 = 0;
    v33 = &v32;
    v34 = 0x3032000000;
    v35 = sub_10000A354;
    v36 = sub_10000A364;
    v3 = [v19 firstObject];
    v4 = [v3 URLByDeletingLastPathComponent];
    v37 = [v4 pathComponents];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v5 = [v19 subarrayWithRange:{1, objc_msgSend(v19, "count") - 1}];
    v6 = [v5 countByEnumeratingWithState:&v28 objects:v38 count:16];
    if (v6)
    {
      v7 = *v29;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v29 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = [*(*(&v28 + 1) + 8 * i) pathComponents];
          v24 = 0;
          v25 = &v24;
          v26 = 0x2020000000;
          v27 = 0;
          v20[0] = _NSConcreteStackBlock;
          v20[1] = 3221225472;
          v20[2] = sub_10000A36C;
          v20[3] = &unk_10002CF88;
          v22 = &v32;
          v23 = &v24;
          v10 = v9;
          v21 = v10;
          [v10 enumerateObjectsUsingBlock:v20];
          if ((v25[3] & 1) == 0)
          {
            if ([v10 count])
            {
              v11 = [v10 subarrayWithRange:{0, objc_msgSend(v10, "count") - 1}];
              v12 = v33[5];
              v33[5] = v11;
            }

            else
            {
              v13 = v5;
              v14 = v33;
              v15 = v10;
              v12 = v14[5];
              v14[5] = v15;
              v5 = v13;
            }
          }

          _Block_object_dispose(&v24, 8);
        }

        v6 = [v5 countByEnumeratingWithState:&v28 objects:v38 count:16];
      }

      while (v6);
    }

    v16 = [NSString pathWithComponents:v33[5]];
    if (([v16 hasSuffix:@"/"] & 1) == 0)
    {
      v17 = [v16 stringByAppendingString:@"/"];

      v16 = v17;
    }

    _Block_object_dispose(&v32, 8);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (BOOL)ds_fileNameHasClaimedFileExtension:(id)a3
{
  v3 = a3;
  v4 = [v3 pathExtension];
  if ([v4 length])
  {
    v5 = [v3 pathExtension];
    v6 = [UTType typeWithFilenameExtension:v5 conformingToType:UTTypeItem];

    if ([v6 isDeclared])
    {
      v7 = 1;
    }

    else
    {
      v8 = [LSClaimBinding alloc];
      v9 = [v6 identifier];
      v10 = [v8 initWithTypeIdentifier:v9 error:0];

      v11 = [v10 bundleRecord];
      v12 = [v11 executableURL];

      v7 = v12 != 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end