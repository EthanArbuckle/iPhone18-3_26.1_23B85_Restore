@interface MADXPCDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (MADXPCDelegate)init;
@end

@implementation MADXPCDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MSVArtworkServiceInterface];
  [connectionCopy setExportedInterface:v6];
  artworkService = [(MADXPCDelegate *)self artworkService];
  [connectionCopy setExportedObject:artworkService];

  LODWORD(artworkService) = [connectionCopy processIdentifier];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100001970;
  v11[3] = &unk_100004200;
  v12 = artworkService;
  [connectionCopy setInterruptionHandler:v11];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100001A1C;
  v9[3] = &unk_100004200;
  v10 = artworkService;
  [connectionCopy setInvalidationHandler:v9];
  [connectionCopy resume];

  return 1;
}

- (MADXPCDelegate)init
{
  v5.receiver = self;
  v5.super_class = MADXPCDelegate;
  v2 = [(MADXPCDelegate *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(MADArtworkServer);
    [(MADXPCDelegate *)v2 setArtworkService:v3];
  }

  return v2;
}

@end