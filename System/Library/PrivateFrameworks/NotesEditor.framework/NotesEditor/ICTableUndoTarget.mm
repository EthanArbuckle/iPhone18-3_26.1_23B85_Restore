@interface ICTableUndoTarget
- (ICTableAttachmentViewController)tableAttachmentViewController;
- (ICTableAttachmentViewController)tableAttachmentViewControllerForUndo;
- (ICTableUndoTarget)init;
- (ICTableUndoTarget)initWithProvider:(id)provider viewController:(id)controller;
- (NSString)description;
- (void)applyUndoGroup:(id)group;
@end

@implementation ICTableUndoTarget

- (ICTableUndoTarget)init
{
  [(ICTableUndoTarget *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (ICTableUndoTarget)initWithProvider:(id)provider viewController:(id)controller
{
  providerCopy = provider;
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = ICTableUndoTarget;
  v9 = [(ICTableUndoTarget *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_provider, provider);
    objc_storeWeak(&v10->_tableAttachmentViewController, controllerCopy);
  }

  return v10;
}

- (ICTableAttachmentViewController)tableAttachmentViewControllerForUndo
{
  tableAttachmentViewController = [(ICTableUndoTarget *)self tableAttachmentViewController];
  if (!tableAttachmentViewController)
  {
    objc_opt_class();
    provider = [(ICTableUndoTarget *)self provider];
    delegate = [provider delegate];
    tableAttachmentViewController = ICCheckedDynamicCast();
  }

  return tableAttachmentViewController;
}

- (void)applyUndoGroup:(id)group
{
  groupCopy = group;
  tableAttachmentViewControllerForUndo = [(ICTableUndoTarget *)self tableAttachmentViewControllerForUndo];
  [tableAttachmentViewControllerForUndo applyUndoGroup:groupCopy];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = ICTableUndoTarget;
  v4 = [(ICTableUndoTarget *)&v9 description];
  tableAttachmentViewController = [(ICTableUndoTarget *)self tableAttachmentViewController];
  provider = [(ICTableUndoTarget *)self provider];
  v7 = [v3 stringWithFormat:@"<%@, %@, %@>", v4, tableAttachmentViewController, provider];

  return v7;
}

- (ICTableAttachmentViewController)tableAttachmentViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_tableAttachmentViewController);

  return WeakRetained;
}

@end