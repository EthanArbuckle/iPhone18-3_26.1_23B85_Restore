@interface ICHashtagUIModel
- (id)labelColor;
@end

@implementation ICHashtagUIModel

- (id)labelColor
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  attachment = [(ICInlineAttachmentUIModel *)self attachment];
  managedObjectContext = [attachment managedObjectContext];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __30__ICHashtagUIModel_labelColor__block_invoke;
  v9[3] = &unk_1E846B1D8;
  v9[4] = self;
  v9[5] = &v10;
  [managedObjectContext performBlockAndWait:v9];

  if (*(v11 + 24) == 1)
  {
    v8.receiver = self;
    v8.super_class = ICHashtagUIModel;
    labelColor = [(ICInlineAttachmentUIModel *)&v8 labelColor];
  }

  else
  {
    labelColor = [MEMORY[0x1E69DC888] ICHashtagColor];
  }

  v6 = labelColor;
  _Block_object_dispose(&v10, 8);

  return v6;
}

void __30__ICHashtagUIModel_labelColor__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) attachment];
  v3 = [v2 isUnsupported];

  v4 = [*(a1 + 32) attachment];
  v5 = [v4 note];
  v6 = [v5 isDeletedOrInTrash];

  *(*(*(a1 + 40) + 8) + 24) = (v3 | v6) & 1;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v7 = MEMORY[0x1E69B7768];
    v8 = [*(a1 + 32) attachment];
    v9 = [v8 tokenContentIdentifier];
    v10 = [*(a1 + 32) attachment];
    v11 = [v10 note];
    v12 = [v11 account];
    v13 = [v7 hashtagWithStandardizedContent:v9 account:v12];

    *(*(*(a1 + 40) + 8) + 24) |= v13 == 0;
  }
}

@end