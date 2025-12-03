@interface CSAudioInjectionXPCListener
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (CSAudioInjectionXPCListener)init;
- (void)listen;
@end

@implementation CSAudioInjectionXPCListener

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
      v16 = "[CSAudioInjectionXPCListener listener:shouldAcceptNewConnection:]";
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s we got unknown types of XPC connection request", &v15, 0xCu);
    }

    goto LABEL_9;
  }

  v9 = AudioInjectionXPCGetInterface();
  [connectionCopy setExportedInterface:v9];

  if (([CSUtils xpcConnection:connectionCopy hasEntitlement:@"corespeech.audioinjection.xpc"]& 1) == 0)
  {
    [connectionCopy invalidate];
LABEL_9:
    v13 = 0;
    goto LABEL_10;
  }

  exportedObject = self->_exportedObject;
  if (!exportedObject)
  {
    v11 = objc_opt_new();
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
  v3 = +[CSFPreferences sharedPreferences];
  if ([v3 programmableAudioInjectionEnabled])
  {
  }

  else
  {
    v4 = +[CSFPreferences sharedPreferences];
    exclaveAudioInjectionEnabled = [v4 exclaveAudioInjectionEnabled];

    if (!exclaveAudioInjectionEnabled)
    {
      return;
    }
  }

  [(NSXPCListener *)self->_listener setDelegate:self];
  [(NSXPCListener *)self->_listener resume];
  v6 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[CSAudioInjectionXPCListener listen]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s CSAudioInjectionXPCListener start listening", &v7, 0xCu);
  }
}

- (CSAudioInjectionXPCListener)init
{
  v7.receiver = self;
  v7.super_class = CSAudioInjectionXPCListener;
  v2 = [(CSAudioInjectionXPCListener *)&v7 init];
  if (v2)
  {
    v3 = [NSXPCListener alloc];
    v4 = [v3 initWithMachServiceName:CSAudioInjectionXPCServiceNameForCoreSpeechDaemon];
    listener = v2->_listener;
    v2->_listener = v4;
  }

  return v2;
}

@end