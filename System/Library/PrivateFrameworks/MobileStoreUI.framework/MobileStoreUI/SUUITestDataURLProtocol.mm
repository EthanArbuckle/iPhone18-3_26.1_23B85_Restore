@interface SUUITestDataURLProtocol
+ (BOOL)canInitWithRequest:(id)a3;
- (void)startLoading;
@end

@implementation SUUITestDataURLProtocol

+ (BOOL)canInitWithRequest:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 URL];
  v6 = [v5 scheme];

  LOBYTE(v5) = [v6 isEqualToString:@"x-apple-storeui-test-data"];
  objc_autoreleasePoolPop(v4);

  return v5;
}

- (void)startLoading
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(NSURLProtocol *)self request];
  v5 = [v4 URL];

  v6 = [v5 resourceSpecifier];
  v7 = [MEMORY[0x277CCA8D8] mainBundle];
  v8 = [v7 resourcePath];
  v9 = [v8 stringByAppendingPathComponent:v6];

  v10 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:v9];
  if (v10)
  {
    v11 = v10;
    goto LABEL_5;
  }

  v12 = SUUIBundle();
  v13 = [v12 resourcePath];
  v14 = [v13 stringByAppendingPathComponent:v6];

  v15 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:v14];
  if (v15)
  {
    v11 = v15;
    v9 = v14;
LABEL_5:
    v16 = [v6 pathExtension];
    if (v16)
    {
      v17 = v16;
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
    v29 = [(NSURLProtocol *)self client];
    v30 = [objc_alloc(MEMORY[0x277CBABA8]) initWithURL:v5 MIMEType:v28 expectedContentLength:objc_msgSend(v11 textEncodingName:{"length"), 0}];
    [v29 URLProtocol:self didReceiveResponse:v30 cacheStoragePolicy:2];
    [v29 URLProtocol:self didLoadData:v11];
    [v29 URLProtocolDidFinishLoading:self];

    goto LABEL_13;
  }

  v11 = [(NSURLProtocol *)self client];
  v28 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SUUIErrorDomain" code:0 userInfo:0];
  [v11 URLProtocol:self didFailWithError:v28];
  v9 = v14;
LABEL_13:

  objc_autoreleasePoolPop(v3);
}

@end