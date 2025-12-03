@interface ICChangeDatesActivity
- (ICChangeDatesActivity)initWithObject:(id)object activityType:(unsigned __int8)type;
- (id)activityViewController;
- (void)setCreationDateForAttachmentObject:(id)object;
- (void)setCreationDateForNoteObject:(id)object;
- (void)setModificationDateForAttachmentObject:(id)object;
- (void)setModificationDateForNoteObject:(id)object;
@end

@implementation ICChangeDatesActivity

- (ICChangeDatesActivity)initWithObject:(id)object activityType:(unsigned __int8)type
{
  typeCopy = type;
  objectCopy = object;
  v10.receiver = self;
  v10.super_class = ICChangeDatesActivity;
  v7 = [(UIActivity *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(ICChangeDatesActivity *)v7 setRepresentedObject:objectCopy];
    [(ICChangeDatesActivity *)v8 setType:typeCopy];
  }

  return v8;
}

- (id)activityViewController
{
  v3 = [MEMORY[0x1E69DC650] alertControllerWithTitle:@"\n\n\n\n\n\n\n\n\n\n\n\nChange Dates" message:@"Change Modification Date or Creation Date" preferredStyle:0];
  v4 = objc_alloc_init(MEMORY[0x1E69DC920]);
  [v4 setDatePickerMode:2];
  view = [v3 view];
  [view addSubview:v4];

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
  selfCopy = self;
  v18 = v7;
  v10 = v7;
  v11 = [v9 actionWithTitle:@"Set Creation Date" style:0 handler:&v13];
  [v3 addAction:{v11, v13, v14, v15, v16, selfCopy}];

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

- (void)setModificationDateForNoteObject:(id)object
{
  objectCopy = object;
  representedObject = [(ICChangeDatesActivity *)self representedObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  representedObject2 = [(ICChangeDatesActivity *)self representedObject];
  representedObject3 = representedObject2;
  if (isKindOfClass)
  {
    [representedObject2 setModificationDate:objectCopy];
    creationDate = [representedObject3 creationDate];
    v9 = [creationDate ic_isLaterThanDate:objectCopy];

    if ((v9 & 1) == 0)
    {
LABEL_4:
      managedObjectContext = [representedObject3 managedObjectContext];
      [managedObjectContext ic_save];

      goto LABEL_8;
    }

LABEL_3:
    [representedObject3 setCreationDate:objectCopy];
    goto LABEL_4;
  }

  objc_opt_class();
  v11 = objc_opt_isKindOfClass();

  if (v11)
  {
    representedObject3 = [(ICChangeDatesActivity *)self representedObject];
    [representedObject3 setModificationDate:objectCopy];
    creationDate2 = [representedObject3 creationDate];
    v13 = [creationDate2 ic_isLaterThanDate:objectCopy];

    if (!v13)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

LABEL_8:
}

- (void)setCreationDateForNoteObject:(id)object
{
  objectCopy = object;
  representedObject = [(ICChangeDatesActivity *)self representedObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  representedObject2 = [(ICChangeDatesActivity *)self representedObject];
  representedObject3 = representedObject2;
  if (isKindOfClass)
  {
    [representedObject2 setCreationDate:objectCopy];
    modificationDate = [representedObject3 modificationDate];
    v9 = [modificationDate ic_isEarlierThanDate:objectCopy];

    if ((v9 & 1) == 0)
    {
LABEL_4:
      managedObjectContext = [representedObject3 managedObjectContext];
      [managedObjectContext ic_save];

      goto LABEL_8;
    }

LABEL_3:
    [representedObject3 setModificationDate:objectCopy];
    goto LABEL_4;
  }

  objc_opt_class();
  v11 = objc_opt_isKindOfClass();

  if (v11)
  {
    representedObject3 = [(ICChangeDatesActivity *)self representedObject];
    [representedObject3 setCreationDate:objectCopy];
    modificationDate2 = [representedObject3 modificationDate];
    v13 = [modificationDate2 ic_isEarlierThanDate:objectCopy];

    if (!v13)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

LABEL_8:
}

- (void)setModificationDateForAttachmentObject:(id)object
{
  objectCopy = object;
  representedObject = [(ICChangeDatesActivity *)self representedObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    representedObject2 = [(ICChangeDatesActivity *)self representedObject];
    [representedObject2 setModificationDate:objectCopy];
    creationDate = [representedObject2 creationDate];
    v8 = [creationDate ic_isLaterThanDate:objectCopy];

    if (v8)
    {
      [representedObject2 setCreationDate:objectCopy];
    }

    managedObjectContext = [representedObject2 managedObjectContext];
    [managedObjectContext ic_save];
  }
}

- (void)setCreationDateForAttachmentObject:(id)object
{
  objectCopy = object;
  representedObject = [(ICChangeDatesActivity *)self representedObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    representedObject2 = [(ICChangeDatesActivity *)self representedObject];
    [representedObject2 setCreationDate:objectCopy];
    modificationDate = [representedObject2 modificationDate];
    v8 = [modificationDate ic_isEarlierThanDate:objectCopy];

    if (v8)
    {
      [representedObject2 setModificationDate:objectCopy];
    }

    managedObjectContext = [representedObject2 managedObjectContext];
    [managedObjectContext ic_save];
  }
}

@end