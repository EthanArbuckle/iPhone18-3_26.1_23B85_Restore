@interface RealtimeCollaborationSelectionDocument
- (_TtC11NotesShared38RealtimeCollaborationSelectionDocument)init;
- (_TtC11NotesShared38RealtimeCollaborationSelectionDocument)initWithReplica:(id)replica;
- (_TtC11NotesShared38RealtimeCollaborationSelectionDocument)initWithVersion:(id)version rootObject:(id)object replica:(id)replica;
- (_TtC11NotesShared38RealtimeCollaborationSelectionDocument)initWithVersion:(id)version startVersion:(id)startVersion rootObject:(id)object replica:(id)replica;
- (unint64_t)mergeWithData:(id)data;
@end

@implementation RealtimeCollaborationSelectionDocument

- (unint64_t)mergeWithData:(id)data
{
  ObjectType = swift_getObjectType();
  dataCopy = data;
  selfCopy = self;
  v8 = sub_2150A37B0();
  v10 = v9;

  v11 = sub_2150A3790();
  v14.receiver = selfCopy;
  v14.super_class = ObjectType;
  v12 = [(ICCRDocument *)&v14 mergeWithData:v11];

  sub_215012258();
  sub_214F7EDE4(v8, v10);

  return v12;
}

- (_TtC11NotesShared38RealtimeCollaborationSelectionDocument)initWithReplica:(id)replica
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA42360);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  if (replica)
  {
    sub_2150A39C0();
    v7 = sub_2150A3A00();
    v9 = 0;
    v8 = (*(v7 - 8) + 56);
  }

  else
  {
    v7 = sub_2150A3A00();
    v8 = (*(v7 - 8) + 56);
    v9 = 1;
  }

  (*v8)(v6, v9, 1, v7);
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC11NotesShared38RealtimeCollaborationSelectionDocument)initWithVersion:(id)version rootObject:(id)object replica:(id)replica
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA42360);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  if (replica)
  {
    sub_2150A39C0();
    v9 = sub_2150A3A00();
    v11 = 0;
    v10 = (*(v9 - 8) + 56);
  }

  else
  {
    v9 = sub_2150A3A00();
    v10 = (*(v9 - 8) + 56);
    v11 = 1;
  }

  (*v10)(v8, v11, 1, v9);
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC11NotesShared38RealtimeCollaborationSelectionDocument)initWithVersion:(id)version startVersion:(id)startVersion rootObject:(id)object replica:(id)replica
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA42360);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v14 - v8;
  if (replica)
  {
    sub_2150A39C0();
    v10 = sub_2150A3A00();
    v12 = 0;
    v11 = (*(v10 - 8) + 56);
  }

  else
  {
    v10 = sub_2150A3A00();
    v11 = (*(v10 - 8) + 56);
    v12 = 1;
  }

  (*v11)(v9, v12, 1, v10);
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC11NotesShared38RealtimeCollaborationSelectionDocument)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end