@interface CAFUIAccountManager
- (_TtC5CAFUI19CAFUIAccountManager)init;
@end

@implementation CAFUIAccountManager

- (_TtC5CAFUI19CAFUIAccountManager)init
{
  v3 = OBJC_IVAR____TtC5CAFUI19CAFUIAccountManager_accountStore;
  v4 = [objc_opt_self() defaultStore];
  *(&self->super.isa + v3) = v4;
  v5 = [(objc_class *)v4 aa_primaryAppleAccount];
  *(&self->super.isa + OBJC_IVAR____TtC5CAFUI19CAFUIAccountManager_account) = v5;
  v6 = [objc_allocWithZone(MEMORY[0x277CECA90]) initWithAppleAccount:v5 grandSlamAccount:0 accountStore:*(&self->super.isa + v3)];
  *(&self->super.isa + OBJC_IVAR____TtC5CAFUI19CAFUIAccountManager_pictureStore) = v6;
  v8.receiver = self;
  v8.super_class = type metadata accessor for CAFUIAccountManager();
  return [(CAFUIAccountManager *)&v8 init];
}

@end