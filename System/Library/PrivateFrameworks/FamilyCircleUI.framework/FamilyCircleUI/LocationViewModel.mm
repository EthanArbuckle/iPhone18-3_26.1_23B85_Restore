@interface LocationViewModel
+ (id)createModel;
+ (void)setShared:(id)shared;
- (_TtC14FamilyCircleUI17LocationViewModel)init;
- (void)dealloc;
@end

@implementation LocationViewModel

+ (void)setShared:(id)shared
{
  swift_beginAccess();
  v4 = qword_27CDB9740;
  qword_27CDB9740 = shared;
  sharedCopy = shared;
}

- (void)dealloc
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - v5;
  v7 = sub_21BE28DAC();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = self;
  selfCopy = self;
  sub_21BBA9018(0, 0, v6, &unk_21BE40590, v8);

  v10 = type metadata accessor for LocationViewModel();
  v11.receiver = selfCopy;
  v11.super_class = v10;
  [(LocationViewModel *)&v11 dealloc];
}

+ (id)createModel
{
  v2 = _s14FamilyCircleUI17LocationViewModelC06createF0ACyFZ_0();

  return v2;
}

- (_TtC14FamilyCircleUI17LocationViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end