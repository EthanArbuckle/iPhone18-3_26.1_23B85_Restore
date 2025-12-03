@interface IMUnitTestLogger
- (void)log:(id)log;
- (void)writeOutputToStdout:(id)stdout;
@end

@implementation IMUnitTestLogger

- (void)writeOutputToStdout:(id)stdout
{
  v9 = *MEMORY[0x1E69E9840];
  stdoutCopy = stdout;
  fileHandleWithStandardOutput = [MEMORY[0x1E696AC00] fileHandleWithStandardOutput];
  v5 = [stdoutCopy dataUsingEncoding:4];
  [fileHandleWithStandardOutput writeData:v5];

  v6 = IMLogHandleForCategory("IMUnitTesting");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = stdoutCopy;
    _os_log_impl(&dword_1A85E5000, v6, OS_LOG_TYPE_INFO, "%@", &v7, 0xCu);
  }
}

- (void)log:(id)log
{
  v4 = MEMORY[0x1E696AEC0];
  logCopy = log;
  v6 = [[v4 alloc] initWithFormat:logCopy arguments:&v8];

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n", v6];
  [(IMUnitTestLogger *)self writeOutputToStdout:v7];
}

@end