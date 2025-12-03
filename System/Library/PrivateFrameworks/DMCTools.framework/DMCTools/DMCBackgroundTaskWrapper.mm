@interface DMCBackgroundTaskWrapper
- (BOOL)extendForInterval:(double)interval error:(id *)error;
- (DMCBackgroundTaskWrapper)init;
- (DMCBackgroundTaskWrapper)initWithTask:(id)task;
- (void)setCompleted;
- (void)setTask:(id)task;
@end

@implementation DMCBackgroundTaskWrapper

- (void)setTask:(id)task
{
  v4 = *(&self->super.isa + OBJC_IVAR___DMCBackgroundTaskWrapper_task);
  *(&self->super.isa + OBJC_IVAR___DMCBackgroundTaskWrapper_task) = task;
  taskCopy = task;
}

- (DMCBackgroundTaskWrapper)initWithTask:(id)task
{
  *(&self->super.isa + OBJC_IVAR___DMCBackgroundTaskWrapper_completed) = 0;
  *(&self->super.isa + OBJC_IVAR___DMCBackgroundTaskWrapper_task) = task;
  v5.receiver = self;
  v5.super_class = DMCBackgroundTaskWrapper;
  taskCopy = task;
  return [(DMCBackgroundTaskWrapper *)&v5 init];
}

- (void)setCompleted
{
  selfCopy = self;
  task = [(DMCBackgroundTaskWrapper *)selfCopy task];
  [(BGSystemTask *)task setTaskCompleted];

  [(DMCBackgroundTaskWrapper *)selfCopy setCompleted:1];
}

- (BOOL)extendForInterval:(double)interval error:(id *)error
{
  selfCopy = self;
  DMCBackgroundTaskWrapper.extend(forInterval:)(interval);

  if (v7)
  {
    if (error)
    {
      v8 = sub_247F23C8C();

      v9 = v8;
      *error = v8;
    }

    else
    {
    }
  }

  return v7 == 0;
}

- (DMCBackgroundTaskWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end