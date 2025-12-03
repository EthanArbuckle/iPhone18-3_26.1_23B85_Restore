@interface ViewXPC.Server
- (void)accessTokenForFeaturesWithIsSandboxed:(BOOL)sandboxed useCase:(id)case completion:(id)completion;
- (void)accessTokenForViewName:(NSString *)name isSandboxed:(BOOL)sandboxed useCase:(NSString *)case completion:(id)completion;
- (void)performUpdateForViewNames:(NSArray *)names useCase:(NSString *)case includeDependencies:(BOOL)dependencies completion:(id)completion;
- (void)reportSQLiteErrorForViewName:(NSString *)name sqliteErrorCode:(int64_t)code useCase:(NSString *)case completion:(id)completion;
@end

@implementation ViewXPC.Server

- (void)performUpdateForViewNames:(NSArray *)names useCase:(NSString *)case includeDependencies:(BOOL)dependencies completion:(id)completion
{
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  *(v11 + 16) = names;
  *(v11 + 24) = case;
  *(v11 + 32) = dependencies;
  *(v11 + 40) = v10;
  *(v11 + 48) = self;
  namesCopy = names;
  caseCopy = case;
  selfCopy = self;

  sub_1C446D134(&unk_1C4F6DBB8, v11);
}

- (void)accessTokenForViewName:(NSString *)name isSandboxed:(BOOL)sandboxed useCase:(NSString *)case completion:(id)completion
{
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  *(v11 + 16) = name;
  *(v11 + 24) = sandboxed;
  *(v11 + 32) = case;
  *(v11 + 40) = v10;
  *(v11 + 48) = self;
  nameCopy = name;
  caseCopy = case;
  selfCopy = self;

  sub_1C446D134(&unk_1C4F6DBA8, v11);
}

- (void)accessTokenForFeaturesWithIsSandboxed:(BOOL)sandboxed useCase:(id)case completion:(id)completion
{
  v8 = _Block_copy(completion);
  _Block_copy(v8);
  caseCopy = case;
  selfCopy = self;
  sub_1C4D25478(sandboxed, caseCopy, selfCopy, v8);
  _Block_release(v8);
}

- (void)reportSQLiteErrorForViewName:(NSString *)name sqliteErrorCode:(int64_t)code useCase:(NSString *)case completion:(id)completion
{
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = name;
  v11[3] = code;
  v11[4] = case;
  v11[5] = v10;
  v11[6] = self;
  nameCopy = name;
  caseCopy = case;
  selfCopy = self;

  sub_1C446D134(&unk_1C4F6DB38, v11);
}

@end