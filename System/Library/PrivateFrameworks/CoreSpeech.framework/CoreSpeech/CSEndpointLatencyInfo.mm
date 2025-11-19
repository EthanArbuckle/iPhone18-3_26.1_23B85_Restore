@interface CSEndpointLatencyInfo
- (CSEndpointLatencyInfo)initWithRequestMHUUID:(id)a3;
- (void)_emitMHEndpointLatencyInfo:(id)a3 withRequestMHUUID:(id)a4;
- (void)addPktInfoWithTimestamp:(unint64_t)a3 arrivalTimestamp:(unint64_t)a4 currentMachTime:(unint64_t)a5;
- (void)report;
@end

@implementation CSEndpointLatencyInfo

- (void)_emitMHEndpointLatencyInfo:(id)a3 withRequestMHUUID:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = [v5 copy];
    v8 = objc_alloc_init(MHSchemaMHEndpointLatencyInfoReported);
    v9 = [v7 objectForKey:@"FirstPktLatency"];

    if (v9)
    {
      v10 = [v7 objectForKey:@"FirstPktLatency"];
      [v10 floatValue];
      v12 = v11;

      LODWORD(v13) = v12;
      [v8 setFirstPacketLatencyInNs:{+[CSFTimeUtils millisecondsToNs:](CSFTimeUtils, "millisecondsToNs:", v13)}];
    }

    v14 = [v7 objectForKey:@"TrailingPktLatency"];

    if (v14)
    {
      v15 = [v7 objectForKey:@"TrailingPktLatency"];
      v16 = [CSEndpointLoggingHelper getMHStatisticDistributionInfoFromDictionary:v15];
      [v8 setTrailingPacketLatency:v16];
    }

    v17 = [v7 objectForKey:@"TrailingPktSpeechLatency"];

    if (v17)
    {
      v18 = [v7 objectForKey:@"TrailingPktSpeechLatency"];
      v19 = [CSEndpointLoggingHelper getMHStatisticDistributionInfoFromDictionary:v18];
      [v8 setCoreSpeechTrailingPacketLatency:v19];
    }

    v20 = [CSEndpointLoggingHelper getMHClientEventByMhUUID:v6];
    [v20 setEndpointLatencyInfoReported:v8];
    v21 = +[AssistantSiriAnalytics sharedStream];
    [v21 emitMessage:v20];

    v22 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 136315394;
      v25 = "[CSEndpointLatencyInfo _emitMHEndpointLatencyInfo:withRequestMHUUID:]";
      v26 = 2112;
      v27 = v6;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%s Submit MHEndpointLatencyInfoReportedEvent to SELF for MH ID: %@", &v24, 0x16u);
    }
  }

  else
  {
    v23 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v24 = 136315138;
      v25 = "[CSEndpointLatencyInfo _emitMHEndpointLatencyInfo:withRequestMHUUID:]";
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%s MHID not set, skipping SELF Logging", &v24, 0xCu);
    }
  }
}

- (void)report
{
  v3 = [CSUtils distributionDictionary:self->_trailingPktLatencies];
  v4 = [CSUtils distributionDictionary:self->_trailingPktSpeechLatencies];
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    numOfAudioPackets = self->_numOfAudioPackets;
    numOfValidTrailingPackets = self->_numOfValidTrailingPackets;
    numOfValidTrailingSpeechPackets = self->_numOfValidTrailingSpeechPackets;
    v14 = 136316418;
    v15 = "[CSEndpointLatencyInfo report]";
    v16 = 2050;
    v17 = numOfAudioPackets;
    v18 = 2050;
    v19 = numOfValidTrailingPackets;
    v20 = 2050;
    v21 = numOfValidTrailingSpeechPackets;
    v22 = 2114;
    v23 = v3;
    v24 = 2114;
    v25 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s numOfAudioPackets: %{public}lu, numOfValidTrailingPackets: %{public}lu, numOfValidTrailingSpeechPackets: %{public}lu, \ntrailingPktLatencies: %{public}@ \ntrailingPktSpeechLatencies: %{public}@", &v14, 0x3Eu);
  }

  v9 = objc_alloc_init(NSMutableDictionary);
  if ([v3 count])
  {
    [v9 setObject:v3 forKey:@"TrailingPktLatency"];
  }

  if ([v4 count])
  {
    [v9 setObject:v4 forKey:@"TrailingPktSpeechLatency"];
  }

  if (self->_firstPktLatency > 0.0)
  {
    v10 = [NSNumber numberWithDouble:?];
    [v9 setObject:v10 forKey:@"FirstPktLatency"];
  }

  if ([v9 count])
  {
    [(CSEndpointLatencyInfo *)self _emitMHEndpointLatencyInfo:v9 withRequestMHUUID:self->_requestMHUUID];
    v11 = [AFAnalytics alloc];
    v12 = +[AFInstanceContext currentContext];
    v13 = [v11 initWithInstanceContext:v12];

    [v13 logEventWithType:4712 context:v9];
  }
}

