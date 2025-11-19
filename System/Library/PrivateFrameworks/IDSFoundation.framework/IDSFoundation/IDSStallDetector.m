@interface IDSStallDetector
+ (id)detectorWithName:(id)a3;
+ (id)newDetectorWithName:(id)a3 stallDetectedBlock:(id)a4 stallWarningBlock:(id)a5;
+ (void)removeDetectorWithName:(id)a3;
- (BOOL)byteMovementCheckForEvent:(id)a3;
- (BOOL)consumeTimeCheckForEvent:(id)a3 produceTime:(unint64_t)a4 consumeTime:(unint64_t)a5;
- (double)byteMovementDelayThreshold;
- (unint64_t)consumeDelayThreshold;
- (void)consumeBytes:(int)a3;
- (void)forceTriggerStallDetectedBlockWithEventName:(id)a3;
- (void)produceBytes:(int)a3;
- (void)reset;
- (void)setByteMovementDelayThreshold:(double)a3;
- (void)setConsumeDelayThreshold:(unint64_t)a3;
@end

@implementation IDSStallDetector

+ (id)newDetectorWithName:(id)a3 stallDetectedBlock:(id)a4 stallWarningBlock:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  os_unfair_lock_lock(&unk_1EB2BC198);
  v10 = qword_1EB2BC1A0;
  if ((qword_1EB2BC1A0 || ([MEMORY[0x1E695DF90] dictionary], v11 = objc_claimAutoreleasedReturnValue(), v12 = qword_1EB2BC1A0, qword_1EB2BC1A0 = v11, v12, (v10 = qword_1EB2BC1A0) != 0)) && (objc_msgSend(v10, "objectForKey:", v7), v13 = objc_claimAutoreleasedReturnValue(), v13, !v13))
  {
    v15 = objc_alloc_init(IDSStallDetector);
    v14 = v15;
    if (v15)
    {
      v15->_lock._os_unfair_lock_opaque = 0;
      v16 = [v8 copy];
      stallDetectedBlock = v14->_stallDetectedBlock;
      v14->_stallDetectedBlock = v16;

      v18 = [v9 copy];
      stallWarningBlock = v14->_stallWarningBlock;
      v14->_stallWarningBlock = v18;

      v20 = [MEMORY[0x1E695DF70] array];
      bytesHistory = v14->_bytesHistory;
      v14->_bytesHistory = v20;

      v22 = [MEMORY[0x1E695DF70] array];
      bytesTimestamps = v14->_bytesTimestamps;
      v14->_bytesTimestamps = v22;

      [qword_1EB2BC1A0 setObject:v14 forKey:v7];
      v24 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v29 = v7;
        v30 = 2048;
        v31 = [qword_1EB2BC1A0 count];
        _os_log_impl(&dword_1A7AD9000, v24, OS_LOG_TYPE_DEFAULT, "Created new detector %@ (total %lu)", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v27 = [qword_1EB2BC1A0 count];
          _IDSLogTransport(@"StallDetection", @"IDS", @"Created new detector %@ (total %lu)");
          if (_IDSShouldLog())
          {
            [qword_1EB2BC1A0 count];
            _IDSLogV(0, @"IDSFoundation", @"StallDetection", @"Created new detector %@ (total %lu)");
          }
        }
      }

      os_unfair_lock_unlock(&unk_1EB2BC198);
      v25 = v14;
    }

    else
    {
      os_unfair_lock_unlock(&unk_1EB2BC198);
    }
  }

  else
  {
    os_unfair_lock_unlock(&unk_1EB2BC198);
    v14 = 0;
  }

  return v14;
}

+ (id)detectorWithName:(id)a3
{
  v3 = a3;
  os_unfair_lock_lock(&unk_1EB2BC198);
  v4 = [qword_1EB2BC1A0 objectForKey:v3];

  os_unfair_lock_unlock(&unk_1EB2BC198);

  return v4;
}

+ (void)removeDetectorWithName:(id)a3
{
  v3 = a3;
  os_unfair_lock_lock(&unk_1EB2BC198);
  v4 = [qword_1EB2BC1A0 objectForKey:v3];
  [qword_1EB2BC1A0 removeObjectForKey:v3];

  [v4 reset];
  os_unfair_lock_unlock(&unk_1EB2BC198);
}

- (unint64_t)consumeDelayThreshold
{
  os_unfair_lock_lock(&self->_lock);
  consumeDelayThreshold = self->_consumeDelayThreshold;
  os_unfair_lock_unlock(&self->_lock);
  return consumeDelayThreshold;
}

