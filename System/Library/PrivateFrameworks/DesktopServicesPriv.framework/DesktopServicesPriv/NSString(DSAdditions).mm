@interface NSString(DSAdditions)
+ (BOOL)ds_fileNameHasClaimedFileExtension:()DSAdditions;
+ (id)ds_commonParentPathForItemURLs:()DSAdditions;
@end

@implementation NSString(DSAdditions)

+ (id)ds_commonParentPathForItemURLs:()DSAdditions
{
  v40 = *MEMORY[0x1E69E9840];
  v20 = a3;
  if ([v20 count])
  {
    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = __Block_byref_object_copy__0;
    v37 = __Block_byref_object_dispose__0;
    firstObject = [v20 firstObject];
    uRLByDeletingLastPathComponent = [firstObject URLByDeletingLastPathComponent];
    pathComponents = [uRLByDeletingLastPathComponent pathComponents];

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v5 = [v20 subarrayWithRange:{1, objc_msgSend(v20, "count") - 1}];
    v6 = [v5 countByEnumeratingWithState:&v29 objects:v39 count:16];
    if (v6)
    {
      v7 = *v30;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v30 != v7)
          {
            objc_enumerationMutation(v5);
          }

          pathComponents2 = [*(*(&v29 + 1) + 8 * i) pathComponents];
          v25 = 0;
          v26 = &v25;
          v27 = 0x2020000000;
          v28 = 0;
          v21[0] = MEMORY[0x1E69E9820];
          v21[1] = 3221225472;
          v21[2] = __56__NSString_DSAdditions__ds_commonParentPathForItemURLs___block_invoke;
          v21[3] = &unk_1E877F210;
          v23 = &v33;
          v24 = &v25;
          v10 = pathComponents2;
          v22 = v10;
          [v10 enumerateObjectsUsingBlock:v21];
          if ((v26[3] & 1) == 0)
          {
            if ([v10 count])
            {
              v11 = [v10 subarrayWithRange:{0, objc_msgSend(v10, "count") - 1}];
              v12 = v34[5];
              v34[5] = v11;
            }

            else
            {
              v13 = v5;
              v14 = v34;
              v15 = v10;
              v12 = v14[5];
              v14[5] = v15;
              v5 = v13;
            }
          }

          _Block_object_dispose(&v25, 8);
        }

        v6 = [v5 countByEnumeratingWithState:&v29 objects:v39 count:16];
      }

      while (v6);
    }

    v16 = [MEMORY[0x1E696AEC0] pathWithComponents:v34[5]];
    if (([v16 hasSuffix:@"/"] & 1) == 0)
    {
      v17 = [v16 stringByAppendingString:@"/"];

      v16 = v17;
    }

    _Block_object_dispose(&v33, 8);
  }

  else
  {
    v16 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (BOOL)ds_fileNameHasClaimedFileExtension:()DSAdditions
{
  v3 = a3;
  pathExtension = [v3 pathExtension];
  if ([pathExtension length])
  {
    v5 = MEMORY[0x1E6982C40];
    pathExtension2 = [v3 pathExtension];
    v7 = [v5 typeWithFilenameExtension:pathExtension2 conformingToType:*MEMORY[0x1E6982E48]];

    if ([v7 isDeclared])
    {
      v8 = 1;
    }

    else
    {
      v9 = objc_alloc(MEMORY[0x1E6963630]);
      identifier = [v7 identifier];
      v11 = [v9 initWithTypeIdentifier:identifier error:0];

      bundleRecord = [v11 bundleRecord];
      executableURL = [bundleRecord executableURL];

      v8 = executableURL != 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end