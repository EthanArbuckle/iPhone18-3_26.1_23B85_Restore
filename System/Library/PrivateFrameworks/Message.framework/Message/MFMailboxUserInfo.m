@interface MFMailboxUserInfo
- (MFMailboxUserInfo)initWithFileURL:(id)a3;
- (id)objectForKeyedSubscript:(id)a3;
- (void)setObject:(id)a3 forKeyedSubscript:(id)a4;
@end

@implementation MFMailboxUserInfo

- (MFMailboxUserInfo)initWithFileURL:(id)a3
{
  v8 = self;
  v16 = a3;
  swift_getObjectType();
  v9 = sub_1B0E42E68();
  v10 = *(v9 - 8);
  v11 = v9 - 8;
  v12 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v5 - v12;
  v14 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v16);
  v15 = &v5 - v14;
  MEMORY[0x1E69E5928](v3);
  if (v16)
  {
    v7 = v16;
    v6 = v16;
    sub_1B0E42DE8();
    (*(v10 + 32))(v15, v13, v9);
    (*(v10 + 56))(v15, 0, 1, v9);
    MEMORY[0x1E69E5920](v6);
  }

  else
  {
    (*(v10 + 56))(v15, 1, 1, v9);
  }

  return MFMailboxUserInfo.init(fileURL:)(v15);
}

- (id)objectForKeyedSubscript:(id)a3
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  v4 = sub_1B0E44AD8();
  v9 = MFMailboxUserInfo.subscript.getter(v4, v5);

  MEMORY[0x1E69E5920](a3);
  MEMORY[0x1E69E5920](self);

  return v9;
}

- (void)setObject:(id)a3 forKeyedSubscript:(id)a4
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](a4);
  MEMORY[0x1E69E5928](self);
  v7 = sub_1B0E44AD8();
  MFMailboxUserInfo.subscript.setter(a3, v7, v5);
  MEMORY[0x1E69E5920](a4);
  MEMORY[0x1E69E5920](self);
}

@end