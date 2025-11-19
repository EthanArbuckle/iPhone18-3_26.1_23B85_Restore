@interface C2RequestManager.C2AsyncDataStreamDelegate
- (void)URLSession:(NSURLSession *)a3 task:(NSURLSessionTask *)a4 needNewBodyStream:(id)a5;
- (void)URLSession:(NSURLSession *)a3 task:(NSURLSessionTask *)a4 willPerformHTTPRedirection:(NSHTTPURLResponse *)a5 newRequest:(NSURLRequest *)a6 completionHandler:(id)a7;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
@end

@implementation C2RequestManager.C2AsyncDataStreamDelegate

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  v12 = a5;
  sub_242160010(v12, v11, a5);
}

- (void)URLSession:(NSURLSession *)a3 task:(NSURLSessionTask *)a4 willPerformHTTPRedirection:(NSHTTPURLResponse *)a5 newRequest:(NSURLRequest *)a6 completionHandler:(id)a7
{
  v12 = _Block_copy(a7);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a5;
  v13[5] = a6;
  v13[6] = v12;
  v13[7] = self;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = self;

  sub_24215D0F8(&unk_242196AF0, v13);
}

- (void)URLSession:(NSURLSession *)a3 task:(NSURLSessionTask *)a4 needNewBodyStream:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v8;
  v9[5] = self;
  v10 = a3;
  v11 = a4;
  v12 = self;

  sub_24215D0F8(&unk_242196AE0, v9);
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5
{
  if (a5)
  {
    v8 = a3;
    v9 = a4;
    v10 = self;
    v11 = a5;
    v12 = sub_242191958();
    v14 = v13;
  }

  else
  {
    v17 = a3;
    v18 = a4;
    v15 = self;
    v12 = 0;
    v14 = 0xF000000000000000;
  }

  sub_24218E5F4(v15, v16, v12, v14);
  sub_24215DCE4(v12, v14);
}

@end