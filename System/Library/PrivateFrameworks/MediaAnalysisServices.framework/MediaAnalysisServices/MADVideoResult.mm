@interface MADVideoResult
- (MADVideoResult)initWithCoder:(id)coder;
- (id)description;
@end

@implementation MADVideoResult

- (MADVideoResult)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = MADVideoResult;
  return [(MADVideoResult *)&v4 init];
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p>", v5, self];

  return string;
}

@end