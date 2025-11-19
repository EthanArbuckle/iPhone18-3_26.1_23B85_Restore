@interface ManagedSettingsExtension
- (_TtC24ManagedSettingsExtension24ManagedSettingsExtension)init;
- (void)beginRequestWithExtensionContext:(id)a3;
@end

@implementation ManagedSettingsExtension

- (void)beginRequestWithExtensionContext:(id)a3
{
  v5[4] = nullsub_1;
  v5[5] = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_100000CBC;
  v5[3] = &unk_100004078;
  v4 = _Block_copy(v5);
  [a3 completeRequestReturningItems:0 completionHandler:v4];
  _Block_release(v4);
}

- (_TtC24ManagedSettingsExtension24ManagedSettingsExtension)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ManagedSettingsExtension();
  return [(ManagedSettingsExtension *)&v3 init];
}

@end