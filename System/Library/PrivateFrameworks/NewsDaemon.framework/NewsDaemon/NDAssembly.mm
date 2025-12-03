@interface NDAssembly
- (NDAssembly)initWithDocumentDirectoryFileURL:(id)l cacheDirectoryFileURL:(id)rL;
- (void)loadInRegistry:(id)registry;
@end

@implementation NDAssembly

- (NDAssembly)initWithDocumentDirectoryFileURL:(id)l cacheDirectoryFileURL:(id)rL
{
  lCopy = l;
  rLCopy = rL;
  v14.receiver = self;
  v14.super_class = NDAssembly;
  v8 = [(NDAssembly *)&v14 init];
  if (v8)
  {
    v9 = [lCopy copy];
    documentDirectoryFileURL = v8->_documentDirectoryFileURL;
    v8->_documentDirectoryFileURL = v9;

    v11 = [rLCopy copy];
    cacheDirectoryFileURL = v8->_cacheDirectoryFileURL;
    v8->_cacheDirectoryFileURL = v11;
  }

  return v8;
}

- (void)loadInRegistry:(id)registry
{
  registryCopy = registry;
  v5 = FCBundle();
  v6 = [v5 objectForInfoDictionaryKey:@"CFBundleShortVersionString"];

  v7 = FCBundle();
  v8 = [v7 objectForInfoDictionaryKey:@"CFBundleVersion"];

  publicContainer = [registryCopy publicContainer];
  v10 = objc_opt_class();
  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_100012DB0;
  v51[3] = &unk_100072410;
  v51[4] = self;
  v52 = v6;
  v53 = v8;
  v11 = v8;
  v12 = v6;
  v13 = [publicContainer registerClass:v10 factory:v51];
  v14 = [v13 inScope:2];

  publicContainer2 = [registryCopy publicContainer];
  v16 = [publicContainer2 registerProtocol:&OBJC_PROTOCOL___FCNewsAppConfigurationManager factory:&stru_100072450];

  publicContainer3 = [registryCopy publicContainer];
  v18 = [publicContainer3 registerProtocol:&OBJC_PROTOCOL___FCCoreConfigurationManager factory:&stru_100072470];

  publicContainer4 = [registryCopy publicContainer];
  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_100012F80;
  v50[3] = &unk_100072498;
  v50[4] = self;
  v20 = [publicContainer4 registerClass:objc_opt_class() factory:v50];
  v21 = [v20 withConfiguration:&stru_1000724D8];
  v22 = [v21 inScope:2];

  publicContainer5 = [registryCopy publicContainer];
  v24 = [publicContainer5 registerClass:objc_opt_class() factory:&stru_100072520];
  v25 = [v24 inScope:2];

  publicContainer6 = [registryCopy publicContainer];
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_10001331C;
  v49[3] = &unk_100072498;
  v49[4] = self;
  v27 = [publicContainer6 registerProtocol:&OBJC_PROTOCOL___FCContentContext factory:v49];
  v28 = [v27 inScope:2];

  publicContainer7 = [registryCopy publicContainer];
  v30 = [publicContainer7 registerProtocol:&OBJC_PROTOCOL___FCANFHelper factory:&stru_100072540];
  v31 = [v30 inScope:2];

  publicContainer8 = [registryCopy publicContainer];
  v33 = [publicContainer8 registerProtocol:&OBJC_PROTOCOL___NDURLResolutionService factory:&stru_100072560];
  v34 = [v33 inScope:2];

  publicContainer9 = [registryCopy publicContainer];
  v36 = [publicContainer9 registerClass:objc_opt_class() factory:&stru_100072580];
  v37 = [v36 inScope:2];

  publicContainer10 = [registryCopy publicContainer];
  v39 = [publicContainer10 registerProtocol:&OBJC_PROTOCOL___FCContentVariantProviding factory:&stru_1000725A0];

  publicContainer11 = [registryCopy publicContainer];
  v41 = [publicContainer11 registerClass:objc_opt_class() factory:&stru_1000725C0];

  publicContainer12 = [registryCopy publicContainer];
  v43 = [publicContainer12 registerClass:objc_opt_class() factory:&stru_1000725E0];
  v44 = [v43 inScope:2];

  privateContainer = [registryCopy privateContainer];
  v46 = [privateContainer registerProtocol:&OBJC_PROTOCOL___FCFeldsparIDProvider factory:&stru_100072600];

  publicContainer13 = [registryCopy publicContainer];

  v48 = [publicContainer13 registerProtocol:&OBJC_PROTOCOL___FCNotificationPoolServiceType factory:&stru_100072620];
}

@end