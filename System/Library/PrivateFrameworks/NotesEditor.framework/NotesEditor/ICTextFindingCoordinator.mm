@interface ICTextFindingCoordinator
- (BOOL)replaceMatches:(id)a3 withString:(id)a4 error:(id *)a5;
- (ICTextFindingCoordinator)init;
- (ICTextFindingCoordinator)initWithDataSource:(id)a3;
- (void)configureFindInteraction:(id)a3 forTextView:(id)a4;
- (void)matchesForString:(NSString *)a3 inTextStorage:(NSTextStorage *)a4 note:(ICNote *)a5 ignoreCase:(BOOL)a6 wholeWords:(BOOL)a7 startsWith:(BOOL)a8 completion:(id)a9;
- (void)replaceAllOccurrencesOfQueryString:(NSString *)a3 withString:(NSString *)a4 inTextStorage:(NSTextStorage *)a5 note:(ICNote *)a6 ignoreCase:(BOOL)a7 wholeWords:(BOOL)a8 startsWith:(BOOL)a9 completion:(id)a10;
@end

@implementation ICTextFindingCoordinator

- (ICTextFindingCoordinator)initWithDataSource:(id)a3
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(ICTextFindingCoordinator *)&v6 init];
}

- (ICTextFindingCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)configureFindInteraction:(id)a3 forTextView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  _s11NotesEditor22TextFindingCoordinatorC9configure15findInteraction3forySo06UIFindH0C_So10ICTextViewCtF_0(v6);
}

- (void)matchesForString:(NSString *)a3 inTextStorage:(NSTextStorage *)a4 note:(ICNote *)a5 ignoreCase:(BOOL)a6 wholeWords:(BOOL)a7 startsWith:(BOOL)a8 completion:(id)a9
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5ACE0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v28 - v17;
  v19 = _Block_copy(a9);
  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  *(v20 + 24) = a4;
  *(v20 + 32) = a5;
  *(v20 + 40) = a6;
  *(v20 + 41) = a7;
  *(v20 + 42) = a8;
  *(v20 + 48) = v19;
  *(v20 + 56) = self;
  v21 = sub_2154A202C();
  (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &unk_2154BEDC0;
  v22[5] = v20;
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = &unk_2154BEDC8;
  v23[5] = v22;
  v24 = a3;
  v25 = a4;
  v26 = a5;
  v27 = self;
  sub_2153717B8(0, 0, v18, &unk_2154BEDD0, v23);
}

- (BOOL)replaceMatches:(id)a3 withString:(id)a4 error:(id *)a5
{
  sub_2151A6C9C(0, &unk_27CA5AC70);
  v6 = sub_2154A1F4C();
  v7 = sub_2154A1D6C();
  v9 = v8;
  v10 = self;
  sub_21534433C(v6, v7, v9, 0);

  return 1;
}

- (void)replaceAllOccurrencesOfQueryString:(NSString *)a3 withString:(NSString *)a4 inTextStorage:(NSTextStorage *)a5 note:(ICNote *)a6 ignoreCase:(BOOL)a7 wholeWords:(BOOL)a8 startsWith:(BOOL)a9 completion:(id)a10
{
  HIDWORD(v29) = a8;
  v30 = a3;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5ACE0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v29 - v17;
  v19 = _Block_copy(a10);
  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  *(v20 + 24) = a4;
  *(v20 + 32) = a5;
  *(v20 + 40) = a6;
  *(v20 + 48) = a7;
  *(v20 + 49) = BYTE4(v29);
  *(v20 + 50) = a9;
  *(v20 + 56) = v19;
  *(v20 + 64) = self;
  v21 = sub_2154A202C();
  (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &unk_2154BEDA0;
  v22[5] = v20;
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = &unk_2154BECA0;
  v23[5] = v22;
  v24 = v30;
  v25 = a4;
  v26 = a5;
  v27 = a6;
  v28 = self;
  sub_2153717B8(0, 0, v18, &unk_2154BEDB0, v23);
}

@end