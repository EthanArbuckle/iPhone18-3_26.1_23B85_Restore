@interface MySportsTestSuite
- (_TtC7NewsUI217MySportsTestSuite)init;
- (void)setupTestWithContext:(id)a3 completion:(id)a4;
@end

@implementation MySportsTestSuite

- (void)setupTestWithContext:(id)a3 completion:(id)a4
{
  sub_218760638();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = sub_219BF5BF4();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = self;
  v13[5] = a3;
  v13[6] = sub_218967168;
  v13[7] = v11;
  v14 = a3;
  v15 = self;
  sub_218AB3D80(0, 0, v9, &unk_219C85E40, v13);
}

- (_TtC7NewsUI217MySportsTestSuite)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end