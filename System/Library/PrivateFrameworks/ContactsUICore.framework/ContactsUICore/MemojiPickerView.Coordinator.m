@interface MemojiPickerView.Coordinator
- (_TtCV14ContactsUICore16MemojiPickerView11Coordinator)init;
- (void)wrapper:(id)a3 memojiMetadataForSelectedRecord:(id)a4;
- (void)wrapperDidCancel:(id)a3;
@end

@implementation MemojiPickerView.Coordinator

- (void)wrapperDidCancel:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA2C8);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  v9 = OBJC_IVAR____TtCV14ContactsUICore16MemojiPickerView11Coordinator_request;
  swift_beginAccess();
  sub_1A34B6940(self + v9, v8);
  v10 = *&v8[*(v6 + 48)];
  v11 = *(*v10 + *MEMORY[0x1E69E6B68] + 16);
  v12 = (*(*v10 + 48) + 3) & 0x1FFFFFFFCLL;
  v13 = a3;
  v14 = self;
  os_unfair_lock_lock((v10 + v12));
  sub_1A329AB2C(v10 + v11);
  os_unfair_lock_unlock((v10 + v12));
  sub_1A3288FDC(v8, &qword_1EB0CA2C8);
}

- (void)wrapper:(id)a3 memojiMetadataForSelectedRecord:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1A34B67E0(v7);
}

- (_TtCV14ContactsUICore16MemojiPickerView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end