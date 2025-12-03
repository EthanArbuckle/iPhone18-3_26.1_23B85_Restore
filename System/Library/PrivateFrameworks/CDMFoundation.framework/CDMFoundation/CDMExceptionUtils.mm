@interface CDMExceptionUtils
+ (void)runWrappingCppExceptions:(id)exceptions;
@end

@implementation CDMExceptionUtils

+ (void)runWrappingCppExceptions:(id)exceptions
{
  v5 = *MEMORY[0x1E69E9840];
  exceptionsCopy = exceptions;
  exceptionsCopy[2]();
  v3 = *MEMORY[0x1E69E9840];
}

@end