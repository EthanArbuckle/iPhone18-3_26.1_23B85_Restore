@interface CSAudioMetricProvidingProxy
- (CSAudioMetricProviding)audioMetricProvider;
- (CSAudioMetricProvidingProxy)initWithXPCConnection:(id)a3;
- (CSClientXPCConnection)xpcConnection;
- (void)_handleMetricProvidingRequestTypeAudioMetricMessage:(id)a3 messageBody:(id)a4 client:(id)a5;
- (void)handleXPCMessage:(id)a3 messageBody:(id)a4 client:(id)a5;
@end

@implementation CSAudioMetricProvidingProxy

- (CSClientXPCConnection)xpcConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_xpcConnection);

  return WeakRetained;
}

- (CSAudioMetricProviding)audioMetricProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_audioMetricProvider);

  return WeakRetained;
}

- (void)_handleMetricProvidingRequestTypeAudioMetricMessage:(id)a3 messageBody:(id)a4 client:(id)a5
{
  v7 = a5;
  reply = xpc_dictionary_create_reply(a3);
  WeakRetained = objc_loadWeakRetained(&self->_audioMetricProvider);

  if (WeakRetained)
  {
    v10 = objc_loadWeakRetained(&self->_audioMetricProvider);
    v11 = [v10 audioMetric];

    v12 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315394;
      v16 = "[CSAudioMetricProvidingProxy _handleMetricProvidingRequestTypeAudioMetricMessage:messageBody:client:]";
      v17 = 2114;
      v18 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s audioMetric = %{public}@", &v15, 0x16u);
    }

    xpc_dictionary_set_BOOL(reply, "result", 1);
    v13 = [v11 _cs_xpcObject];
    xpc_dictionary_set_value(reply, "audioMetric", v13);
  }

  else
  {
    v14 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315138;
      v16 = "[CSAudioMetricProvidingProxy _handleMetricProvidingRequestTypeAudioMetricMessage:messageBody:client:]";
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s audioMetricProvider not existing", &v15, 0xCu);
    }

    xpc_dictionary_set_BOOL(reply, "result", 0);
  }

  xpc_connection_send_message(v7, reply);
}

- (void)handleXPCMessage:(id)a3 messageBody:(id)a4 client:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  int64 = xpc_dictionary_get_int64(v9, "type");
  v12 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315394;
    v15 = "[CSAudioMetricProvidingProxy handleXPCMessage:messageBody:client:]";
    v16 = 2050;
    v17 = int64;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s Metric Providing Request Message has arrived : %{public}lld", &v14, 0x16u);
  }

  if (int64 == 1)
  {
    [(CSAudioMetricProvidingProxy *)self _handleMetricProvidingRequestTypeAudioMetricMessage:v8 messageBody:v9 client:v10];
  }

  else
  {
    v13 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "[CSAudioMetricProvidingProxy handleXPCMessage:messageBody:client:]";
      v16 = 2050;
      v17 = int64;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s Unexpected XPC Metric providing request : %{public}lld", &v14, 0x16u);
    }
  }
}

- (CSAudioMetricProvidingProxy)initWithXPCConnection:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CSAudioMetricProvidingProxy;
  v5 = [(CSAudioMetricProvidingProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(CSAudioMetricProvidingProxy *)v5 setXpcConnection:v4];
  }

  return v6;
}

@end