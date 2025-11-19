@interface NUAssertionPolicyThrowAlways
- (void)notifyAssertion:(id)a3;
@end

@implementation NUAssertionPolicyThrowAlways

- (void)notifyAssertion:(id)a3
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = a3;
  v10 = [v5 prettyMethodName];
  v6 = [v5 fileName];
  v7 = [v5 lineNumber];
  v8 = [v5 message];
  v9 = [v5 currentlyExecutingJobName];

  [v3 raise:v4 format:{@"Assertion failure in %@, %@:%ld: %@ %@", v10, v6, v7, v8, v9}];
}

@end