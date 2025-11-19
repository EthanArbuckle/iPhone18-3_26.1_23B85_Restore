@interface CMCaptureDiagnosticExtension
- (id)attachmentsForParameters:(id)a3;
@end

@implementation CMCaptureDiagnosticExtension

- (id)attachmentsForParameters:(id)a3
{
  v34[0] = 0;
  v3 = +[NSMutableArray array];
  v4 = +[NSMutableArray array];
  if (_os_feature_enabled_impl())
  {
    v5 = @"/private/var/mobile/tmp/com.apple.cameracaptured/CMCaptureTailspins";
  }

  else
  {
    v5 = @"/private/var/mobile/tmp/CMCaptureTailspins";
  }

  [v4 addObject:v5];
  [v4 addObject:@"/private/var/mobile/tmp/com.apple.deferredmediad/CMCaptureTailspins"];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = [v4 countByEnumeratingWithState:&v30 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v31;
    v9 = &NSExtensionMain_ptr;
    v19 = *v31;
    v20 = v4;
    do
    {
      v10 = 0;
      v21 = v7;
      do
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v30 + 1) + 8 * v10);
        if ([objc_msgSend(v9[4] "defaultManager")] && v34[0] == 1)
        {
          v22 = v10;
          v28 = 0;
          v12 = [objc_msgSend(v9[4] "defaultManager")];
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v13 = [v12 countByEnumeratingWithState:&v24 objects:v23 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v25;
            do
            {
              for (i = 0; i != v14; i = i + 1)
              {
                if (*v25 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = *(*(&v24 + 1) + 8 * i);
                if ([objc_msgSend(v17 "pathExtension")])
                {
                  [v3 addObject:{+[DEAttachmentItem attachmentWithPath:](DEAttachmentItem, "attachmentWithPath:", +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@/%@", v11, v17))}];
                }
              }

              v14 = [v12 countByEnumeratingWithState:&v24 objects:v23 count:16];
            }

            while (v14);
          }

          v8 = v19;
          v4 = v20;
          v9 = &NSExtensionMain_ptr;
          v7 = v21;
          v10 = v22;
        }

        v10 = v10 + 1;
      }

      while (v10 != v7);
      v7 = [v4 countByEnumeratingWithState:&v30 objects:v29 count:16];
    }

    while (v7);
  }

  return v3;
}

@end