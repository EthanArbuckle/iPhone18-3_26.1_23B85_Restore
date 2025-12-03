@interface SNTPPlugin
- (SNTPPlugin)initWithClock:(id)clock daemonCore:(id)core;
- (void)dealloc;
- (void)didSetTime:(double)time withUncertainty:(double)uncertainty fromSource:(id)source lastInput:(id)input;
@end

@implementation SNTPPlugin

- (SNTPPlugin)initWithClock:(id)clock daemonCore:(id)core
{
  v5 = [(SNTPPlugin *)self init];
  if (v5)
  {
    v5->logs = os_log_create("com.apple.timed", "sntp");
    v5->daemonCore = core;
  }

  return v5;
}

- (void)dealloc
{
  sntp_header_unmap(self->header);
  v3.receiver = self;
  v3.super_class = SNTPPlugin;
  [(SNTPPlugin *)&v3 dealloc];
}

- (void)didSetTime:(double)time withUncertainty:(double)uncertainty fromSource:(id)source lastInput:(id)input
{
  logs = self->logs;
  if (os_log_type_enabled(logs, OS_LOG_TYPE_INFO))
  {
    header = self->header;
    *v27 = 134218498;
    *&v27[4] = time;
    *&v27[12] = 2112;
    *&v27[14] = source;
    *&v27[22] = 2048;
    *&v27[24] = header;
    _os_log_impl(&dword_0, logs, OS_LOG_TYPE_INFO, "didSetTime:%lf fromSource:%@, header:%p", v27, 0x20u);
  }

  if (!self->header)
  {
    *&v27[16] = 0;
    *v27 = xmmword_15F0;
    v11 = sntp_header_mmap("/var/sntpd/state.bin", v27, 1);
    self->header = v11;
    v12 = self->logs;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *__error();
      *v27 = 134218240;
      *&v27[4] = v11;
      *&v27[12] = 1024;
      *&v27[14] = v13;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "header is %p, errno is %d", v27, 0x12u);
    }
  }

  v14 = [&off_4108 objectForKeyedSubscript:source];
  if (self->header)
  {
    v15 = v14;
    if (v14)
    {
      sntp_datestamp_from_double(kCFAbsoluteTimeIntervalSince1970 + time + 2208988800.0);
      v16 = self->header;
      v16->var9 = sntp_timestamp_from_datestamp(v17, v18);
      *self->header &= 0x3Fu;
      v19 = self->header;
      v19->var3 = 2;
      v19->var8 = *[v15 UTF8String];
      v20 = self->logs;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = self->header;
        var0 = v21->var9.var0;
        var1 = v21->var9.var1;
        v24 = *v21 >> 6;
        var3 = v21->var3;
        v26 = [objc_msgSend(&off_4108 objectForKeyedSubscript:{source), "UTF8String"}];
        *v27 = 67110146;
        *&v27[4] = var0;
        *&v27[8] = 1024;
        *&v27[10] = var1;
        *&v27[14] = 1024;
        *&v27[16] = v24;
        *&v27[20] = 1024;
        *&v27[22] = var3;
        *&v27[26] = 2080;
        *&v27[28] = v26;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_INFO, "sntpd,t_ref,%08X.%08X,li,%d,stratum,%d,ref,%s", v27, 0x24u);
      }
    }
  }
}

@end