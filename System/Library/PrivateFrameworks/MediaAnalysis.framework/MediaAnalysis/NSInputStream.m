@interface NSInputStream
- (int)vcp_readBuffer:(void *)a3 ofLength:(unint64_t)a4;
- (int)vcp_readUint32:(unsigned int *)a3;
@end

@implementation NSInputStream

- (int)vcp_readBuffer:(void *)a3 ofLength:(unint64_t)a4
{
  v5 = [(NSInputStream *)self read:a3 maxLength:?];
  if (v5 == a4)
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
      v9[1] = a4;
      v10 = 1024;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "[NSInputStream] Expecting %d bytes but only %d bytes are available", v9, 0xEu);
    }
  }

  return -19;
}

- (int)vcp_readUint32:(unsigned int *)a3
{
  result = [(NSInputStream *)self vcp_readBuffer:a3 ofLength:4];
  if (!result)
  {
    *a3 = bswap32(*a3);
  }

  return result;
}

@end