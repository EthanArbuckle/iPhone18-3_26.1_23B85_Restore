@interface MRLogBuffer
+ (id)bufferWithCapacity:(int64_t)capacity category:(id)category loggingPrefix:(id)prefix;
- (MRLogBuffer)initWithCapacity:(int64_t)capacity category:(id)category prefix:(id)prefix;
- (NSArray)history;
- (id)description;
- (void)log:(id)log;
- (void)log:(id)log withType:(unsigned __int8)type capture:(BOOL)capture;
- (void)logDebug:(id)debug;
- (void)logDebugWithoutCapture:(id)capture;
- (void)logError:(id)error;
- (void)logErrorWithoutCapture:(id)capture;
- (void)logFault:(id)fault;
- (void)logFaultWithoutCapture:(id)capture;
- (void)logInfo:(id)info;
- (void)logInfoWithoutCapture:(id)capture;
- (void)logWithoutCapture:(id)capture;
@end

@implementation MRLogBuffer

+ (id)bufferWithCapacity:(int64_t)capacity category:(id)category loggingPrefix:(id)prefix
{
  prefixCopy = prefix;
  categoryCopy = category;
  v9 = [[MRLogBuffer alloc] initWithCapacity:capacity category:categoryCopy prefix:prefixCopy];

  return v9;
}

- (MRLogBuffer)initWithCapacity:(int64_t)capacity category:(id)category prefix:(id)prefix
{
  categoryCopy = category;
  prefixCopy = prefix;
  v21.receiver = self;
  v21.super_class = MRLogBuffer;
  v11 = [(MRLogBuffer *)&v21 init];
  v12 = v11;
  if (v11)
  {
    v11->_lock._os_unfair_lock_opaque = 0;
    v11->_capacity = capacity;
    objc_storeStrong(&v11->_category, category);
    v13 = [prefixCopy copy];
    prefix = v12->_prefix;
    v12->_prefix = v13;

    v15 = [MEMORY[0x1E695DF70] arrayWithCapacity:capacity];
    history = v12->_history;
    v12->_history = v15;

    v17 = objc_alloc_init(MEMORY[0x1E696AB78]);
    dateFormatter = v12->_dateFormatter;
    v12->_dateFormatter = v17;

    v19 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US_POSIX"];
    [(NSDateFormatter *)v12->_dateFormatter setLocale:v19];

    [(NSDateFormatter *)v12->_dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSS"];
  }

  return v12;
}

- (id)description
{
  v17 = *MEMORY[0x1E69E9840];
  string = [MEMORY[0x1E696AD60] string];
  os_unfair_lock_lock(&self->_lock);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_history;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [string appendString:{*(*(&v12 + 1) + 8 * i), v12}];
        [string appendString:@"\n"];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_lock);
  v9 = [string copy];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (NSArray)history
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSArray *)self->_history copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)log:(id)log
{
  v4 = MEMORY[0x1E696AEC0];
  logCopy = log;
  v6 = [[v4 alloc] initWithFormat:logCopy arguments:&v7];

  [(MRLogBuffer *)self log:v6 withType:0 capture:1];
}

- (void)logInfo:(id)info
{
  v4 = MEMORY[0x1E696AEC0];
  infoCopy = info;
  v6 = [[v4 alloc] initWithFormat:infoCopy arguments:&v7];

  [(MRLogBuffer *)self log:v6 withType:1 capture:1];
}

- (void)logDebug:(id)debug
{
  v4 = MEMORY[0x1E696AEC0];
  debugCopy = debug;
  v6 = [[v4 alloc] initWithFormat:debugCopy arguments:&v7];

  [(MRLogBuffer *)self log:v6 withType:2 capture:1];
}

- (void)logError:(id)error
{
  v4 = MEMORY[0x1E696AEC0];
  errorCopy = error;
  v6 = [[v4 alloc] initWithFormat:errorCopy arguments:&v7];

  [(MRLogBuffer *)self log:v6 withType:16 capture:1];
}

- (void)logFault:(id)fault
{
  v4 = MEMORY[0x1E696AEC0];
  faultCopy = fault;
  v6 = [[v4 alloc] initWithFormat:faultCopy arguments:&v7];

  [(MRLogBuffer *)self log:v6 withType:17 capture:1];
}

- (void)logWithoutCapture:(id)capture
{
  v4 = MEMORY[0x1E696AEC0];
  captureCopy = capture;
  v6 = [[v4 alloc] initWithFormat:captureCopy arguments:&v7];

  [(MRLogBuffer *)self log:v6 withType:0 capture:0];
}

- (void)logInfoWithoutCapture:(id)capture
{
  v4 = MEMORY[0x1E696AEC0];
  captureCopy = capture;
  v6 = [[v4 alloc] initWithFormat:captureCopy arguments:&v7];

  [(MRLogBuffer *)self log:v6 withType:1 capture:0];
}

- (void)logDebugWithoutCapture:(id)capture
{
  v4 = MEMORY[0x1E696AEC0];
  captureCopy = capture;
  v6 = [[v4 alloc] initWithFormat:captureCopy arguments:&v7];

  [(MRLogBuffer *)self log:v6 withType:2 capture:0];
}

- (void)logErrorWithoutCapture:(id)capture
{
  v4 = MEMORY[0x1E696AEC0];
  captureCopy = capture;
  v6 = [[v4 alloc] initWithFormat:captureCopy arguments:&v7];

  [(MRLogBuffer *)self log:v6 withType:16 capture:0];
}

- (void)logFaultWithoutCapture:(id)capture
{
  v4 = MEMORY[0x1E696AEC0];
  captureCopy = capture;
  v6 = [[v4 alloc] initWithFormat:captureCopy arguments:&v7];

  [(MRLogBuffer *)self log:v6 withType:17 capture:0];
}

- (void)log:(id)log withType:(unsigned __int8)type capture:(BOOL)capture
{
  captureCopy = capture;
  v26 = *MEMORY[0x1E69E9840];
  logCopy = log;
  prefix = [(MRLogBuffer *)self prefix];
  v10 = [prefix length];

  category = [(MRLogBuffer *)self category];
  v12 = os_log_type_enabled(category, type);
  if (v10)
  {
    if (v12)
    {
      prefix2 = [(MRLogBuffer *)self prefix];
      *buf = 138412546;
      v23 = prefix2;
      v24 = 2112;
      v25 = logCopy;
      _os_log_impl(&dword_1A2860000, category, type, "%@ %@", buf, 0x16u);
    }
  }

  else if (v12)
  {
    *buf = 138412290;
    v23 = logCopy;
    _os_log_impl(&dword_1A2860000, category, type, "%@", buf, 0xCu);
  }

  if (captureCopy && [(MRLogBuffer *)self capacity]>= 1)
  {
    os_unfair_lock_lock(&self->_lock);
    v14 = self->_history;
    v15 = MEMORY[0x1E696AEC0];
    dateFormatter = self->_dateFormatter;
    v17 = [MEMORY[0x1E695DF00] now];
    v18 = [(NSDateFormatter *)dateFormatter stringFromDate:v17];
    logCopy = [v15 stringWithFormat:@"%@ %@", v18, logCopy];
    [(NSArray *)v14 addObject:logCopy];

    v20 = [(NSArray *)v14 count];
    if (v20 > [(MRLogBuffer *)self capacity])
    {
      [(NSArray *)v14 removeObjectAtIndex:0];
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  v21 = *MEMORY[0x1E69E9840];
}

@end