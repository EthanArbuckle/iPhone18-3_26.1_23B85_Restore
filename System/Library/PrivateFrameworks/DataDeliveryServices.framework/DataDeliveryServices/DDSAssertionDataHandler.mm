@interface DDSAssertionDataHandler
- (DDSAssertionDataHandler)initWithAssertionStorageFileURL:(id)l;
- (id)loadAssertionData;
- (void)loadAssertionData;
- (void)saveAssertionData:(id)data;
@end

@implementation DDSAssertionDataHandler

- (DDSAssertionDataHandler)initWithAssertionStorageFileURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = DDSAssertionDataHandler;
  v5 = [(DDSAssertionDataHandler *)&v9 init];
  if (v5)
  {
    v6 = [lCopy copy];
    assertionStorageFileURL = v5->_assertionStorageFileURL;
    v5->_assertionStorageFileURL = v6;
  }

  return v5;
}

- (id)loadAssertionData
{
  v17[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DEF0];
  assertionStorageFileURL = [(DDSAssertionDataHandler *)self assertionStorageFileURL];
  v16 = 0;
  v4 = [v2 dataWithContentsOfURL:assertionStorageFileURL options:0 error:&v16];
  v5 = v16;

  if (v4)
  {
    v6 = MEMORY[0x1E695DFD8];
    v17[0] = objc_opt_class();
    v17[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
    v8 = [v6 setWithArray:v7];

    v15 = 0;
    v9 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v8 fromData:v4 error:&v15];
    v10 = v15;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v12 = DefaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [DDSAssertionDataHandler loadAssertionData];
      }

      v11 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    v10 = DefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [DDSAssertionDataHandler loadAssertionData];
    }

    v11 = MEMORY[0x1E695E0F0];
  }

  v13 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)saveAssertionData:(id)data
{
  dataCopy = data;
  v13 = 0;
  v5 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:dataCopy requiringSecureCoding:1 error:&v13];
  v6 = v13;
  if (v5)
  {
    assertionStorageFileURL = [(DDSAssertionDataHandler *)self assertionStorageFileURL];
    v12 = 0;
    v8 = [v5 writeToURL:assertionStorageFileURL options:1 error:&v12];
    v9 = v12;

    v10 = DefaultLog();
    v11 = v10;
    if (v8)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [(DDSAssertionDataHandler *)self saveAssertionData:v11];
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [DDSAssertionDataHandler saveAssertionData:];
    }
  }

  else
  {
    v9 = DefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [DDSAssertionDataHandler saveAssertionData:];
    }
  }
}

- (void)loadAssertionData
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0(&dword_1DF7C6000, v0, v1, "Error (%{public}@) loading assertion data.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)saveAssertionData:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  v4 = 2114;
  v5 = v0;
  _os_log_error_impl(&dword_1DF7C6000, v1, OS_LOG_TYPE_ERROR, "Error (%{public}@) writing content: %{public}@", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)saveAssertionData:(void *)a1 .cold.2(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 assertionStorageFileURL];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_1DF7C6000, a2, OS_LOG_TYPE_DEBUG, "Saved assertion data to URL: (%{public}@)", v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

- (void)saveAssertionData:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0(&dword_1DF7C6000, v0, v1, "Failed to archive assertions : %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end