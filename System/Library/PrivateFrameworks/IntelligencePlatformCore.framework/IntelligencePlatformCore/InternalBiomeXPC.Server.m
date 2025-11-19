@interface InternalBiomeXPC.Server
- (void)viewClearAllDataWithViewQuery:(GDViewQuery *)a3 completion:(id)a4;
- (void)viewDumpStateWithCompletion:(id)a3;
- (void)viewRunUpdateWithViewQuery:(GDViewQuery *)a3 forceRebuild:(BOOL)a4 priorityOverride:(NSNumber *)a5 completion:(id)a6;
- (void)viewSetEnabledWithName:(NSString *)a3 enabled:(BOOL)a4 completion:(id)a5;
- (void)viewValidateWithViewQuery:(GDViewQuery *)a3 applyFixes:(BOOL)a4 verbose:(int64_t)a5 completion:(id)a6;
@end

@implementation InternalBiomeXPC.Server

- (void)viewRunUpdateWithViewQuery:(GDViewQuery *)a3 forceRebuild:(BOOL)a4 priorityOverride:(NSNumber *)a5 completion:(id)a6
{
  v10 = _Block_copy(a6);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  *(v11 + 32) = a5;
  *(v11 + 40) = v10;
  *(v11 + 48) = self;
  v12 = a3;
  v13 = a5;
  v14 = self;

  sub_1C446D134(&unk_1C4F3D700, v11);
}

- (void)viewClearAllDataWithViewQuery:(GDViewQuery *)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;
  v8 = a3;
  v9 = self;

  sub_1C446D134(&unk_1C4F3D6F0, v7);
}

- (void)viewValidateWithViewQuery:(GDViewQuery *)a3 applyFixes:(BOOL)a4 verbose:(int64_t)a5 completion:(id)a6
{
  v10 = _Block_copy(a6);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  *(v11 + 32) = a5;
  *(v11 + 40) = v10;
  *(v11 + 48) = self;
  v12 = a3;
  v13 = self;

  sub_1C446D134(&unk_1C4F3D6E0, v11);
}

- (void)viewDumpStateWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  *(swift_allocObject() + 16) = v4;
  v5 = self;
  InternalBiomeXPC.Server.viewDumpState(completion:)(sub_1C47880C0);
}

- (void)viewSetEnabledWithName:(NSString *)a3 enabled:(BOOL)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  *(v9 + 32) = v8;
  *(v9 + 40) = self;
  v10 = a3;
  v11 = self;

  sub_1C446D134(&unk_1C4F3D6C0, v9);
}

@end