@interface _CNDataURLSessionTaskAdapter
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
@end

@implementation _CNDataURLSessionTaskAdapter

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5
{
  v6 = a5;
  v7 = [(_CNDataURLSessionTaskAdapter *)self onDataReceived];
  v7[2](v7, v6);
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v6 = a5;
  v7 = [(_CNDataURLSessionTaskAdapter *)self onCompletion];
  v7[2](v7, v6);
}

@end