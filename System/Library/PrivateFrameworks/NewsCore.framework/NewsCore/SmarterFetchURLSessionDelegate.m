@interface SmarterFetchURLSessionDelegate
- (_TtC8NewsCoreP33_518427B76BF8C86DB8CFA6C39DA250E530SmarterFetchURLSessionDelegate)init;
- (void)URLSession:(id)a3 didCreateTask:(id)a4;
@end

@implementation SmarterFetchURLSessionDelegate

- (void)URLSession:(id)a3 didCreateTask:(id)a4
{
  v6 = *(&self->super.isa + OBJC_IVAR____TtC8NewsCoreP33_518427B76BF8C86DB8CFA6C39DA250E530SmarterFetchURLSessionDelegate__task);
  v7 = a3;
  v8 = a4;
  v9 = self;

  os_unfair_lock_lock((v6 + 24));
  sub_1B64895E4((v6 + 16));
  os_unfair_lock_unlock((v6 + 24));
}

- (_TtC8NewsCoreP33_518427B76BF8C86DB8CFA6C39DA250E530SmarterFetchURLSessionDelegate)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC8NewsCoreP33_518427B76BF8C86DB8CFA6C39DA250E530SmarterFetchURLSessionDelegate__task;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94AA70, &unk_1B68130C0);
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 16) = 0;
  *(&self->super.isa + v4) = v5;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(SmarterFetchURLSessionDelegate *)&v7 init];
}

@end