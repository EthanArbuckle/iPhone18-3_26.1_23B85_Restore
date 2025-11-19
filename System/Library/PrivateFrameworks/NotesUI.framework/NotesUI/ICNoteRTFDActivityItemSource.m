@interface ICNoteRTFDActivityItemSource
- (ICNoteRTFDActivityItemSource)init;
- (ICNoteRTFDActivityItemSource)initWithNote:(id)a3 noteExporter:(id)a4;
- (id)activityViewController:(id)a3 dataTypeIdentifierForActivityType:(id)a4;
- (id)activityViewController:(id)a3 itemForActivityType:(id)a4;
- (id)activityViewController:(id)a3 subjectForActivityType:(id)a4;
- (id)activityViewControllerPlaceholderItem:(id)a3;
@end

@implementation ICNoteRTFDActivityItemSource

- (ICNoteRTFDActivityItemSource)init
{
  [(ICNoteRTFDActivityItemSource *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (ICNoteRTFDActivityItemSource)initWithNote:(id)a3 noteExporter:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = ICNoteRTFDActivityItemSource;
  v8 = [(ICNoteRTFDActivityItemSource *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(ICNoteRTFDActivityItemSource *)v8 setNote:v6];
    [(ICNoteRTFDActivityItemSource *)v9 setNoteExporter:v7];
  }

  return v9;
}

- (id)activityViewControllerPlaceholderItem:(id)a3
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFF8]);

  return v3;
}

- (id)activityViewController:(id)a3 itemForActivityType:(id)a4
{
  v5 = a4;
  if ((([v5 isEqualToString:@"com.apple.UIKit.activity.RemoteOpenInApplication"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"com.apple.UIKit.activity.RemoteOpenInApplication-InPlace") & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"com.apple.UIKit.activity.RemoteOpenInApplication-ByCopy")) && (objc_msgSend(v5, "isEqualToString:", *MEMORY[0x1E69CDA98]) & 1) == 0)
  {
    v7 = [(ICNoteRTFDActivityItemSource *)self noteExporter];
    v8 = [(ICNoteRTFDActivityItemSource *)self note];
    v6 = [v7 exportRTFDFileFromNote:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)activityViewController:(id)a3 dataTypeIdentifierForActivityType:(id)a4
{
  v4 = [a4 isEqualToString:*MEMORY[0x1E69CDA98]];
  v5 = MEMORY[0x1E6982DB8];
  if (!v4)
  {
    v5 = MEMORY[0x1E6982F98];
  }

  v6 = [*v5 identifier];

  return v6;
}

- (id)activityViewController:(id)a3 subjectForActivityType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__9;
  v17 = __Block_byref_object_dispose__9;
  v18 = 0;
  v8 = [(ICNoteRTFDActivityItemSource *)self note];
  v9 = [v8 managedObjectContext];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __78__ICNoteRTFDActivityItemSource_activityViewController_subjectForActivityType___block_invoke;
  v12[3] = &unk_1E8468FA8;
  v12[4] = self;
  v12[5] = &v13;
  [v9 performBlockAndWait:v12];

  v10 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v10;
}

void __78__ICNoteRTFDActivityItemSource_activityViewController_subjectForActivityType___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) note];
  v2 = [v5 title];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

@end