@interface ICAirDropNoteActivityItemSource
- (ICAirDropNoteActivityItemSource)initWithTitle:(id)title airDropDocumentCreator:(id)creator;
- (id)activityViewController:(id)controller dataTypeIdentifierForActivityType:(id)type;
- (id)activityViewController:(id)controller itemForActivityType:(id)type;
- (id)activityViewControllerPlaceholderItem:(id)item;
- (id)airDropActivityItem;
@end

@implementation ICAirDropNoteActivityItemSource

- (ICAirDropNoteActivityItemSource)initWithTitle:(id)title airDropDocumentCreator:(id)creator
{
  creatorCopy = creator;
  v10.receiver = self;
  v10.super_class = ICAirDropNoteActivityItemSource;
  v7 = [(ICNoteBaseActivityItemSource *)&v10 initWithTitle:title];
  v8 = v7;
  if (v7)
  {
    if (creatorCopy)
    {
      [(ICAirDropNoteActivityItemSource *)v7 setAirDropDocumentCreator:creatorCopy];
    }

    else
    {
      [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"airDropDocumentCreator" functionName:"-[ICAirDropNoteActivityItemSource initWithTitle:airDropDocumentCreator:]" simulateCrash:1 showAlert:0 format:@"airDropDocumentCreator is nil"];

      v8 = 0;
    }
  }

  return v8;
}

- (id)activityViewControllerPlaceholderItem:(id)item
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFF8]);

  return v3;
}

- (id)activityViewController:(id)controller itemForActivityType:(id)type
{
  if ([type isEqualToString:*MEMORY[0x1E69CDA78]])
  {
    airDropActivityItem = [(ICAirDropNoteActivityItemSource *)self airDropActivityItem];
  }

  else
  {
    airDropActivityItem = 0;
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
    airDropDocumentCreator = [(ICAirDropNoteActivityItemSource *)self airDropDocumentCreator];
    v5 = airDropDocumentCreator[2]();

    activityItem = [v5 activityItem];
    v7 = self->_airDropActivityItem;
    self->_airDropActivityItem = activityItem;

    airDropActivityItem = self->_airDropActivityItem;
  }

  return airDropActivityItem;
}

@end