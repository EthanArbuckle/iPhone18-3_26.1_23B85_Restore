@interface ICAirDropNoteActivityItemSource
- (ICAirDropNoteActivityItemSource)initWithTitle:(id)a3 airDropDocumentCreator:(id)a4;
- (id)activityViewController:(id)a3 dataTypeIdentifierForActivityType:(id)a4;
- (id)activityViewController:(id)a3 itemForActivityType:(id)a4;
- (id)activityViewControllerPlaceholderItem:(id)a3;
- (id)airDropActivityItem;
@end

@implementation ICAirDropNoteActivityItemSource

- (ICAirDropNoteActivityItemSource)initWithTitle:(id)a3 airDropDocumentCreator:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = ICAirDropNoteActivityItemSource;
  v7 = [(ICNoteBaseActivityItemSource *)&v10 initWithTitle:a3];
  v8 = v7;
  if (v7)
  {
    if (v6)
    {
      [(ICAirDropNoteActivityItemSource *)v7 setAirDropDocumentCreator:v6];
    }

    else
    {
      [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"airDropDocumentCreator" functionName:"-[ICAirDropNoteActivityItemSource initWithTitle:airDropDocumentCreator:]" simulateCrash:1 showAlert:0 format:@"airDropDocumentCreator is nil"];

      v8 = 0;
    }
  }

  return v8;
}

- (id)activityViewControllerPlaceholderItem:(id)a3
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFF8]);

  return v3;
}

- (id)activityViewController:(id)a3 itemForActivityType:(id)a4
{
  if ([a4 isEqualToString:*MEMORY[0x1E69CDA78]])
  {
    v5 = [(ICAirDropNoteActivityItemSource *)self airDropActivityItem];
  }

  else
  {
    v5 = 0;
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
    v4 = [(ICAirDropNoteActivityItemSource *)self airDropDocumentCreator];
    v5 = v4[2]();

    v6 = [v5 activityItem];
    v7 = self->_airDropActivityItem;
    self->_airDropActivityItem = v6;

    airDropActivityItem = self->_airDropActivityItem;
  }

  return airDropActivityItem;
}

@end