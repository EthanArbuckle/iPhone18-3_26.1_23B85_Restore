@interface InternalBiomeXPC.Server
- (void)viewClearAllDataWithViewQuery:(GDViewQuery *)query completion:(id)completion;
- (void)viewDumpStateWithCompletion:(id)completion;
- (void)viewRunUpdateWithViewQuery:(GDViewQuery *)query forceRebuild:(BOOL)rebuild priorityOverride:(NSNumber *)override completion:(id)completion;
- (void)viewSetEnabledWithName:(NSString *)name enabled:(BOOL)enabled completion:(id)completion;
- (void)viewValidateWithViewQuery:(GDViewQuery *)query applyFixes:(BOOL)fixes verbose:(int64_t)verbose completion:(id)completion;
@end

@implementation InternalBiomeXPC.Server

- (void)viewRunUpdateWithViewQuery:(GDViewQuery *)query forceRebuild:(BOOL)rebuild priorityOverride:(NSNumber *)override completion:(id)completion
{
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  *(v11 + 16) = query;
  *(v11 + 24) = rebuild;
  *(v11 + 32) = override;
  *(v11 + 40) = v10;
  *(v11 + 48) = self;
  queryCopy = query;
  overrideCopy = override;
  selfCopy = self;

  sub_1C446D134(&unk_1C4F3D700, v11);
}

- (void)viewClearAllDataWithViewQuery:(GDViewQuery *)query completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  v7[2] = query;
  v7[3] = v6;
  v7[4] = self;
  queryCopy = query;
  selfCopy = self;

  sub_1C446D134(&unk_1C4F3D6F0, v7);
}

- (void)viewValidateWithViewQuery:(GDViewQuery *)query applyFixes:(BOOL)fixes verbose:(int64_t)verbose completion:(id)completion
{
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  *(v11 + 16) = query;
  *(v11 + 24) = fixes;
  *(v11 + 32) = verbose;
  *(v11 + 40) = v10;
  *(v11 + 48) = self;
  queryCopy = query;
  selfCopy = self;

  sub_1C446D134(&unk_1C4F3D6E0, v11);
}

- (void)viewDumpStateWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  *(swift_allocObject() + 16) = v4;
  selfCopy = self;
  InternalBiomeXPC.Server.viewDumpState(completion:)(sub_1C47880C0);
}

- (void)viewSetEnabledWithName:(NSString *)name enabled:(BOOL)enabled completion:(id)completion
{
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = name;
  *(v9 + 24) = enabled;
  *(v9 + 32) = v8;
  *(v9 + 40) = self;
  nameCopy = name;
  selfCopy = self;

  sub_1C446D134(&unk_1C4F3D6C0, v9);
}

@end