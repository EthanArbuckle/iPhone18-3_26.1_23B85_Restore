@interface DataDetectorsRemoteScanner
- (void)scanString:(id)a3 range:(_NSRange)a4 configuration:(id)a5 withReply:(id)a6;
@end

@implementation DataDetectorsRemoteScanner

- (void)scanString:(id)a3 range:(_NSRange)a4 configuration:(id)a5 withReply:(id)a6
{
  length = a4.length;
  location = a4.location;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100000C4C;
  v11[3] = &unk_100004080;
  v12 = a6;
  v10 = v12;
  [DDScannerService scanString:a3 range:location configuration:length completionBlock:a5, v11];
}

@end