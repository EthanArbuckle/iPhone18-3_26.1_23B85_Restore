@interface MNDispatchTimer
- (MNDispatchTimer)init;
- (MNDispatchTimer)initWithTime:(double)time queue:(id)queue handler:(id)handler;
- (MNDispatchTimer)initWithTime:(double)time repeating:(BOOL)repeating queue:(id)queue handler:(id)handler;
- (void)activate;
- (void)cancel;
- (void)dealloc;
@end

@implementation MNDispatchTimer

- (MNDispatchTimer)initWithTime:(double)time repeating:(BOOL)repeating queue:(id)queue handler:(id)handler
{
  repeatingCopy = repeating;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  queueCopy = queue;
  v12 = sub_1D3134C9C(repeatingCopy, queueCopy, sub_1D3145440, v10, time);

  return v12;
}

- (void)dealloc
{
  if (*(&self->super.isa + OBJC_IVAR___MNDispatchTimer__isRunning) == 1)
  {
    *(&self->super.isa + OBJC_IVAR___MNDispatchTimer__isRunning) = 0;
    v3 = *(&self->super.isa + OBJC_IVAR___MNDispatchTimer__internalTimer);
    swift_getObjectType();
    selfCopy = self;
    sub_1D3277440();
  }

  else
  {
    selfCopy2 = self;
  }

  v6.receiver = self;
  v6.super_class = type metadata accessor for DispatchTimer();
  [(MNDispatchTimer *)&v6 dealloc];
}

- (MNDispatchTimer)initWithTime:(double)time queue:(id)queue handler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v14[4] = sub_1D3145428;
  v14[5] = v9;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1D3122E0C;
  v14[3] = &block_descriptor_13;
  v10 = _Block_copy(v14);
  queueCopy = queue;

  v12 = [(MNDispatchTimer *)self initWithTime:0 repeating:queueCopy queue:v10 handler:time];

  _Block_release(v10);
  return v12;
}

- (void)activate
{
  if ((*(&self->super.isa + OBJC_IVAR___MNDispatchTimer__isRunning) & 1) == 0)
  {
    *(&self->super.isa + OBJC_IVAR___MNDispatchTimer__isRunning) = 1;
    v3 = *(&self->super.isa + OBJC_IVAR___MNDispatchTimer__internalTimer);
    swift_getObjectType();
    selfCopy = self;
    sub_1D3277450();
  }
}

- (void)cancel
{
  if (*(&self->super.isa + OBJC_IVAR___MNDispatchTimer__isRunning) == 1)
  {
    *(&self->super.isa + OBJC_IVAR___MNDispatchTimer__isRunning) = 0;
    v3 = *(&self->super.isa + OBJC_IVAR___MNDispatchTimer__internalTimer);
    swift_getObjectType();
    selfCopy = self;
    sub_1D3277440();
  }
}

- (MNDispatchTimer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end