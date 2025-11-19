@interface NTKCompanionWidgetHostController
- (NTKCompanionWidgetHostController)init;
@end

@implementation NTKCompanionWidgetHostController

- (NTKCompanionWidgetHostController)init
{
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA2D440);
  MEMORY[0x28223BE20]();
  v5 = &v11 - v4;
  swift_defaultActor_initialize();
  sub_22DCB5FCC();
  v11.receiver = self;
  v11.super_class = ObjectType;
  v6 = [(NTKCompanionWidgetHostController *)&v11 init];
  v7 = sub_22DCB62BC();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v6;
  v9 = v6;
  sub_22DC95460(0, 0, v5, &unk_22DCEC978, v8);

  return v9;
}

@end