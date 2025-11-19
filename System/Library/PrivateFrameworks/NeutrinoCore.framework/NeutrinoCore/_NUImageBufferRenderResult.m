@interface _NUImageBufferRenderResult
- (NSString)debugDescription;
@end

@implementation _NUImageBufferRenderResult

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(_NUImageRenderResult *)self region];
  v6 = [(_NUImageBufferRenderResult *)self buffer];
  v7 = [(_NUImageRenderResult *)self geometry];
  v8 = [v3 stringWithFormat:@"<%@: %p> region=%@, buffer=%@, geometry=%@", v4, self, v5, v6, v7];

  return v8;
}

@end