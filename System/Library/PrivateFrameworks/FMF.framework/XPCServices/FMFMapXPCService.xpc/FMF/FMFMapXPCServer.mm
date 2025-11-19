@interface FMFMapXPCServer
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (CGSize)snapshotSize;
- (FMFMapXPCServer)init;
- (id)locationShifter;
- (void)clearIdleTimer;
- (void)dealloc;
- (void)gridImageForScreenRatio:(double)a3 andCompletion:(id)a4;
- (void)gridImageForWidth:(double)a3 height:(double)a4 andCompletion:(id)a5;
- (void)mapImageForRequest:(id)a3 andCompletion:(id)a4;
- (void)mapSnapshotForRequest:(id)a3 shiftedCoordinate:(CLLocationCoordinate2D)a4 andCompletionHandler:(id)a5;
- (void)noLocationImageForScreenRatio:(double)a3 andCompletion:(id)a4;
- (void)noLocationImageForWidth:(double)a3 height:(double)a4 andCompletion:(id)a5;
- (void)setupIdleTimer;
- (void)shiftedLocationForRequest:(id)a3 withCompletionHandler:(id)a4;
@end

@implementation FMFMapXPCServer

- (FMFMapXPCServer)init
{
  v9.receiver = self;
  v9.super_class = FMFMapXPCServer;
  v2 = [(FMFMapXPCServer *)&v9 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(FMFMapXPCServer *)v2 setMapRenderingQueue:v3];

    v4 = [(FMFMapXPCServer *)v2 mapRenderingQueue];
    [v4 setQualityOfService:25];

    v5 = [(FMFMapXPCServer *)v2 mapRenderingQueue];
    [v5 setMaxConcurrentOperationCount:1];

    v6 = dispatch_queue_create("com.apple.icloud.FMF.FMFMapXPCService.snapshotterqueue", 0);
    [(FMFMapXPCServer *)v2 setSnapshotterQueue:v6];

    v7 = +[UIScreen mainScreen];
    [v7 scale];
    [(FMFMapXPCServer *)v2 setScreenScale:?];
  }

  return v2;
}

- (void)dealloc
{
  [(FMFMapXPCServer *)self clearIdleTimer];
  v3.receiver = self;
  v3.super_class = FMFMapXPCServer;
  [(FMFMapXPCServer *)&v3 dealloc];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [v5 valueForEntitlement:@"com.apple.icloud.fmf.FMFMapXPCService.access"];
  if ([v6 BOOLValue])
  {

LABEL_4:
    v9 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___FMFMapXPCInterface];
    [v5 setExportedInterface:v9];

    [v5 setExportedObject:self];
    [v5 resume];
    v10 = sub_100003C04();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "New connection is received allowing client", buf, 2u);
    }

    v11 = 1;
    goto LABEL_10;
  }

  v7 = [v5 valueForEntitlement:@"com.apple.icloud.FMF.FMFMapXPCService.access"];
  v8 = [v7 BOOLValue];

  if (v8)
  {
    goto LABEL_4;
  }

  v10 = sub_100003C04();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "New connection declined, missing entitlement com.apple.icloud.FMF.FMFMapXPCService.access", v13, 2u);
  }

  v11 = 0;
LABEL_10:

  return v11;
}

- (void)gridImageForWidth:(double)a3 height:(double)a4 andCompletion:(id)a5
{
  v8 = a5;
  if (v8)
  {
    v9 = objc_opt_new();
    [v9 setMapRect:{MKMapRectWorld.origin.x, MKMapRectWorld.origin.y, MKMapRectWorld.size.width, MKMapRectWorld.size.height}];
    [v9 setSize:{a3, a4}];
    [(FMFMapXPCServer *)self screenScale];
    [v9 setScale:?];
    [v9 setMapType:105];
    v10 = [[MKMapSnapshotter alloc] initWithOptions:v9];
    v11 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v12 = dispatch_queue_create("com.apple.mobileme.fmf1.gridmaprendering", v11);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10000249C;
    v13[3] = &unk_100008350;
    v14 = v8;
    [v10 startWithQueue:v12 completionHandler:v13];
  }
}

- (void)noLocationImageForWidth:(double)a3 height:(double)a4 andCompletion:(id)a5
{
  v8 = a5;
  if (v8)
  {
    v9 = [[CLLocation alloc] initWithLatitude:37.331686 longitude:-122.030656];
    v10 = objc_opt_new();
    [v9 coordinate];
    v11 = [MKMapCamera cameraLookingAtCenterCoordinate:"cameraLookingAtCenterCoordinate:fromDistance:pitch:heading:" fromDistance:? pitch:? heading:?];
    [v10 setCamera:v11];

    [v10 setSize:{a3, a4}];
    [(FMFMapXPCServer *)self screenScale];
    [v10 setScale:?];
    v12 = [[MKMapSnapshotter alloc] initWithOptions:v10];
    v13 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v14 = dispatch_queue_create("com.apple.mobileme.fmf1.nolocationimagerendering", v13);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000026F4;
    v15[3] = &unk_100008350;
    v16 = v8;
    [v12 startWithQueue:v14 completionHandler:v15];
  }
}

- (void)mapImageForRequest:(id)a3 andCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100003C04();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received mapImageForRequest request", buf, 2u);
  }

  if (v7)
  {
    objc_initWeak(buf, self);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100002AAC;
    v12[3] = &unk_1000083C8;
    objc_copyWeak(&v15, buf);
    v9 = v6;
    v13 = v9;
    v14 = v7;
    v10 = [NSBlockOperation blockOperationWithBlock:v12];
    [v10 setQueuePriority:{objc_msgSend(v9, "priority")}];
    v11 = [(FMFMapXPCServer *)self mapRenderingQueue];
    [v11 addOperation:v10];

    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
  }
}

