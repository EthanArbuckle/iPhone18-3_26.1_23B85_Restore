@interface DMCBackgroundTask
- (DMCBackgroundTask)init;
- (DMCBackgroundTask)initWithName:(id)name queue:(id)queue launchHandler:(id)handler;
- (NSString)name;
- (NSString)targetDateString;
- (id)completion;
- (id)targetDate;
- (void)cancel;
- (void)infuseRequest:(id)request interval:(double)interval tolerance:(double)tolerance requirements:(unint64_t)requirements;
- (void)setCompletion:(id)completion;
- (void)setTargetDateString:(id)string;
- (void)submitNewRequestWithInterval:(double)interval tolerance:(double)tolerance requirements:(unint64_t)requirements;
- (void)submitRequestWithInterval:(double)interval tolerance:(double)tolerance requirements:(unint64_t)requirements completion:(id)completion;
- (void)updateExistingRequest:(id)request interval:(double)interval tolerance:(double)tolerance requirements:(unint64_t)requirements;
@end

@implementation DMCBackgroundTask

- (NSString)name
{
  v2 = *(self + OBJC_IVAR___DMCBackgroundTask_name);
  v3 = *(self + OBJC_IVAR___DMCBackgroundTask_name + 8);

  v4 = sub_247F23EFC();

  return v4;
}

- (NSString)targetDateString
{
  if (*(self + OBJC_IVAR___DMCBackgroundTask_targetDateString + 8))
  {
    v2 = *(self + OBJC_IVAR___DMCBackgroundTask_targetDateString);
    v3 = *(self + OBJC_IVAR___DMCBackgroundTask_targetDateString + 8);

    v4 = sub_247F23EFC();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setTargetDateString:(id)string
{
  if (string)
  {
    v4 = sub_247F23F3C();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___DMCBackgroundTask_targetDateString);
  v7 = *(self + OBJC_IVAR___DMCBackgroundTask_targetDateString + 8);
  *v6 = v4;
  v6[1] = v5;
}

- (id)completion
{
  if (*(self + OBJC_IVAR___DMCBackgroundTask_completion))
  {
    v2 = *(self + OBJC_IVAR___DMCBackgroundTask_completion + 8);
    v5[4] = *(self + OBJC_IVAR___DMCBackgroundTask_completion);
    v5[5] = v2;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 1107296256;
    v5[2] = sub_247F08E84;
    v5[3] = &block_descriptor_28;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_247F08E80;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR___DMCBackgroundTask_completion);
  v8 = *(self + OBJC_IVAR___DMCBackgroundTask_completion);
  v9 = *(self + OBJC_IVAR___DMCBackgroundTask_completion + 8);
  *v7 = v6;
  v7[1] = v4;
  selfCopy = self;
  sub_247F081EC(v8);
}

- (DMCBackgroundTask)initWithName:(id)name queue:(id)queue launchHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = sub_247F23F3C();
  v9 = v8;
  if (v6)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v6;
    v6 = sub_247F08E80;
  }

  else
  {
    v10 = 0;
  }

  queueCopy = queue;
  return DMCBackgroundTask.init(name:queue:launchHandler:)(v7, v9, queue, v6, v10);
}

- (id)targetDate
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7EC68, &unk_247F25BC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v16 - v4;
  selfCopy = self;
  targetDateString = [(DMCBackgroundTask *)selfCopy targetDateString];
  if (targetDateString)
  {
    v8 = targetDateString;
    sub_247F23F3C();

    String.DMCDate.getter(v5);
  }

  else
  {
    v9 = sub_247F23DEC();
    (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  }

  v10 = sub_247F23DEC();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v5, 1, v10);
  v13 = 0;
  if (v12 != 1)
  {
    v14 = sub_247F23D8C();
    (*(v11 + 8))(v5, v10);
    v13 = v14;
  }

  return v13;
}

- (void)submitRequestWithInterval:(double)interval tolerance:(double)tolerance requirements:(unint64_t)requirements completion:(id)completion
{
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = v10;
  selfCopy = self;
  DMCBackgroundTask.submitRequest(withInterval:tolerance:requirements:completion:)(requirements, sub_247F08AC4, v11, interval, tolerance);
}

- (void)cancel
{
  selfCopy = self;
  DMCBackgroundTask.cancel()();
}

- (void)submitNewRequestWithInterval:(double)interval tolerance:(double)tolerance requirements:(unint64_t)requirements
{
  selfCopy = self;
  sub_247F06C3C(requirements, interval, tolerance);
}

- (void)updateExistingRequest:(id)request interval:(double)interval tolerance:(double)tolerance requirements:(unint64_t)requirements
{
  requestCopy = request;
  selfCopy = self;
  sub_247F072C4(requestCopy, requirements, interval, tolerance);
}

- (void)infuseRequest:(id)request interval:(double)interval tolerance:(double)tolerance requirements:(unint64_t)requirements
{
  requirementsCopy = requirements;
  requestCopy = request;
  selfCopy = self;
  sub_247F089A0(requestCopy, requirementsCopy, interval, tolerance);
}

- (DMCBackgroundTask)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end