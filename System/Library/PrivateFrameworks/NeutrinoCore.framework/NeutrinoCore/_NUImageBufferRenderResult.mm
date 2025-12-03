@interface _NUImageBufferRenderResult
- (NSString)debugDescription;
@end

@implementation _NUImageBufferRenderResult

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  region = [(_NUImageRenderResult *)self region];
  buffer = [(_NUImageBufferRenderResult *)self buffer];
  geometry = [(_NUImageRenderResult *)self geometry];
  v8 = [v3 stringWithFormat:@"<%@: %p> region=%@, buffer=%@, geometry=%@", v4, self, region, buffer, geometry];

  return v8;
}

@end