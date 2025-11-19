@interface CSAudioTimeConversionProvidingProxy
- (void)_handleXPCTimeConvertProvidingTypeHostTimeFromSampleCountMessage:(id)a3 messageBody:(id)a4 client:(id)a5 streamHandleId:(unint64_t)a6;
- (void)_handleXPCTimeConvertProvidingTypeSampleCountFromHostTimeMessage:(id)a3 messageBody:(id)a4 client:(id)a5 streamHandleId:(unint64_t)a6;
- (void)handleXPCMessage:(id)a3 messageBody:(id)a4 client:(id)a5 audioStreamHandleId:(unint64_t)a6;
@end

@implementation CSAudioTimeConversionProvidingProxy

- (void)_handleXPCTimeConvertProvidingTypeSampleCountFromHostTimeMessage:(id)a3 messageBody:(id)a4 client:(id)a5 streamHandleId:(unint64_t)a6
{
  v9 = a5;
  v10 = a3;
  uint64 = xpc_dictionary_get_uint64(a4, "hostTime");
  v12 = +[CSAudioTimeConverterPool sharedInstance];
  v13 = [v12 converterForAudioStreamId:a6];

  v14 = [v13 sampleCountFromHostTime:uint64];
  v15 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
  {
    v17 = 136315650;
    v18 = "[CSAudioTimeConversionProvidingProxy _handleXPCTimeConvertProvidingTypeSampleCountFromHostTimeMessage:messageBody:client:streamHandleId:]";
    v19 = 2050;
    v20 = uint64;
    v21 = 2050;
    v22 = v14;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s From hostTime %{public}llu fetched sampleCount = %{public}llu", &v17, 0x20u);
  }

  reply = xpc_dictionary_create_reply(v10);

  xpc_dictionary_set_BOOL(reply, "result", 1);
  xpc_dictionary_set_uint64(reply, "replySampleCount", v14);
  xpc_connection_send_message(v9, reply);
}

- (void)_handleXPCTimeConvertProvidingTypeHostTimeFromSampleCountMessage:(id)a3 messageBody:(id)a4 client:(id)a5 streamHandleId:(unint64_t)a6
{
  v9 = a5;
  v10 = a3;
  uint64 = xpc_dictionary_get_uint64(a4, "sampleCount");
  v12 = +[CSAudioTimeConverterPool sharedInstance];
  v13 = [v12 converterForAudioStreamId:a6];

  v14 = [v13 hostTimeFromSampleCount:uint64];
  v15 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
  {
    v17 = 136315650;
    v18 = "[CSAudioTimeConversionProvidingProxy _handleXPCTimeConvertProvidingTypeHostTimeFromSampleCountMessage:messageBody:client:streamHandleId:]";
    v19 = 2050;
    v20 = uint64;
    v21 = 2050;
    v22 = v14;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s From sampleCount %{public}llu fetched hostTime = %{public}llu", &v17, 0x20u);
  }

  reply = xpc_dictionary_create_reply(v10);

  xpc_dictionary_set_BOOL(reply, "result", 1);
  xpc_dictionary_set_uint64(reply, "replyHostTime", v14);
  xpc_connection_send_message(v9, reply);
}

- (void)handleXPCMessage:(id)a3 messageBody:(id)a4 client:(id)a5 audioStreamHandleId:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  int64 = xpc_dictionary_get_int64(v11, "type");
  if (int64 == 2)
  {
    [(CSAudioTimeConversionProvidingProxy *)self _handleXPCTimeConvertProvidingTypeSampleCountFromHostTimeMessage:v10 messageBody:v11 client:v12 streamHandleId:a6];
  }

  else
  {
    v14 = int64;
    if (int64 == 1)
    {
      [(CSAudioTimeConversionProvidingProxy *)self _handleXPCTimeConvertProvidingTypeHostTimeFromSampleCountMessage:v10 messageBody:v11 client:v12 streamHandleId:a6];
    }

    else
    {
      v15 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        v16 = 136315394;
        v17 = "[CSAudioTimeConversionProvidingProxy handleXPCMessage:messageBody:client:audioStreamHandleId:]";
        v18 = 2050;
        v19 = v14;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s Unexpected XPC audioTimeConvert providing request : %{public}lld", &v16, 0x16u);
      }
    }
  }
}

@end