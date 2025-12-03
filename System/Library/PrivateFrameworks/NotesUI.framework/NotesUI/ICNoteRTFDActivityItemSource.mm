@interface ICNoteRTFDActivityItemSource
- (ICNoteRTFDActivityItemSource)init;
- (ICNoteRTFDActivityItemSource)initWithNote:(id)note noteExporter:(id)exporter;
- (id)activityViewController:(id)controller dataTypeIdentifierForActivityType:(id)type;
- (id)activityViewController:(id)controller itemForActivityType:(id)type;
- (id)activityViewController:(id)controller subjectForActivityType:(id)type;
- (id)activityViewControllerPlaceholderItem:(id)item;
@end

@implementation ICNoteRTFDActivityItemSource

- (ICNoteRTFDActivityItemSource)init
{
  [(ICNoteRTFDActivityItemSource *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (ICNoteRTFDActivityItemSource)initWithNote:(id)note noteExporter:(id)exporter
{
  noteCopy = note;
  exporterCopy = exporter;
  v11.receiver = self;
  v11.super_class = ICNoteRTFDActivityItemSource;
  v8 = [(ICNoteRTFDActivityItemSource *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(ICNoteRTFDActivityItemSource *)v8 setNote:noteCopy];
    [(ICNoteRTFDActivityItemSource *)v9 setNoteExporter:exporterCopy];
  }

  return v9;
}

- (id)activityViewControllerPlaceholderItem:(id)item
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFF8]);

  return v3;
}

- (id)activityViewController:(id)controller itemForActivityType:(id)type
{
  typeCopy = type;
  if ((([typeCopy isEqualToString:@"com.apple.UIKit.activity.RemoteOpenInApplication"] & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", @"com.apple.UIKit.activity.RemoteOpenInApplication-InPlace") & 1) != 0 || objc_msgSend(typeCopy, "isEqualToString:", @"com.apple.UIKit.activity.RemoteOpenInApplication-ByCopy")) && (objc_msgSend(typeCopy, "isEqualToString:", *MEMORY[0x1E69CDA98]) & 1) == 0)
  {
    noteExporter = [(ICNoteRTFDActivityItemSource *)self noteExporter];
    note = [(ICNoteRTFDActivityItemSource *)self note];
    v6 = [noteExporter exportRTFDFileFromNote:note];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)activityViewController:(id)controller dataTypeIdentifierForActivityType:(id)type
{
  v4 = [type isEqualToString:*MEMORY[0x1E69CDA98]];
  v5 = MEMORY[0x1E6982DB8];
  if (!v4)
  {
    v5 = MEMORY[0x1E6982F98];
  }

  identifier = [*v5 identifier];

  return identifier;
}

- (id)activityViewController:(id)controller subjectForActivityType:(id)type
{
  controllerCopy = controller;
  typeCopy = type;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__9;
  v17 = __Block_byref_object_dispose__9;
  v18 = 0;
  note = [(ICNoteRTFDActivityItemSource *)self note];
  managedObjectContext = [note managedObjectContext];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __78__ICNoteRTFDActivityItemSource_activityViewController_subjectForActivityType___block_invoke;
  v12[3] = &unk_1E8468FA8;
  v12[4] = self;
  v12[5] = &v13;
  [managedObjectContext performBlockAndWait:v12];

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