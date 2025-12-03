@interface CNObservedFailureResult
- (id)description;
@end

@implementation CNObservedFailureResult

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  formattedTimeString = [(CNObservedResult *)self formattedTimeString];
  logValue = [(CNObservedResult *)self logValue];
  v8 = [v3 stringWithFormat:@"<%@ %p: %@ Failed with error: %@>", v5, self, formattedTimeString, logValue];

  return v8;
}

@end