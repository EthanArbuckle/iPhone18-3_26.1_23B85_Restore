@interface MADXPCDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (MADXPCDelegate)init;
@end

@implementation MADXPCDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MSVArtworkServiceInterface];
  [v5 setExportedInterface:v6];
  v7 = [(MADXPCDelegate *)self artworkService];
  [v5 setExportedObject:v7];

  LODWORD(v7) = [v5 processIdentifier];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100001970;
  v11[3] = &unk_100004200;
  v12 = v7;
  [v5 setInterruptionHandler:v11];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100001A1C;
  v9[3] = &unk_100004200;
  v10 = v7;
  [v5 setInvalidationHandler:v9];
  [v5 resume];

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