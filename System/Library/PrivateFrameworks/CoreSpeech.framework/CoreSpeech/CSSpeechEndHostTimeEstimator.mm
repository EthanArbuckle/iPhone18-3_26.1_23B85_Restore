@interface CSSpeechEndHostTimeEstimator
- (CSSpeechEndHostTimeEstimator)init;
- (unint64_t)estimatedSpeechEndHostTimeWithLastAudioChunkHostTime:(unint64_t)a3;
- (void)notifyTrailingSilenceDurationAtEndpoint:(double)a3;
- (void)reset;
@end

@implementation CSSpeechEndHostTimeEstimator

- (unint64_t)estimatedSpeechEndHostTimeWithLastAudioChunkHostTime:(unint64_t)a3
{
  trailingSilenceDurationAtEndpoint = self->_trailingSilenceDurationAtEndpoint;
  *&trailingSilenceDurationAtEndpoint = trailingSilenceDurationAtEndpoint;
  v5 = a3 - [CSFTimeUtils secondsToHostTime:trailingSilenceDurationAtEndpoint];
  v6 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315650;
    v9 = "[CSSpeechEndHostTimeEstimator estimatedSpeechEndHostTimeWithLastAudioChunkHostTime:]";
    v10 = 2050;
    v11 = a3;
    v12 = 2050;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s SpeechEndEstimation: lastAudioChunkHostTime = %{public}llu, estimatedSpeechEndHostTime = %{public}llu", &v8, 0x20u);
  }

  return v5;
}

- (void)notifyTrailingSilenceDurationAtEndpoint:(double)a3
{
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[CSSpeechEndHostTimeEstimator notifyTrailingSilenceDurationAtEndpoint:]";
    v10 = 2050;
    v11 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s SpeechEndEstimation: trailingSilenceDuration = %{public}f", &v8, 0x16u);
  }

  if (a3 >= 2.5)
  {
    v7 = CSLogContextFacilityCoreSpeech;
    v6 = 0.0;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315650;
      v9 = "[CSSpeechEndHostTimeEstimator notifyTrailingSilenceDurationAtEndpoint:]";
      v10 = 2050;
      v11 = a3;
      v12 = 2050;
      v13 = 0x4004000000000000;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s SpeechEndEstimation: TrailingSilenceDuration at endpointer(%{public}f) is longer than threshold(%{public}f), force to make 0", &v8, 0x20u);
    }
  }

  else
  {
    v6 = a3;
  }

  self->_trailingSilenceDurationAtEndpoint = v6;
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