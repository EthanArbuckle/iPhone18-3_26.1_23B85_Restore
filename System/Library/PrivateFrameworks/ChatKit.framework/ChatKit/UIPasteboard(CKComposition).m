@interface UIPasteboard(CKComposition)
+ (id)__ck_pasteboardTypeListRTFD;
- (uint64_t)__ck_canCreateComposition;
- (void)__ck_compositionWithContext:()CKComposition completionHandler:;
@end

@implementation UIPasteboard(CKComposition)

+ (id)__ck_pasteboardTypeListRTFD
{
  v3[2] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69637C8];
  v3[0] = *MEMORY[0x1E6963890];
  v3[1] = v0;
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:2];

  return v1;
}

- (uint64_t)__ck_canCreateComposition
{
  v31 = *MEMORY[0x1E69E9840];
  if ([a1 hasStrings] & 1) != 0 || (objc_msgSend(a1, "hasURLs") & 1) != 0 || (objc_msgSend(a1, "hasImages"))
  {
    return 1;
  }

  v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  [v4 addObject:@"com.apple.MobileSMS.PluginPayload"];
  [v4 addObject:@"com.apple.cloudkit.sharingsupport.pre"];
  [v4 addObject:@"com.apple.cloudkit.sharingsupport.post"];
  [v4 addObject:*MEMORY[0x1E696EC00]];
  v5 = [a1 __ck_mediaObjectManager];
  v6 = [v5 allUTITypes];
  [v4 addObjectsFromArray:v6];

  v7 = [MEMORY[0x1E69DCD50] __ck_pasteboardTypeListRTFD];
  [v4 addObjectsFromArray:v7];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = [a1 pasteboardTypes];
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    LOBYTE(v2) = 0;
    v11 = *v26;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v8);
        }

        if ((v2 & 1) != 0 || (v13 = *(*(&v25 + 1) + 8 * i), QLPreviewControllerSupportsContentType()) && ([MEMORY[0x1E69DCD50] __ck_pasteboardTypeListRTFD], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "containsObject:", v13), v14, !v15))
        {
          v2 = 1;
          goto LABEL_29;
        }

        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v16 = [v4 allObjects];
        v17 = [v16 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v22;
          while (2)
          {
            for (j = 0; j != v18; ++j)
            {
              if (*v22 != v19)
              {
                objc_enumerationMutation(v16);
              }

              if (UTTypeEqual(v13, *(*(&v21 + 1) + 8 * j)))
              {
                v2 = 1;
                goto LABEL_24;
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v21 objects:v29 count:16];
            if (v18)
            {
              continue;
            }

            break;
          }
        }

        v2 = 0;
LABEL_24:
      }

      v10 = [v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v2 = 0;
  }

LABEL_29:

  return v2;
}

- (void)__ck_compositionWithContext:()CKComposition completionHandler:
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 itemProviders];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __77__UIPasteboard_CKComposition____ck_compositionWithContext_completionHandler___block_invoke;
  v10[3] = &unk_1E72F16B8;
  v11 = v6;
  v9 = v6;
  [CKComposition compositionFromNonCollaborationItemProviders:v8 builderContext:v7 completionHandler:v10];
}

@end