@interface MADVideoRemoveBackgroundPreviewRequest
- (MADVideoRemoveBackgroundPreviewResult)result;
- (id)description;
@end

@implementation MADVideoRemoveBackgroundPreviewRequest

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p", v5, self];

  v6 = [(MADVideoRequest *)self results];
  [v3 appendFormat:@", results: %@", v6];

  v7 = [(MADVideoRequest *)self error];
  [v3 appendFormat:@", error: %@>", v7];

  return v3;
}

- (MADVideoRemoveBackgroundPreviewResult)result
{
  v2 = [(MADVideoRequest *)self results];
  v3 = [v2 firstObject];

  return v3;
}

@end