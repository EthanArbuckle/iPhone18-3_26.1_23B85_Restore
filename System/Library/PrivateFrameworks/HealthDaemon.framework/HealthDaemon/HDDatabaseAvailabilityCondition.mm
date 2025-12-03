@interface HDDatabaseAvailabilityCondition
- (BOOL)isConditionMet;
- (HDDatabase)db;
- (HDDatabaseAvailabilityCondition)init;
- (id)callback;
- (void)database:(id)database protectedDataDidBecomeAvailable:(BOOL)available;
- (void)setCallback:(id)callback;
- (void)setLoggingCategory:(id)category;
- (void)setReadyCallback:(id)callback;
- (void)setWaitingStartTime:(id)time;
@end

@implementation HDDatabaseAvailabilityCondition

- (HDDatabase)db
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (id)callback
{
  if (*(self + OBJC_IVAR___HDDatabaseAvailabilityCondition_callback))
  {
    v2 = *(self + OBJC_IVAR___HDDatabaseAvailabilityCondition_callback + 8);
    v5[4] = *(self + OBJC_IVAR___HDDatabaseAvailabilityCondition_callback);
    v5[5] = v2;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 1107296256;
    v5[2] = sub_2289DF830;
    v5[3] = &block_descriptor_12;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCallback:(id)callback
{
  v4 = _Block_copy(callback);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_2289E057C;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR___HDDatabaseAvailabilityCondition_callback);
  v8 = *(self + OBJC_IVAR___HDDatabaseAvailabilityCondition_callback);
  v9 = *(self + OBJC_IVAR___HDDatabaseAvailabilityCondition_callback + 8);
  *v7 = v6;
  v7[1] = v4;
  selfCopy = self;
  sub_2289ACBE4(v8);
}

- (void)setWaitingStartTime:(id)time
{
  v4 = *(self + OBJC_IVAR___HDDatabaseAvailabilityCondition_waitingStartTime);
  *(self + OBJC_IVAR___HDDatabaseAvailabilityCondition_waitingStartTime) = time;
  timeCopy = time;
}

- (void)setLoggingCategory:(id)category
{
  v4 = *(self + OBJC_IVAR___HDDatabaseAvailabilityCondition_loggingCategory);
  *(self + OBJC_IVAR___HDDatabaseAvailabilityCondition_loggingCategory) = category;
  categoryCopy = category;
}

- (void)database:(id)database protectedDataDidBecomeAvailable:(BOOL)available
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_2289DFF5C(available);
  swift_unknownObjectRelease();
}

- (void)setReadyCallback:(id)callback
{
  v4 = _Block_copy(callback);
  _Block_copy(v4);
  selfCopy = self;
  sub_2289E0368(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (BOOL)isConditionMet
{
  selfCopy = self;
  v3 = [(HDDatabaseAvailabilityCondition *)selfCopy db];
  if (v3)
  {
    v4 = v3;
    isProtectedDataAvailable = [(HDDatabase *)v3 isProtectedDataAvailable];
  }

  else
  {
    isProtectedDataAvailable = 0;
  }

  return isProtectedDataAvailable;
}

- (HDDatabaseAvailabilityCondition)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end