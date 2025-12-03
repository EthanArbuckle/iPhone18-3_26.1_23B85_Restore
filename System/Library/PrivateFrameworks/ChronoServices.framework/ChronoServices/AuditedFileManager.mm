@interface AuditedFileManager
- (BOOL)createDirectoryAtPath:(id)path withIntermediateDirectories:(BOOL)directories attributes:(id)attributes error:(id *)error;
- (BOOL)createDirectoryAtURL:(id)l withIntermediateDirectories:(BOOL)directories attributes:(id)attributes error:(id *)error;
- (BOOL)createFileAtPath:(id)path contents:(id)contents attributes:(id)attributes;
- (BOOL)removeItemAtPath:(id)path error:(id *)error;
- (BOOL)removeItemAtURL:(id)l error:(id *)error;
- (_TtC14ChronoServices18AuditedFileManager)init;
- (id)URLForDirectory:(unint64_t)directory inDomain:(unint64_t)domain appropriateForURL:(id)l create:(BOOL)create error:(id *)error;
@end

@implementation AuditedFileManager

- (BOOL)createFileAtPath:(id)path contents:(id)contents attributes:(id)attributes
{
  v8 = sub_195FA08B8();
  v10 = v9;
  if (!contents)
  {
    attributesCopy = attributes;
    selfCopy = self;
    v15 = 0xF000000000000000;
    if (attributes)
    {
      goto LABEL_3;
    }

LABEL_5:
    v16 = 0;
    goto LABEL_6;
  }

  attributesCopy2 = attributes;
  selfCopy2 = self;
  contentsCopy = contents;
  contents = sub_195FA04D8();
  v15 = v14;

  if (!attributes)
  {
    goto LABEL_5;
  }

LABEL_3:
  type metadata accessor for FileAttributeKey(0);
  sub_195F3ECD8();
  v16 = sub_195FA0808();

LABEL_6:
  v19 = sub_195F3B7B0(v8, v10, contents, v15, v16);

  sub_195EC5A34(contents, v15);

  return v19 & 1;
}

- (BOOL)createDirectoryAtURL:(id)l withIntermediateDirectories:(BOOL)directories attributes:(id)attributes error:(id *)error
{
  v9 = sub_195FA0478();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_195FA0428();
  if (attributes)
  {
    type metadata accessor for FileAttributeKey(0);
    sub_195F3ECD8();
    attributes = sub_195FA0808();
  }

  selfCopy = self;
  sub_195F3BA78(v13, directories, attributes);
  (*(v10 + 8))(v13, v9);

  return 1;
}

- (BOOL)createDirectoryAtPath:(id)path withIntermediateDirectories:(BOOL)directories attributes:(id)attributes error:(id *)error
{
  v9 = sub_195FA08B8();
  v11 = v10;
  if (attributes)
  {
    type metadata accessor for FileAttributeKey(0);
    sub_195F3ECD8();
    attributes = sub_195FA0808();
  }

  selfCopy = self;
  sub_195F3BE44(v9, v11, directories, attributes);

  return 1;
}

- (BOOL)removeItemAtURL:(id)l error:(id *)error
{
  v5 = sub_195FA0478();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_195FA0428();
  selfCopy = self;
  sub_195F3C148();
  (*(v6 + 8))(v9, v5);

  return 1;
}

- (BOOL)removeItemAtPath:(id)path error:(id *)error
{
  sub_195FA08B8();
  selfCopy = self;
  sub_195F3C4C0();

  return 1;
}

- (id)URLForDirectory:(unint64_t)directory inDomain:(unint64_t)domain appropriateForURL:(id)l create:(BOOL)create error:(id *)error
{
  v27[0] = error;
  createCopy = create;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDAC8, &unk_195FACC70);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v27 - v14;
  v16 = sub_195FA0478();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = v27 - v22;
  if (l)
  {
    sub_195FA0428();
    (*(v17 + 32))(v15, v21, v16);
    (*(v17 + 56))(v15, 0, 1, v16);
  }

  else
  {
    (*(v17 + 56))(v15, 1, 1, v16);
  }

  selfCopy = self;
  sub_195F3D14C(directory, domain, v15, createCopy, v23);
  sub_195F3AE44(v15);

  v25 = sub_195FA0398();
  (*(v17 + 8))(v23, v16);

  return v25;
}

- (_TtC14ChronoServices18AuditedFileManager)init
{
  v3 = OBJC_IVAR____TtC14ChronoServices18AuditedFileManager__lock;
  type metadata accessor for UnfairLock();
  v4 = swift_allocObject();
  v5 = swift_slowAlloc();
  *v5 = 0;
  *(v4 + 2) = v5;
  *(&self->super.super.isa + v3) = v4;
  *(&self->super.super.isa + OBJC_IVAR____TtC14ChronoServices18AuditedFileManager__lock_urls) = MEMORY[0x1E69E7CD0];
  v7.receiver = self;
  v7.super_class = type metadata accessor for AuditedFileManager();
  return [(AuditedFileManager *)&v7 init];
}

@end