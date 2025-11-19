@interface MRLogBuffer
+ (id)bufferWithCapacity:(int64_t)a3 category:(id)a4 loggingPrefix:(id)a5;
- (MRLogBuffer)initWithCapacity:(int64_t)a3 category:(id)a4 prefix:(id)a5;
- (NSArray)history;
- (id)description;
- (void)log:(id)a3;
- (void)log:(id)a3 withType:(unsigned __int8)a4 capture:(BOOL)a5;
- (void)logDebug:(id)a3;
- (void)logDebugWithoutCapture:(id)a3;
- (void)logError:(id)a3;
- (void)logErrorWithoutCapture:(id)a3;
- (void)logFault:(id)a3;
- (void)logFaultWithoutCapture:(id)a3;
- (void)logInfo:(id)a3;
- (void)logInfoWithoutCapture:(id)a3;
- (void)logWithoutCapture:(id)a3;
@end

@implementation MRLogBuffer

+ (id)bufferWithCapacity:(int64_t)a3 category:(id)a4 loggingPrefix:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [[MRLogBuffer alloc] initWithCapacity:a3 category:v8 prefix:v7];

  return v9;
}

- (MRLogBuffer)initWithCapacity:(int64_t)a3 category:(id)a4 prefix:(id)a5
{
  v9 = a4;
  v10 = a5;
  v21.receiver = self;
  v21.super_class = MRLogBuffer;
  v11 = [(MRLogBuffer *)&v21 init];
  v12 = v11;
  if (v11)
  {
    v11->_lock._os_unfair_lock_opaque = 0;
    v11->_capacity = a3;
    objc_storeStrong(&v11->_category, a4);
    v13 = [v10 copy];
    prefix = v12->_prefix;
    v12->_prefix = v13;

    v15 = [MEMORY[0x1E695DF70] arrayWithCapacity:a3];
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
  v3 = [MEMORY[0x1E696AD60] string];
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

        [v3 appendString:{*(*(&v12 + 1) + 8 * i), v12}];
        [v3 appendString:@"\n"];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_lock);
  v9 = [v3 copy];

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

- (void)log:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [[v4 alloc] initWithFormat:v5 arguments:&v7];

  [(MRLogBuffer *)self log:v6 withType:0 capture:1];
}

- (void)logInfo:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [[v4 alloc] initWithFormat:v5 arguments:&v7];

  [(MRLogBuffer *)self log:v6 withType:1 capture:1];
}

- (void)logDebug:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [[v4 alloc] initWithFormat:v5 arguments:&v7];

  [(MRLogBuffer *)self log:v6 withType:2 capture:1];
}

- (void)logError:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [[v4 alloc] initWithFormat:v5 arguments:&v7];

  [(MRLogBuffer *)self log:v6 withType:16 capture:1];
}

- (void)logFault:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [[v4 alloc] initWithFormat:v5 arguments:&v7];

  [(MRLogBuffer *)self log:v6 withType:17 capture:1];
}

- (void)logWithoutCapture:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [[v4 alloc] initWithFormat:v5 arguments:&v7];

  [(MRLogBuffer *)self log:v6 withType:0 capture:0];
}

- (void)logInfoWithoutCapture:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [[v4 alloc] initWithFormat:v5 arguments:&v7];

  [(MRLogBuffer *)self log:v6 withType:1 capture:0];
}

- (void)logDebugWithoutCapture:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [[v4 alloc] initWithFormat:v5 arguments:&v7];

  [(MRLogBuffer *)self log:v6 withType:2 capture:0];
}

- (void)logErrorWithoutCapture:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [[v4 alloc] initWithFormat:v5 arguments:&v7];

  [(MRLogBuffer *)self log:v6 withType:16 capture:0];
}

- (void)logFaultWithoutCapture:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [[v4 alloc] initWithFormat:v5 arguments:&v7];

  [(MRLogBuffer *)self log:v6 withType:17 capture:0];
}

- (void)log:(id)a3 withType:(unsigned __int8)a4 capture:(BOOL)a5
{
  v5 = a5;
  v26 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [(MRLogBuffer *)self prefix];
  v10 = [v9 length];

  v11 = [(MRLogBuffer *)self category];
  v12 = os_log_type_enabled(v11, a4);
  if (v10)
  {
    if (v12)
    {
      v13 = [(MRLogBuffer *)self prefix];
      *buf = 138412546;
      v23 = v13;
      v24 = 2112;
      v25 = v8;
      _os_log_impl(&dword_1A2860000, v11, a4, "%@ %@", buf, 0x16u);
    }
  }

  else if (v12)
  {
    *buf = 138412290;
    v23 = v8;
    _os_log_impl(&dword_1A2860000, v11, a4, "%@", buf, 0xCu);
  }

  if (v5 && [(MRLogBuffer *)self capacity]>= 1)
  {
    os_unfair_lock_lock(&self->_lock);
    v14 = self->_history;
    v15 = MEMORY[0x1E696AEC0];
    dateFormatter = self->_dateFormatter;
    v17 = [MEMORY[0x1E695DF00] now];
    v18 = [(NSDateFormatter *)dateFormatter stringFromDate:v17];
    v19 = [v15 stringWithFormat:@"%@ %@", v18, v8];
    [(NSArray *)v14 addObject:v19];

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