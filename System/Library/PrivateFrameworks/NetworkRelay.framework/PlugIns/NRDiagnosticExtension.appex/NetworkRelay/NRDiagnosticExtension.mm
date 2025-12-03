@interface NRDiagnosticExtension
- (id)attachmentsForParameters:(id)parameters;
@end

@implementation NRDiagnosticExtension

- (id)attachmentsForParameters:(id)parameters
{
  NSLog(@"Parameters = %@", a2, parameters);
  v3 = objc_alloc_init(NSMutableArray);
  v4 = NRDiagnosticSaveNetworkRelayStatusToTempDirectory();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100000BEC;
  v7[3] = &unk_100004078;
  v5 = v3;
  v8 = v5;
  [v4 enumerateObjectsUsingBlock:v7];

  return v5;
}

@end