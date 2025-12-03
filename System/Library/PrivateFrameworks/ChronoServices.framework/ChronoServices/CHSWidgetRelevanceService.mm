@interface CHSWidgetRelevanceService
- (CHSWidgetRelevanceService)init;
- (CHSWidgetRelevanceService)initWithConnection:(id)connection cacheURL:(id)l options:(unint64_t)options;
- (CHSWidgetRelevanceService)initWithOptions:(unint64_t)options;
- (NSArray)widgetRelevanceProperties;
- (NSDictionary)timelineEntryRelevances;
- (void)_syncOnInternalQueue;
- (void)acquireLifetimeAssertionForWidget:(id)widget metrics:(id)metrics prewarm:(BOOL)prewarm timeout:(double)timeout completion:(id)completion;
- (void)acquireWidgetLifetimeAssertionForWidget:(id)widget metrics:(id)metrics completion:(id)completion;
- (void)invalidate;
- (void)reloadWidgetRelevanceForExtensionIdentity:(id)identity kind:(id)kind completion:(id)completion;
@end

@implementation CHSWidgetRelevanceService

- (CHSWidgetRelevanceService)initWithOptions:(unint64_t)options
{
  v5 = sub_195FA0478();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sharedInstance = [objc_opt_self() sharedInstance];
  v11 = CHSWidgetRelevanceServiceCacheDirectory();
  sub_195FA0428();

  v12 = sub_195FA0398();
  (*(v6 + 8))(v9, v5);
  v13 = [(CHSWidgetRelevanceService *)self initWithConnection:sharedInstance cacheURL:v12 options:options];

  return v13;
}

- (CHSWidgetRelevanceService)initWithConnection:(id)connection cacheURL:(id)l options:(unint64_t)options
{
  v7 = sub_195FA0478();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_195FA0428();
  return sub_195F442D8(connection, v10, options);
}

- (void)invalidate
{
  selfCopy = self;
  CHSWidgetRelevanceService.invalidate()();
}

- (NSDictionary)timelineEntryRelevances
{
  selfCopy = self;
  CHSWidgetRelevanceService.timelineEntryRelevances.getter();

  sub_195EB4B30(0, &qword_1EAEEDD50, off_1E74527C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDD58, &unk_195FACFC8);
  sub_195F48E88(&unk_1EAEEDD60, &qword_1EAEEDD50, off_1E74527C8);
  v3 = sub_195FA07E8();

  return v3;
}

- (NSArray)widgetRelevanceProperties
{
  selfCopy = self;
  CHSWidgetRelevanceService.widgetRelevanceProperties.getter();

  sub_195EB4B30(0, &qword_1EAEEBAE8, off_1E7452820);
  v3 = sub_195FA0B28();

  return v3;
}

- (void)reloadWidgetRelevanceForExtensionIdentity:(id)identity kind:(id)kind completion:(id)completion
{
  v8 = _Block_copy(completion);
  if (kind)
  {
    v9 = sub_195FA08B8();
    kind = v10;
  }

  else
  {
    v9 = 0;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  identityCopy = identity;
  selfCopy = self;
  CHSWidgetRelevanceService.reloadWidgetRelevance(for:kind:completion:)(identityCopy, v9, kind, sub_195F48ED4, v11);
}

- (void)acquireLifetimeAssertionForWidget:(id)widget metrics:(id)metrics prewarm:(BOOL)prewarm timeout:(double)timeout completion:(id)completion
{
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  widgetCopy = widget;
  metricsCopy = metrics;
  selfCopy = self;
  CHSWidgetRelevanceService.acquireLifetimeAssertion(for:metrics:prewarm:timeout:completion:)(widgetCopy, metricsCopy, prewarm, sub_195F49C44, v13, timeout);
}

- (void)acquireWidgetLifetimeAssertionForWidget:(id)widget metrics:(id)metrics completion:(id)completion
{
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v14[4] = sub_195F48ECC;
  v14[5] = v9;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_195F47AAC;
  v14[3] = &block_descriptor_71;
  v10 = _Block_copy(v14);
  widgetCopy = widget;
  metricsCopy = metrics;
  selfCopy = self;

  [(CHSWidgetRelevanceService *)selfCopy acquireLifetimeAssertionForWidget:widgetCopy metrics:metricsCopy prewarm:0 timeout:v10 completion:30.0];

  _Block_release(v10);
}

- (CHSWidgetRelevanceService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)_syncOnInternalQueue
{
  selfCopy = self;
  sub_195F4860C();
}

@end