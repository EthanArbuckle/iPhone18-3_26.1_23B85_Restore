@interface CUIKEventEditViewControllerManager
- (CUIKEventEditViewControllerManager)initWithDelegate:(id)delegate isEditing:(BOOL)editing allowsEditing:(BOOL)allowsEditing needsInlineEditButton:(BOOL)button;
@end

@implementation CUIKEventEditViewControllerManager

- (CUIKEventEditViewControllerManager)initWithDelegate:(id)delegate isEditing:(BOOL)editing allowsEditing:(BOOL)allowsEditing needsInlineEditButton:(BOOL)button
{
  buttonCopy = button;
  allowsEditingCopy = allowsEditing;
  editingCopy = editing;
  delegateCopy = delegate;
  v15.receiver = self;
  v15.super_class = CUIKEventEditViewControllerManager;
  v11 = [(CUIKEventEditViewControllerManager *)&v15 init];
  if (v11)
  {
    v12 = [[_TtC13CalendarUIKit34EventEditViewControllerManagerImpl alloc] initWithDelegate:delegateCopy isEditing:editingCopy allowsEditing:allowsEditingCopy needsInlineEditButton:buttonCopy];
    impl = v11->_impl;
    v11->_impl = v12;
  }

  return v11;
}

@end