@interface GEOSearchAttributionServer
- (BOOL)handleIncomingMessage:(id)message withObject:(id)object fromPeer:(id)peer signpostId:(unint64_t)id;
- (void)loadAttributionWithMessage:(id)message;
@end

@implementation GEOSearchAttributionServer

- (BOOL)handleIncomingMessage:(id)message withObject:(id)object fromPeer:(id)peer signpostId:(unint64_t)id
{
  objectCopy = object;
  peerCopy = peer;
  if (sub_100001334(message) == 1589)
  {
    v12 = [[GEOMessage alloc] initWithXPCMessage:objectCopy peer:peerCopy];
    v13 = v12;
    v14 = v12 != 0;
    if (v12)
    {
      [v12 setSignpostId:id];
      [(GEOSearchAttributionServer *)self loadAttributionWithMessage:v13];
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)loadAttributionWithMessage:(id)message
{
  messageCopy = message;
  userInfo = [messageCopy userInfo];
  v5 = [userInfo objectForKey:@"identifiers"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = +[GEOSearchAttributionManifestManager sharedManager];
    serverProxy = [v6 serverProxy];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10001B748;
    v8[3] = &unk_100081D48;
    v9 = messageCopy;
    [serverProxy loadAttributionInfoForIdentifiers:v5 completionHandler:v8];
  }

  else
  {
    NSLog(@"GEOSearchAttributionServer: Unexpected parameters. Ignoring.");
  }
}

@end