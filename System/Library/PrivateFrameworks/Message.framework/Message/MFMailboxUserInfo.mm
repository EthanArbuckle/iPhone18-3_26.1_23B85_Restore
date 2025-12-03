@interface MFMailboxUserInfo
- (MFMailboxUserInfo)initWithFileURL:(id)l;
- (id)objectForKeyedSubscript:(id)subscript;
- (void)setObject:(id)object forKeyedSubscript:(id)subscript;
@end

@implementation MFMailboxUserInfo

- (MFMailboxUserInfo)initWithFileURL:(id)l
{
  selfCopy = self;
  lCopy = l;
  swift_getObjectType();
  v9 = sub_1B0E42E68();
  v10 = *(v9 - 8);
  v11 = v9 - 8;
  v12 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v5 - v12;
  v14 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](lCopy);
  v15 = &v5 - v14;
  MEMORY[0x1E69E5928](v3);
  if (lCopy)
  {
    v7 = lCopy;
    v6 = lCopy;
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

- (id)objectForKeyedSubscript:(id)subscript
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](subscript);
  MEMORY[0x1E69E5928](self);
  v4 = sub_1B0E44AD8();
  v9 = MFMailboxUserInfo.subscript.getter(v4, v5);

  MEMORY[0x1E69E5920](subscript);
  MEMORY[0x1E69E5920](self);

  return v9;
}

- (void)setObject:(id)object forKeyedSubscript:(id)subscript
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](object);
  MEMORY[0x1E69E5928](subscript);
  MEMORY[0x1E69E5928](self);
  v7 = sub_1B0E44AD8();
  MFMailboxUserInfo.subscript.setter(object, v7, v5);
  MEMORY[0x1E69E5920](subscript);
  MEMORY[0x1E69E5920](self);
}

@end