@interface CNObservedCompletionResult
- (id)description;
@end

@implementation CNObservedCompletionResult

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(CNObservedResult *)self formattedTimeString];
  v7 = [v3 stringWithFormat:@"<%@ %p: %@ Completed>", v5, self, v6];

  return v7;
}

@end