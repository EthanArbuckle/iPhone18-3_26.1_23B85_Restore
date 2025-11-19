@interface ICThumbnailGeneratorNoteAttachments
- (void)generateThumbnailWithConfiguration:(id)a3 completion:(id)a4;
- (void)postProcessThumbnail:(id)a3 configuration:(id)a4;
@end

@implementation ICThumbnailGeneratorNoteAttachments

- (void)generateThumbnailWithConfiguration:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[ICThumbnailDescription alloc] initWithConfiguration:v6];
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__11;
  v28 = __Block_byref_object_dispose__11;
  v29 = 0;
  v9 = [(ICThumbnailGenerator *)self managedObjectContext];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __85__ICThumbnailGeneratorNoteAttachments_generateThumbnailWithConfiguration_completion___block_invoke;
  v20[3] = &unk_1E8469190;
  v10 = v6;
  v21 = v10;
  v22 = self;
  v23 = &v24;
  [v9 performBlockAndWait:v20];

  if (v25[5])
  {
    v11 = [ICThumbnailGeneratorAttachment alloc];
    v12 = [(ICThumbnailGenerator *)self managedObjectContext];
    v13 = [(ICThumbnailGenerator *)v11 initWithManagedObjectContext:v12];

    v14 = v25[5];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __85__ICThumbnailGeneratorNoteAttachments_generateThumbnailWithConfiguration_completion___block_invoke_2;
    v15[3] = &unk_1E8469D28;
    v16 = v8;
    v17 = self;
    v18 = v10;
    v19 = v7;
    [(ICThumbnailGeneratorAttachment *)v13 generateThumbnailWithConfiguration:v14 completion:v15];
  }

  else
  {
    (*(v7 + 2))(v7, v8);
  }

  _Block_object_dispose(&v24, 8);
}

void __85__ICThumbnailGeneratorNoteAttachments_generateThumbnailWithConfiguration_completion___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) thumbnailType] == 2)
  {
    v2 = MEMORY[0x1E69B77F0];
    v3 = [*(a1 + 32) associatedObjectIdentifier];
    v4 = [*(a1 + 40) managedObjectContext];
    v5 = [v2 noteWithIdentifier:v3 context:v4];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v5 updateThumbnailAttachmentIdentifier])
      {
        v6 = [MEMORY[0x1E696AD88] defaultCenter];
        v7 = *MEMORY[0x1E69B74E0];
        v8 = [v5 objectID];
        [v6 postNotificationName:v7 object:v8];

        v9 = [*(a1 + 40) managedObjectContext];
        [v9 ic_save];

        v10 = [MEMORY[0x1E696AD88] defaultCenter];
        v11 = *MEMORY[0x1E69B74D8];
        v12 = [v5 objectID];
        [v10 postNotificationName:v11 object:v12];
      }

      v13 = [v5 thumbnailAttachmentIdentifier];

      if (v13)
      {
        v14 = MEMORY[0x1E69B7680];
        v15 = [v5 thumbnailAttachmentIdentifier];
        v16 = [*(a1 + 40) managedObjectContext];
        v33 = [v14 attachmentWithIdentifier:v15 context:v16];
      }

      else
      {
        v33 = 0;
      }

      v20 = [*(a1 + 40) managedObjectContext];
      [v20 ic_refreshObject:v5 mergeChanges:0];

      goto LABEL_13;
    }
  }

  else
  {
    if ([*(a1 + 32) thumbnailType] != 3)
    {
      return;
    }

    v17 = MEMORY[0x1E69B7680];
    v18 = [*(a1 + 32) associatedObjectIdentifier];
    v19 = [*(a1 + 40) managedObjectContext];
    v5 = [v17 attachmentWithIdentifier:v18 context:v19];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v5;
      v33 = v5;
      goto LABEL_13;
    }
  }

  v33 = 0;
LABEL_13:

  if (v33)
  {
    v21 = [ICThumbnailConfiguration alloc];
    [*(a1 + 32) preferredSize];
    v23 = v22;
    v25 = v24;
    [*(a1 + 32) scale];
    v27 = v26;
    v28 = [*(a1 + 32) appearanceInfo];
    v29 = [(ICThumbnailConfiguration *)v21 initForAttachment:v33 preferredSize:v28 scale:v23 appearanceInfo:v25, v27];
    v30 = *(*(a1 + 48) + 8);
    v31 = *(v30 + 40);
    *(v30 + 40) = v29;

    v32 = [*(a1 + 40) managedObjectContext];
    [v32 ic_refreshObject:v33 mergeChanges:0];
  }
}

