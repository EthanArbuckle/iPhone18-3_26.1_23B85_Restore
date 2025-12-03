@interface FIPauseRingsCoordinator
+ (NSString)activitySummaryCacheChangedNotification;
+ (NSString)activitySummaryRangeNotificationKey;
+ (NSString)didUpdatePauseStateNotification;
+ (NSString)initialPauseStateLoadedNotification;
- (BOOL)isPausedForActivitySummary:(id)summary;
- (BOOL)isPausedForActivitySummaryCacheIndex:(int64_t)index;
- (BOOL)isPausedForActivitySummaryCacheIndexStart:(int64_t)start end:(int64_t)end;
- (FIPauseRingsCoordinator)init;
- (NSDate)resumeDate;
- (id)formattedResumeDate;
- (void)dealloc;
- (void)pauseRingsUntilDate:(id)date completionHandler:(id)handler;
- (void)unpauseRingsWithCompletionHandler:(id)handler;
@end

@implementation FIPauseRingsCoordinator

- (BOOL)isPausedForActivitySummary:(id)summary
{
  summaryCopy = summary;
  summaryCopy2 = summary;
  selfCopy = self;
  sub_24B364324(summaryCopy);
  LOBYTE(summaryCopy) = v7;

  return summaryCopy & 1;
}

+ (NSString)didUpdatePauseStateNotification
{
  v2 = sub_24B3AB694();

  return v2;
}

+ (NSString)activitySummaryCacheChangedNotification
{
  v2 = sub_24B3AB694();

  return v2;
}

+ (NSString)initialPauseStateLoadedNotification
{
  v2 = sub_24B3AB694();

  return v2;
}

+ (NSString)activitySummaryRangeNotificationKey
{
  v2 = sub_24B3AB694();

  return v2;
}

- (void)dealloc
{
  v3 = *(&self->super.isa + OBJC_IVAR___FIPauseRingsCoordinator_query);
  if (v3)
  {
    v4 = *(&self->super.isa + OBJC_IVAR___FIPauseRingsCoordinator_healthStore);
    selfCopy = self;
    [v4 stopQuery_];
  }

  else
  {
    selfCopy2 = self;
  }

  v7.receiver = self;
  v7.super_class = FIPauseRingsCoordinator;
  [(FIPauseRingsCoordinator *)&v7 dealloc];
}

- (BOOL)isPausedForActivitySummaryCacheIndex:(int64_t)index
{
  selfCopy = self;
  sub_24B3A00F8(index);
  LOBYTE(index) = v5;

  return index & 1;
}

- (BOOL)isPausedForActivitySummaryCacheIndexStart:(int64_t)start end:(int64_t)end
{
  selfCopy = self;
  sub_24B3A0360(start, end);
  LOBYTE(end) = v7;

  return end & 1;
}

- (void)pauseRingsUntilDate:(id)date completionHandler:(id)handler
{
  v6 = sub_24B3AB4C4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(handler);
  sub_24B3AB494();
  if (v11)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    v11 = sub_24B3A6FB4;
  }

  else
  {
    v12 = 0;
  }

  selfCopy = self;
  sub_24B3A05E8(v10, v11, v12);
  sub_24B3A68E4(v11);

  (*(v7 + 8))(v10, v6);
}

- (void)unpauseRingsWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_24B3A68F4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_24B3A1FBC(v7, v6);
  sub_24B3A68E4(v7);
}

- (NSDate)resumeDate
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4F08, &qword_24B3AF450);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  selfCopy = self;
  sub_24B3A2BA4(v6);

  v8 = sub_24B3AB4C4();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    v12 = sub_24B3AB474();
    (*(v9 + 8))(v6, v8);
    v11 = v12;
  }

  return v11;
}

- (id)formattedResumeDate
{
  selfCopy = self;
  sub_24B3A31D4();
  v4 = v3;

  if (v4)
  {
    v5 = sub_24B3AB694();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (FIPauseRingsCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end