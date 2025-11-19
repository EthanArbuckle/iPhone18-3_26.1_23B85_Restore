@interface ULMeasurementMO_deprecated
+ (id)createFromDO:(const void *)a3 inManagedObjectContext:(id)a4;
- (optional<ULMeasurementDO>)convertToDO;
@end

@implementation ULMeasurementMO_deprecated

+ (id)createFromDO:(const void *)a3 inManagedObjectContext:(id)a4
{
  v5 = [[ULMeasurementMO_deprecated alloc] initWithContext:a4];
  v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a3];
  v7 = [v6 UUIDString];
  [(ULMeasurementMO_deprecated *)v5 setRecordingUUID:v7];

  [(ULMeasurementMO_deprecated *)v5 setScanCFTimestamp:*(a3 + 2)];
  [(ULMeasurementMO_deprecated *)v5 setScanMCTimestamp:*(a3 + 3)];
  [(ULMeasurementMO_deprecated *)v5 setFlags:*(a3 + 28)];
  CLMicroLocationProto::Measurement::ByteSize((a3 + 32));
  operator new[]();
}

- (optional<ULMeasurementDO>)convertToDO
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = [(ULMeasurementMO_deprecated *)self recordingUUID];
  v5 = v4;
  if (v4)
  {
    [v4 boostUUID];
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
    v8 = [(ULMeasurementMO_deprecated *)self scanMCTimestamp];
    v9 = [(ULMeasurementMO_deprecated *)self flags];
    v10 = [(ULMeasurementMO_deprecated *)self data];
    v11 = v10;
    v12 = [v10 bytes];
    v13 = [(ULMeasurementMO_deprecated *)self data];
    [v13 length];
    LOBYTE(v12) = wireless_diagnostics::google::protobuf::MessageLite::ParseFromArray(v18, v12);

    if (v12)
    {
      if ((v23 & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      ULMeasurementDO::ULMeasurementDO(buf, v21, v22, v8, v18, v9 | 0x100000000, v7);
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