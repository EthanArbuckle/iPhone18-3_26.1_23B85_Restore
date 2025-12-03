@interface IMPersistentTaskMonitor
- (IMPersistentTaskMonitor)initWithChangeHandler:(id)handler;
- (int64_t)remainingChats;
- (int64_t)remainingMessages;
- (void)cancel;
@end

@implementation IMPersistentTaskMonitor

- (IMPersistentTaskMonitor)initWithChangeHandler:(id)handler
{
  v3 = _Block_copy(handler);
  if (v3)
  {
    v4 = v3;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v3 = sub_1A8487008;
  }

  else
  {
    v5 = 0;
  }

  return sub_1A84858B0(v3, v5);
}

- (void)cancel
{
  selfCopy = self;
  sub_1A8486248();
}

- (int64_t)remainingChats
{
  selfCopy = self;
  v3 = sub_1A8486B7C();

  return v3;
}

- (int64_t)remainingMessages
{
  selfCopy = self;
  v3 = sub_1A8486C44();

  return v3;
}

@end