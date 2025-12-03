@interface GTMTLCaptureServiceReplyStream
- (GTMTLCaptureServiceReplyStream)initWithObserver:(id)observer;
- (void)notifyCaptureObjectsChanged_:(id)changed_ replyConnection:(id)connection;
- (void)notifyCaptureProgress_:(id)progress_ replyConnection:(id)connection;
- (void)notifyCaptureRequest_:(id)request_ replyConnection:(id)connection;
- (void)notifyUnsupportedFenum_:(id)fenum_ replyConnection:(id)connection;
@end

@implementation GTMTLCaptureServiceReplyStream

- (GTMTLCaptureServiceReplyStream)initWithObserver:(id)observer
{
  observerCopy = observer;
  v6 = [GTServiceProperties protocolMethods:&unk_2860F0C40];
  v9.receiver = self;
  v9.super_class = GTMTLCaptureServiceReplyStream;
  v7 = [(GTXPCDispatcher *)&v9 initWithProtocolMethods:v6];

  if (v7)
  {
    objc_storeStrong(&v7->_observer, observer);
  }

  return v7;
}

- (void)notifyCaptureObjectsChanged_:(id)changed_ replyConnection:(id)connection
{
  changed_Copy = changed_;
  v6 = objc_opt_class();
  nsobject = xpc_dictionary_get_nsobject(changed_Copy, "captureObjects", v6);

  [(GTMTLCaptureServiceObserver *)self->_observer notifyCaptureObjectsChanged:nsobject];
}

- (void)notifyCaptureProgress_:(id)progress_ replyConnection:(id)connection
{
  progress_Copy = progress_;
  v6 = objc_opt_class();
  nsobject = xpc_dictionary_get_nsobject(progress_Copy, "progress", v6);

  [(GTMTLCaptureServiceObserver *)self->_observer notifyCaptureProgress:nsobject];
}

- (void)notifyUnsupportedFenum_:(id)fenum_ replyConnection:(id)connection
{
  fenum_Copy = fenum_;
  v6 = objc_opt_class();
  nsobject = xpc_dictionary_get_nsobject(fenum_Copy, "info", v6);

  [(GTMTLCaptureServiceObserver *)self->_observer notifyUnsupportedFenum:nsobject];
}

- (void)notifyCaptureRequest_:(id)request_ replyConnection:(id)connection
{
  request_Copy = request_;
  v6 = objc_opt_class();
  nsobject = xpc_dictionary_get_nsobject(request_Copy, "descriptor", v6);

  [(GTMTLCaptureServiceObserver *)self->_observer notifyCaptureRequest:nsobject];
}

@end