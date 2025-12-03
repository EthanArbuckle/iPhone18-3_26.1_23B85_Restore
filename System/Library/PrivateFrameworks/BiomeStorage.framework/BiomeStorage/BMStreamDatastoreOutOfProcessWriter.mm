@interface BMStreamDatastoreOutOfProcessWriter
- (BMStreamDatastoreOutOfProcessWriter)initWithStream:(id)stream user:(unsigned int)user eventDataClass:(Class)class;
- (BOOL)writeEventWithEventBody:(id)body timestamp:(double)timestamp outEventSize:(unint64_t *)size;
@end

@implementation BMStreamDatastoreOutOfProcessWriter

- (BMStreamDatastoreOutOfProcessWriter)initWithStream:(id)stream user:(unsigned int)user eventDataClass:(Class)class
{
  streamCopy = stream;
  v14.receiver = self;
  v14.super_class = BMStreamDatastoreOutOfProcessWriter;
  v9 = [(BMStreamDatastoreOutOfProcessWriter *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_class = class;
    v9->_user = user;
    v11 = [streamCopy copy];
    streamIdentifier = v10->_streamIdentifier;
    v10->_streamIdentifier = v11;

    v10->_lock._os_unfair_lock_opaque = 0;
  }

  return v10;
}

- (BOOL)writeEventWithEventBody:(id)body timestamp:(double)timestamp outEventSize:(unint64_t *)size
{
  bodyCopy = body;
  v9 = objc_autoreleasePoolPush();
  serialize = [bodyCopy serialize];
  dataVersion = [bodyCopy dataVersion];
  os_unfair_lock_lock(&self->_lock);
  v12 = self->_class;
  if (v12)
  {
    if (([(objc_class *)v12 isEqual:objc_opt_class()]& 1) == 0)
    {
      v13 = __biome_log_for_category();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [BMStreamDatastoreOutOfProcessWriter writeEventWithEventBody:v13 timestamp:? outEventSize:?];
      }

      v14 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    self->_class = objc_opt_class();
  }

  writeService = self->_writeService;
  if (!writeService)
  {
    v16 = [BMWriteService alloc];
    v17 = [(BMWriteService *)v16 initWithUseCase:*MEMORY[0x1E698E960]];
    v18 = self->_writeService;
    self->_writeService = v17;

    writeService = self->_writeService;
  }

  streamIdentifier = self->_streamIdentifier;
  user = self->_user;
  v23 = 0;
  v14 = [(BMWriteService *)writeService writeData:serialize version:dataVersion timestamp:streamIdentifier toStream:user asUser:&v23 error:timestamp];
  v13 = v23;
  if (v14)
  {
    if (size)
    {
      *size = [serialize length];
    }
  }

  else
  {
    v21 = __biome_log_for_category();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [BMStreamDatastoreOutOfProcessWriter writeEventWithEventBody:v13 timestamp:v21 outEventSize:?];
    }
  }

LABEL_15:

  os_unfair_lock_unlock(&self->_lock);
  objc_autoreleasePoolPop(v9);

  return v14;
}

- (void)writeEventWithEventBody:(uint64_t)a1 timestamp:(NSObject *)a2 outEventSize:.cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1C928A000, a2, OS_LOG_TYPE_ERROR, "Out of process write failed with error: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end