@interface MRExternalDeviceMessageMetrics
- (MRExternalDeviceMessageMetrics)initWithPath:(id)path;
- (void)addMessage:(id)message data:(id)data;
- (void)dealloc;
- (void)write;
@end

@implementation MRExternalDeviceMessageMetrics

- (MRExternalDeviceMessageMetrics)initWithPath:(id)path
{
  pathCopy = path;
  v11.receiver = self;
  v11.super_class = MRExternalDeviceMessageMetrics;
  v5 = [(MRExternalDeviceMessageMetrics *)&v11 init];
  if (v5)
  {
    v6 = [pathCopy copy];
    path = v5->_path;
    v5->_path = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    entries = v5->_entries;
    v5->_entries = v8;
  }

  return v5;
}

- (void)dealloc
{
  [(MRExternalDeviceMessageMetrics *)self write];
  v3.receiver = self;
  v3.super_class = MRExternalDeviceMessageMetrics;
  [(MRExternalDeviceMessageMetrics *)&v3 dealloc];
}

- (void)addMessage:(id)message data:(id)data
{
  dataCopy = data;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [(NSMutableDictionary *)self->_entries objectForKey:v6];
  if (!v7)
  {
    v7 = objc_alloc_init(MRExternalDeviceMessageMetricsEntry);
    [(NSMutableDictionary *)self->_entries setObject:v7 forKey:v6];
  }

  -[MRExternalDeviceMessageMetricsEntry updateWithValue:](v7, "updateWithValue:", [dataCopy length]);
}

- (void)write
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  [defaultManager createFileAtPath:self->_path contents:0 attributes:0];
  v4 = objc_alloc_init(MEMORY[0x1E696AD60]);
  entries = self->_entries;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__MRExternalDeviceMessageMetrics_write__block_invoke;
  v7[3] = &unk_1E769EA60;
  v8 = v4;
  v6 = v4;
  [(NSMutableDictionary *)entries enumerateKeysAndObjectsUsingBlock:v7];
  [v6 writeToFile:self->_path atomically:1 encoding:4 error:0];
}

void __39__MRExternalDeviceMessageMetrics_write__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Type: %@ Entry: %@\n", a2, a3];
  [*(a1 + 32) appendString:v4];
}

@end