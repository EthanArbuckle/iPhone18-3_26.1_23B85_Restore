@interface ICAttachmentImageModel(UI)
- (id)activityItems;
- (void)drawPreviewInRect:()UI;
@end

@implementation ICAttachmentImageModel(UI)

- (id)activityItems
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [ICAttachmentImageActivityItemSource alloc];
  v3 = [a1 attachment];
  v4 = [(ICAttachmentActivityItemSource *)v2 initWithAttachment:v3];
  v7[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];

  return v5;
}

- (void)drawPreviewInRect:()UI
{
  v10 = [a1 attachment];
  v9 = [v10 image];
  [v9 drawInRect:{a2, a3, a4, a5}];
}

@end