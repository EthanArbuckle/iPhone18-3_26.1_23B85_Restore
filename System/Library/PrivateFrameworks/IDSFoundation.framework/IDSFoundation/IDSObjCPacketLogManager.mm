@interface IDSObjCPacketLogManager
+ (void)clean;
+ (void)copyPacketLogsToTmpDirectoryWithCompletionHandler:(id)handler;
- (IDSObjCPacketLogManager)init;
@end

@implementation IDSObjCPacketLogManager

+ (void)clean
{
  v2 = sub_1A7CC7FFC(&unk_1EB2B61C0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v8 - v4;
  v6 = sub_1A7E226D0();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  sub_1A7D94654(0, 0, v5, &unk_1A7E45710, v7);
}

+ (void)copyPacketLogsToTmpDirectoryWithCompletionHandler:(id)handler
{
  v5 = sub_1A7CC7FFC(&unk_1EB2B61C0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v14 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_1A7E226D0();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1A7E456F0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1A7E48E60;
  v13[5] = v12;
  sub_1A7DE5274(0, 0, v8, &unk_1A7E45700, v13);
}

- (IDSObjCPacketLogManager)init
{
  v3.receiver = self;
  v3.super_class = IDSObjCPacketLogManager;
  return [(IDSObjCPacketLogManager *)&v3 init];
}

@end