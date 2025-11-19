@interface AuditedFileManager
- (BOOL)createDirectoryAtPath:(id)a3 withIntermediateDirectories:(BOOL)a4 attributes:(id)a5 error:(id *)a6;
- (BOOL)createDirectoryAtURL:(id)a3 withIntermediateDirectories:(BOOL)a4 attributes:(id)a5 error:(id *)a6;
- (BOOL)createFileAtPath:(id)a3 contents:(id)a4 attributes:(id)a5;
- (BOOL)removeItemAtPath:(id)a3 error:(id *)a4;
- (BOOL)removeItemAtURL:(id)a3 error:(id *)a4;
- (_TtC14ChronoServices18AuditedFileManager)init;
- (id)URLForDirectory:(unint64_t)a3 inDomain:(unint64_t)a4 appropriateForURL:(id)a5 create:(BOOL)a6 error:(id *)a7;
@end

@implementation AuditedFileManager

- (BOOL)createFileAtPath:(id)a3 contents:(id)a4 attributes:(id)a5
{
  v8 = sub_195FA08B8();
  v10 = v9;
  if (!a4)
  {
    v17 = a5;
    v18 = self;
    v15 = 0xF000000000000000;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v16 = 0;
    goto LABEL_6;
  }

  v11 = a5;
  v12 = self;
  v13 = a4;
  a4 = sub_195FA04D8();
  v15 = v14;

  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  type metadata accessor for FileAttributeKey(0);
  sub_195F3ECD8();
  v16 = sub_195FA0808();

LABEL_6:
  v19 = sub_195F3B7B0(v8, v10, a4, v15, v16);

  sub_195EC5A34(a4, v15);

  return v19 & 1;
}

- (BOOL)createDirectoryAtURL:(id)a3 withIntermediateDirectories:(BOOL)a4 attributes:(id)a5 error:(id *)a6
{
  v9 = sub_195FA0478();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_195FA0428();
  if (a5)
  {
    type metadata accessor for FileAttributeKey(0);
    sub_195F3ECD8();
    a5 = sub_195FA0808();
  }

  v14 = self;
  sub_195F3BA78(v13, a4, a5);
  (*(v10 + 8))(v13, v9);

  return 1;
}

- (BOOL)createDirectoryAtPath:(id)a3 withIntermediateDirectories:(BOOL)a4 attributes:(id)a5 error:(id *)a6
{
  v9 = sub_195FA08B8();
  v11 = v10;
  if (a5)
  {
    type metadata accessor for FileAttributeKey(0);
    sub_195F3ECD8();
    a5 = sub_195FA0808();
  }

  v12 = self;
  sub_195F3BE44(v9, v11, a4, a5);

  return 1;
}

- (BOOL)removeItemAtURL:(id)a3 error:(id *)a4
{
  v5 = sub_195FA0478();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_195FA0428();
  v10 = self;
  sub_195F3C148();
  (*(v6 + 8))(v9, v5);

  return 1;
}

- (BOOL)removeItemAtPath:(id)a3 error:(id *)a4
{
  sub_195FA08B8();
  v5 = self;
  sub_195F3C4C0();

  return 1;
}

- (id)URLForDirectory:(unint64_t)a3 inDomain:(unint64_t)a4 appropriateForURL:(id)a5 create:(BOOL)a6 error:(id *)a7
{
  v27[0] = a7;
  v7 = a6;
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
  if (a5)
  {
    sub_195FA0428();
    (*(v17 + 32))(v15, v21, v16);
    (*(v17 + 56))(v15, 0, 1, v16);
  }

  else
  {
    (*(v17 + 56))(v15, 1, 1, v16);
  }

  v24 = self;
  sub_195F3D14C(a3, a4, v15, v7, v23);
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