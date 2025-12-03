@interface IMRemoteIntentUserVault
+ (id)sharedUserVault;
- (IMRemoteIntentUserVault)init;
- (id)convertedCommonPathForDirectory:(id)directory;
- (id)convertedPathForRemoteFile:(id)file;
@end

@implementation IMRemoteIntentUserVault

+ (id)sharedUserVault
{
  if (qword_1EB302290 != -1)
  {
    swift_once();
  }

  v3 = qword_1EB306598;

  return v3;
}

- (IMRemoteIntentUserVault)init
{
  *(&self->super.isa + OBJC_IVAR___IMRemoteIntentUserVault_commonPathsMap) = MEMORY[0x1E69E7CC8];
  v3.receiver = self;
  v3.super_class = IMRemoteIntentUserVault;
  return [(IMRemoteIntentUserVault *)&v3 init];
}

- (id)convertedCommonPathForDirectory:(id)directory
{
  v4 = sub_1A88C72E8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - v9;
  sub_1A88C7288();
  selfCopy = self;
  IMRemoteIntentUserVault.convertedCommonPath(forDirectory:)(v10, v8);

  v12 = *(v5 + 8);
  v12(v10, v4);
  v13 = sub_1A88C7238();
  v12(v8, v4);

  return v13;
}

- (id)convertedPathForRemoteFile:(id)file
{
  v4 = sub_1A870CCE0(&unk_1EB309060);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_1A88C72E8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A88C7288();
  selfCopy = self;
  IMRemoteIntentUserVault.convertedPath(forRemoteFile:)(v6);

  v12 = *(v8 + 8);
  v12(v10, v7);
  v13 = (*(v8 + 48))(v6, 1, v7);
  v14 = 0;
  if (v13 != 1)
  {
    v15 = sub_1A88C7238();
    v12(v6, v7);
    v14 = v15;
  }

  return v14;
}

@end