@interface IMDSpamFilteringHelper
+ (id)sharedHelper;
- (IMDSpamFilteringHelper)init;
- (id)eventPayloadFor:(int64_t)for service:(id)service;
- (void)presentDebugUI;
@end

@implementation IMDSpamFilteringHelper

+ (id)sharedHelper
{
  if (qword_27D8CCC90 != -1)
  {
    swift_once();
  }

  v3 = qword_27D8CED38;

  return v3;
}

- (void)presentDebugUI
{
  selfCopy = self;
  sub_22B77205C();
}

- (id)eventPayloadFor:(int64_t)for service:(id)service
{
  if (service)
  {
    v6 = sub_22B7DB6A8();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  selfCopy = self;
  sub_22B772C7C(for, v6, v8);

  v10 = sub_22B7DB568();

  return v10;
}

- (IMDSpamFilteringHelper)init
{
  v3 = OBJC_IVAR___IMDSpamFilteringHelper_debugUIService;
  v4 = sub_22B7DB448();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  *(&self->super.isa + v3) = sub_22B7DB438();
  v8.receiver = self;
  v8.super_class = IMDSpamFilteringHelper;
  return [(IMDSpamFilteringHelper *)&v8 init];
}

@end