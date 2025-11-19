@interface _NUSurfaceRenderResult
- (NSString)debugDescription;
@end

@implementation _NUSurfaceRenderResult

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(_NUImageRenderResult *)self region];
  v6 = [(_NUSurfaceRenderResult *)self image];
  v7 = [(_NUSurfaceRenderResult *)self image];
  v8 = [v7 validRegion];
  v9 = [(_NUImageRenderResult *)self geometry];
  v10 = [v3 stringWithFormat:@"<%@: %p> region=%@, image=%@ (%@), geometry=%@", v4, self, v5, v6, v8, v9];

  return v10;
}

@end