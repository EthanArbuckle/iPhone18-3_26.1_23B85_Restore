@interface DashboardSidebarPresenter
- (GKDashboardRequest)request;
- (NSString)title;
- (_TtC12GameCenterUI25DashboardSidebarPresenter)initWithPlayerId:(id)a3;
- (void)fetchGameRecordAfterAuthenticationFor:(id)a3;
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
  v2 = self;
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
  v2 = self;
  sub_24E03C090();
}

- (void)fetchGameRecordAfterAuthenticationFor:(id)a3
{
  v4 = sub_24E347CF8();
  v6 = v5;
  v7 = self;
  sub_24E0412E8(v4, v6);
}

- (_TtC12GameCenterUI25DashboardSidebarPresenter)initWithPlayerId:(id)a3
{
  if (a3)
  {
    sub_24E347CF8();
  }

  sub_24E0414B0();
}

@end