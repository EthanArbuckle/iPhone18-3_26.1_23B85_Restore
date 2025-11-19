@interface IMPluginPayload(ChatKitAdditions)
- (id)__ck_photoCompositionMediaObjectsWithKeyToTrasferGUIDMap:()ChatKitAdditions;
- (id)__ck_photoCompositionString;
- (id)__ck_superFormatStringTransferGUIDs:()ChatKitAdditions mediaObjects:;
- (id)cleansedCopy;
@end

@implementation IMPluginPayload(ChatKitAdditions)

- (id)cleansedCopy
{
  v1 = [a1 copy];
  v2 = [MEMORY[0x1E696AEC0] stringGUID];
  [v1 setMessageGUID:v2];

  [v1 setDatasource:0];

  return v1;
}

- (id)__ck_photoCompositionMediaObjectsWithKeyToTrasferGUIDMap:()ChatKitAdditions
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [a1 attachments];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [v11 mediaObjectFromPayloadWithKeyToTrasferGUIDMap:v4];
          if (v12)
          {
            v13 = v12;
            [v5 addObject:v12];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)__ck_photoCompositionString
{
  v22 = *MEMORY[0x1E69E9840];
  v14 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [a1 attachments];
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    v6 = *MEMORY[0x1E69A5F00];
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;
          v10 = [v9 mediaObjectFromPayload];

          if (v10)
          {
            v19 = @"MediaObjectForTextAttachment";
            v20 = v10;
            v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
            v12 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v6 attributes:v11];
            [v14 appendAttributedString:v12];
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v4);
  }

  return v14;
}

- (id)__ck_superFormatStringTransferGUIDs:()ChatKitAdditions mediaObjects:
{
  v61[2] = *MEMORY[0x1E69E9840];
  v51 = [MEMORY[0x1E695DF70] array];
  v52 = [MEMORY[0x1E695DF70] array];
  v5 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v6 = [a1 breadcrumbText];
  v7 = [v6 length];

  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x1E696AAB0]);
    v9 = *MEMORY[0x1E69A5F20];
    v60[0] = *MEMORY[0x1E69A5F28];
    v10 = [a1 breadcrumbText];
    v60[1] = *MEMORY[0x1E69A5F30];
    v61[0] = v10;
    v61[1] = &unk_1F04E85E0;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:v60 count:2];
    v12 = [v8 initWithString:v9 attributes:v11];

    [v5 appendAttributedString:v12];
  }

  v48 = v5;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v13 = [a1 attachments];
  v14 = [v13 countByEnumeratingWithState:&v53 objects:v59 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v54;
    v50 = *MEMORY[0x1E69A5F00];
    v49 = *MEMORY[0x1E69A5F68];
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v54 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v53 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = v18;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v20 = [a1 attributionInfo];
          }

          else
          {
            v20 = 0;
          }

          v22 = +[CKMediaObjectManager sharedInstance];
          LOBYTE(v45) = [a1 shouldHideAttachments];
          v21 = [v22 mediaObjectWithFileURL:v19 filename:0 transcoderUserInfo:0 attributionInfo:v20 adaptiveImageGlyphContentIdentifier:0 adaptiveImageGlyphContentDescription:0 hideAttachment:v45];

          if (!v21)
          {
            goto LABEL_19;
          }

LABEL_16:
          [v52 addObject:v21];
          v23 = [v21 transferGUID];
          [v51 addObject:v23];
          v24 = objc_alloc(MEMORY[0x1E696AAB0]);
          v57 = v49;
          v58 = v23;
          v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
          v26 = [v24 initWithString:v50 attributes:v25];

          if (v26)
          {
            [v48 appendAttributedString:v26];
          }

          goto LABEL_19;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v21 = 0;
          goto LABEL_19;
        }

        v21 = [v18 mediaObjectFromPayload];
        if (v21)
        {
          goto LABEL_16;
        }

LABEL_19:
      }

      v15 = [v13 countByEnumeratingWithState:&v53 objects:v59 count:16];
    }

    while (v15);
  }

  v27 = [a1 text];
  v28 = MEMORY[0x1E69A6A18];
  if (v27)
  {
    v29 = v27;
    v30 = [a1 pluginBundleID];
    v31 = [v30 isEqualToString:*v28];

    if ((v31 & 1) == 0)
    {
      v32 = [a1 text];
      [v48 appendAttributedString:v32];
    }
  }

  v33 = [a1 url];

  if (v33)
  {
    v34 = objc_alloc(MEMORY[0x1E696AAB0]);
    v35 = [a1 url];
    v36 = [v35 absoluteString];
    v37 = [v34 initWithString:v36];
    [v48 appendAttributedString:v37];
  }

  v38 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v39 = [v38 isRichLinkImprovementsEnabled];

  if (v39)
  {
    v40 = [a1 pluginBundleID];
    v41 = [v40 isEqualToString:*v28];

    if (v41)
    {
      v42 = [v48 length];
      [v48 addAttribute:*MEMORY[0x1E69A70A8] value:MEMORY[0x1E695E118] range:{0, v42}];
    }
  }

  if (a4)
  {
    *a4 = [v52 copy];
  }

  if (a3)
  {
    *a3 = [v51 copy];
  }

  v43 = [v48 __im_attributedStringByAssigningMessagePartNumbers];

  return v43;
}

@end