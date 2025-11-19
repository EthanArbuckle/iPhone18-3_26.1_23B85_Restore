@interface StreamingURLSessionDelegate
- (_TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate)init;
- (void)URLSession:(NSURLSession *)a3 dataTask:(NSURLSessionDataTask *)a4 didReceiveResponse:(NSURLResponse *)a5 completionHandler:(id)a6;
- (void)URLSession:(NSURLSession *)a3 task:(NSURLSessionTask *)a4 needNewBodyStream:(id)a5;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
@end

@implementation StreamingURLSessionDelegate

- (void)URLSession:(NSURLSession *)a3 task:(NSURLSessionTask *)a4 needNewBodyStream:(id)a5
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF530, &qword_24DD4CA90) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v20 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_24DD4B384();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_24DD4CAE8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_24DD4CAF0;
  v16[5] = v15;
  v17 = a3;
  v18 = a4;
  v19 = self;
  sub_24DD185B0(0, 0, v11, &unk_24DD4CAF8, v16);
}

- (void)URLSession:(NSURLSession *)a3 dataTask:(NSURLSessionDataTask *)a4 didReceiveResponse:(NSURLResponse *)a5 completionHandler:(id)a6
{
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF530, &qword_24DD4CA90) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v13 = &v23 - v12;
  v14 = _Block_copy(a6);
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a5;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_24DD4B384();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_24DD4CAA0;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_24DD4CAB0;
  v18[5] = v17;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = self;
  sub_24DD185B0(0, 0, v13, &unk_24DD4CAC0, v18);
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14 = self;
  v11 = sub_24DD4AAE4();
  v13 = v12;

  sub_24DD1AB5C(v9, v11, v13);
  sub_24DD0E53C(v11, v13);
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  v11 = a5;
  sub_24DD1B0E0(v9, a5);
}

- (_TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end