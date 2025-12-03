@interface ULWiFiHistogramMO
+ (id)createFromDO:(const void *)o withLoiMO:(id)mO inManagedObjectContext:(id)context;
- (optional<ULWiFiHistogramDO>)convertToDO;
@end

@implementation ULWiFiHistogramMO

+ (id)createFromDO:(const void *)o withLoiMO:(id)mO inManagedObjectContext:(id)context
{
  mOCopy = mO;
  v8 = [[ULWiFiHistogramMO alloc] initWithContext:context];
  [(ULWiFiHistogramMO *)v8 setLoi:mOCopy];
  [(ULWiFiHistogramMO *)v8 setTimestamp:*o];
  CLMicroLocationProto::WifiHistogram::ByteSize((o + 24));
  operator new[]();
}

- (optional<ULWiFiHistogramDO>)convertToDO
{
  v22 = *MEMORY[0x277D85DE8];
  [(ULWiFiHistogramMO *)self timestamp];
  v17 = v4;
  v5 = [(ULWiFiHistogramMO *)self loi];
  loiId = [v5 loiId];
  v7 = loiId;
  if (loiId)
  {
    [loiId boostUUID];
  }

  else
  {
    v20 = 0uLL;
    v21 = 0;
  }

  if ((v21 & 1) == 0)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULWiFiHistogramMO convertToDO];
    }

    v8 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_ERROR, "convertToDO: wifiHistogram's loiId has no value", buf, 2u);
    }

    v20 = 0uLL;
    if ((v21 & 1) == 0)
    {
      v21 = 1;
    }
  }

  CLMicroLocationProto::WifiHistogram::WifiHistogram(v16);
  histogram = [(ULWiFiHistogramMO *)self histogram];
  v10 = histogram;
  bytes = [histogram bytes];
  histogram2 = [(ULWiFiHistogramMO *)self histogram];
  [histogram2 length];
  LOBYTE(bytes) = wireless_diagnostics::google::protobuf::MessageLite::ParseFromArray(v16, bytes);

  if (bytes)
  {
    if ((v21 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    ULWiFiHistogramDO::ULWiFiHistogramDO(buf, &v17, &v20, v16);
    ULWiFiHistogramDO::ULWiFiHistogramDO(retstr, buf);
    LOBYTE(retstr[1].var0.var3.var1.var3) = 1;
    CLMicroLocationProto::WifiHistogram::~WifiHistogram(&v19);
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULWiFiHistogramMO convertToDO];
    }

    v13 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v13, OS_LOG_TYPE_ERROR, "convertToDO: Failed to deserialize wifiHistogram protobuf from byte stream", buf, 2u);
    }

    retstr->var0.var0 = 0;
    LOBYTE(retstr[1].var0.var3.var1.var3) = 0;
  }

  CLMicroLocationProto::WifiHistogram::~WifiHistogram(v16);
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

@end