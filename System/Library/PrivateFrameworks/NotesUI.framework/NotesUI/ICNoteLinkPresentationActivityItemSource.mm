@interface ICNoteLinkPresentationActivityItemSource
- (ICNoteLinkPresentationActivityItemSource)init;
- (ICNoteLinkPresentationActivityItemSource)initWithNote:(id)a3 thumbnailImage:(id)a4;
- (id)detail;
- (id)title;
- (void)setThumbnailImage:(id)a3;
@end

@implementation ICNoteLinkPresentationActivityItemSource

- (ICNoteLinkPresentationActivityItemSource)init
{
  [(ICNoteLinkPresentationActivityItemSource *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (ICNoteLinkPresentationActivityItemSource)initWithNote:(id)a3 thumbnailImage:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ICNoteLinkPresentationActivityItemSource;
  v9 = [(ICNoteLinkPresentationActivityItemSource *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_note, a3);
    objc_storeStrong(&v10->_thumbnailImage, a4);
  }

  return v10;
}

- (void)setThumbnailImage:(id)a3
{
  objc_storeStrong(&self->_thumbnailImage, a3);
  v5 = a3;
  [(ICLinkPresentationActivityItemSource *)self setIconImage:v5];
}

- (id)title
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__19;
  v12 = __Block_byref_object_dispose__19;
  v13 = 0;
  v3 = [(ICNoteLinkPresentationActivityItemSource *)self note];
  v4 = [v3 managedObjectContext];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__ICNoteLinkPresentationActivityItemSource_title__block_invoke;
  v7[3] = &unk_1E8468FA8;
  v7[4] = self;
  v7[5] = &v8;
  [v4 performBlockAndWait:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __49__ICNoteLinkPresentationActivityItemSource_title__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) note];
  v2 = [v5 trimmedTitle];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)detail
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__19;
  v12 = __Block_byref_object_dispose__19;
  v13 = 0;
  v3 = [(ICNoteLinkPresentationActivityItemSource *)self note];
  v4 = [v3 managedObjectContext];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__ICNoteLinkPresentationActivityItemSource_detail__block_invoke;
  v7[3] = &unk_1E8468FA8;
  v7[4] = self;
  v7[5] = &v8;
  [v4 performBlockAndWait:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __50__ICNoteLinkPresentationActivityItemSource_detail__block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) note];
  v2 = [v6 contentInfoText];
  v3 = [v2 ic_whitespaceAndNewlineCoalescedString];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

@end