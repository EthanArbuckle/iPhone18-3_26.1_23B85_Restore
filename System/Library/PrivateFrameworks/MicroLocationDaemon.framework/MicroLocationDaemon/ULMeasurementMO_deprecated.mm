@interface ULMeasurementMO_deprecated
+ (id)createFromDO:(const void *)o inManagedObjectContext:(id)context;
- (optional<ULMeasurementDO>)convertToDO;
@end

@implementation ULMeasurementMO_deprecated

+ (id)createFromDO:(const void *)o inManagedObjectContext:(id)context
{
  v5 = [[ULMeasurementMO_deprecated alloc] initWithContext:context];
  v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:o];
  uUIDString = [v6 UUIDString];
  [(ULMeasurementMO_deprecated *)v5 setRecordingUUID:uUIDString];

  [(ULMeasurementMO_deprecated *)v5 setScanCFTimestamp:*(o + 2)];
  [(ULMeasurementMO_deprecated *)v5 setScanMCTimestamp:*(o + 3)];
  [(ULMeasurementMO_deprecated *)v5 setFlags:*(o + 28)];
  CLMicroLocationProto::Measurement::ByteSize((o + 32));
  operator new[]();
}

- (optional<ULMeasurementDO>)convertToDO
{
  v24 = *MEMORY[0x277D85DE8];
  recordingUUID = [(ULMeasurementMO_deprecated *)self recordingUUID];
  v5 = recordingUUID;
  if (recordingUUID)
  {
    [recordingUUID boostUUID];
  }

  else
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
  }

  if (v23)
  {
    [(ULMeasurementMO_deprecated *)self scanCFTimestamp];
    v7 = v6;
    scanMCTimestamp = [(ULMeasurementMO_deprecated *)self scanMCTimestamp];
    flags = [(ULMeasurementMO_deprecated *)self flags];
    data = [(ULMeasurementMO_deprecated *)self data];
    v11 = data;
    bytes = [data bytes];
    data2 = [(ULMeasurementMO_deprecated *)self data];
    [data2 length];
    LOBYTE(bytes) = wireless_diagnostics::google::protobuf::MessageLite::ParseFromArray(v18, bytes);

    if (bytes)
    {
      if ((v23 & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      ULMeasurementDO::ULMeasurementDO(buf, v21, v22, scanMCTimestamp, v18, flags | 0x100000000, v7);
      ULMeasurementDO::ULMeasurementDO(retstr, buf);
      *(&retstr[1].var0.var4 + 40) = 1;
      CLMicroLocationProto::Measurement::~Measurement(&v20);
    }

    else
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        [ULMeasurementMO_deprecated convertToDO];
      }

      v16 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_258FE9000, v16, OS_LOG_TYPE_ERROR, "convertToDO: Failed to deserialize measurement protobuf from byte stream", buf, 2u);
      }

      retstr->var0.var0 = 0;
      *(&retstr[1].var0.var4 + 40) = 0;
    }

    CLMicroLocationProto::Measurement::~Measurement(v18);
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULMeasurementMO_deprecated convertToDO];
    }

    v14 = logObject_MicroLocation_Default;
    result = os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v14, OS_LOG_TYPE_ERROR, "convertToDO: measuremnt's recordingUUID has no value", buf, 2u);
    }

    retstr->var0.var0 = 0;
    *(&retstr[1].var0.var4 + 40) = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

@end