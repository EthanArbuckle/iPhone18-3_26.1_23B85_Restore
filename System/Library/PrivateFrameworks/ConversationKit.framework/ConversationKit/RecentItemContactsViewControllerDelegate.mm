@interface RecentItemContactsViewControllerDelegate
- (void)contactViewController:(id)controller didExecuteBlockAndReportContactAction:(id)action;
@end

@implementation RecentItemContactsViewControllerDelegate

- (void)contactViewController:(id)controller didExecuteBlockAndReportContactAction:(id)action
{
  controllerCopy = controller;
  actionCopy = action;
  selfCopy = self;
  RecentItemContactsViewControllerDelegate.contactViewController(_:didExecuteBlockAndReportContactAction:)(selfCopy, v10);
}

@end