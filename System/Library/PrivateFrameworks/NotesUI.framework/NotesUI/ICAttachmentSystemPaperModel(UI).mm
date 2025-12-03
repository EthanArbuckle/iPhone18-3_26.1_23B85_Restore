@interface ICAttachmentSystemPaperModel(UI)
- (ICAttachmentSystemPaperActivityItemSource)activityItem;
- (id)activityItems;
- (id)imageForActivityItem;
- (void)drawPreviewInRect:()UI;
@end

@implementation ICAttachmentSystemPaperModel(UI)

- (id)imageForActivityItem
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__25;
  v12 = __Block_byref_object_dispose__25;
  v13 = 0;
  attachment = [self attachment];
  managedObjectContext = [attachment managedObjectContext];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__ICAttachmentSystemPaperModel_UI__imageForActivityItem__block_invoke;
  v7[3] = &unk_1E8468FA8;
  v7[4] = self;
  v7[5] = &v8;
  [managedObjectContext performBlockAndWait:v7];

  if (v9[5])
  {
    v4 = [MEMORY[0x1E69DCAB8] ic_imageWithData:?];
    v5 = [ICAttachmentPreviewImageLoader orientedImage:v4 withBackground:1];
  }

  else
  {
    v5 = 0;
  }

  _Block_object_dispose(&v8, 8);

  return v5;
}

- (ICAttachmentSystemPaperActivityItemSource)activityItem
{
  v2 = [ICAttachmentSystemPaperActivityItemSource alloc];
  attachment = [self attachment];
  v4 = [(ICAttachmentActivityItemSource *)v2 initWithAttachment:attachment];

  return v4;
}

- (id)activityItems
{
  v10[1] = *MEMORY[0x1E69E9840];
  activityItem = [self activityItem];
  v3 = activityItem;
  if (activityItem)
  {
    v10[0] = activityItem;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  v5 = [ICAttachmentActivityItemSource alloc];
  attachment = [self attachment];
  v7 = [(ICAttachmentActivityItemSource *)v5 initWithAttachment:attachment];
  v8 = [v4 arrayByAddingObject:v7];

  return v8;
}

- (void)drawPreviewInRect:()UI
{
  currentInfo = [MEMORY[0x1E69B7678] currentInfo];
  attachment = [self attachment];
  v12 = [ICSystemPaperImageGenerator imageGeneratorWithPaperAttachment:attachment];

  [v12 setSixChannelBlendingEnabled:0];
  CurrentContext = UIGraphicsGetCurrentContext();
  ClipBoundingBox = CGContextGetClipBoundingBox(CurrentContext);
  v38.origin.x = a2;
  v38.origin.y = a3;
  v38.size.width = a4;
  v38.size.height = a5;
  v39 = CGRectIntersection(v38, ClipBoundingBox);
  x = v39.origin.x;
  y = v39.origin.y;
  width = v39.size.width;
  height = v39.size.height;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __54__ICAttachmentSystemPaperModel_UI__drawPreviewInRect___block_invoke;
  v23[3] = &unk_1E846AD18;
  v26 = a2;
  v27 = a3;
  v28 = a4;
  v29 = a5;
  v23[4] = self;
  v25 = &v34;
  v18 = v12;
  v24 = v18;
  v30 = x;
  v31 = y;
  v32 = width;
  v33 = height;
  [currentInfo performAsDefaultAppearance:v23];
  if ((v35[3] & 1) == 0)
  {
    attachment2 = [self attachment];
    fallbackImageData = [attachment2 fallbackImageData];

    if (fallbackImageData)
    {
      v21 = [MEMORY[0x1E69DCAB8] ic_imageWithData:fallbackImageData];
      v22 = [ICAttachmentPreviewImageLoader orientedImage:v21 withBackground:0];

      [v22 drawInRect:{a2, a3, a4, a5}];
    }
  }

  _Block_object_dispose(&v34, 8);
}

@end