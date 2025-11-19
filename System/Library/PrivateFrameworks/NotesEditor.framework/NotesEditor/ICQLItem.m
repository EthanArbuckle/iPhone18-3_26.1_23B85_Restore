@interface ICQLItem
- (ICQLItem)initWithAttachment:(id)a3;
- (id)previewItemTitle;
- (id)provideDataForItem:(id)a3;
@end

@implementation ICQLItem

- (ICQLItem)initWithAttachment:(id)a3
{
  v4 = a3;
  if ([v4 isPasswordProtected])
  {
    v5 = [v4 typeUTI];
    v6 = [v4 title];
    v10.receiver = self;
    v10.super_class = ICQLItem;
    v7 = [(ICQLItem *)&v10 initWithDataProvider:self contentType:v5 previewTitle:v6];
  }

  else
  {
    v5 = [v4 previewItemURL];
    v9.receiver = self;
    v9.super_class = ICQLItem;
    v7 = [(ICQLItem *)&v9 initWithURL:v5];
  }

  if (v7)
  {
    [(ICQLItem *)v7 setAttachment:v4];
  }

  return v7;
}

- (id)previewItemTitle
{
  v2 = [(ICQLItem *)self attachment];
  v3 = [v2 previewItemTitle];

  return v3;
}

- (id)provideDataForItem:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__23;
  v14 = __Block_byref_object_dispose__23;
  v15 = 0;
  v5 = [(ICQLItem *)self attachment];
  v6 = [v5 managedObjectContext];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __31__ICQLItem_provideDataForItem___block_invoke;
  v9[3] = &unk_2781ACF80;
  v9[4] = self;
  v9[5] = &v10;
  [v6 performBlockAndWait:v9];

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __31__ICQLItem_provideDataForItem___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) attachment];
  v2 = [v6 attachmentModel];
  v3 = [v2 dataForQuickLook];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

@end