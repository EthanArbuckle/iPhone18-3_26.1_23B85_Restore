@interface CAFUIAccountManager
- (_TtC5CAFUI19CAFUIAccountManager)init;
@end

@implementation CAFUIAccountManager

- (_TtC5CAFUI19CAFUIAccountManager)init
{
  v3 = OBJC_IVAR____TtC5CAFUI19CAFUIAccountManager_accountStore;
  defaultStore = [objc_opt_self() defaultStore];
  *(&self->super.isa + v3) = defaultStore;
  aa_primaryAppleAccount = [(objc_class *)defaultStore aa_primaryAppleAccount];
  *(&self->super.isa + OBJC_IVAR____TtC5CAFUI19CAFUIAccountManager_account) = aa_primaryAppleAccount;
  v6 = [objc_allocWithZone(MEMORY[0x277CECA90]) initWithAppleAccount:aa_primaryAppleAccount grandSlamAccount:0 accountStore:*(&self->super.isa + v3)];
  *(&self->super.isa + OBJC_IVAR____TtC5CAFUI19CAFUIAccountManager_pictureStore) = v6;
  v8.receiver = self;
  v8.super_class = type metadata accessor for CAFUIAccountManager();
  return [(CAFUIAccountManager *)&v8 init];
}

@end