@interface CKUnreadCountFilterController
- (BOOL)implementsFilterMode:(unint64_t)a3;
- (BOOL)unreadReport:(id)a3 satisfiesFilterMode:(unint64_t)a4;
- (CKUnreadCountFilterController)init;
@end

@implementation CKUnreadCountFilterController

- (CKUnreadCountFilterController)init
{
  v3.receiver = self;
  v3.super_class = CKUnreadCountFilterController;
  return [(IMUnreadCountFilterController *)&v3 init];
}

- (BOOL)implementsFilterMode:(unint64_t)a3
{
  if (qword_1EAD44F40 != -1)
  {
    v5 = a3;
    swift_once();
    a3 = v5;
  }

  if (*(off_1EAD44F48 + 2))
  {
    sub_1908789E8(a3);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (BOOL)unreadReport:(id)a3 satisfiesFilterMode:(unint64_t)a4
{
  v6 = a3;
  v7 = self;
  LOBYTE(a4) = _sSo29CKUnreadCountFilterControllerC7ChatKitE12unreadReport_09satisfiesC4ModeSbSo08IMUnreadbH0C_So018IMConversationListcJ0VtF_0(v6, a4);

  return a4 & 1;
}

@end