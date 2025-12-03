@interface DashboardSidebarPresenter
- (GKDashboardRequest)request;
- (NSString)title;
- (_TtC12GameCenterUI25DashboardSidebarPresenter)initWithPlayerId:(id)id;
- (void)fetchGameRecordAfterAuthenticationFor:(id)for;
- (void)handleViewDidLoad;
@end

@implementation DashboardSidebarPresenter

- (GKDashboardRequest)request
{
  v2 = sub_24E03CBC8();

  return v2;
}

- (NSString)title
{
  selfCopy = self;
  sub_24E03C064();
  v4 = v3;

  if (v4)
  {
    v5 = sub_24E347CB8();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)handleViewDidLoad
{
  selfCopy = self;
  sub_24E03C090();
}

- (void)fetchGameRecordAfterAuthenticationFor:(id)for
{
  v4 = sub_24E347CF8();
  v6 = v5;
  selfCopy = self;
  sub_24E0412E8(v4, v6);
}

- (_TtC12GameCenterUI25DashboardSidebarPresenter)initWithPlayerId:(id)id
{
  if (id)
  {
    sub_24E347CF8();
  }

  sub_24E0414B0();
}

@end