@interface BidirectionalStreamingURLSessionDelegate
- (_TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate)init;
- (void)URLSession:(NSURLSession *)a3 dataTask:(NSURLSessionDataTask *)a4 didReceiveResponse:(NSURLResponse *)a5 completionHandler:(id)a6;
- (void)URLSession:(NSURLSession *)a3 task:(NSURLSessionTask *)a4 needNewBodyStream:(id)a5;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
@end

@implementation BidirectionalStreamingURLSessionDelegate

- (void)URLSession:(NSURLSession *)a3 task:(NSURLSessionTask *)a4 needNewBodyStream:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCCE780, "6\v");
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_25DDDCF98();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_25DDDE880;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_25DDDE888;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_25DDCC680(0, 0, v12, &unk_25DDDE890, v17);
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = self;
  v10 = sub_25DDDCAE8();
  v12 = v11;

  v13 = *(&v9->super.isa + OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_callbackLock);
  v14[2] = v10;
  v14[3] = v12;
  v14[4] = v9;
  v14[5] = v7;
  sub_25DDC99B0(sub_25DDCD5A8, v14, v13);
  sub_25DDCCDA4(v10, v12);
}

- (void)URLSession:(NSURLSession *)a3 dataTask:(NSURLSessionDataTask *)a4 didReceiveResponse:(NSURLResponse *)a5 completionHandler:(id)a6
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCCE780, "6\v");
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v24 - v13;
  v15 = _Block_copy(a6);
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = v15;
  v16[6] = self;
  v17 = sub_25DDDCF98();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_25DDDE838;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_25DDDE848;
  v19[5] = v18;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = self;
  sub_25DDCC680(0, 0, v14, &unk_25DDDE858, v19);
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v6 = *(&self->super.isa + OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_callbackLock);
  v9[2] = a5;
  v9[3] = self;
  v7 = self;
  v8 = a5;
  sub_25DDC99B0(sub_25DDCD5C0, v9, v6);
}

- (_TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end