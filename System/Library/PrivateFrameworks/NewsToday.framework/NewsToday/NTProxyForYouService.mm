@interface NTProxyForYouService
- (NTProxyForYouService)init;
- (NTProxyForYouService)initWithFeedPersonalizer:(id)personalizer;
- (void)fetchForYouWithRequest:(NTForYouRequest *)request configuration:(FCNewsAppConfiguration *)configuration fetchDate:(NSDate *)date completionHandler:(id)handler;
@end

@implementation NTProxyForYouService

- (NTProxyForYouService)initWithFeedPersonalizer:(id)personalizer
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___NTProxyForYouService_feedPersonalizer) = personalizer;
  v7.receiver = self;
  v7.super_class = ObjectType;
  swift_unknownObjectRetain();
  return [(NTProxyForYouService *)&v7 init];
}

- (void)fetchForYouWithRequest:(NTForYouRequest *)request configuration:(FCNewsAppConfiguration *)configuration fetchDate:(NSDate *)date completionHandler:(id)handler
{
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBED2C0, &qword_25BF73950) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v13 = &v22 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = request;
  v15[3] = configuration;
  v15[4] = date;
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
  requestCopy = request;
  swift_unknownObjectRetain();
  dateCopy = date;
  selfCopy = self;
  sub_25BF5381C(0, 0, v13, &unk_25BF73988, v18);
}

- (NTProxyForYouService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end