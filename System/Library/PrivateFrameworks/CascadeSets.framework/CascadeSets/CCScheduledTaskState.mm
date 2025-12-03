@interface CCScheduledTaskState
- (BOOL)isExpired;
- (CCScheduledTaskState)initWithIdentifier:(id)identifier setBookkeeping:(id)bookkeeping;
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

- (CCScheduledTaskState)initWithIdentifier:(id)identifier setBookkeeping:(id)bookkeeping
{
  sub_1B6E0938C();
  swift_unknownObjectRetain();
  return ScheduledTaskState.init(identifier:setBookkeeping:)();
}

- (BOOL)isExpired
{
  selfCopy = self;
  v3 = ScheduledTaskState.isExpired()();

  return v3;
}

@end