@interface SFEditableEffectStore
+ (NSString)behindToolbarFilename;
+ (NSString)bottomFieldFilename;
+ (NSString)toolbarFilename;
+ (NSString)webpageBottomBackdropFilename;
+ (SFEditableEffectStore)defaultStore;
- (NSURL)directoryURL;
- (SFEditableEffectStore)init;
- (SFEditableEffectStore)initWithDirectoryURL:(id)a3;
- (id)_directoryURL;
- (void)deleteEffectNamed:(id)a3;
- (void)loadEffectNamed:(NSString *)a3 completionHandler:(id)a4;
- (void)saveEffect:(id)a3 withName:(id)a4;
@end

@implementation SFEditableEffectStore

+ (NSString)bottomFieldFilename
{
  v2 = sub_18BC20B98();

  return v2;
}

+ (NSString)toolbarFilename
{
  v2 = sub_18BC20B98();

  return v2;
}

+ (NSString)behindToolbarFilename
{
  v2 = sub_18BC20B98();

  return v2;
}

+ (NSString)webpageBottomBackdropFilename
{
  v2 = sub_18BC20B98();

  return v2;
}

+ (SFEditableEffectStore)defaultStore
{
  if (qword_1EA9D2418 != -1)
  {
    swift_once();
  }

  v3 = qword_1EA9D8C08;

  return v3;
}

- (SFEditableEffectStore)initWithDirectoryURL:(id)a3
{
  v3 = sub_18BC1EA98();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1EA38();
  return sub_18BAD64DC(v5);
}

- (id)_directoryURL
{
  sub_18B7B193C(self + OBJC_IVAR___SFEditableEffectStore__directoryURL, v4);
  __swift_project_boxed_opaque_existential_1Tm(v4, v4[3]);
  v2 = sub_18BC21FB8();
  __swift_destroy_boxed_opaque_existential_1Tm(v4);

  return v2;
}

- (NSURL)directoryURL
{
  v3 = sub_18BC1EA98();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = self;
  v8 = [(SFEditableEffectStore *)v7 _directoryURL];
  sub_18BC218B8();
  swift_unknownObjectRelease();

  swift_dynamicCast();
  v9 = sub_18BC1E9E8();
  (*(v4 + 8))(v6, v3);

  return v9;
}

- (void)deleteEffectNamed:(id)a3
{
  v4 = sub_18BC20BD8();
  v6 = v5;
  v7 = self;
  sub_18BAD6AEC(v4, v6);
}

- (void)loadEffectNamed:(NSString *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DAE10);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_18BC20F48();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_18BC4C078;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_18BC4A550;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  sub_18BC10FA8(0, 0, v9, &unk_18BC55D20, v14);
}

- (void)saveEffect:(id)a3 withName:(id)a4
{
  v6 = sub_18BC20BD8();
  v8 = v7;
  v9 = a3;
  v10 = self;
  sub_18BAD7D90(v9, v6, v8);
}

- (SFEditableEffectStore)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end