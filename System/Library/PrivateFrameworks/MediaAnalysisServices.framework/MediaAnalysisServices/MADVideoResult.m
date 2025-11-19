@interface MADVideoResult
- (MADVideoResult)initWithCoder:(id)a3;
- (id)description;
@end

@implementation MADVideoResult

- (MADVideoResult)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = MADVideoResult;
  return [(MADVideoResult *)&v4 init];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p>", v5, self];

  return v3;
}

@end