@interface FCThrottleRegistry
+ (FCThrottleRegistry)shared;
- (BOOL)shouldThrottleGroup:(id)group outRetryAfter:(double *)after;
- (FCThrottleRegistry)init;
- (void)processError:(id)error forGroup:(id)group;
- (void)processURLResponse:(id)response forGroup:(id)group;
- (void)throttleGroup:(id)group retryAfter:(double)after;
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

- (BOOL)shouldThrottleGroup:(id)group outRetryAfter:(double *)after
{
  v6 = sub_1B67D964C();
  v8 = v7;
  selfCopy = self;
  LOBYTE(after) = sub_1B6441388(v6, v8, after);

  return after & 1;
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

- (void)processError:(id)error forGroup:(id)group
{
  v6 = sub_1B67D964C();
  v8 = v7;
  errorCopy = error;
  selfCopy = self;
  v11 = sub_1B67D854C();
  fc_retryAfter = [v11 fc_retryAfter];

  if (fc_retryAfter)
  {
    [fc_retryAfter doubleValue];
    sub_1B6503FA8(v6, v8);
  }
}

- (void)processURLResponse:(id)response forGroup:(id)group
{
  v6 = sub_1B67D964C();
  v8 = v7;
  responseCopy = response;
  selfCopy = self;
  sub_1B650414C(responseCopy, v6, v8);
}

- (void)throttleGroup:(id)group retryAfter:(double)after
{
  v5 = sub_1B67D964C();
  v7 = v6;
  selfCopy = self;
  sub_1B6503FA8(v5, v7);
}

@end