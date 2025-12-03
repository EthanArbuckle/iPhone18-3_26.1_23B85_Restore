@interface RecentsItemDataSource
- (_TtC16CallsAppServices21RecentsItemDataSource)init;
- (void)conversationManager:(id)manager didChangeActivatedLinks:(id)links;
- (void)conversationManager:(id)manager linkChangedForConversation:(id)conversation;
- (void)dealloc;
@end

@implementation RecentsItemDataSource

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *&self->configuration[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 40];
  if (v4 && (*(v4 + 52) & 1) == 0)
  {
    v6 = *(v4 + 48);
    selfCopy = self;

    notify_cancel(v6);
    *(v4 + 48) = 0;
    *(v4 + 52) = 1;
  }

  else
  {
    selfCopy2 = self;
  }

  v8.receiver = self;
  v8.super_class = ObjectType;
  [(RecentsItemDataSource *)&v8 dealloc];
}

- (_TtC16CallsAppServices21RecentsItemDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)conversationManager:(id)manager didChangeActivatedLinks:(id)links
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v15 - v7;
  sub_1D331DA18(0, &qword_1EDEBEEC0, 0x1E69D8B70);
  v9 = sub_1D33DE8B4();
  v10 = sub_1D33DE9B4();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  sub_1D33DE974();
  selfCopy = self;
  v12 = sub_1D33DE964();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E85E0];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = selfCopy;
  v13[5] = v9;
  sub_1D333E088(0, 0, v8, &unk_1D33E3780, v13);
}

- (void)conversationManager:(id)manager linkChangedForConversation:(id)conversation
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v14 - v7;
  v9 = sub_1D33DE9B4();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_1D33DE974();
  selfCopy = self;
  v11 = sub_1D33DE964();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = selfCopy;
  sub_1D333E088(0, 0, v8, &unk_1D33E3778, v12);
}

@end