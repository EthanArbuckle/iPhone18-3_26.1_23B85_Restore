@interface CSSpeechEndHostTimeEstimator
- (CSSpeechEndHostTimeEstimator)init;
- (unint64_t)estimatedSpeechEndHostTimeWithLastAudioChunkHostTime:(unint64_t)time;
- (void)notifyTrailingSilenceDurationAtEndpoint:(double)endpoint;
- (void)reset;
@end

@implementation CSSpeechEndHostTimeEstimator

- (unint64_t)estimatedSpeechEndHostTimeWithLastAudioChunkHostTime:(unint64_t)time
{
  trailingSilenceDurationAtEndpoint = self->_trailingSilenceDurationAtEndpoint;
  *&trailingSilenceDurationAtEndpoint = trailingSilenceDurationAtEndpoint;
  v5 = time - [CSFTimeUtils secondsToHostTime:trailingSilenceDurationAtEndpoint];
  v6 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315650;
    v9 = "[CSSpeechEndHostTimeEstimator estimatedSpeechEndHostTimeWithLastAudioChunkHostTime:]";
    v10 = 2050;
    timeCopy = time;
    v12 = 2050;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s SpeechEndEstimation: lastAudioChunkHostTime = %{public}llu, estimatedSpeechEndHostTime = %{public}llu", &v8, 0x20u);
  }

  return v5;
}

- (void)notifyTrailingSilenceDurationAtEndpoint:(double)endpoint
{
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[CSSpeechEndHostTimeEstimator notifyTrailingSilenceDurationAtEndpoint:]";
    v10 = 2050;
    endpointCopy2 = endpoint;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s SpeechEndEstimation: trailingSilenceDuration = %{public}f", &v8, 0x16u);
  }

  if (endpoint >= 2.5)
  {
    v7 = CSLogContextFacilityCoreSpeech;
    endpointCopy3 = 0.0;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315650;
      v9 = "[CSSpeechEndHostTimeEstimator notifyTrailingSilenceDurationAtEndpoint:]";
      v10 = 2050;
      endpointCopy2 = endpoint;
      v12 = 2050;
      v13 = 0x4004000000000000;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s SpeechEndEstimation: TrailingSilenceDuration at endpointer(%{public}f) is longer than threshold(%{public}f), force to make 0", &v8, 0x20u);
    }
  }

  else
  {
    endpointCopy3 = endpoint;
  }

  self->_trailingSilenceDurationAtEndpoint = endpointCopy3;
}

- (void)reset
{
  self->_endPointNotified = 0;
  self->_lastAudioChunkHostTime = 0;
  self->_trailingSilenceDurationAtEndpoint = 0.0;
  self->_numAudioSampleForwarded = 0;
}

- (CSSpeechEndHostTimeEstimator)init
{
  v5.receiver = self;
  v5.super_class = CSSpeechEndHostTimeEstimator;
  v2 = [(CSSpeechEndHostTimeEstimator *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CSSpeechEndHostTimeEstimator *)v2 reset];
  }

  return v3;
}

@end