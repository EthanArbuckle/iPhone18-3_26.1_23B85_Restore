@interface ServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v4 = a4;
  v5 = [v4 valueForEntitlement:@"com.apple.private.speech-model-training"];

  if (v5)
  {
    v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SpeechModelTrainingProtocol];
    v14[0] = objc_opt_class();
    v14[1] = objc_opt_class();
    v14[2] = objc_opt_class();
    v14[3] = objc_opt_class();
    v7 = [NSArray arrayWithObjects:v14 count:4];
    v8 = [NSSet setWithArray:v7];

    [v6 setClasses:v8 forSelector:"trainPersonalizedLMWithLanguage:configuration:fides:write:completion:" argumentIndex:0 ofReply:1];
    [v6 setClasses:v8 forSelector:"trainAppLMWithLanguage:configuration:appBundleId:appLmDataFile:appLmDataFileSandboxExtension:completion:" argumentIndex:0 ofReply:1];
    v13[0] = objc_opt_class();
    v13[1] = objc_opt_class();
    v9 = [NSArray arrayWithObjects:v13 count:2];
    v10 = [NSSet setWithArray:v9];
    [v6 setClasses:v10 forSelector:"trainAppLMWithLanguage:configuration:appBundleId:appLmDataFile:appLmDataFileSandboxExtension:completion:" argumentIndex:1 ofReply:1];

    [v6 setClasses:v8 forSelector:"trainAllAppLMWithLanguage:completion:" argumentIndex:0 ofReply:1];
    [v6 setClasses:v8 forSelector:"buildPhoneticMatchWithLanguage:saveIntermediateFsts:completion:" argumentIndex:0 ofReply:1];

    [v4 setExportedInterface:v6];
    v11 = [[SpeechModelTrainingConnection alloc] initWithXPCConnection:v4];
    [v4 setExportedObject:v11];
    [v4 resume];
  }

  else
  {
    [v4 invalidate];
  }

  return v5 != 0;
}

@end