@interface ServiceDelegate
+ (id)sharedQueue;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation ServiceDelegate

+ (id)sharedQueue
{
  if (qword_1000086B8 != -1)
  {
    sub_100001FB8();
  }

  v3 = qword_1000086B0;

  return v3;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[NSXPCInterface faceSnapshotServiceInterface];
  [v6 setExportedInterface:v7];

  v8 = objc_opt_new();
  [v6 setExportedObject:v8];
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = sub_100001078;
  v13[4] = sub_100001088;
  v9 = v6;
  v14 = v9;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100001090;
  v12[3] = &unk_1000042D8;
  v12[4] = v13;
  [v9 setInvalidationHandler:v12];
  v10 = +[ServiceDelegate sharedQueue];
  [v9 _setQueue:v10];

  [v9 resume];
  _Block_object_dispose(v13, 8);

  return 1;
}

@end