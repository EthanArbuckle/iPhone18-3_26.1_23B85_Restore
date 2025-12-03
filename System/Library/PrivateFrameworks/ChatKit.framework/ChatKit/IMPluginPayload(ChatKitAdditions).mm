@interface IMPluginPayload(ChatKitAdditions)
- (id)__ck_photoCompositionMediaObjectsWithKeyToTrasferGUIDMap:()ChatKitAdditions;
- (id)__ck_photoCompositionString;
- (id)__ck_superFormatStringTransferGUIDs:()ChatKitAdditions mediaObjects:;
- (id)cleansedCopy;
@end

@implementation IMPluginPayload(ChatKitAdditions)

- (id)cleansedCopy
{
  v1 = [self copy];
  stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
  [v1 setMessageGUID:stringGUID];

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
  attachments = [self attachments];
  v7 = [attachments countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(attachments);
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

      v8 = [attachments countByEnumeratingWithState:&v15 objects:v19 count:16];
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
  attachments = [self attachments];
  v3 = [attachments countByEnumeratingWithState:&v15 objects:v21 count:16];
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
          objc_enumerationMutation(attachments);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;
          mediaObjectFromPayload = [v9 mediaObjectFromPayload];

          if (mediaObjectFromPayload)
          {
            v19 = @"MediaObjectForTextAttachment";
            v20 = mediaObjectFromPayload;
            v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
            v12 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v6 attributes:v11];
            [v14 appendAttributedString:v12];
          }
        }
      }

      v4 = [attachments countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v4);
  }

  return v14;
}

- (id)__ck_superFormatStringTransferGUIDs:()ChatKitAdditions mediaObjects:
{
  v61[2] = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v5 = objc_alloc_init(MEMORY[0x1E696AD40]);
  breadcrumbText = [self breadcrumbText];
  v7 = [breadcrumbText length];

  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x1E696AAB0]);
    v9 = *MEMORY[0x1E69A5F20];
    v60[0] = *MEMORY[0x1E69A5F28];
    breadcrumbText2 = [self breadcrumbText];
    v60[1] = *MEMORY[0x1E69A5F30];
    v61[0] = breadcrumbText2;
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
  attachments = [self attachments];
  v14 = [attachments countByEnumeratingWithState:&v53 objects:v59 count:16];
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
          objc_enumerationMutation(attachments);
        }

        v18 = *(*(&v53 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = v18;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            attributionInfo = [self attributionInfo];
          }

          else
          {
            attributionInfo = 0;
          }

          v22 = +[CKMediaObjectManager sharedInstance];
          LOBYTE(v45) = [self shouldHideAttachments];
          mediaObjectFromPayload = [v22 mediaObjectWithFileURL:v19 filename:0 transcoderUserInfo:0 attributionInfo:attributionInfo adaptiveImageGlyphContentIdentifier:0 adaptiveImageGlyphContentDescription:0 hideAttachment:v45];

          if (!mediaObjectFromPayload)
          {
            goto LABEL_19;
          }

LABEL_16:
          [array2 addObject:mediaObjectFromPayload];
          transferGUID = [mediaObjectFromPayload transferGUID];
          [array addObject:transferGUID];
          v24 = objc_alloc(MEMORY[0x1E696AAB0]);
          v57 = v49;
          v58 = transferGUID;
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
          mediaObjectFromPayload = 0;
          goto LABEL_19;
        }

        mediaObjectFromPayload = [v18 mediaObjectFromPayload];
        if (mediaObjectFromPayload)
        {
          goto LABEL_16;
        }

LABEL_19:
      }

      v15 = [attachments countByEnumeratingWithState:&v53 objects:v59 count:16];
    }

    while (v15);
  }

  text = [self text];
  v28 = MEMORY[0x1E69A6A18];
  if (text)
  {
    v29 = text;
    pluginBundleID = [self pluginBundleID];
    v31 = [pluginBundleID isEqualToString:*v28];

    if ((v31 & 1) == 0)
    {
      text2 = [self text];
      [v48 appendAttributedString:text2];
    }
  }

  v33 = [self url];

  if (v33)
  {
    v34 = objc_alloc(MEMORY[0x1E696AAB0]);
    v35 = [self url];
    absoluteString = [v35 absoluteString];
    v37 = [v34 initWithString:absoluteString];
    [v48 appendAttributedString:v37];
  }

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isRichLinkImprovementsEnabled = [mEMORY[0x1E69A8070] isRichLinkImprovementsEnabled];

  if (isRichLinkImprovementsEnabled)
  {
    pluginBundleID2 = [self pluginBundleID];
    v41 = [pluginBundleID2 isEqualToString:*v28];

    if (v41)
    {
      v42 = [v48 length];
      [v48 addAttribute:*MEMORY[0x1E69A70A8] value:MEMORY[0x1E695E118] range:{0, v42}];
    }
  }

  if (a4)
  {
    *a4 = [array2 copy];
  }

  if (a3)
  {
    *a3 = [array copy];
  }

  __im_attributedStringByAssigningMessagePartNumbers = [v48 __im_attributedStringByAssigningMessagePartNumbers];

  return __im_attributedStringByAssigningMessagePartNumbers;
}

@end