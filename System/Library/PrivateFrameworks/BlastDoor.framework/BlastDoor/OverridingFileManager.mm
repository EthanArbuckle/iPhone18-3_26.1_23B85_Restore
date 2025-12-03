@interface OverridingFileManager
- (NSURL)temporaryDirectory;
- (_TtC9BlastDoor21OverridingFileManager)init;
- (id)URLForDirectory:(unint64_t)directory inDomain:(unint64_t)domain appropriateForURL:(id)l create:(BOOL)create error:(id *)error;
@end

@implementation OverridingFileManager

- (NSURL)temporaryDirectory
{
  v3 = sub_2146D8958();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  sub_21408B890(v7);

  v9 = sub_2146D8898();
  (*(v4 + 8))(v7, v3);

  return v9;
}

- (id)URLForDirectory:(unint64_t)directory inDomain:(unint64_t)domain appropriateForURL:(id)l create:(BOOL)create error:(id *)error
{
  v27[0] = error;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v27 - v14;
  v16 = sub_2146D8958();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = v27 - v22;
  if (l)
  {
    sub_2146D88E8();
    (*(v17 + 32))(v15, v21, v16);
    (*(v17 + 56))(v15, 0, 1, v16);
  }

  else
  {
    (*(v17 + 56))(v15, 1, 1, v16);
  }

  selfCopy = self;
  sub_21408BBEC(directory, domain, v15, create, v23);
  sub_213FB2DF4(v15, &unk_27C9131A0, &unk_2146E9D10);

  v25 = sub_2146D8898();
  (*(v17 + 8))(v23, v16);

  return v25;
}

- (_TtC9BlastDoor21OverridingFileManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end