void __85__ICThumbnailGeneratorNoteAttachments_generateThumbnailWithConfiguration_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  [*(a1 + 32) setImageScaling:{objc_msgSend(v6, "imageScaling")}];
  [*(a1 + 32) setThumbnailDecorationType:{objc_msgSend(v6, "thumbnailDecorationType")}];
  v3 = [v6 associatedObjectIdentifiers];
  [*(a1 + 32) setAssociatedObjectIdentifiers:v3];

  v4 = [v6 image];

  if (v4)
  {
    v5 = [v6 image];
    [*(a1 + 32) setImage:v5];

    [*(a1 + 40) postProcessThumbnail:*(a1 + 32) configuration:*(a1 + 48)];
  }

  (*(*(a1 + 56) + 16))();
}

- (void)postProcessThumbnail:(id)a3 configuration:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 image];
  [v6 preferredSize];
  v9 = v8;
  v11 = v10;
  v12 = [MEMORY[0x1E69DCA80] defaultFormat];
  [v6 scale];
  [v12 setScale:?];
  v13 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:v12 format:{v9, v11}];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __74__ICThumbnailGeneratorNoteAttachments_postProcessThumbnail_configuration___block_invoke;
  v18[3] = &unk_1E8469D78;
  v22 = v9;
  v23 = v11;
  v19 = v6;
  v20 = v5;
  v21 = v7;
  v14 = v7;
  v15 = v5;
  v16 = v6;
  v17 = [v13 imageWithActions:v18];
  [v15 setImage:v17];
}

void __74__ICThumbnailGeneratorNoteAttachments_postProcessThumbnail_configuration___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  v10 = *MEMORY[0x1E695EFF8];
  v11 = v2;
  v3 = [*(a1 + 32) traitCollection];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __74__ICThumbnailGeneratorNoteAttachments_postProcessThumbnail_configuration___block_invoke_2;
  v4[3] = &unk_1E8469D50;
  v7 = v10;
  v8 = v11;
  v5 = *(a1 + 40);
  v9 = *(a1 + 56);
  v6 = *(a1 + 48);
  [v3 performAsCurrentTraitCollection:v4];
}

void __74__ICThumbnailGeneratorNoteAttachments_postProcessThumbnail_configuration___block_invoke_2(uint64_t a1)
{
  v33 = [MEMORY[0x1E69DC888] colorNamed:@"list_thumbnail_background_color"];
  [v33 setFill];
  UIRectFill(*(a1 + 48));
  v2 = [*(a1 + 32) thumbnailDecorationType];
  v3 = *(a1 + 80);
  if (v2 == 2)
  {
    if (v3 + -20.0 >= 0.0)
    {
      v4 = v3 + -20.0;
    }

    else
    {
      v4 = 0.0;
    }

    v5 = *(a1 + 88);
    if (v5 + -20.0 >= 0.0)
    {
      v6 = v5 + -20.0;
    }

    else
    {
      v6 = 0.0;
    }

    [*(a1 + 40) size];
    v8 = v4 / v7;
    [*(a1 + 40) size];
    if (v8 >= v6 / v9)
    {
      v10 = v6 / v9;
    }

    else
    {
      v10 = v8;
    }
  }

  else
  {
    [*(a1 + 40) size];
    v11 = *(a1 + 88);
    v13 = v3 / v12;
    [*(a1 + 40) size];
    if (v13 >= v11 / v14)
    {
      v10 = v13;
    }

    else
    {
      v10 = v11 / v14;
    }
  }

  [*(a1 + 40) size];
  v16 = v10 * v15;
  [*(a1 + 40) size];
  v18 = v10 * v17;
  v19 = CGRectGetMidX(*(a1 + 48)) - v16 * 0.5;
  [*(a1 + 40) drawInRect:{v19, CGRectGetMidY(*(a1 + 48)) - v18 * 0.5, v16, v18}];
  if ([*(a1 + 32) thumbnailDecorationType] == 1)
  {
    v20 = [MEMORY[0x1E69DCAB8] imageNamed:@"attachment_thumb_video_gradient"];
    v21 = *(a1 + 88);
    [v20 size];
    v23 = v21 - v22;
    v24 = *(a1 + 80);
    [v20 size];
    [v20 drawInRect:{0.0, v23, v24, v25}];
    v26 = [MEMORY[0x1E69DCAB8] imageNamed:@"attachment_thumb_video_camera_icon"];
    v27 = *(a1 + 88);
    [v26 size];
    v29 = v27 - v28;
    [v26 size];
    v31 = v30;
    [v26 size];
    [v26 drawInRect:{6.0, v29, v31, v32}];
  }
}

@end