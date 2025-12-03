@interface CSAudioTimeConversionProvidingProxy
- (void)_handleXPCTimeConvertProvidingTypeHostTimeFromSampleCountMessage:(id)message messageBody:(id)body client:(id)client streamHandleId:(unint64_t)id;
- (void)_handleXPCTimeConvertProvidingTypeSampleCountFromHostTimeMessage:(id)message messageBody:(id)body client:(id)client streamHandleId:(unint64_t)id;
- (void)handleXPCMessage:(id)message messageBody:(id)body client:(id)client audioStreamHandleId:(unint64_t)id;
@end

@implementation CSAudioTimeConversionProvidingProxy

- (void)_handleXPCTimeConvertProvidingTypeSampleCountFromHostTimeMessage:(id)message messageBody:(id)body client:(id)client streamHandleId:(unint64_t)id
{
  clientCopy = client;
  messageCopy = message;
  uint64 = xpc_dictionary_get_uint64(body, "hostTime");
  v12 = +[CSAudioTimeConverterPool sharedInstance];
  v13 = [v12 converterForAudioStreamId:id];

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

  reply = xpc_dictionary_create_reply(messageCopy);

  xpc_dictionary_set_BOOL(reply, "result", 1);
  xpc_dictionary_set_uint64(reply, "replySampleCount", v14);
  xpc_connection_send_message(clientCopy, reply);
}

- (void)_handleXPCTimeConvertProvidingTypeHostTimeFromSampleCountMessage:(id)message messageBody:(id)body client:(id)client streamHandleId:(unint64_t)id
{
  clientCopy = client;
  messageCopy = message;
  uint64 = xpc_dictionary_get_uint64(body, "sampleCount");
  v12 = +[CSAudioTimeConverterPool sharedInstance];
  v13 = [v12 converterForAudioStreamId:id];

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

  reply = xpc_dictionary_create_reply(messageCopy);

  xpc_dictionary_set_BOOL(reply, "result", 1);
  xpc_dictionary_set_uint64(reply, "replyHostTime", v14);
  xpc_connection_send_message(clientCopy, reply);
}

- (void)handleXPCMessage:(id)message messageBody:(id)body client:(id)client audioStreamHandleId:(unint64_t)id
{
  messageCopy = message;
  bodyCopy = body;
  clientCopy = client;
  int64 = xpc_dictionary_get_int64(bodyCopy, "type");
  if (int64 == 2)
  {
    [(CSAudioTimeConversionProvidingProxy *)self _handleXPCTimeConvertProvidingTypeSampleCountFromHostTimeMessage:messageCopy messageBody:bodyCopy client:clientCopy streamHandleId:id];
  }

  else
  {
    v14 = int64;
    if (int64 == 1)
    {
      [(CSAudioTimeConversionProvidingProxy *)self _handleXPCTimeConvertProvidingTypeHostTimeFromSampleCountMessage:messageCopy messageBody:bodyCopy client:clientCopy streamHandleId:id];
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