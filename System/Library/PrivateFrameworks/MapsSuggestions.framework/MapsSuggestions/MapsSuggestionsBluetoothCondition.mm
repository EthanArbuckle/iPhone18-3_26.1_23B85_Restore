@interface MapsSuggestionsBluetoothCondition
- (BOOL)isTrue;
- (int)_notificationTokenConnect;
- (int)_notificationTokenDisconnect;
- (int)_notificationTokenExit;
- (void)set_notificationTokenConnect:(int)connect;
- (void)set_notificationTokenDisconnect:(int)disconnect;
- (void)set_notificationTokenExit:(int)exit;
@end

@implementation MapsSuggestionsBluetoothCondition

- (int)_notificationTokenConnect
{
  v3 = OBJC_IVAR____TtC15MapsSuggestions33MapsSuggestionsBluetoothCondition__notificationTokenConnect;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)set_notificationTokenConnect:(int)connect
{
  v5 = OBJC_IVAR____TtC15MapsSuggestions33MapsSuggestionsBluetoothCondition__notificationTokenConnect;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = connect;
}

- (int)_notificationTokenDisconnect
{
  v3 = OBJC_IVAR____TtC15MapsSuggestions33MapsSuggestionsBluetoothCondition__notificationTokenDisconnect;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)set_notificationTokenDisconnect:(int)disconnect
{
  v5 = OBJC_IVAR____TtC15MapsSuggestions33MapsSuggestionsBluetoothCondition__notificationTokenDisconnect;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = disconnect;
}

- (int)_notificationTokenExit
{
  v3 = OBJC_IVAR____TtC15MapsSuggestions33MapsSuggestionsBluetoothCondition__notificationTokenExit;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)set_notificationTokenExit:(int)exit
{
  v5 = OBJC_IVAR____TtC15MapsSuggestions33MapsSuggestionsBluetoothCondition__notificationTokenExit;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = exit;
}

- (BOOL)isTrue
{
  selfCopy = self;
  sub_1C529D90C();

  return v4;
}

@end