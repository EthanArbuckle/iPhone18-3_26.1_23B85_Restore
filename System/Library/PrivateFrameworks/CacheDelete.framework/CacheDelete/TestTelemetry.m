@interface TestTelemetry
+ (id)testTelemetryWithInfo:(id)a3;
- (TestTelemetry)initWithInfo:(id)a3;
- (id)description;
- (unint64_t)deletes;
- (void)addDeletes:(unint64_t)a3;
- (void)addRemoveFailure:(id)a3;
- (void)addTerminationFailure:(id)a3;
@end

@implementation TestTelemetry

- (TestTelemetry)initWithInfo:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKeyedSubscript:@"CACHE_DELETE_TEST_PARAMETERS"];
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
        v18 = self;
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

        v18 = 0;
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

      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v18;
}

+ (id)testTelemetryWithInfo:(id)a3
{
  v3 = a3;
  v4 = [[TestTelemetry alloc] initWithInfo:v3];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  [(TestTelemetry *)self termination_threshold];
  v5 = v4;
  v6 = [(TestTelemetry *)self terminationFailures];
  [(TestTelemetry *)self remove_threshold];
  v8 = v7;
  v9 = [(TestTelemetry *)self removeFailures];
  v10 = [v3 stringWithFormat:@"termination threshold: %f -- failures: %@, remove threshold: %f -- failures: %@", v5, v6, v8, v9];

  return v10;
}

- (void)addRemoveFailure:(id)a3
{
  v4 = a3;
  v5 = [(TestTelemetry *)self removeFailures];

  if (!v5)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    [(TestTelemetry *)self setRemoveFailures:v6];
  }

  v7 = [(TestTelemetry *)self removeFailures];
  [v7 addObject:v4];
}

- (void)addTerminationFailure:(id)a3
{
  v4 = a3;
  v5 = [(TestTelemetry *)self terminationFailures];

  if (!v5)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    [(TestTelemetry *)self setTerminationFailures:v6];
  }

  v7 = [(TestTelemetry *)self terminationFailures];
  [v7 addObject:v4];
}

- (void)addDeletes:(unint64_t)a3
{
  v5 = [(TestTelemetry *)self q];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __28__TestTelemetry_addDeletes___block_invoke;
  v6[3] = &unk_1E7F02D90;
  v6[4] = self;
  v6[5] = a3;
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