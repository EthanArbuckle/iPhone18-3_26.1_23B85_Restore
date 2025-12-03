@interface ICNoteHTMLActivityItemSource
- (ICNoteHTMLActivityItemSource)init;
- (ICNoteHTMLActivityItemSource)initWithNote:(id)note;
- (id)activityViewController:(id)controller itemForActivityType:(id)type;
- (id)activityViewController:(id)controller subjectForActivityType:(id)type;
@end

@implementation ICNoteHTMLActivityItemSource

- (ICNoteHTMLActivityItemSource)init
{
  [(ICNoteHTMLActivityItemSource *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (ICNoteHTMLActivityItemSource)initWithNote:(id)note
{
  noteCopy = note;
  v8.receiver = self;
  v8.super_class = ICNoteHTMLActivityItemSource;
  v5 = [(ICNoteHTMLActivityItemSource *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ICNoteHTMLActivityItemSource *)v5 setNote:noteCopy];
  }

  return v6;
}

- (id)activityViewController:(id)controller itemForActivityType:(id)type
{
  if ([type isEqualToString:*MEMORY[0x1E69CDAA0]])
  {
    note = [(ICNoteHTMLActivityItemSource *)self note];
    htmlStringWithHTMLAttachments = [note htmlStringWithHTMLAttachments];

    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<html><body>%@</body></html>", htmlStringWithHTMLAttachments];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)activityViewController:(id)controller subjectForActivityType:(id)type
{
  controllerCopy = controller;
  typeCopy = type;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__10;
  v17 = __Block_byref_object_dispose__10;
  v18 = 0;
  note = [(ICNoteHTMLActivityItemSource *)self note];
  managedObjectContext = [note managedObjectContext];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __78__ICNoteHTMLActivityItemSource_activityViewController_subjectForActivityType___block_invoke;
  v12[3] = &unk_1E8468FA8;
  v12[4] = self;
  v12[5] = &v13;
  [managedObjectContext performBlockAndWait:v12];

  v10 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v10;
}

void __78__ICNoteHTMLActivityItemSource_activityViewController_subjectForActivityType___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) note];
  v2 = [v5 title];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

@end