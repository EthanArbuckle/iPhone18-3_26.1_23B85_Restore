@interface ICAttachmentWebModel(UI)
+ (id)genericBrickThumbnailWithSize:()UI scale:;
- (id)genericBrickLargeThumbnailCreator;
- (id)genericBrickThumbnailCreator;
@end

@implementation ICAttachmentWebModel(UI)

- (id)genericBrickThumbnailCreator
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__ICAttachmentWebModel_UI__genericBrickThumbnailCreator__block_invoke;
  aBlock[3] = &unk_1E846C138;
  aBlock[4] = self;
  v1 = _Block_copy(aBlock);

  return v1;
}

- (id)genericBrickLargeThumbnailCreator
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__ICAttachmentWebModel_UI__genericBrickLargeThumbnailCreator__block_invoke;
  aBlock[3] = &unk_1E846C138;
  aBlock[4] = self;
  v1 = _Block_copy(aBlock);

  return v1;
}

+ (id)genericBrickThumbnailWithSize:()UI scale:
{
  v4 = [MEMORY[0x1E69DC888] colorWithRed:0.890196078 green:0.894117647 blue:0.901960784 alpha:1.0];
  v5 = [MEMORY[0x1E69DCAB8] ic_imageNamed:@"attachment_brick_weblink_generic_thumb" withTint:v4 size:{self, a2}];

  return v5;
}

@end