@interface _CNDataURLSessionTaskAdapter
- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
@end

@implementation _CNDataURLSessionTaskAdapter

- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data
{
  dataCopy = data;
  onDataReceived = [(_CNDataURLSessionTaskAdapter *)self onDataReceived];
  onDataReceived[2](onDataReceived, dataCopy);
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  errorCopy = error;
  onCompletion = [(_CNDataURLSessionTaskAdapter *)self onCompletion];
  onCompletion[2](onCompletion, errorCopy);
}

@end