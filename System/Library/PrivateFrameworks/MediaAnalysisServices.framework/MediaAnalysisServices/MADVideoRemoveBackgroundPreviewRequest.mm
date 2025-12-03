@interface MADVideoRemoveBackgroundPreviewRequest
- (MADVideoRemoveBackgroundPreviewResult)result;
- (id)description;
@end

@implementation MADVideoRemoveBackgroundPreviewRequest

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p", v5, self];

  results = [(MADVideoRequest *)self results];
  [string appendFormat:@", results: %@", results];

  error = [(MADVideoRequest *)self error];
  [string appendFormat:@", error: %@>", error];

  return string;
}

- (MADVideoRemoveBackgroundPreviewResult)result
{
  results = [(MADVideoRequest *)self results];
  firstObject = [results firstObject];

  return firstObject;
}

@end