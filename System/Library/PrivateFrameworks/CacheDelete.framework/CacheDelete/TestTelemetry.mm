@interface TestTelemetry
+ (id)testTelemetryWithInfo:(id)info;
- (TestTelemetry)initWithInfo:(id)info;
- (id)description;
- (unint64_t)deletes;
- (void)addDeletes:(unint64_t)deletes;
- (void)addRemoveFailure:(id)failure;
- (void)addTerminationFailure:(id)failure;
@end

@implementation TestTelemetry

- (TestTelemetry)initWithInfo:(id)info
{
  v27 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v5 = infoCopy;
  if (infoCopy)
  {
    v6 = [infoCopy objectForKeyedSubscript:@"CACHE_DELETE_TEST_PARAMETERS"];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 objectForKeyedSubscript:@"CACHE_DELETE_TEST_TERMINATION_THRESHOLD"];
      v9 = evaluateNumberProperty(v8);

      v10 = [v7 objectForKeyedSubscript:@"CACHE_DELETE_TEST_REMOVE_THRESHOLD"];
      v11 = evaluateNumberProperty(v10);

      if (v9 | v11 && ([v9 intValue] || objc_msgSend(v11, "intValue")))
      {
        v22.receiver = self;
        v22.super_class = TestTelemetry;
        v12 = [(TestTelemetry *)&v22 init];
        if (v12)
        {
          if (v9)
          {
            [v9 floatValue];
            v12->_termination_threshold = v13;
          }

          if (v11)
          {
            [v11 floatValue];
            v12->_remove_threshold = v14;
          }

          v15 = dispatch_queue_create("TestTelemetry_add_queue", 0);
          q = v12->_q;
          v12->_q = v15;
        }

        v17 = CDGetLogHandle("client");
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v24 = v12;
          v25 = 2112;
          v26 = v5;
          _os_log_impl(&dword_1BA7F1000, v17, OS_LOG_TYPE_DEFAULT, "initialized TestTelemetry: %@, info: %@", buf, 0x16u);
        }

        self = v12;
        selfCopy = self;
      }

      else
      {
        v19 = CDGetLogHandle("client");
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v24 = v5;
          _os_log_error_impl(&dword_1BA7F1000, v19, OS_LOG_TYPE_ERROR, "Invalid test parameters: %@", buf, 0xCu);
        }

        selfCopy = 0;
      }
    }

    else
    {
      v9 = CDGetLogHandle("client");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v24 = "[TestTelemetry initWithInfo:]";
        _os_log_error_impl(&dword_1BA7F1000, v9, OS_LOG_TYPE_ERROR, "[%s] no test parameters in info", buf, 0xCu);
      }

      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  v20 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

+ (id)testTelemetryWithInfo:(id)info
{
  infoCopy = info;
  v4 = [[TestTelemetry alloc] initWithInfo:infoCopy];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  [(TestTelemetry *)self termination_threshold];
  v5 = v4;
  terminationFailures = [(TestTelemetry *)self terminationFailures];
  [(TestTelemetry *)self remove_threshold];
  v8 = v7;
  removeFailures = [(TestTelemetry *)self removeFailures];
  v10 = [v3 stringWithFormat:@"termination threshold: %f -- failures: %@, remove threshold: %f -- failures: %@", v5, terminationFailures, v8, removeFailures];

  return v10;
}

- (void)addRemoveFailure:(id)failure
{
  failureCopy = failure;
  removeFailures = [(TestTelemetry *)self removeFailures];

  if (!removeFailures)
  {
    array = [MEMORY[0x1E695DF70] array];
    [(TestTelemetry *)self setRemoveFailures:array];
  }

  removeFailures2 = [(TestTelemetry *)self removeFailures];
  [removeFailures2 addObject:failureCopy];
}

- (void)addTerminationFailure:(id)failure
{
  failureCopy = failure;
  terminationFailures = [(TestTelemetry *)self terminationFailures];

  if (!terminationFailures)
  {
    array = [MEMORY[0x1E695DF70] array];
    [(TestTelemetry *)self setTerminationFailures:array];
  }

  terminationFailures2 = [(TestTelemetry *)self terminationFailures];
  [terminationFailures2 addObject:failureCopy];
}

- (void)addDeletes:(unint64_t)deletes
{
  v5 = [(TestTelemetry *)self q];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __28__TestTelemetry_addDeletes___block_invoke;
  v6[3] = &unk_1E7F02D90;
  v6[4] = self;
  v6[5] = deletes;
  dispatch_sync(v5, v6);
}

uint64_t __28__TestTelemetry_addDeletes___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40) + [v1 files_deleted];

  return [v1 setFiles_deleted:v2];
}

- (unint64_t)deletes
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [(TestTelemetry *)self q];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __24__TestTelemetry_deletes__block_invoke;
  v6[3] = &unk_1E7F02CF0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __24__TestTelemetry_deletes__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) files_deleted];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

@end