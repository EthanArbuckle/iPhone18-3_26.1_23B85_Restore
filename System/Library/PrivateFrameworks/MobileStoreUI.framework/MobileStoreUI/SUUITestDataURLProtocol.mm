@interface SUUITestDataURLProtocol
+ (BOOL)canInitWithRequest:(id)request;
- (void)startLoading;
@end

@implementation SUUITestDataURLProtocol

+ (BOOL)canInitWithRequest:(id)request
{
  requestCopy = request;
  v4 = objc_autoreleasePoolPush();
  v5 = [requestCopy URL];
  scheme = [v5 scheme];

  LOBYTE(v5) = [scheme isEqualToString:@"x-apple-storeui-test-data"];
  objc_autoreleasePoolPop(v4);

  return v5;
}

- (void)startLoading
{
  v3 = objc_autoreleasePoolPush();
  request = [(NSURLProtocol *)self request];
  v5 = [request URL];

  resourceSpecifier = [v5 resourceSpecifier];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  resourcePath = [mainBundle resourcePath];
  v9 = [resourcePath stringByAppendingPathComponent:resourceSpecifier];

  v10 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:v9];
  if (v10)
  {
    client2 = v10;
    goto LABEL_5;
  }

  v12 = SUUIBundle();
  resourcePath2 = [v12 resourcePath];
  v14 = [resourcePath2 stringByAppendingPathComponent:resourceSpecifier];

  v15 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:v14];
  if (v15)
  {
    client2 = v15;
    v9 = v14;
LABEL_5:
    pathExtension = [resourceSpecifier pathExtension];
    if (pathExtension)
    {
      v17 = pathExtension;
      v18 = SUUIMobileCoreServicesFramework();
      v19 = *SUUIWeakLinkedSymbolForString("kUTTagClassFilenameExtension", v18);
      v20 = SUUIMobileCoreServicesFramework();
      v21 = SUUIWeakLinkedSymbolForString("UTTypeCreatePreferredIdentifierForTag", v20);
      if (v21 && (v22 = v21(v19, v17, 0)) != 0)
      {
        v23 = v22;
        v24 = SUUIMobileCoreServicesFramework();
        v25 = *SUUIWeakLinkedSymbolForString("kUTTagClassMIMEType", v24);
        v26 = SUUIMobileCoreServicesFramework();
        v27 = SUUIWeakLinkedSymbolForString("UTTypeCopyPreferredTagWithClass", v26);
        if (v27)
        {
          v28 = v27(v23, v25);
        }

        else
        {
          v28 = 0;
        }

        CFRelease(v23);
        CFRelease(v17);
        if (v28)
        {
          goto LABEL_12;
        }
      }

      else
      {
        CFRelease(v17);
      }
    }

    v28 = @"text/xml+itml";
LABEL_12:
    client = [(NSURLProtocol *)self client];
    v30 = [objc_alloc(MEMORY[0x277CBABA8]) initWithURL:v5 MIMEType:v28 expectedContentLength:objc_msgSend(client2 textEncodingName:{"length"), 0}];
    [client URLProtocol:self didReceiveResponse:v30 cacheStoragePolicy:2];
    [client URLProtocol:self didLoadData:client2];
    [client URLProtocolDidFinishLoading:self];

    goto LABEL_13;
  }

  client2 = [(NSURLProtocol *)self client];
  v28 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SUUIErrorDomain" code:0 userInfo:0];
  [client2 URLProtocol:self didFailWithError:v28];
  v9 = v14;
LABEL_13:

  objc_autoreleasePoolPop(v3);
}

@end