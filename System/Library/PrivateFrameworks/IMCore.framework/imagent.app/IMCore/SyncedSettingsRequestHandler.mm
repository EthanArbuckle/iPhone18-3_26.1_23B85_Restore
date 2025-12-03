@interface SyncedSettingsRequestHandler
- (_TtC7imagent28SyncedSettingsRequestHandler)init;
- (void)fetchSettingExplicitlySet:(int64_t)set reply:(id)reply;
- (void)fetchSettingValueForKey:(int64_t)key reply:(id)reply;
- (void)setSettingValue:(id)value forKey:(int64_t)key;
@end

@implementation SyncedSettingsRequestHandler

- (_TtC7imagent28SyncedSettingsRequestHandler)init
{
  *(&self->super.isa + OBJC_IVAR____TtC7imagent28SyncedSettingsRequestHandler_requiredCapabilities) = 0x20000000;
  v3.receiver = self;
  v3.super_class = type metadata accessor for SyncedSettingsRequestHandler();
  return [(SyncedSettingsRequestHandler *)&v3 init];
}

- (void)fetchSettingValueForKey:(int64_t)key reply:(id)reply
{
  v6 = _Block_copy(reply);
  _Block_copy(v6);
  selfCopy = self;
  sub_10003BC54(key, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)setSettingValue:(id)value forKey:(int64_t)key
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1000542D4();
  v7 = swift_unknownObjectRelease();
  v8 = (*((swift_isaMask & selfCopy->super.isa) + 0x58))(v7);
  sub_10003526C(v9, v9[3]);
  [v8 setSettingValue:sub_100054414() forKey:key];

  swift_unknownObjectRelease();
  sub_1000031D0(v9);
}

- (void)fetchSettingExplicitlySet:(int64_t)set reply:(id)reply
{
  v6 = _Block_copy(reply);
  v7 = *((swift_isaMask & self->super.isa) + 0x58);
  selfCopy = self;
  v9 = v7();
  LOBYTE(set) = [v9 settingExplicitlySetForKey:set];

  v20 = &type metadata for Bool;
  v19[0] = set;
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