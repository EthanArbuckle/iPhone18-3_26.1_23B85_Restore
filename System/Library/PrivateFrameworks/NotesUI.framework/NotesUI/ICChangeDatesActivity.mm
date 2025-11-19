@interface ICChangeDatesActivity
- (ICChangeDatesActivity)initWithObject:(id)a3 activityType:(unsigned __int8)a4;
- (id)activityViewController;
- (void)setCreationDateForAttachmentObject:(id)a3;
- (void)setCreationDateForNoteObject:(id)a3;
- (void)setModificationDateForAttachmentObject:(id)a3;
- (void)setModificationDateForNoteObject:(id)a3;
@end

@implementation ICChangeDatesActivity

- (ICChangeDatesActivity)initWithObject:(id)a3 activityType:(unsigned __int8)a4
{
  v4 = a4;
  v6 = a3;
  v10.receiver = self;
  v10.super_class = ICChangeDatesActivity;
  v7 = [(UIActivity *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(ICChangeDatesActivity *)v7 setRepresentedObject:v6];
    [(ICChangeDatesActivity *)v8 setType:v4];
  }

  return v8;
}

- (id)activityViewController
{
  v3 = [MEMORY[0x1E69DC650] alertControllerWithTitle:@"\n\n\n\n\n\n\n\n\n\n\n\nChange Dates" message:@"Change Modification Date or Creation Date" preferredStyle:0];
  v4 = objc_alloc_init(MEMORY[0x1E69DC920]);
  [v4 setDatePickerMode:2];
  v5 = [v3 view];
  [v5 addSubview:v4];

  v6 = MEMORY[0x1E69DC648];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __47__ICChangeDatesActivity_activityViewController__block_invoke;
  v19[3] = &unk_1E846D5C0;
  v19[4] = self;
  v7 = v4;
  v20 = v7;
  v8 = [v6 actionWithTitle:@"Set Modification Date" style:0 handler:v19];
  [v3 addAction:v8];

  v9 = MEMORY[0x1E69DC648];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __47__ICChangeDatesActivity_activityViewController__block_invoke_2;
  v16 = &unk_1E846D5C0;
  v17 = self;
  v18 = v7;
  v10 = v7;
  v11 = [v9 actionWithTitle:@"Set Creation Date" style:0 handler:&v13];
  [v3 addAction:{v11, v13, v14, v15, v16, v17}];

  return v3;
}

void __47__ICChangeDatesActivity_activityViewController__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) type];
  if (v2 == 1)
  {
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) date];
    [v4 setModificationDateForAttachmentObject:?];
  }

  else
  {
    if (v2)
    {
      return;
    }

    v3 = *(a1 + 32);
    v5 = [*(a1 + 40) date];
    [v3 setModificationDateForNoteObject:?];
  }
}

void __47__ICChangeDatesActivity_activityViewController__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) type];
  if (v2 == 1)
  {
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) date];
    [v4 setCreationDateForAttachmentObject:?];
  }

  else
  {
    if (v2)
    {
      return;
    }

    v3 = *(a1 + 32);
    v5 = [*(a1 + 40) date];
    [v3 setCreationDateForNoteObject:?];
  }
}

- (void)setModificationDateForNoteObject:(id)a3
{
  v14 = a3;
  v4 = [(ICChangeDatesActivity *)self representedObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v6 = [(ICChangeDatesActivity *)self representedObject];
  v7 = v6;
  if (isKindOfClass)
  {
    [v6 setModificationDate:v14];
    v8 = [v7 creationDate];
    v9 = [v8 ic_isLaterThanDate:v14];

    if ((v9 & 1) == 0)
    {
LABEL_4:
      v10 = [v7 managedObjectContext];
      [v10 ic_save];

      goto LABEL_8;
    }

LABEL_3:
    [v7 setCreationDate:v14];
    goto LABEL_4;
  }

  objc_opt_class();
  v11 = objc_opt_isKindOfClass();

  if (v11)
  {
    v7 = [(ICChangeDatesActivity *)self representedObject];
    [v7 setModificationDate:v14];
    v12 = [v7 creationDate];
    v13 = [v12 ic_isLaterThanDate:v14];

    if (!v13)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

LABEL_8:
}

- (void)setCreationDateForNoteObject:(id)a3
{
  v14 = a3;
  v4 = [(ICChangeDatesActivity *)self representedObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v6 = [(ICChangeDatesActivity *)self representedObject];
  v7 = v6;
  if (isKindOfClass)
  {
    [v6 setCreationDate:v14];
    v8 = [v7 modificationDate];
    v9 = [v8 ic_isEarlierThanDate:v14];

    if ((v9 & 1) == 0)
    {
LABEL_4:
      v10 = [v7 managedObjectContext];
      [v10 ic_save];

      goto LABEL_8;
    }

LABEL_3:
    [v7 setModificationDate:v14];
    goto LABEL_4;
  }

  objc_opt_class();
  v11 = objc_opt_isKindOfClass();

  if (v11)
  {
    v7 = [(ICChangeDatesActivity *)self representedObject];
    [v7 setCreationDate:v14];
    v12 = [v7 modificationDate];
    v13 = [v12 ic_isEarlierThanDate:v14];

    if (!v13)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

LABEL_8:
}

- (void)setModificationDateForAttachmentObject:(id)a3
{
  v10 = a3;
  v4 = [(ICChangeDatesActivity *)self representedObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [(ICChangeDatesActivity *)self representedObject];
    [v6 setModificationDate:v10];
    v7 = [v6 creationDate];
    v8 = [v7 ic_isLaterThanDate:v10];

    if (v8)
    {
      [v6 setCreationDate:v10];
    }

    v9 = [v6 managedObjectContext];
    [v9 ic_save];
  }
}

- (void)setCreationDateForAttachmentObject:(id)a3
{
  v10 = a3;
  v4 = [(ICChangeDatesActivity *)self representedObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [(ICChangeDatesActivity *)self representedObject];
    [v6 setCreationDate:v10];
    v7 = [v6 modificationDate];
    v8 = [v7 ic_isEarlierThanDate:v10];

    if (v8)
    {
      [v6 setModificationDate:v10];
    }

    v9 = [v6 managedObjectContext];
    [v9 ic_save];
  }
}

@end