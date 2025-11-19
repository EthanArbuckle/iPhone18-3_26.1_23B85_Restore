@interface CSAudioMeterProvidingProxy
- (CSAudioMeterProviding)audioMeterProvider;
- (CSAudioMeterProvidingProxy)initWithXPCConnection:(id)a3;
- (CSClientXPCConnection)xpcConnection;
- (void)_handleMeterProvidingRequestTypePowerMessage:(id)a3 messageBody:(id)a4 client:(id)a5 powerType:(unint64_t)a6;
- (void)_handleMeterProvidingRequestTypeSetMeteringEnabledMessage:(id)a3 messageBody:(id)a4 client:(id)a5;
- (void)_handleMeterProvidingRequestTypeUpdateMetersMessage:(id)a3 messageBody:(id)a4 client:(id)a5;
- (void)_sendReplyMessageWithResult:(BOOL)a3 event:(id)a4 client:(id)a5;
- (void)handleXPCMessage:(id)a3 messageBody:(id)a4 client:(id)a5;
@end

@implementation CSAudioMeterProvidingProxy

- (CSClientXPCConnection)xpcConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_xpcConnection);

  return WeakRetained;
}

- (CSAudioMeterProviding)audioMeterProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_audioMeterProvider);

  return WeakRetained;
}

- (void)_sendReplyMessageWithResult:(BOOL)a3 event:(id)a4 client:(id)a5
{
  v7 = a5;
  message = xpc_dictionary_create_reply(a4);
  xpc_dictionary_set_BOOL(message, "result", a3);
  xpc_connection_send_message(v7, message);
}

- (void)_handleMeterProvidingRequestTypePowerMessage:(id)a3 messageBody:(id)a4 client:(id)a5 powerType:(unint64_t)a6
{
  v10 = a3;
  v11 = a5;
  uint64 = xpc_dictionary_get_uint64(a4, "channelNumber");
  v24 = _NSConcreteStackBlock;
  v25 = 3221225472;
  v26 = sub_10017136C;
  v27 = &unk_100253CC0;
  v13 = v10;
  v28 = v13;
  v14 = v11;
  v29 = v14;
  v15 = objc_retainBlock(&v24);
  WeakRetained = objc_loadWeakRetained(&self->_audioMeterProvider);

  if (WeakRetained)
  {
    if (a6 == 1)
    {
      v18 = objc_loadWeakRetained(&self->_audioMeterProvider);
      [v18 averagePowerForChannel:{uint64, v24, v25, v26, v27, v28}];
    }

    else
    {
      v17 = 0.0;
      if (a6)
      {
LABEL_10:
        v22 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v31 = "[CSAudioMeterProvidingProxy _handleMeterProvidingRequestTypePowerMessage:messageBody:client:powerType:]";
          v32 = 2050;
          v33 = v17;
          v34 = 1026;
          v35 = a6;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%s power = %{public}f with powerType %{public}u", buf, 0x1Cu);
        }

        v23.n128_f32[0] = v17;
        (v15[2])(v15, 1, v23);
        goto LABEL_13;
      }

      v18 = objc_loadWeakRetained(&self->_audioMeterProvider);
      [v18 peakPowerForChannel:{uint64, v24, v25, v26, v27, v28}];
    }

    v17 = v19;

    goto LABEL_10;
  }

  v20 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v31 = "[CSAudioMeterProvidingProxy _handleMeterProvidingRequestTypePowerMessage:messageBody:client:powerType:]";
    _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s audioAlertProvider not existing", buf, 0xCu);
  }

  v21.n128_u64[0] = 0;
  (v15[2])(v15, 0, v21);
LABEL_13:
}

- (void)_handleMeterProvidingRequestTypeUpdateMetersMessage:(id)a3 messageBody:(id)a4 client:(id)a5
{
  WeakRetained = objc_loadWeakRetained(&self->_audioMeterProvider);

  v7 = CSLogContextFacilityCoreSpeech;
  if (WeakRetained)
  {
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "[CSAudioMeterProvidingProxy _handleMeterProvidingRequestTypeUpdateMetersMessage:messageBody:client:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s updateMeters", &v9, 0xCu);
    }

    v8 = objc_loadWeakRetained(&self->_audioMeterProvider);
    [v8 updateMeters];
  }

  else if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    v9 = 136315138;
    v10 = "[CSAudioMeterProvidingProxy _handleMeterProvidingRequestTypeUpdateMetersMessage:messageBody:client:]";
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s audioMeterProvider not existing", &v9, 0xCu);
  }
}

- (void)_handleMeterProvidingRequestTypeSetMeteringEnabledMessage:(id)a3 messageBody:(id)a4 client:(id)a5
{
  v6 = xpc_dictionary_get_BOOL(a4, "setMeterEnable");
  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "[CSAudioMeterProvidingProxy _handleMeterProvidingRequestTypeSetMeteringEnabledMessage:messageBody:client:]";
    v13 = 1026;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s setMeteringEnabled : %{public}d", &v11, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_audioMeterProvider);

  if (WeakRetained)
  {
    v9 = objc_loadWeakRetained(&self->_audioMeterProvider);
    [v9 setMeteringEnabled:v6];
  }

  else
  {
    v10 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315138;
      v12 = "[CSAudioMeterProvidingProxy _handleMeterProvidingRequestTypeSetMeteringEnabledMessage:messageBody:client:]";
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s audioMeterProvider not existing", &v11, 0xCu);
    }
  }
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
    v19 = 136315394;
    v20 = "[CSAudioMeterProvidingProxy handleXPCMessage:messageBody:client:]";
    v21 = 2050;
    v22 = int64;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s Meter Providing Request Message has arrived : %{public}lld", &v19, 0x16u);
  }

  if (int64 > 2)
  {
    if (int64 == 3)
    {
      v13 = self;
      v14 = v8;
      v15 = v9;
      v16 = v10;
      v17 = 0;
    }

    else
    {
      if (int64 != 4)
      {
        goto LABEL_10;
      }

      v13 = self;
      v14 = v8;
      v15 = v9;
      v16 = v10;
      v17 = 1;
    }

    [(CSAudioMeterProvidingProxy *)v13 _handleMeterProvidingRequestTypePowerMessage:v14 messageBody:v15 client:v16 powerType:v17];
    goto LABEL_15;
  }

  if (int64 == 1)
  {
    [(CSAudioMeterProvidingProxy *)self _handleMeterProvidingRequestTypeSetMeteringEnabledMessage:v8 messageBody:v9 client:v10];
    goto LABEL_15;
  }

  if (int64 == 2)
  {
    [(CSAudioMeterProvidingProxy *)self _handleMeterProvidingRequestTypeUpdateMetersMessage:v8 messageBody:v9 client:v10];
    goto LABEL_15;
  }

LABEL_10:
  v18 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    v19 = 136315394;
    v20 = "[CSAudioMeterProvidingProxy handleXPCMessage:messageBody:client:]";
    v21 = 2050;
    v22 = int64;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s Unexpected XPC Meter providing request : %{public}lld", &v19, 0x16u);
  }

LABEL_15:
}

- (CSAudioMeterProvidingProxy)initWithXPCConnection:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CSAudioMeterProvidingProxy;
  v5 = [(CSAudioMeterProvidingProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(CSAudioMeterProvidingProxy *)v5 setXpcConnection:v4];
  }

  return v6;
}

@end