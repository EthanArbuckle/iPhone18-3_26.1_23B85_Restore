@interface MapsSuggestionsBluetoothCondition
- (BOOL)isTrue;
- (int)_notificationTokenConnect;
- (int)_notificationTokenDisconnect;
- (int)_notificationTokenExit;
- (void)set_notificationTokenConnect:(int)a3;
- (void)set_notificationTokenDisconnect:(int)a3;
- (void)set_notificationTokenExit:(int)a3;
@end

@implementation MapsSuggestionsBluetoothCondition

- (int)_notificationTokenConnect
{
  v3 = OBJC_IVAR____TtC15MapsSuggestions33MapsSuggestionsBluetoothCondition__notificationTokenConnect;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)set_notificationTokenConnect:(int)a3
{
  v5 = OBJC_IVAR____TtC15MapsSuggestions33MapsSuggestionsBluetoothCondition__notificationTokenConnect;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (int)_notificationTokenDisconnect
{
  v3 = OBJC_IVAR____TtC15MapsSuggestions33MapsSuggestionsBluetoothCondition__notificationTokenDisconnect;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)set_notificationTokenDisconnect:(int)a3
{
  v5 = OBJC_IVAR____TtC15MapsSuggestions33MapsSuggestionsBluetoothCondition__notificationTokenDisconnect;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (int)_notificationTokenExit
{
  v3 = OBJC_IVAR____TtC15MapsSuggestions33MapsSuggestionsBluetoothCondition__notificationTokenExit;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)set_notificationTokenExit:(int)a3
{
  v5 = OBJC_IVAR____TtC15MapsSuggestions33MapsSuggestionsBluetoothCondition__notificationTokenExit;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (BOOL)isTrue
{
  v2 = self;
  sub_1C529D90C();

  return v4;
}

@end