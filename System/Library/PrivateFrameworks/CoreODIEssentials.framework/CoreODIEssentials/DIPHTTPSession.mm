@interface DIPHTTPSession
- (NSString)description;
- (_TtC17CoreODIEssentials14DIPHTTPSession)init;
- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error;
- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler;
- (void)URLSession:(id)session taskIsWaitingForConnectivity:(id)connectivity;
@end

@implementation DIPHTTPSession

- (NSString)description
{
  selfCopy = self;
  sub_1DAFA9614();

  v3 = sub_1DB09D6B4();

  return v3;
}

- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EAF8, &unk_1DB0A9580);
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v25 - v15;
  v17 = sub_1DB09CBF4();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v25 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = _Block_copy(handler);
  sub_1DB09CBA4();
  (*(v18 + 56))(v16, 1, 1, v17);
  sub_1DAFB3B74(v16, v13);
  v24 = 0;
  if ((*(v18 + 48))(v13, 1, v17) != 1)
  {
    v24 = sub_1DB09CB84();
    (*(v18 + 8))(v13, v17);
  }

  v23[2](v23, v24);

  _Block_release(v23);
  sub_1DAF40AEC(v16, &qword_1ECC0EAF8, &unk_1DB0A9580);
  (*(v18 + 8))(v22, v17);
}

- (void)URLSession:(id)session taskIsWaitingForConnectivity:(id)connectivity
{
  sessionCopy = session;
  connectivityCopy = connectivity;
  selfCopy = self;
  sub_1DAFB34A0(connectivityCopy);
}

- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error
{
  sessionCopy = session;
  selfCopy = self;
  errorCopy = error;
  sub_1DAFB3854(error);
}

- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  _Block_copy(v8);
  sessionCopy = session;
  challengeCopy = challenge;
  selfCopy = self;
  sub_1DAFB39E4(challengeCopy, selfCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (_TtC17CoreODIEssentials14DIPHTTPSession)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end