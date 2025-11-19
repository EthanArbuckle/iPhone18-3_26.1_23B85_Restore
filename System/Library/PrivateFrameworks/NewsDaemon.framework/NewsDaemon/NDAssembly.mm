@interface NDAssembly
- (NDAssembly)initWithDocumentDirectoryFileURL:(id)a3 cacheDirectoryFileURL:(id)a4;
- (void)loadInRegistry:(id)a3;
@end

@implementation NDAssembly

- (NDAssembly)initWithDocumentDirectoryFileURL:(id)a3 cacheDirectoryFileURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = NDAssembly;
  v8 = [(NDAssembly *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    documentDirectoryFileURL = v8->_documentDirectoryFileURL;
    v8->_documentDirectoryFileURL = v9;

    v11 = [v7 copy];
    cacheDirectoryFileURL = v8->_cacheDirectoryFileURL;
    v8->_cacheDirectoryFileURL = v11;
  }

  return v8;
}

- (void)loadInRegistry:(id)a3
{
  v4 = a3;
  v5 = FCBundle();
  v6 = [v5 objectForInfoDictionaryKey:@"CFBundleShortVersionString"];

  v7 = FCBundle();
  v8 = [v7 objectForInfoDictionaryKey:@"CFBundleVersion"];

  v9 = [v4 publicContainer];
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
  v13 = [v9 registerClass:v10 factory:v51];
  v14 = [v13 inScope:2];

  v15 = [v4 publicContainer];
  v16 = [v15 registerProtocol:&OBJC_PROTOCOL___FCNewsAppConfigurationManager factory:&stru_100072450];

  v17 = [v4 publicContainer];
  v18 = [v17 registerProtocol:&OBJC_PROTOCOL___FCCoreConfigurationManager factory:&stru_100072470];

  v19 = [v4 publicContainer];
  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_100012F80;
  v50[3] = &unk_100072498;
  v50[4] = self;
  v20 = [v19 registerClass:objc_opt_class() factory:v50];
  v21 = [v20 withConfiguration:&stru_1000724D8];
  v22 = [v21 inScope:2];

  v23 = [v4 publicContainer];
  v24 = [v23 registerClass:objc_opt_class() factory:&stru_100072520];
  v25 = [v24 inScope:2];

  v26 = [v4 publicContainer];
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_10001331C;
  v49[3] = &unk_100072498;
  v49[4] = self;
  v27 = [v26 registerProtocol:&OBJC_PROTOCOL___FCContentContext factory:v49];
  v28 = [v27 inScope:2];

  v29 = [v4 publicContainer];
  v30 = [v29 registerProtocol:&OBJC_PROTOCOL___FCANFHelper factory:&stru_100072540];
  v31 = [v30 inScope:2];

  v32 = [v4 publicContainer];
  v33 = [v32 registerProtocol:&OBJC_PROTOCOL___NDURLResolutionService factory:&stru_100072560];
  v34 = [v33 inScope:2];

  v35 = [v4 publicContainer];
  v36 = [v35 registerClass:objc_opt_class() factory:&stru_100072580];
  v37 = [v36 inScope:2];

  v38 = [v4 publicContainer];
  v39 = [v38 registerProtocol:&OBJC_PROTOCOL___FCContentVariantProviding factory:&stru_1000725A0];

  v40 = [v4 publicContainer];
  v41 = [v40 registerClass:objc_opt_class() factory:&stru_1000725C0];

  v42 = [v4 publicContainer];
  v43 = [v42 registerClass:objc_opt_class() factory:&stru_1000725E0];
  v44 = [v43 inScope:2];

  v45 = [v4 privateContainer];
  v46 = [v45 registerProtocol:&OBJC_PROTOCOL___FCFeldsparIDProvider factory:&stru_100072600];

  v47 = [v4 publicContainer];

  v48 = [v47 registerProtocol:&OBJC_PROTOCOL___FCNotificationPoolServiceType factory:&stru_100072620];
}

@end