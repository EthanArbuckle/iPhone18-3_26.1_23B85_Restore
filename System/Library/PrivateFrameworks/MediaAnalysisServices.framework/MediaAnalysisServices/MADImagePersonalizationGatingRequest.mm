@interface MADImagePersonalizationGatingRequest
- (MADImagePersonalizationGatingResult)gatingResult;
- (id)description;
@end

@implementation MADImagePersonalizationGatingRequest

- (MADImagePersonalizationGatingResult)gatingResult
{
  results = [(MADRequest *)self results];
  firstObject = [results firstObject];

  return firstObject;
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p, ", v5, self];

  results = [(MADRequest *)self results];
  [string appendFormat:@"results: %@, ", results];

  error = [(MADRequest *)self error];
  [string appendFormat:@"error: %@>", error];

  return string;
}

@end