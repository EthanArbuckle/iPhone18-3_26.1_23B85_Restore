@interface _CDMemoryUsageInterval
- (_CDMemoryUsageInterval)initWithName:(id)a3 client:(id)a4;
- (void)begin;
- (void)dealloc;
- (void)end;
@end

@implementation _CDMemoryUsageInterval

- (void)begin
{
  if (!self->_state)
  {
    self->_startTime = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW_APPROX);
    v3 = +[_CDMemoryUsageIntervalTracker sharedInstance];
    [(_CDMemoryUsageIntervalTracker *)v3 beginInterval:?];

    legacy_log_signpost(self, 1);
    self->_state = 1;
  }
}

- (void)end
{
  if (self->_state == 1)
  {
    [(_CDMemoryUsageInterval *)self end];
  }
}

- (void)dealloc
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a1[10];
  v5 = [a1 name];
  v6 = [a1 client];
  v8 = 134218498;
  v9 = v4;
  v10 = 2112;
  v11 = v5;
  v12 = 2112;
  v13 = v6;
  _os_log_error_impl(&dword_191750000, a2, OS_LOG_TYPE_ERROR, "[error] id=%lu name=%@ client=%@ not explicitly ended, this can lead to incorrect measurements", &v8, 0x20u);

  v7 = *MEMORY[0x1E69E9840];
}

- (_CDMemoryUsageInterval)initWithName:(id)a3 client:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = _CDMemoryUsageInterval;
  v8 = [(_CDMemoryUsageInterval *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_num = 0;
    v10 = [v6 copy];
    name = v9->_name;
    v9->_name = v10;

    v12 = [v7 copy];
    client = v9->_client;
    v9->_client = v12;

    v9->_state = 0;
    v9->_startTime = 0;
  }

  return v9;
}

@end