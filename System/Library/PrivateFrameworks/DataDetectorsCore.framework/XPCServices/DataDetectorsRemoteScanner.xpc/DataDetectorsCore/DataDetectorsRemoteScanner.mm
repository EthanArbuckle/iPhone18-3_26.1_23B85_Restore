@interface DataDetectorsRemoteScanner
- (void)scanString:(id)string range:(_NSRange)range configuration:(id)configuration withReply:(id)reply;
@end

@implementation DataDetectorsRemoteScanner

- (void)scanString:(id)string range:(_NSRange)range configuration:(id)configuration withReply:(id)reply
{
  length = range.length;
  location = range.location;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100000C4C;
  v11[3] = &unk_100004080;
  replyCopy = reply;
  v10 = replyCopy;
  [DDScannerService scanString:string range:location configuration:length completionBlock:configuration, v11];
}

@end