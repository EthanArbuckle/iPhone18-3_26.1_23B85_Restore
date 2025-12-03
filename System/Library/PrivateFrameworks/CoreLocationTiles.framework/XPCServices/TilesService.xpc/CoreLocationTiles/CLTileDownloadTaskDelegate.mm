@interface CLTileDownloadTaskDelegate
- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler;
@end

@implementation CLTileDownloadTaskDelegate

- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler
{
  if ([objc_msgSend(objc_msgSend(objc_msgSend(task originalRequest] && (objc_msgSend(objc_msgSend(objc_msgSend(request, "URL"), "scheme"), "isEqualToString:", @"http") & 1) != 0)
  {
    request = 0;
  }

  v9 = *(handler + 2);

  v9(handler, request);
}

@end