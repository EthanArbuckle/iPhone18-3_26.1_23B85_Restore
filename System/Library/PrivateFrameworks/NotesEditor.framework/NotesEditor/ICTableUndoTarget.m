@interface ICTableUndoTarget
- (ICTableAttachmentViewController)tableAttachmentViewController;
- (ICTableAttachmentViewController)tableAttachmentViewControllerForUndo;
- (ICTableUndoTarget)init;
- (ICTableUndoTarget)initWithProvider:(id)a3 viewController:(id)a4;
- (NSString)description;
- (void)applyUndoGroup:(id)a3;
@end

@implementation ICTableUndoTarget

- (ICTableUndoTarget)init
{
  [(ICTableUndoTarget *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (ICTableUndoTarget)initWithProvider:(id)a3 viewController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ICTableUndoTarget;
  v9 = [(ICTableUndoTarget *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_provider, a3);
    objc_storeWeak(&v10->_tableAttachmentViewController, v8);
  }

  return v10;
}

- (ICTableAttachmentViewController)tableAttachmentViewControllerForUndo
{
  v3 = [(ICTableUndoTarget *)self tableAttachmentViewController];
  if (!v3)
  {
    objc_opt_class();
    v4 = [(ICTableUndoTarget *)self provider];
    v5 = [v4 delegate];
    v3 = ICCheckedDynamicCast();
  }

  return v3;
}

- (void)applyUndoGroup:(id)a3
{
  v4 = a3;
  v5 = [(ICTableUndoTarget *)self tableAttachmentViewControllerForUndo];
  [v5 applyUndoGroup:v4];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = ICTableUndoTarget;
  v4 = [(ICTableUndoTarget *)&v9 description];
  v5 = [(ICTableUndoTarget *)self tableAttachmentViewController];
  v6 = [(ICTableUndoTarget *)self provider];
  v7 = [v3 stringWithFormat:@"<%@, %@, %@>", v4, v5, v6];

  return v7;
}

- (ICTableAttachmentViewController)tableAttachmentViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_tableAttachmentViewController);

  return WeakRetained;
}

@end