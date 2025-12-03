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
  if ([self hasThumbnailImage])
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
  if ([self hasThumbnailImage])
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
    icons = [v11 icons];
    v13 = [icons countByEnumeratingWithState:&v25 objects:v29 count:16];
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
          objc_enumerationMutation(icons);
        }

        v17 = *(*(&v25 + 1) + 8 * v16);
        [v17 size];
        if (v18 == self)
        {
          [v17 size];
          if (v19 <= a2)
          {
            break;
          }
        }

        [v17 size];
        if (v20 <= self)
        {
          [v17 size];
          if (v21 == a2)
          {
            break;
          }
        }

        if (v14 == ++v16)
        {
          v14 = [icons countByEnumeratingWithState:&v25 objects:v29 count:16];
          if (v14)
          {
            goto LABEL_6;
          }

          goto LABEL_15;
        }
      }

      lastObject = v17;

      if (lastObject)
      {
        goto LABEL_18;
      }
    }

    else
    {
LABEL_15:
    }

    icons2 = [v11 icons];
    lastObject = [icons2 lastObject];

LABEL_18:
  }

  else
  {
    lastObject = 0;
  }

  return lastObject;
}

- (id)quicklookPreviewItems
{
  v4[1] = *MEMORY[0x1E69E9840];
  attachment = [self attachment];
  v4[0] = attachment;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (id)activityItems
{
  v21[1] = *MEMORY[0x1E69E9840];
  attachment = [self attachment];
  media = [attachment media];
  mediaURL = [media mediaURL];

  attachment2 = [self attachment];
  v6 = attachment2;
  if (mediaURL)
  {
    attachmentModel = [attachment2 attachmentModel];
    attachment3 = [self attachment];
    media2 = [attachment3 media];
    mediaURL2 = [media2 mediaURL];
    attachment4 = [attachmentModel generateHardLinkURLIfNecessaryForURL:mediaURL2];

    if (attachment4)
    {
      v21[0] = attachment4;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    }

    else
    {
      [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"((url) != nil)" functionName:"-[ICAttachmentModel(UI) activityItems]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "url"}];
      v12 = MEMORY[0x1E695E0F0];
    }

    goto LABEL_7;
  }

  v13 = [attachment2 URL];

  if (v13)
  {
    attachment4 = [self attachment];
    v14 = [attachment4 URL];
    v20 = v14;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];

LABEL_7:
    goto LABEL_8;
  }

  v12 = MEMORY[0x1E695E0F0];
LABEL_8:
  v15 = [ICAttachmentActivityItemSource alloc];
  attachment5 = [self attachment];
  v17 = [(ICAttachmentActivityItemSource *)v15 initWithAttachment:attachment5];
  v18 = [v12 arrayByAddingObject:v17];

  return v18;
}

- (id)fileIconWithPreferredSize:()UI
{
  v6 = objc_opt_class();
  attachment = [self attachment];
  media = [attachment media];
  mediaURL = [media mediaURL];
  v10 = [v6 fileIconForURL:mediaURL withPreferredSize:{a2, a3}];

  return v10;
}

@end