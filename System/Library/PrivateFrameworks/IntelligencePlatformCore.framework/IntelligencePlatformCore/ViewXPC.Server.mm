@interface ViewXPC.Server
- (void)accessTokenForFeaturesWithIsSandboxed:(BOOL)a3 useCase:(id)a4 completion:(id)a5;
- (void)accessTokenForViewName:(NSString *)a3 isSandboxed:(BOOL)a4 useCase:(NSString *)a5 completion:(id)a6;
- (void)performUpdateForViewNames:(NSArray *)a3 useCase:(NSString *)a4 includeDependencies:(BOOL)a5 completion:(id)a6;
- (void)reportSQLiteErrorForViewName:(NSString *)a3 sqliteErrorCode:(int64_t)a4 useCase:(NSString *)a5 completion:(id)a6;
@end

@implementation ViewXPC.Server

- (void)performUpdateForViewNames:(NSArray *)a3 useCase:(NSString *)a4 includeDependencies:(BOOL)a5 completion:(id)a6
{
  v10 = _Block_copy(a6);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  *(v11 + 32) = a5;
  *(v11 + 40) = v10;
  *(v11 + 48) = self;
  v12 = a3;
  v13 = a4;
  v14 = self;

  sub_1C446D134(&unk_1C4F6DBB8, v11);
}

- (void)accessTokenForViewName:(NSString *)a3 isSandboxed:(BOOL)a4 useCase:(NSString *)a5 completion:(id)a6
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

  sub_1C446D134(&unk_1C4F6DBA8, v11);
}

- (void)accessTokenForFeaturesWithIsSandboxed:(BOOL)a3 useCase:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = a4;
  v10 = self;
  sub_1C4D25478(a3, v9, v10, v8);
  _Block_release(v8);
}

- (void)reportSQLiteErrorForViewName:(NSString *)a3 sqliteErrorCode:(int64_t)a4 useCase:(NSString *)a5 completion:(id)a6
{
  v10 = _Block_copy(a6);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = v10;
  v11[6] = self;
  v12 = a3;
  v13 = a5;
  v14 = self;

  sub_1C446D134(&unk_1C4F6DB38, v11);
}

@end