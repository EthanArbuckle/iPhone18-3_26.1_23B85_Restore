@interface FCThrottleRegistry
+ (FCThrottleRegistry)shared;
- (BOOL)shouldThrottleGroup:(id)a3 outRetryAfter:(double *)a4;
- (FCThrottleRegistry)init;
- (void)processError:(id)a3 forGroup:(id)a4;
- (void)processURLResponse:(id)a3 forGroup:(id)a4;
- (void)throttleGroup:(id)a3 retryAfter:(double)a4;
@end

@implementation FCThrottleRegistry

+ (FCThrottleRegistry)shared
{
  if (qword_1EDB26998 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDB20630;

  return v3;
}

- (BOOL)shouldThrottleGroup:(id)a3 outRetryAfter:(double *)a4
{
  v6 = sub_1B67D964C();
  v8 = v7;
  v9 = self;
  LOBYTE(a4) = sub_1B6441388(v6, v8, a4);

  return a4 & 1;
}

- (FCThrottleRegistry)init
{
  v3 = OBJC_IVAR___FCThrottleRegistry_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B8B0, &unk_1B6819540);
  v4 = swift_allocObject();
  *(v4 + 4) = 0;
  *(&self->super.isa + v3) = v4;
  result = sub_1B67DA07C();
  __break(1u);
  return result;
}

- (void)processError:(id)a3 forGroup:(id)a4
{
  v6 = sub_1B67D964C();
  v8 = v7;
  v9 = a3;
  v10 = self;
  v11 = sub_1B67D854C();
  v12 = [v11 fc_retryAfter];

  if (v12)
  {
    [v12 doubleValue];
    sub_1B6503FA8(v6, v8);
  }
}

- (void)processURLResponse:(id)a3 forGroup:(id)a4
{
  v6 = sub_1B67D964C();
  v8 = v7;
  v9 = a3;
  v10 = self;
  sub_1B650414C(v9, v6, v8);
}

- (void)throttleGroup:(id)a3 retryAfter:(double)a4
{
  v5 = sub_1B67D964C();
  v7 = v6;
  v8 = self;
  sub_1B6503FA8(v5, v7);
}

@end