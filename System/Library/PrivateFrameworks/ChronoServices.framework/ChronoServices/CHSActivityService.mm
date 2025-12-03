@interface CHSActivityService
- (CHSActivityService)init;
- (id)subscribeToActivityID:(id)d withHandler:(id)handler;
- (void)dealloc;
- (void)invalidate;
@end

@implementation CHSActivityService

- (CHSActivityService)init
{
  sharedInstance = [objc_opt_self() sharedInstance];
  v4 = [(CHSActivityService *)self initWithConnection:sharedInstance];

  return v4;
}

- (void)dealloc
{
  v3 = *(&self->super.isa + OBJC_IVAR___CHSActivityService_queue_activityServiceAssertion);
  selfCopy = self;
  if (v3)
  {
    [v3 invalidate];
  }

  v5.receiver = self;
  v5.super_class = CHSActivityService;
  [(CHSActivityService *)&v5 dealloc];
}

- (void)invalidate
{
  selfCopy = self;
  CHSActivityService.invalidate()();
}

- (id)subscribeToActivityID:(id)d withHandler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = sub_195FA08B8();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  selfCopy = self;
  v11 = CHSActivityService.subscribe(toActivityID:withHandler:)(v6, v8, sub_195F43F1C, v9);

  return v11;
}

@end