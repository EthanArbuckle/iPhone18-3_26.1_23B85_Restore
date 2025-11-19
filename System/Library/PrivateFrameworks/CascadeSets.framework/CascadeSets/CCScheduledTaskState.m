@interface CCScheduledTaskState
- (BOOL)isExpired;
- (CCScheduledTaskState)initWithIdentifier:(id)a3 setBookkeeping:(id)a4;
- (CCSetBookkeeping)setBookkeeping;
- (NSString)identifier;
@end

@implementation CCScheduledTaskState

- (NSString)identifier
{
  sub_1B6E00428();
  v2 = sub_1B6E0937C();

  return v2;
}

- (CCSetBookkeeping)setBookkeeping
{
  v2 = sub_1B6E00498();

  return v2;
}

- (CCScheduledTaskState)initWithIdentifier:(id)a3 setBookkeeping:(id)a4
{
  sub_1B6E0938C();
  swift_unknownObjectRetain();
  return ScheduledTaskState.init(identifier:setBookkeeping:)();
}

- (BOOL)isExpired
{
  v2 = self;
  v3 = ScheduledTaskState.isExpired()();

  return v3;
}

@end