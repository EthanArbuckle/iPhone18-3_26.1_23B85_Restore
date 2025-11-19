@interface DIPHTTPSession
- (NSString)description;
- (_TtC17CoreODIEssentials14DIPHTTPSession)init;
- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4;
- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 willPerformHTTPRedirection:(id)a5 newRequest:(id)a6 completionHandler:(id)a7;
- (void)URLSession:(id)a3 taskIsWaitingForConnectivity:(id)a4;
@end

@implementation DIPHTTPSession

- (NSString)description
{
  v2 = self;
  sub_1DAFA9614();

  v3 = sub_1DB09D6B4();

  return v3;
}

- (void)URLSession:(id)a3 task:(id)a4 willPerformHTTPRedirection:(id)a5 newRequest:(id)a6 completionHandler:(id)a7
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
  v23 = _Block_copy(a7);
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

- (void)URLSession:(id)a3 taskIsWaitingForConnectivity:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1DAFB34A0(v7);
}

- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  sub_1DAFB3854(a4);
}

- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = a3;
  v10 = a4;
  v11 = self;
  sub_1DAFB39E4(v10, v11, v8);
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