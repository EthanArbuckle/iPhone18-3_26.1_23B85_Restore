@interface CDMExceptionUtils
+ (void)runWrappingCppExceptions:(id)a3;
@end

@implementation CDMExceptionUtils

+ (void)runWrappingCppExceptions:(id)a3
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v4[2]();
  v3 = *MEMORY[0x1E69E9840];
}

@end