@interface CSAudioPowerServiceListener
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)listen;
@end

@implementation CSAudioPowerServiceListener

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  if (self->_listener != listenerCopy)
  {
    v8 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315138;
      v16 = "[CSAudioPowerServiceListener listener:shouldAcceptNewConnection:]";
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s we got unknown types of XPC connection request", &v15, 0xCu);
    }

    goto LABEL_9;
  }

  v9 = CSAudioPowerServiceGetXPCInterface();
  [connectionCopy setExportedInterface:v9];

  if (([CSUtils xpcConnection:connectionCopy hasEntitlement:@"siri.audiopowerupdate.xpc"]& 1) == 0)
  {
    [connectionCopy invalidate];
LABEL_9:
    v13 = 0;
    goto LABEL_10;
  }

  exportedObject = self->_exportedObject;
  if (!exportedObject)
  {
    v11 = +[CSAudioPowerProvider sharedInstance];
    v12 = self->_exportedObject;
    self->_exportedObject = v11;

    exportedObject = self->_exportedObject;
  }

  [connectionCopy setExportedObject:exportedObject];
  [connectionCopy resume];
  v13 = 1;
LABEL_10:

  return v13;
}

- (void)listen
{
  v3 = [NSXPCListener alloc];
  v4 = [v3 initWithMachServiceName:CSAudioPowerServiceName];
  listener = self->_listener;
  self->_listener = v4;

  [(NSXPCListener *)self->_listener setDelegate:self];
  [(NSXPCListener *)self->_listener resume];
  v6 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[CSAudioPowerServiceListener listen]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s CSAudioPowerXPCListener start listening", &v7, 0xCu);
  }
}

@end