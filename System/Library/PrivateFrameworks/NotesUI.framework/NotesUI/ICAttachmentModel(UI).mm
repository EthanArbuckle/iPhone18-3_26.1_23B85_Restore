@interface ICAttachmentModel(UI)
+ (id)fileIconForURL:()UI withPreferredSize:uti:;
- (id)activityItems;
- (id)fileIconWithPreferredSize:()UI;
- (id)genericBrickThumbnailCreator;
- (id)genericListThumbnailCreator;
- (id)quicklookPreviewItems;
@end

@implementation ICAttachmentModel(UI)

- (id)genericListThumbnailCreator
{
  if ([a1 hasThumbnailImage])
  {
    v1 = &__block_literal_global_31;
  }

  else
  {
    v1 = 0;
  }

  v2 = _Block_copy(v1);

  return v2;
}

- (id)genericBrickThumbnailCreator
{
  if ([a1 hasThumbnailImage])
  {
    v1 = &__block_literal_global_12_0;
  }

  else
  {
    v1 = 0;
  }

  v2 = _Block_copy(v1);

  return v2;
}

+ (id)fileIconForURL:()UI withPreferredSize:uti:
{
  v30 = *MEMORY[0x1E69E9840];
  v9 = a6;
  if (a5)
  {
    v10 = [MEMORY[0x1E69CDA18] interactionControllerWithURL:a5];
    v11 = v10;
    if (v9)
    {
      [v10 setUTI:v9];
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v12 = [v11 icons];
    v13 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v26;
LABEL_6:
      v16 = 0;
      while (1)
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v25 + 1) + 8 * v16);
        [v17 size];
        if (v18 == a1)
        {
          [v17 size];
          if (v19 <= a2)
          {
            break;
          }
        }

        [v17 size];
        if (v20 <= a1)
        {
          [v17 size];
          if (v21 == a2)
          {
            break;
          }
        }

        if (v14 == ++v16)
        {
          v14 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
          if (v14)
          {
            goto LABEL_6;
          }

          goto LABEL_15;
        }
      }

      v22 = v17;

      if (v22)
      {
        goto LABEL_18;
      }
    }

    else
    {
LABEL_15:
    }

    v23 = [v11 icons];
    v22 = [v23 lastObject];

LABEL_18:
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (id)quicklookPreviewItems
{
  v4[1] = *MEMORY[0x1E69E9840];
  v1 = [a1 attachment];
  v4[0] = v1;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (id)activityItems
{
  v21[1] = *MEMORY[0x1E69E9840];
  v2 = [a1 attachment];
  v3 = [v2 media];
  v4 = [v3 mediaURL];

  v5 = [a1 attachment];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 attachmentModel];
    v8 = [a1 attachment];
    v9 = [v8 media];
    v10 = [v9 mediaURL];
    v11 = [v7 generateHardLinkURLIfNecessaryForURL:v10];

    if (v11)
    {
      v21[0] = v11;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    }

    else
    {
      [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"((url) != nil)" functionName:"-[ICAttachmentModel(UI) activityItems]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "url"}];
      v12 = MEMORY[0x1E695E0F0];
    }

    goto LABEL_7;
  }

  v13 = [v5 URL];

  if (v13)
  {
    v11 = [a1 attachment];
    v14 = [v11 URL];
    v20 = v14;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];

LABEL_7:
    goto LABEL_8;
  }

  v12 = MEMORY[0x1E695E0F0];
LABEL_8:
  v15 = [ICAttachmentActivityItemSource alloc];
  v16 = [a1 attachment];
  v17 = [(ICAttachmentActivityItemSource *)v15 initWithAttachment:v16];
  v18 = [v12 arrayByAddingObject:v17];

  return v18;
}

- (id)fileIconWithPreferredSize:()UI
{
  v6 = objc_opt_class();
  v7 = [a1 attachment];
  v8 = [v7 media];
  v9 = [v8 mediaURL];
  v10 = [v6 fileIconForURL:v9 withPreferredSize:{a2, a3}];

  return v10;
}

@end