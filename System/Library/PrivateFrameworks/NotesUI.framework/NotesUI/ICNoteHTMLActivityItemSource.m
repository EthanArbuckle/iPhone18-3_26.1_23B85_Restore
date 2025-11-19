@interface ICNoteHTMLActivityItemSource
- (ICNoteHTMLActivityItemSource)init;
- (ICNoteHTMLActivityItemSource)initWithNote:(id)a3;
- (id)activityViewController:(id)a3 itemForActivityType:(id)a4;
- (id)activityViewController:(id)a3 subjectForActivityType:(id)a4;
@end

@implementation ICNoteHTMLActivityItemSource

- (ICNoteHTMLActivityItemSource)init
{
  [(ICNoteHTMLActivityItemSource *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (ICNoteHTMLActivityItemSource)initWithNote:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ICNoteHTMLActivityItemSource;
  v5 = [(ICNoteHTMLActivityItemSource *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ICNoteHTMLActivityItemSource *)v5 setNote:v4];
  }

  return v6;
}

- (id)activityViewController:(id)a3 itemForActivityType:(id)a4
{
  if ([a4 isEqualToString:*MEMORY[0x1E69CDAA0]])
  {
    v5 = [(ICNoteHTMLActivityItemSource *)self note];
    v6 = [v5 htmlStringWithHTMLAttachments];

    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<html><body>%@</body></html>", v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)activityViewController:(id)a3 subjectForActivityType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__10;
  v17 = __Block_byref_object_dispose__10;
  v18 = 0;
  v8 = [(ICNoteHTMLActivityItemSource *)self note];
  v9 = [v8 managedObjectContext];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __78__ICNoteHTMLActivityItemSource_activityViewController_subjectForActivityType___block_invoke;
  v12[3] = &unk_1E8468FA8;
  v12[4] = self;
  v12[5] = &v13;
  [v9 performBlockAndWait:v12];

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