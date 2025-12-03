@interface ESListenerDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation ESListenerDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = +[NSXPCListener _UUID];
  v6 = [[NSUUID alloc] initWithUUIDBytes:&unk_100061510];
  v7 = [v5 isEqual:v6];
  v8 = [connectionCopy valueForEntitlement:@"com.apple.siri.embeddedspeech"];
  v9 = v8;
  if (!v7)
  {
    if (v8)
    {
    }

    else
    {
      v12 = [connectionCopy valueForEntitlement:@"com.apple.private.des-service"];

      if (!v12)
      {
        NSLog(@"Rejecting %@, no %@ or %@ entitlement", connectionCopy, @"com.apple.siri.embeddedspeech", @"com.apple.private.des-service");
        goto LABEL_11;
      }
    }

    v11 = [[ESConnection alloc] initWithXPCConnection:connectionCopy];
    v13 = CESRSpeechServiceGetXPCInterface();
    [connectionCopy setExportedInterface:v13];

    [connectionCopy setExportedObject:v11];
    v14 = CESRSpeechServiceDelegateGetXPCInterface();
    [connectionCopy setRemoteObjectInterface:v14];

    goto LABEL_9;
  }

  if (!v9)
  {
    NSLog(@"Rejecting %@, no %@ entitlement", connectionCopy, @"com.apple.siri.embeddedspeech");
LABEL_11:
    v15 = 0;
    goto LABEL_12;
  }

  v10 = CESRSpeechProfileBuilderServiceGetXPCInterface();
  [connectionCopy setExportedInterface:v10];

  v11 = [[ESSpeechProfileBuilderConnection alloc] initWithXPCConnection:connectionCopy];
  [connectionCopy setExportedObject:v11];
LABEL_9:

  [connectionCopy resume];
  v15 = 1;
LABEL_12:

  return v15;
}

@end