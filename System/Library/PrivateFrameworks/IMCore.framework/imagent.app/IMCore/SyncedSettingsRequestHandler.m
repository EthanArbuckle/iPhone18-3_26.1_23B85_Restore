@interface SyncedSettingsRequestHandler
- (_TtC7imagent28SyncedSettingsRequestHandler)init;
- (void)fetchSettingExplicitlySet:(int64_t)a3 reply:(id)a4;
- (void)fetchSettingValueForKey:(int64_t)a3 reply:(id)a4;
- (void)setSettingValue:(id)a3 forKey:(int64_t)a4;
@end

@implementation SyncedSettingsRequestHandler

- (_TtC7imagent28SyncedSettingsRequestHandler)init
{
  *(&self->super.isa + OBJC_IVAR____TtC7imagent28SyncedSettingsRequestHandler_requiredCapabilities) = 0x20000000;
  v3.receiver = self;
  v3.super_class = type metadata accessor for SyncedSettingsRequestHandler();
  return [(SyncedSettingsRequestHandler *)&v3 init];
}

- (void)fetchSettingValueForKey:(int64_t)a3 reply:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = self;
  sub_10003BC54(a3, v7, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)setSettingValue:(id)a3 forKey:(int64_t)a4
{
  swift_unknownObjectRetain();
  v6 = self;
  sub_1000542D4();
  v7 = swift_unknownObjectRelease();
  v8 = (*((swift_isaMask & v6->super.isa) + 0x58))(v7);
  sub_10003526C(v9, v9[3]);
  [v8 setSettingValue:sub_100054414() forKey:a4];

  swift_unknownObjectRelease();
  sub_1000031D0(v9);
}

- (void)fetchSettingExplicitlySet:(int64_t)a3 reply:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = *((swift_isaMask & self->super.isa) + 0x58);
  v8 = self;
  v9 = v7();
  LOBYTE(a3) = [v9 settingExplicitlySetForKey:a3];

  v20 = &type metadata for Bool;
  v19[0] = a3;
  sub_10003A8B8(v19, v17);
  v10 = v18;
  if (v18)
  {
    v11 = sub_10003526C(v17, v18);
    v12 = *(v10 - 8);
    v13 = *(v12 + 64);
    __chkstk_darwin(v11);
    v15 = v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v15);
    v16 = sub_100054414();
    (*(v12 + 8))(v15, v10);
    sub_1000031D0(v17);
  }

  else
  {
    v16 = 0;
  }

  v6[2](v6, v16);
  _Block_release(v6);
  swift_unknownObjectRelease();

  sub_10003A928(v19);
}

@end