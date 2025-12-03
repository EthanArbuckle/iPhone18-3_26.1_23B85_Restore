@interface CUIKCreateFamilyCalendarFlowControllerManager
- (CUIKCreateFamilyCalendarFlowControllerManager)initWithDelegate:(id)delegate;
@end

@implementation CUIKCreateFamilyCalendarFlowControllerManager

- (CUIKCreateFamilyCalendarFlowControllerManager)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v9.receiver = self;
  v9.super_class = CUIKCreateFamilyCalendarFlowControllerManager;
  v5 = [(CUIKCreateFamilyCalendarFlowControllerManager *)&v9 init];
  if (v5)
  {
    v6 = [[_TtC13CalendarUIKit49CUIKCreateFamilyCalendarFlowControllerManagerImpl alloc] initWithDelegate:delegateCopy];
    impl = v5->_impl;
    v5->_impl = v6;
  }

  return v5;
}

@end