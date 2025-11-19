@interface ESListenerDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation ESListenerDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v4 = a4;
  v5 = +[NSXPCListener _UUID];
  v6 = [[NSUUID alloc] initWithUUIDBytes:&unk_100061510];
  v7 = [v5 isEqual:v6];
  v8 = [v4 valueForEntitlement:@"com.apple.siri.embeddedspeech"];
  v9 = v8;
  if (!v7)
  {
    if (v8)
    {
    }

    else
    {
      v12 = [v4 valueForEntitlement:@"com.apple.private.des-service"];

      if (!v12)
      {
        NSLog(@"Rejecting %@, no %@ or %@ entitlement", v4, @"com.apple.siri.embeddedspeech", @"com.apple.private.des-service");
        goto LABEL_11;
      }
    }

    v11 = [[ESConnection alloc] initWithXPCConnection:v4];
    v13 = CESRSpeechServiceGetXPCInterface();
    [v4 setExportedInterface:v13];

    [v4 setExportedObject:v11];
    v14 = CESRSpeechServiceDelegateGetXPCInterface();
    [v4 setRemoteObjectInterface:v14];

    goto LABEL_9;
  }

  if (!v9)
  {
    NSLog(@"Rejecting %@, no %@ entitlement", v4, @"com.apple.siri.embeddedspeech");
LABEL_11:
    v15 = 0;
    goto LABEL_12;
  }

  v10 = CESRSpeechProfileBuilderServiceGetXPCInterface();
  [v4 setExportedInterface:v10];

  v11 = [[ESSpeechProfileBuilderConnection alloc] initWithXPCConnection:v4];
  [v4 setExportedObject:v11];
LABEL_9:

  [v4 resume];
  v15 = 1;
LABEL_12:

  return v15;
}

@end