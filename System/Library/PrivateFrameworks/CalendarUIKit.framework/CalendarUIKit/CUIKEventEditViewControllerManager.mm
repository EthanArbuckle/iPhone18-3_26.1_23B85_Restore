@interface CUIKEventEditViewControllerManager
- (CUIKEventEditViewControllerManager)initWithDelegate:(id)a3 isEditing:(BOOL)a4 allowsEditing:(BOOL)a5 needsInlineEditButton:(BOOL)a6;
@end

@implementation CUIKEventEditViewControllerManager

- (CUIKEventEditViewControllerManager)initWithDelegate:(id)a3 isEditing:(BOOL)a4 allowsEditing:(BOOL)a5 needsInlineEditButton:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  v10 = a3;
  v15.receiver = self;
  v15.super_class = CUIKEventEditViewControllerManager;
  v11 = [(CUIKEventEditViewControllerManager *)&v15 init];
  if (v11)
  {
    v12 = [[_TtC13CalendarUIKit34EventEditViewControllerManagerImpl alloc] initWithDelegate:v10 isEditing:v8 allowsEditing:v7 needsInlineEditButton:v6];
    impl = v11->_impl;
    v11->_impl = v12;
  }

  return v11;
}

@end