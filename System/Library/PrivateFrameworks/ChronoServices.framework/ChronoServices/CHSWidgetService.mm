@interface CHSWidgetService
+ (CHSWidgetService)sharedWidgetService;
- (CHSWidgetService)init;
- (void)invalidateRelevancesOfKind:(id)kind inBundle:(id)bundle completion:(id)completion;
@end

@implementation CHSWidgetService

+ (CHSWidgetService)sharedWidgetService
{
  if (qword_1EAEEC240 != -1)
  {
    swift_once();
  }

  v3 = qword_1EAEEC248;

  return v3;
}

- (void)invalidateRelevancesOfKind:(id)kind inBundle:(id)bundle completion:(id)completion
{
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = *(&self->super.isa + OBJC_IVAR___CHSWidgetService_connection);
  v15[4] = sub_195F48ED4;
  v15[5] = v9;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_195F9B590;
  v15[3] = &block_descriptor_13;
  v11 = _Block_copy(v15);
  kindCopy = kind;
  bundleCopy = bundle;
  selfCopy = self;

  [v10 invalidateRelevancesOfKind:kindCopy inBundle:bundleCopy completion:v11];

  _Block_release(v11);
}

- (CHSWidgetService)init
{
  v3 = OBJC_IVAR___CHSWidgetService_connection;
  *(&self->super.isa + v3) = [objc_opt_self() sharedInstance];
  v5.receiver = self;
  v5.super_class = CHSWidgetService;
  return [(CHSWidgetService *)&v5 init];
}

@end