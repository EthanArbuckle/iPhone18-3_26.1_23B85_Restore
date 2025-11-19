@interface NTProxyForYouService
- (NTProxyForYouService)init;
- (NTProxyForYouService)initWithFeedPersonalizer:(id)a3;
- (void)fetchForYouWithRequest:(NTForYouRequest *)a3 configuration:(FCNewsAppConfiguration *)a4 fetchDate:(NSDate *)a5 completionHandler:(id)a6;
@end

@implementation NTProxyForYouService

- (NTProxyForYouService)initWithFeedPersonalizer:(id)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___NTProxyForYouService_feedPersonalizer) = a3;
  v7.receiver = self;
  v7.super_class = ObjectType;
  swift_unknownObjectRetain();
  return [(NTProxyForYouService *)&v7 init];
}

- (void)fetchForYouWithRequest:(NTForYouRequest *)a3 configuration:(FCNewsAppConfiguration *)a4 fetchDate:(NSDate *)a5 completionHandler:(id)a6
{
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBED2C0, &qword_25BF73950) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v13 = &v22 - v12;
  v14 = _Block_copy(a6);
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a5;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_25BF6CB10();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_25BF73968;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_25BF73978;
  v18[5] = v17;
  v19 = a3;
  swift_unknownObjectRetain();
  v20 = a5;
  v21 = self;
  sub_25BF5381C(0, 0, v13, &unk_25BF73988, v18);
}

- (NTProxyForYouService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end