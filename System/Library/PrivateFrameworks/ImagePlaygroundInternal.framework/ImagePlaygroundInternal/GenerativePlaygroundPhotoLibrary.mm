@interface GenerativePlaygroundPhotoLibrary
- (_TtC23ImagePlaygroundInternal32GenerativePlaygroundPhotoLibrary)init;
- (void)photoLibraryDidChange:(id)change;
@end

@implementation GenerativePlaygroundPhotoLibrary

- (_TtC23ImagePlaygroundInternal32GenerativePlaygroundPhotoLibrary)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)photoLibraryDidChange:(id)change
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  v8 = sub_1D28785F8();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_1D2878568();
  changeCopy = change;
  selfCopy = self;
  v11 = changeCopy;
  v12 = sub_1D2878558();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E85E0];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = selfCopy;
  v13[5] = v11;
  sub_1D22AE01C(0, 0, v7, &unk_1D28857B0, v13);
}

@end