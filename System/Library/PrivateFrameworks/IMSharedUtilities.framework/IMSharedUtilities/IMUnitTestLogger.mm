@interface IMUnitTestLogger
- (void)log:(id)a3;
- (void)writeOutputToStdout:(id)a3;
@end

@implementation IMUnitTestLogger

- (void)writeOutputToStdout:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E696AC00] fileHandleWithStandardOutput];
  v5 = [v3 dataUsingEncoding:4];
  [v4 writeData:v5];

  v6 = IMLogHandleForCategory("IMUnitTesting");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_1A85E5000, v6, OS_LOG_TYPE_INFO, "%@", &v7, 0xCu);
  }
}

- (void)log:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [[v4 alloc] initWithFormat:v5 arguments:&v8];

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n", v6];
  [(IMUnitTestLogger *)self writeOutputToStdout:v7];
}

@end