- (void)gridImageForScreenRatio:(double)a3 andCompletion:(id)a4
{
  v6 = a4;
  if (v6)
  {
    [(FMFMapXPCServer *)self snapshotSize];
    v8 = v7;
    v9 = v7 * a3;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000030A8;
    v10[3] = &unk_1000083F0;
    v11 = v6;
    [(FMFMapXPCServer *)self gridImageForWidth:v10 height:v8 andCompletion:v9];
  }
}

- (void)noLocationImageForScreenRatio:(double)a3 andCompletion:(id)a4
{
  v6 = a4;
  if (v6)
  {
    [(FMFMapXPCServer *)self snapshotSize];
    v8 = v7;
    v9 = v7 * a3;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100003174;
    v10[3] = &unk_1000083F0;
    v11 = v6;
    [(FMFMapXPCServer *)self noLocationImageForWidth:v10 height:v8 andCompletion:v9];
  }
}

- (CGSize)snapshotSize
{
  v2 = +[UIScreen mainScreen];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v7 = [v2 traitCollection];
  v8 = [UITraitCollection traitCollectionWithUserInterfaceIdiom:1];
  v9 = [v7 containsTraitsInCollection:v8];

  if (v9)
  {
    v10 = sub_100003C04();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13[0] = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "resizing snapshot width", v13, 2u);
    }

    *&v4 = 556.0;
  }

  v11 = *&v4;
  v12 = v6;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)mapSnapshotForRequest:(id)a3 shiftedCoordinate:(CLLocationCoordinate2D)a4 andCompletionHandler:(id)a5
{
  longitude = a4.longitude;
  latitude = a4.latitude;
  v9 = a3;
  v10 = a5;
  v11 = objc_opt_new();
  [v9 radius];
  v13 = v12;
  v14 = sub_100003C04();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (v13 == 0.0)
  {
    if (v15)
    {
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "mapSnapshotForRequest using altitude.", v32, 2u);
    }

    [v9 altitude];
    v21 = v20;
    [v9 pitch];
    *&v22 = v22;
    v23 = [MKMapCamera cameraLookingAtCenterCoordinate:latitude fromDistance:longitude pitch:v21 heading:*&v22, 0.0];
    [v11 setCamera:v23];
  }

  else
  {
    if (v15)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "mapSnapshotForRequest using radius.", buf, 2u);
    }

    [v9 radius];
    v17 = v16 + v16;
    [v9 radius];
    v19 = v18 + v18;
    v34.latitude = latitude;
    v34.longitude = longitude;
    v35 = MKCoordinateRegionMakeWithDistance(v34, v17, v19);
    [v11 setRegion:{v35.center.latitude, v35.center.longitude, v35.span.latitudeDelta, v35.span.longitudeDelta}];
  }

  [v9 width];
  v25 = v24;
  [v9 height];
  [v11 setSize:{v25, v26}];
  [(FMFMapXPCServer *)self screenScale];
  [v11 setScale:?];
  v27 = [[MKMapSnapshotter alloc] initWithOptions:v11];
  v28 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v29 = dispatch_queue_create("com.apple.mobileme.fmf1.mapimagerendering", v28);
  v30 = sub_100003C04();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "mapSnapshotForRequest starting map snapshot", v31, 2u);
  }

  [v27 startWithQueue:v29 completionHandler:v10];
}

- (void)shiftedLocationForRequest:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [FMLocationShifterItem alloc];
  v9 = [v7 location];
  [v9 coordinate];
  v11 = v10;
  v13 = v12;
  v14 = [v7 location];
  [v14 verticalAccuracy];
  v16 = v15;
  v17 = [v7 location];
  v18 = [v17 timestamp];
  v19 = [v8 initWithCoordinate:v18 accuracy:self timestamp:v11 context:{v13, v16}];

  LODWORD(v9) = [v7 isShifted];
  if (v9)
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000037A4;
    v21[3] = &unk_100008418;
    v23 = v6;
    v22 = v19;
    dispatch_async(&_dispatch_main_q, v21);
  }

  else
  {
    v20 = [(FMFMapXPCServer *)self locationShifter];
    [v20 shiftLocation:v19 withCompletionHandler:v6 callbackQueue:&_dispatch_main_q];
  }
}

- (id)locationShifter
{
  if (qword_10000CD10 != -1)
  {
    sub_100003C8C();
  }

  v3 = qword_10000CD08;

  return v3;
}

- (void)setupIdleTimer
{
  [(FMFMapXPCServer *)self clearIdleTimer];
  v3 = [FMDispatchTimer alloc];
  v4 = dispatch_queue_create("com.apple.mobileme.fmf1.idleExit", 0);
  v5 = [v3 initWithQueue:v4 timeout:&stru_100008478 completion:300.0];
  [(FMFMapXPCServer *)self setIdleTimer:v5];

  v6 = [(FMFMapXPCServer *)self idleTimer];
  [v6 start];

  v7 = sub_100003C04();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    v9 = 0x4072C00000000000;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "FMFMapXPCService idleTimer set for %fs", &v8, 0xCu);
  }
}

- (void)clearIdleTimer
{
  v3 = [(FMFMapXPCServer *)self idleTimer];
  [v3 cancel];

  [(FMFMapXPCServer *)self setIdleTimer:0];
}

@end