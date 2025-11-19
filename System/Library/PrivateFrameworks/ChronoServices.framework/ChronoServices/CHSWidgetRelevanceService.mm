@interface CHSWidgetRelevanceService
- (CHSWidgetRelevanceService)init;
- (CHSWidgetRelevanceService)initWithConnection:(id)a3 cacheURL:(id)a4 options:(unint64_t)a5;
- (CHSWidgetRelevanceService)initWithOptions:(unint64_t)a3;
- (NSArray)widgetRelevanceProperties;
- (NSDictionary)timelineEntryRelevances;
- (void)_syncOnInternalQueue;
- (void)acquireLifetimeAssertionForWidget:(id)a3 metrics:(id)a4 prewarm:(BOOL)a5 timeout:(double)a6 completion:(id)a7;
- (void)acquireWidgetLifetimeAssertionForWidget:(id)a3 metrics:(id)a4 completion:(id)a5;
- (void)invalidate;
- (void)reloadWidgetRelevanceForExtensionIdentity:(id)a3 kind:(id)a4 completion:(id)a5;
@end

@implementation CHSWidgetRelevanceService

- (CHSWidgetRelevanceService)initWithOptions:(unint64_t)a3
{
  v5 = sub_195FA0478();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() sharedInstance];
  v11 = CHSWidgetRelevanceServiceCacheDirectory();
  sub_195FA0428();

  v12 = sub_195FA0398();
  (*(v6 + 8))(v9, v5);
  v13 = [(CHSWidgetRelevanceService *)self initWithConnection:v10 cacheURL:v12 options:a3];

  return v13;
}

- (CHSWidgetRelevanceService)initWithConnection:(id)a3 cacheURL:(id)a4 options:(unint64_t)a5
{
  v7 = sub_195FA0478();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_195FA0428();
  return sub_195F442D8(a3, v10, a5);
}

- (void)invalidate
{
  v2 = self;
  CHSWidgetRelevanceService.invalidate()();
}

- (NSDictionary)timelineEntryRelevances
{
  v2 = self;
  CHSWidgetRelevanceService.timelineEntryRelevances.getter();

  sub_195EB4B30(0, &qword_1EAEEDD50, off_1E74527C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDD58, &unk_195FACFC8);
  sub_195F48E88(&unk_1EAEEDD60, &qword_1EAEEDD50, off_1E74527C8);
  v3 = sub_195FA07E8();

  return v3;
}

- (NSArray)widgetRelevanceProperties
{
  v2 = self;
  CHSWidgetRelevanceService.widgetRelevanceProperties.getter();

  sub_195EB4B30(0, &qword_1EAEEBAE8, off_1E7452820);
  v3 = sub_195FA0B28();

  return v3;
}

- (void)reloadWidgetRelevanceForExtensionIdentity:(id)a3 kind:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  if (a4)
  {
    v9 = sub_195FA08B8();
    a4 = v10;
  }

  else
  {
    v9 = 0;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  v12 = a3;
  v13 = self;
  CHSWidgetRelevanceService.reloadWidgetRelevance(for:kind:completion:)(v12, v9, a4, sub_195F48ED4, v11);
}

- (void)acquireLifetimeAssertionForWidget:(id)a3 metrics:(id)a4 prewarm:(BOOL)a5 timeout:(double)a6 completion:(id)a7
{
  v12 = _Block_copy(a7);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v14 = a3;
  v15 = a4;
  v16 = self;
  CHSWidgetRelevanceService.acquireLifetimeAssertion(for:metrics:prewarm:timeout:completion:)(v14, v15, a5, sub_195F49C44, v13, a6);
}

- (void)acquireWidgetLifetimeAssertionForWidget:(id)a3 metrics:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v14[4] = sub_195F48ECC;
  v14[5] = v9;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_195F47AAC;
  v14[3] = &block_descriptor_71;
  v10 = _Block_copy(v14);
  v11 = a3;
  v12 = a4;
  v13 = self;

  [(CHSWidgetRelevanceService *)v13 acquireLifetimeAssertionForWidget:v11 metrics:v12 prewarm:0 timeout:v10 completion:30.0];

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
  v2 = self;
  sub_195F4860C();
}

@end