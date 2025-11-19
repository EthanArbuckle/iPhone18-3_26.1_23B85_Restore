@interface _DASExtension
- (_DASExtension)init;
- (void)beginRequestWithExtensionContext:(id)a3;
- (void)runner:(id)a3 performActivity:(id)a4;
- (void)suspend;
@end

@implementation _DASExtension

- (_DASExtension)init
{
  v6.receiver = self;
  v6.super_class = _DASExtension;
  v2 = [(_DASExtension *)&v6 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.duetactivityscheduler", "extension");
    log = v2->_log;
    v2->_log = v3;
  }

  return v2;
}

- (void)beginRequestWithExtensionContext:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_DASExtension *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1B6E2F000, v5, OS_LOG_TYPE_DEFAULT, "Beginning request with extension context %@", &v7, 0xCu);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(_DASExtension *)self setContext:v4];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)runner:(id)a3 performActivity:(id)a4
{
  *&v22[5] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(_DASExtension *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412290;
    *v22 = v7;
    _os_log_impl(&dword_1B6E2F000, v8, OS_LOG_TYPE_DEFAULT, "Extension performing activity: %@", &v21, 0xCu);
  }

  v9 = os_transaction_create();
  [(_DASExtension *)self setTransaction:v9];

  v10 = [MEMORY[0x1E695DF00] date];
  [(_DASExtension *)self setStartTime:v10];

  [(_DASExtension *)self setRunner:v6];
  v11 = [v7 copy];
  [(_DASExtension *)self setActivity:v11];

  v12 = [(_DASExtension *)self runner];
  v13 = [v12 prepareForActivity:v7];

  if (v13)
  {
    v14 = [(_DASExtension *)self runner];
    v15 = [v14 start];
  }

  else
  {
    v14 = [(_DASExtension *)self log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(_DASExtension *)v6 runner:v7 performActivity:v14];
    }

    v15 = 3;
  }

  v16 = [MEMORY[0x1E695DF00] date];
  [v16 timeIntervalSinceDate:self->_startTime];
  v18 = v17;
  v19 = [(_DASExtension *)self log];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 67109376;
    v22[0] = v15;
    LOWORD(v22[1]) = 2048;
    *(&v22[1] + 2) = v18;
    _os_log_impl(&dword_1B6E2F000, v19, OS_LOG_TYPE_DEFAULT, "Extension complete (%hhu), time elapsed: %f s", &v21, 0x12u);
  }

  [(_DASExtension *)self _activityCompletedWithStatus:v15];
  v20 = *MEMORY[0x1E69E9840];
}

- (void)suspend
{
  v3 = [(_DASExtension *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1B6E2F000, v3, OS_LOG_TYPE_DEFAULT, "Request for extension to finish early.", v5, 2u);
  }

  v4 = [(_DASExtension *)self runner];
  [v4 stop];

  [(_DASExtension *)self _activityCompletedWithStatus:2];
}

- (void)runner:(NSObject *)a3 performActivity:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [a2 name];
  v7 = 138412546;
  v8 = a1;
  v9 = 2112;
  v10 = v5;
  _os_log_error_impl(&dword_1B6E2F000, a3, OS_LOG_TYPE_ERROR, "Unable to set up extension runner %@ for activity %@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

@end