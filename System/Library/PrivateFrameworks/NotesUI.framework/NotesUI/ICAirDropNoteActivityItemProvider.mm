@interface ICAirDropNoteActivityItemProvider
- (ICAirDropNoteActivityItemProvider)initWithTitle:(id)a3 airDropDocumentCreator:(id)a4;
- (id)activityViewController:(id)a3 dataTypeIdentifierForActivityType:(id)a4;
- (id)airDropActivityItem;
- (id)item;
@end

@implementation ICAirDropNoteActivityItemProvider

- (ICAirDropNoteActivityItemProvider)initWithTitle:(id)a3 airDropDocumentCreator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E695DFF8]);
  v13.receiver = self;
  v13.super_class = ICAirDropNoteActivityItemProvider;
  v9 = [(UIActivityItemProvider *)&v13 initWithPlaceholderItem:v8];

  if (!v9)
  {
    goto LABEL_5;
  }

  if (![v6 length])
  {
    v11 = [MEMORY[0x1E69B77F0] defaultTitleForEmptyNote];
    [(ICAirDropNoteActivityItemProvider *)v9 setTitle:v11];

    if (v7)
    {
      goto LABEL_4;
    }

LABEL_7:
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"airDropDocumentCreator" functionName:"-[ICAirDropNoteActivityItemProvider initWithTitle:airDropDocumentCreator:]" simulateCrash:1 showAlert:0 format:@"airDropDocumentCreator is nil"];
    v10 = 0;
    goto LABEL_8;
  }

  [(ICAirDropNoteActivityItemProvider *)v9 setTitle:v6];
  if (!v7)
  {
    goto LABEL_7;
  }

LABEL_4:
  [(ICAirDropNoteActivityItemProvider *)v9 setAirDropDocumentCreator:v7];
LABEL_5:
  v10 = v9;
LABEL_8:

  return v10;
}

- (id)item
{
  v3 = [(UIActivityItemProvider *)self activityType];
  v4 = [v3 isEqualToString:*MEMORY[0x1E69CDA78]];

  if (v4)
  {
    v5 = [(ICAirDropNoteActivityItemProvider *)self airDropActivityItem];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = ICAirDropNoteActivityItemProvider;
    v5 = [(UIActivityItemProvider *)&v7 item];
  }

  return v5;
}

- (id)activityViewController:(id)a3 dataTypeIdentifierForActivityType:(id)a4
{
  if ([a4 isEqualToString:*MEMORY[0x1E69CDA98]])
  {
    v4 = [*MEMORY[0x1E6982DB8] identifier];
  }

  else
  {
    v4 = *MEMORY[0x1E69B7978];
  }

  return v4;
}

- (id)airDropActivityItem
{
  airDropActivityItem = self->_airDropActivityItem;
  if (!airDropActivityItem)
  {
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"![NSThread isMainThread]" functionName:"-[ICAirDropNoteActivityItemProvider airDropActivityItem]" simulateCrash:1 showAlert:0 format:@"Unexpected call from main thread"];
    }

    v4 = [(ICAirDropNoteActivityItemProvider *)self airDropDocumentCreator];
    v5 = v4[2]();

    v6 = [v5 activityItem];
    v7 = self->_airDropActivityItem;
    self->_airDropActivityItem = v6;

    airDropActivityItem = self->_airDropActivityItem;
  }

  return airDropActivityItem;
}

@end