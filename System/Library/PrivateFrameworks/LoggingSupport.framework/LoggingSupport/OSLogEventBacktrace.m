@interface OSLogEventBacktrace
- (OSLogEventBacktrace)initWithBacktrace:(os_log_backtrace_s *)a3;
- (OSLogEventBacktrace)initWithFrames:(id)a3;
- (OSLogEventBacktrace)initWithSingleFrame:(id)a3;
- (void)dealloc;
@end

@implementation OSLogEventBacktrace

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OSLogEventBacktrace;
  [(OSLogEventBacktrace *)&v3 dealloc];
}

- (OSLogEventBacktrace)initWithFrames:(id)a3
{
  v6.receiver = self;
  v6.super_class = OSLogEventBacktrace;
  v4 = [(OSLogEventBacktrace *)&v6 init];
  if (v4)
  {
    v4->_frames = a3;
  }

  return v4;
}

- (OSLogEventBacktrace)initWithSingleFrame:(id)a3
{
  v6.receiver = self;
  v6.super_class = OSLogEventBacktrace;
  v4 = [(OSLogEventBacktrace *)&v6 init];
  if (v4)
  {
    v4->_frames = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{a3, 0}];
  }

  return v4;
}

- (OSLogEventBacktrace)initWithBacktrace:(os_log_backtrace_s *)a3
{
  v8.receiver = self;
  v8.super_class = OSLogEventBacktrace;
  v3 = [(OSLogEventBacktrace *)&v8 init];
  if (v3)
  {
    LODWORD(v4) = os_log_backtrace_get_length();
    frames = os_log_backtrace_get_frames();
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v4];
    if (v4 >= 1)
    {
      v4 = v4;
      do
      {
        [(NSArray *)v6 addObject:[[OSLogEventBacktraceFrame alloc] initWithUUIDBytes:frames andOffset:*(frames + 16)]];
        frames += 20;
        --v4;
      }

      while (v4);
    }

    v3->_frames = v6;
  }

  return v3;
}

@end