- (void)addPktInfoWithTimestamp:(unint64_t)a3 arrivalTimestamp:(unint64_t)a4 currentMachTime:(unint64_t)a5
{
  CSMachAbsoluteTimeGetTimeInterval();
  v10 = v9;
  numOfAudioPackets = self->_numOfAudioPackets;
  self->_numOfAudioPackets = numOfAudioPackets + 1;
  if (!numOfAudioPackets)
  {
    v12 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315394;
      v19 = "[CSEndpointLatencyInfo addPktInfoWithTimestamp:arrivalTimestamp:currentMachTime:]";
      v20 = 2050;
      v21 = v10 * 1000.0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s %{public}.2f ms after firstBufferStart", &v18, 0x16u);
    }
  }

  if (v10 <= 10.0)
  {
    v14 = [NSNumber numberWithDouble:v10 * 1000.0];
    [(NSMutableArray *)self->_trailingPktLatencies setObject:v14 atIndexedSubscript:self->_numOfValidTrailingPackets % 0xA];

    ++self->_numOfValidTrailingPackets;
  }

  else
  {
    v13 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315650;
      v19 = "[CSEndpointLatencyInfo addPktInfoWithTimestamp:arrivalTimestamp:currentMachTime:]";
      v20 = 2050;
      v21 = *&a5;
      v22 = 2050;
      v23 = a3;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s Invalid timestamp (currentMachTime: %{public}llu timestamp: %{public}llu)", &v18, 0x20u);
    }
  }

  CSMachAbsoluteTimeGetTimeInterval();
  if (a4 && v15 > 10.0)
  {
    v16 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315650;
      v19 = "[CSEndpointLatencyInfo addPktInfoWithTimestamp:arrivalTimestamp:currentMachTime:]";
      v20 = 2050;
      v21 = *&a5;
      v22 = 2050;
      v23 = a4;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s Invalid timestamp (currentMachTime: %{public}llu arrivalTimestamp: %{public}llu)", &v18, 0x20u);
    }
  }

  else
  {
    v17 = [NSNumber numberWithDouble:v15 * 1000.0];
    [(NSMutableArray *)self->_trailingPktSpeechLatencies setObject:v17 atIndexedSubscript:self->_numOfValidTrailingSpeechPackets % 0xA];

    ++self->_numOfValidTrailingSpeechPackets;
  }
}

- (CSEndpointLatencyInfo)initWithRequestMHUUID:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CSEndpointLatencyInfo;
  v5 = [(CSEndpointLatencyInfo *)&v13 init];
  if (v5)
  {
    v6 = [v4 copy];
    requestMHUUID = v5->_requestMHUUID;
    v5->_requestMHUUID = v6;

    v8 = [NSMutableArray arrayWithCapacity:10];
    trailingPktLatencies = v5->_trailingPktLatencies;
    v5->_trailingPktLatencies = v8;

    v10 = [NSMutableArray arrayWithCapacity:10];
    trailingPktSpeechLatencies = v5->_trailingPktSpeechLatencies;
    v5->_trailingPktSpeechLatencies = v10;

    v5->_numOfAudioPackets = 0;
    v5->_numOfValidTrailingPackets = 0;
    v5->_numOfValidTrailingSpeechPackets = 0;
  }

  return v5;
}

@end