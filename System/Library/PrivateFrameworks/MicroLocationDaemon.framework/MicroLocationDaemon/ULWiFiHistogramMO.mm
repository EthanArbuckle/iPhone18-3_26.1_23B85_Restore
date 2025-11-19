@interface ULWiFiHistogramMO
+ (id)createFromDO:(const void *)a3 withLoiMO:(id)a4 inManagedObjectContext:(id)a5;
- (optional<ULWiFiHistogramDO>)convertToDO;
@end

@implementation ULWiFiHistogramMO

+ (id)createFromDO:(const void *)a3 withLoiMO:(id)a4 inManagedObjectContext:(id)a5
{
  v7 = a4;
  v8 = [[ULWiFiHistogramMO alloc] initWithContext:a5];
  [(ULWiFiHistogramMO *)v8 setLoi:v7];
  [(ULWiFiHistogramMO *)v8 setTimestamp:*a3];
  CLMicroLocationProto::WifiHistogram::ByteSize((a3 + 24));
  operator new[]();
}

- (optional<ULWiFiHistogramDO>)convertToDO
{
  v22 = *MEMORY[0x277D85DE8];
  [(ULWiFiHistogramMO *)self timestamp];
  v17 = v4;
  v5 = [(ULWiFiHistogramMO *)self loi];
  v6 = [v5 loiId];
  v7 = v6;
  if (v6)
  {
    [v6 boostUUID];
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
  v9 = [(ULWiFiHistogramMO *)self histogram];
  v10 = v9;
  v11 = [v9 bytes];
  v12 = [(ULWiFiHistogramMO *)self histogram];
  [v12 length];
  LOBYTE(v11) = wireless_diagnostics::google::protobuf::MessageLite::ParseFromArray(v16, v11);

  if (v11)
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