@interface RecentItemContactsViewControllerDelegate
- (void)contactViewController:(id)a3 didExecuteBlockAndReportContactAction:(id)a4;
@end

@implementation RecentItemContactsViewControllerDelegate

- (void)contactViewController:(id)a3 didExecuteBlockAndReportContactAction:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  RecentItemContactsViewControllerDelegate.contactViewController(_:didExecuteBlockAndReportContactAction:)(v8, v10);
}

@end