- (void)setConsumeDelayThreshold:(unint64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_consumeDelayThreshold = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (double)byteMovementDelayThreshold
{
  os_unfair_lock_lock(&self->_lock);
  byteMovementDelayThreshold = self->_byteMovementDelayThreshold;
  os_unfair_lock_unlock(&self->_lock);
  return byteMovementDelayThreshold;
}

- (void)setByteMovementDelayThreshold:(double)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_byteMovementDelayThreshold = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)consumeTimeCheckForEvent:(id)a3 produceTime:(unint64_t)a4 consumeTime:(unint64_t)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a3;
  if (!self->_consumeDelayThreshold)
  {
    goto LABEL_18;
  }

  v9 = 0;
  if (a4 && a5)
  {
    if (self->_verboseLogging)
    {
      v10 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413058;
        v17 = v8;
        v18 = 2048;
        v19 = a4;
        v20 = 2048;
        v21 = a5;
        v22 = 2048;
        v23 = a4 - a5;
        _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "Checking time for %@: %llu ~ %llu = %llu", buf, 0x2Au);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV(0, @"IDSFoundation", @"StallDetection", @"Checking time for %@: %llu ~ %llu = %llu");
      }
    }

    v11 = a4 - a5;
    if (v11 > 0x3FFFFFFFFFFFFFFELL)
    {
      goto LABEL_18;
    }

    os_unfair_lock_lock(&self->_lock);
    consumeDelayThreshold = self->_consumeDelayThreshold;
    if (v11 <= consumeDelayThreshold)
    {
      if (v11 <= consumeDelayThreshold >> 1)
      {
        os_unfair_lock_unlock(&self->_lock);
        goto LABEL_18;
      }

      v13 = 24;
    }

    else
    {
      v13 = 16;
    }

    v14 = _Block_copy(*(&self->super.isa + v13));
    os_unfair_lock_unlock(&self->_lock);
    if (v14)
    {
      v14[2](v14, v8);

      v9 = 1;
      goto LABEL_19;
    }

LABEL_18:
    v9 = 0;
  }

LABEL_19:

  return v9;
}

- (BOOL)byteMovementCheckForEvent:(id)a3
{
  v4 = a3;
  if (self->_byteMovementDelayThreshold == 0.0)
  {
    goto LABEL_10;
  }

  v5 = ids_monotonic_time();
  os_unfair_lock_lock(&self->_lock);
  if (![(NSMutableArray *)self->_bytesTimestamps count])
  {
    goto LABEL_9;
  }

  v6 = [(NSMutableArray *)self->_bytesTimestamps objectAtIndexedSubscript:0];
  [v6 doubleValue];
  v8 = v7;

  byteMovementDelayThreshold = self->_byteMovementDelayThreshold;
  if (v5 - v8 > byteMovementDelayThreshold)
  {
    v10 = 16;
    goto LABEL_7;
  }

  if (v5 - v8 <= byteMovementDelayThreshold * 0.5)
  {
LABEL_9:
    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_10;
  }

  v10 = 24;
LABEL_7:
  v11 = _Block_copy(*(&self->super.isa + v10));
  os_unfair_lock_unlock(&self->_lock);
  if (!v11)
  {
LABEL_10:
    v12 = 0;
    goto LABEL_11;
  }

  v11[2](v11, v4);

  v12 = 1;
LABEL_11:

  return v12;
}

- (void)produceBytes:(int)a3
{
  v3 = *&a3;
  v15 = *MEMORY[0x1E69E9840];
  v5 = ids_monotonic_time();
  os_unfair_lock_lock(&self->_lock);
  bytesHistory = self->_bytesHistory;
  v7 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSMutableArray *)bytesHistory addObject:v7];

  bytesTimestamps = self->_bytesTimestamps;
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:v5];
  [(NSMutableArray *)bytesTimestamps addObject:v9];

  os_unfair_lock_unlock(&self->_lock);
  if (self->_verboseLogging)
  {
    v10 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v12 = v3;
      v13 = 2048;
      v14 = v5;
      _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "Producing bytes %d at time %f", buf, 0x12u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLog())
      {
        _IDSLogV(0, @"IDSFoundation", @"StallDetection", @"Producing bytes %d at time %f");
      }
    }
  }
}

- (void)consumeBytes:(int)a3
{
  os_unfair_lock_lock(&self->_lock);
  if (a3 >= 1)
  {
    while ([(NSMutableArray *)self->_bytesHistory count])
    {
      v5 = [(NSMutableArray *)self->_bytesHistory objectAtIndexedSubscript:0];
      v6 = [v5 intValue];

      if (v6 > a3)
      {
        v8 = [MEMORY[0x1E696AD98] numberWithInt:(v6 - a3)];
        [(NSMutableArray *)self->_bytesHistory setObject:v8 atIndexedSubscript:0];

        break;
      }

      [(NSMutableArray *)self->_bytesHistory removeObjectAtIndex:0];
      [(NSMutableArray *)self->_bytesTimestamps removeObjectAtIndex:0];
      v7 = __OFSUB__(a3, v6);
      a3 -= v6;
      if ((a3 < 0) ^ v7 | (a3 == 0))
      {
        break;
      }
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)reset
{
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableArray *)self->_bytesHistory removeAllObjects];
  [(NSMutableArray *)self->_bytesTimestamps removeAllObjects];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)forceTriggerStallDetectedBlockWithEventName:(id)a3
{
  v6 = a3;
  v4 = _Block_copy(self->_stallDetectedBlock);
  v5 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4, v6);
  }
}

@end