@interface CSOpportuneSpeakListnerTestService
- (CSOpportuneSpeakListnerTestService)init;
- (void)opportuneSpeakListener:(id)a3 didStopUnexpectedly:(BOOL)a4;
- (void)opportuneSpeakListener:(id)a3 hasRemoteVADAvailable:(BOOL)a4;
- (void)opportuneSpeakListener:(id)a3 hasVADAvailable:(BOOL)a4;
- (void)receiveOpportuneSpeakListenerStart;
- (void)start;
@end

@implementation CSOpportuneSpeakListnerTestService

- (void)opportuneSpeakListener:(id)a3 didStopUnexpectedly:(BOOL)a4
{
  v4 = a4;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[CSOpportuneSpeakListnerTestService opportuneSpeakListener:didStopUnexpectedly:]";
    v8 = 1024;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s didStopUnexpectedly : %d", &v6, 0x12u);
  }
}

- (void)opportuneSpeakListener:(id)a3 hasVADAvailable:(BOOL)a4
{
  v4 = a4;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[CSOpportuneSpeakListnerTestService opportuneSpeakListener:hasVADAvailable:]";
    v8 = 1024;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s hasVADAvailable : %d", &v6, 0x12u);
  }
}

- (void)opportuneSpeakListener:(id)a3 hasRemoteVADAvailable:(BOOL)a4
{
  v4 = a4;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[CSOpportuneSpeakListnerTestService opportuneSpeakListener:hasRemoteVADAvailable:]";
    v8 = 1024;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s hasRemoteVADAvailable : %d", &v6, 0x12u);
  }
}

- (void)receiveOpportuneSpeakListenerStart
{
  v3 = objc_alloc_init(CSOpportuneSpeakListener);
  listener = self->listener;
  self->listener = v3;

  [(CSOpportuneSpeakListener *)self->listener setDelegate:self];
  v5 = objc_alloc_init(CSOpportuneSpeakListenerOption);
  [(CSOpportuneSpeakListenerOption *)v5 setDeviceId:@"A945B95D-69F6-FC77-4FAE-91F50A039CD8"];
  [(CSOpportuneSpeakListener *)self->listener startListenWithOption:v5 completion:&stru_10024F218];
}

- (void)start
{
  queue = self->_queue;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10004C564;
  handler[3] = &unk_1002537C0;
  handler[4] = self;
  notify_register_dispatch("com.apple.corespeech.opportunelistner.start", &self->_notifyToken, queue, handler);
  v4 = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10004C56C;
  v5[3] = &unk_1002537C0;
  v5[4] = self;
  notify_register_dispatch("com.apple.corespeech.opportunelistner.stop", &self->_notifyToken, v4, v5);
}

- (CSOpportuneSpeakListnerTestService)init
{
  v6.receiver = self;
  v6.super_class = CSOpportuneSpeakListnerTestService;
  v2 = [(CSOpportuneSpeakListnerTestService *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("CSOpportuneSpeakListnerTestService", 0);
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

@end