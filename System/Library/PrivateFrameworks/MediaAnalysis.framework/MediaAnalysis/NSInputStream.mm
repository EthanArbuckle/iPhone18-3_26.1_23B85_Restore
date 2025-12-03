@interface NSInputStream
- (int)vcp_readBuffer:(void *)buffer ofLength:(unint64_t)length;
- (int)vcp_readUint32:(unsigned int *)uint32;
@end

@implementation NSInputStream

- (int)vcp_readBuffer:(void *)buffer ofLength:(unint64_t)length
{
  v5 = [(NSInputStream *)self read:buffer maxLength:?];
  if (v5 == length)
  {
    return 0;
  }

  v7 = v5;
  if (MediaAnalysisLogLevel() >= 3)
  {
    v8 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v8))
    {
      v9[0] = 67109376;
      v9[1] = length;
      v10 = 1024;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "[NSInputStream] Expecting %d bytes but only %d bytes are available", v9, 0xEu);
    }
  }

  return -19;
}

- (int)vcp_readUint32:(unsigned int *)uint32
{
  result = [(NSInputStream *)self vcp_readBuffer:uint32 ofLength:4];
  if (!result)
  {
    *uint32 = bswap32(*uint32);
  }

  return result;
}

@end