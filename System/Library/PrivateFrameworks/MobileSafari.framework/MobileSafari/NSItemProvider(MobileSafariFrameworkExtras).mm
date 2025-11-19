@interface NSItemProvider(MobileSafariFrameworkExtras)
+ (void)safari_loadObjectsFromItemProviders:()MobileSafariFrameworkExtras usingLoader:completionHandler:;
- (void)safari_loadObjectOfClasses:()MobileSafariFrameworkExtras completionHandler:;
- (void)safari_registerFileRepresentationForQuickLookDocument:()MobileSafariFrameworkExtras;
@end

@implementation NSItemProvider(MobileSafariFrameworkExtras)

+ (void)safari_loadObjectsFromItemProviders:()MobileSafariFrameworkExtras usingLoader:completionHandler:
{
  v7 = a5;
  v8 = a3;
  v9 = dispatch_group_create();
  v10 = [MEMORY[0x1E695DF90] dictionary];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __113__NSItemProvider_MobileSafariFrameworkExtras__safari_loadObjectsFromItemProviders_usingLoader_completionHandler___block_invoke;
  aBlock[3] = &unk_1E721ED98;
  v11 = v10;
  v28 = v11;
  v12 = _Block_copy(aBlock);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __113__NSItemProvider_MobileSafariFrameworkExtras__safari_loadObjectsFromItemProviders_usingLoader_completionHandler___block_invoke_2;
  v23[3] = &unk_1E721EDE8;
  v13 = v9;
  v25 = v12;
  v26 = a4;
  v24 = v13;
  v14 = v12;
  [v8 enumerateObjectsUsingBlock:v23];

  v15 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __113__NSItemProvider_MobileSafariFrameworkExtras__safari_loadObjectsFromItemProviders_usingLoader_completionHandler___block_invoke_4;
  block[3] = &unk_1E721B5D8;
  v20 = v13;
  v21 = v11;
  v22 = v7;
  v16 = v7;
  v17 = v11;
  v18 = v13;
  dispatch_async(v15, block);
}

- (void)safari_loadObjectOfClasses:()MobileSafariFrameworkExtras completionHandler:
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        if ([a1 canLoadObjectOfClass:v13])
        {
          v18[0] = MEMORY[0x1E69E9820];
          v18[1] = 3221225472;
          v18[2] = __92__NSItemProvider_MobileSafariFrameworkExtras__safari_loadObjectOfClasses_completionHandler___block_invoke;
          v18[3] = &unk_1E721EE10;
          v19 = v7;
          v17 = [a1 loadObjectOfClass:v13 completionHandler:v18];

          goto LABEL_13;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v26 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v14 = WBS_LOG_CHANNEL_PREFIXItemProvider();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = v14;
    v16 = [v8 componentsJoinedByString:{@", "}];
    *buf = 138543362;
    v25 = v16;
    _os_log_impl(&dword_18B7AC000, v15, OS_LOG_TYPE_INFO, "Did not find object matching allowed classes: %{public}@", buf, 0xCu);
  }

  (*(v7 + 2))(v7, 0, 0);
LABEL_13:
}

- (void)safari_registerFileRepresentationForQuickLookDocument:()MobileSafariFrameworkExtras
{
  v4 = a3;
  v5 = [v4 fileName];
  [a1 setSuggestedName:v5];

  v6 = [v4 inferredUTI];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __101__NSItemProvider_MobileSafariFrameworkExtras__safari_registerFileRepresentationForQuickLookDocument___block_invoke;
  v8[3] = &unk_1E721EE60;
  v9 = v4;
  v7 = v4;
  [a1 registerFileRepresentationForTypeIdentifier:v6 fileOptions:0 visibility:0 loadHandler:v8];
}

@end