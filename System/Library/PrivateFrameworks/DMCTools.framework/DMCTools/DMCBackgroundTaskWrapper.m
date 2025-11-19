@interface DMCBackgroundTaskWrapper
- (BOOL)extendForInterval:(double)a3 error:(id *)a4;
- (DMCBackgroundTaskWrapper)init;
- (DMCBackgroundTaskWrapper)initWithTask:(id)a3;
- (void)setCompleted;
- (void)setTask:(id)a3;
@end

@implementation DMCBackgroundTaskWrapper

- (void)setTask:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___DMCBackgroundTaskWrapper_task);
  *(&self->super.isa + OBJC_IVAR___DMCBackgroundTaskWrapper_task) = a3;
  v3 = a3;
}

- (DMCBackgroundTaskWrapper)initWithTask:(id)a3
{
  *(&self->super.isa + OBJC_IVAR___DMCBackgroundTaskWrapper_completed) = 0;
  *(&self->super.isa + OBJC_IVAR___DMCBackgroundTaskWrapper_task) = a3;
  v5.receiver = self;
  v5.super_class = DMCBackgroundTaskWrapper;
  v3 = a3;
  return [(DMCBackgroundTaskWrapper *)&v5 init];
}

- (void)setCompleted
{
  v3 = self;
  v2 = [(DMCBackgroundTaskWrapper *)v3 task];
  [(BGSystemTask *)v2 setTaskCompleted];

  [(DMCBackgroundTaskWrapper *)v3 setCompleted:1];
}

- (BOOL)extendForInterval:(double)a3 error:(id *)a4
{
  v6 = self;
  DMCBackgroundTaskWrapper.extend(forInterval:)(a3);

  if (v7)
  {
    if (a4)
    {
      v8 = sub_247F23C8C();

      v9 = v8;
      *a4 = v8;
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