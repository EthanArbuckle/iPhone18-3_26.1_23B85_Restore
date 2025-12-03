@interface ICAirDropNoteActivityItemProvider
- (ICAirDropNoteActivityItemProvider)initWithTitle:(id)title airDropDocumentCreator:(id)creator;
- (id)activityViewController:(id)controller dataTypeIdentifierForActivityType:(id)type;
- (id)airDropActivityItem;
- (id)item;
@end

@implementation ICAirDropNoteActivityItemProvider

- (ICAirDropNoteActivityItemProvider)initWithTitle:(id)title airDropDocumentCreator:(id)creator
{
  titleCopy = title;
  creatorCopy = creator;
  v8 = objc_alloc_init(MEMORY[0x1E695DFF8]);
  v13.receiver = self;
  v13.super_class = ICAirDropNoteActivityItemProvider;
  v9 = [(UIActivityItemProvider *)&v13 initWithPlaceholderItem:v8];

  if (!v9)
  {
    goto LABEL_5;
  }

  if (![titleCopy length])
  {
    defaultTitleForEmptyNote = [MEMORY[0x1E69B77F0] defaultTitleForEmptyNote];
    [(ICAirDropNoteActivityItemProvider *)v9 setTitle:defaultTitleForEmptyNote];

    if (creatorCopy)
    {
      goto LABEL_4;
    }

LABEL_7:
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"airDropDocumentCreator" functionName:"-[ICAirDropNoteActivityItemProvider initWithTitle:airDropDocumentCreator:]" simulateCrash:1 showAlert:0 format:@"airDropDocumentCreator is nil"];
    v10 = 0;
    goto LABEL_8;
  }

  [(ICAirDropNoteActivityItemProvider *)v9 setTitle:titleCopy];
  if (!creatorCopy)
  {
    goto LABEL_7;
  }

LABEL_4:
  [(ICAirDropNoteActivityItemProvider *)v9 setAirDropDocumentCreator:creatorCopy];
LABEL_5:
  v10 = v9;
LABEL_8:

  return v10;
}

- (id)item
{
  activityType = [(UIActivityItemProvider *)self activityType];
  v4 = [activityType isEqualToString:*MEMORY[0x1E69CDA78]];

  if (v4)
  {
    airDropActivityItem = [(ICAirDropNoteActivityItemProvider *)self airDropActivityItem];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = ICAirDropNoteActivityItemProvider;
    airDropActivityItem = [(UIActivityItemProvider *)&v7 item];
  }

  return airDropActivityItem;
}

- (id)activityViewController:(id)controller dataTypeIdentifierForActivityType:(id)type
{
  if ([type isEqualToString:*MEMORY[0x1E69CDA98]])
  {
    identifier = [*MEMORY[0x1E6982DB8] identifier];
  }

  else
  {
    identifier = *MEMORY[0x1E69B7978];
  }

  return identifier;
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

    airDropDocumentCreator = [(ICAirDropNoteActivityItemProvider *)self airDropDocumentCreator];
    v5 = airDropDocumentCreator[2]();

    activityItem = [v5 activityItem];
    v7 = self->_airDropActivityItem;
    self->_airDropActivityItem = activityItem;

    airDropActivityItem = self->_airDropActivityItem;
  }

  return airDropActivityItem;
}

@end