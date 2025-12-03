@interface ICTextFindingCoordinator
- (BOOL)replaceMatches:(id)matches withString:(id)string error:(id *)error;
- (ICTextFindingCoordinator)init;
- (ICTextFindingCoordinator)initWithDataSource:(id)source;
- (void)configureFindInteraction:(id)interaction forTextView:(id)view;
- (void)matchesForString:(NSString *)string inTextStorage:(NSTextStorage *)storage note:(ICNote *)note ignoreCase:(BOOL)case wholeWords:(BOOL)words startsWith:(BOOL)with completion:(id)completion;
- (void)replaceAllOccurrencesOfQueryString:(NSString *)string withString:(NSString *)withString inTextStorage:(NSTextStorage *)storage note:(ICNote *)note ignoreCase:(BOOL)case wholeWords:(BOOL)words startsWith:(BOOL)with completion:(id)self0;
@end

@implementation ICTextFindingCoordinator

- (ICTextFindingCoordinator)initWithDataSource:(id)source
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

- (void)configureFindInteraction:(id)interaction forTextView:(id)view
{
  interactionCopy = interaction;
  viewCopy = view;
  selfCopy = self;
  _s11NotesEditor22TextFindingCoordinatorC9configure15findInteraction3forySo06UIFindH0C_So10ICTextViewCtF_0(interactionCopy);
}

- (void)matchesForString:(NSString *)string inTextStorage:(NSTextStorage *)storage note:(ICNote *)note ignoreCase:(BOOL)case wholeWords:(BOOL)words startsWith:(BOOL)with completion:(id)completion
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5ACE0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v28 - v17;
  v19 = _Block_copy(completion);
  v20 = swift_allocObject();
  *(v20 + 16) = string;
  *(v20 + 24) = storage;
  *(v20 + 32) = note;
  *(v20 + 40) = case;
  *(v20 + 41) = words;
  *(v20 + 42) = with;
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
  stringCopy = string;
  storageCopy = storage;
  noteCopy = note;
  selfCopy = self;
  sub_2153717B8(0, 0, v18, &unk_2154BEDD0, v23);
}

- (BOOL)replaceMatches:(id)matches withString:(id)string error:(id *)error
{
  sub_2151A6C9C(0, &unk_27CA5AC70);
  v6 = sub_2154A1F4C();
  v7 = sub_2154A1D6C();
  v9 = v8;
  selfCopy = self;
  sub_21534433C(v6, v7, v9, 0);

  return 1;
}

- (void)replaceAllOccurrencesOfQueryString:(NSString *)string withString:(NSString *)withString inTextStorage:(NSTextStorage *)storage note:(ICNote *)note ignoreCase:(BOOL)case wholeWords:(BOOL)words startsWith:(BOOL)with completion:(id)self0
{
  HIDWORD(v29) = words;
  stringCopy = string;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5ACE0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v29 - v17;
  v19 = _Block_copy(completion);
  v20 = swift_allocObject();
  *(v20 + 16) = string;
  *(v20 + 24) = withString;
  *(v20 + 32) = storage;
  *(v20 + 40) = note;
  *(v20 + 48) = case;
  *(v20 + 49) = BYTE4(v29);
  *(v20 + 50) = with;
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
  v24 = stringCopy;
  withStringCopy = withString;
  storageCopy = storage;
  noteCopy = note;
  selfCopy = self;
  sub_2153717B8(0, 0, v18, &unk_2154BEDB0, v23);
}

@end