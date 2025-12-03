@interface HTMLConverter
- (void)attributedStringFromHTMLString:(id)string baseURL:(id)l completionBlock:(id)block;
@end

@implementation HTMLConverter

- (void)attributedStringFromHTMLString:(id)string baseURL:(id)l completionBlock:(id)block
{
  stringCopy = string;
  lCopy = l;
  blockCopy = block;
  v10 = objc_autoreleasePoolPush();
  v11 = [stringCopy dataUsingEncoding:4];
  v12 = +[NSMutableDictionary dictionary];
  [v12 setObject:NSHTMLTextDocumentType forKeyedSubscript:NSDocumentTypeDocumentAttribute];
  [v12 setObject:&off_1000042E8 forKeyedSubscript:NSCharacterEncodingDocumentAttribute];
  v13 = +[ICReaderDelegateUtilities sharedInstance];
  [v12 setObject:v13 forKeyedSubscript:NSReaderDelegateDocumentOption];

  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = sub_100001328;
  v28[4] = sub_100001338;
  v29 = 0;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = sub_100001328;
  v26[4] = sub_100001338;
  v27 = 0;
  v14 = [blockCopy copy];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100001340;
  v19[3] = &unk_1000041B0;
  v20 = v12;
  v15 = lCopy;
  v21 = v15;
  v22 = v11;
  v24 = v26;
  v25 = v28;
  v23 = v14;
  v16 = v14;
  v17 = v11;
  v18 = v12;
  dispatch_async(&_dispatch_main_q, v19);

  _Block_object_dispose(v26, 8);
  _Block_object_dispose(v28, 8);

  objc_autoreleasePoolPop(v10);
}

@end