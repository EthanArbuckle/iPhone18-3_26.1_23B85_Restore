@interface CKUnreadCountFilterController
- (BOOL)implementsFilterMode:(unint64_t)mode;
- (BOOL)unreadReport:(id)report satisfiesFilterMode:(unint64_t)mode;
- (CKUnreadCountFilterController)init;
@end

@implementation CKUnreadCountFilterController

- (CKUnreadCountFilterController)init
{
  v3.receiver = self;
  v3.super_class = CKUnreadCountFilterController;
  return [(IMUnreadCountFilterController *)&v3 init];
}

- (BOOL)implementsFilterMode:(unint64_t)mode
{
  if (qword_1EAD44F40 != -1)
  {
    modeCopy = mode;
    swift_once();
    mode = modeCopy;
  }

  if (*(off_1EAD44F48 + 2))
  {
    sub_1908789E8(mode);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (BOOL)unreadReport:(id)report satisfiesFilterMode:(unint64_t)mode
{
  reportCopy = report;
  selfCopy = self;
  LOBYTE(mode) = _sSo29CKUnreadCountFilterControllerC7ChatKitE12unreadReport_09satisfiesC4ModeSbSo08IMUnreadbH0C_So018IMConversationListcJ0VtF_0(reportCopy, mode);

  return mode & 1;
}

@end