@interface IMRemoteIntentFilePersistenceManager
+ (id)sharedManager;
- (IMRemoteIntentFilePersistenceManager)init;
- (void)touchFilePath:(id)path forGUID:(id)d;
- (void)touchFilePaths:(id)paths forGUID:(id)d;
@end

@implementation IMRemoteIntentFilePersistenceManager

+ (id)sharedManager
{
  if (qword_1EB302350 != -1)
  {
    swift_once();
  }

  v3 = qword_1EB338E58;

  return v3;
}

- (void)touchFilePath:(id)path forGUID:(id)d
{
  v5 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v22 - v6;
  v8 = sub_1A88C72E8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1A88C7288();
  v23 = sub_1A88C82E8();
  v12 = v11;
  selfCopy = self;
  sub_1A88C8788();
  v14 = sub_1A88C87A8();
  v15 = (*(*(v14 - 8) + 56))(v7, 0, 1, v14);
  MEMORY[0x1EEE9AC00](v15);
  v16 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v16, v16, v8);
  v17 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v18 = (v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  *(v19 + 4) = selfCopy;
  (*(v9 + 32))(&v19[v17], v16, v8);
  v20 = &v19[v18];
  *v20 = v23;
  v20[1] = v12;
  v21 = selfCopy;
  sub_1A8865C1C(0, 0, v7, &unk_1A88F9020, v19);

  sub_1A85EF638(v7, &unk_1EB3090D0);
  (*(v9 + 8))(v16, v8);
}

- (void)touchFilePaths:(id)paths forGUID:(id)d
{
  v5 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  sub_1A88C72E8();
  sub_1A87173B4(&qword_1EB303178);
  v8 = sub_1A88C88F8();
  v9 = sub_1A88C82E8();
  v11 = v10;
  selfCopy = self;
  sub_1A88C8788();
  v13 = sub_1A88C87A8();
  (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = selfCopy;
  v14[5] = v8;
  v14[6] = v9;
  v14[7] = v11;
  v15 = selfCopy;
  sub_1A8865C1C(0, 0, v7, &unk_1A88F9018, v14);

  sub_1A85EF638(v7, &unk_1EB3090D0);
}

- (IMRemoteIntentFilePersistenceManager)init
{
  *(&self->super.isa + OBJC_IVAR___IMRemoteIntentFilePersistenceManager__manifest) = 0;
  v3.receiver = self;
  v3.super_class = IMRemoteIntentFilePersistenceManager;
  return [(IMRemoteIntentFilePersistenceManager *)&v3 init];
}

@end