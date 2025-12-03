@interface ICQLItem
- (ICQLItem)initWithAttachment:(id)attachment;
- (id)previewItemTitle;
- (id)provideDataForItem:(id)item;
@end

@implementation ICQLItem

- (ICQLItem)initWithAttachment:(id)attachment
{
  attachmentCopy = attachment;
  if ([attachmentCopy isPasswordProtected])
  {
    typeUTI = [attachmentCopy typeUTI];
    title = [attachmentCopy title];
    v10.receiver = self;
    v10.super_class = ICQLItem;
    v7 = [(ICQLItem *)&v10 initWithDataProvider:self contentType:typeUTI previewTitle:title];
  }

  else
  {
    typeUTI = [attachmentCopy previewItemURL];
    v9.receiver = self;
    v9.super_class = ICQLItem;
    v7 = [(ICQLItem *)&v9 initWithURL:typeUTI];
  }

  if (v7)
  {
    [(ICQLItem *)v7 setAttachment:attachmentCopy];
  }

  return v7;
}

- (id)previewItemTitle
{
  attachment = [(ICQLItem *)self attachment];
  previewItemTitle = [attachment previewItemTitle];

  return previewItemTitle;
}

- (id)provideDataForItem:(id)item
{
  itemCopy = item;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__23;
  v14 = __Block_byref_object_dispose__23;
  v15 = 0;
  attachment = [(ICQLItem *)self attachment];
  managedObjectContext = [attachment managedObjectContext];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __31__ICQLItem_provideDataForItem___block_invoke;
  v9[3] = &unk_2781ACF80;
  v9[4] = self;
  v9[5] = &v10;
  [managedObjectContext performBlockAndWait:v9];

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