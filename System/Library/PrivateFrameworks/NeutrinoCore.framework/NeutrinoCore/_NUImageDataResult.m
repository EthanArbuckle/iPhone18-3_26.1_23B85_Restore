@interface _NUImageDataResult
- (NSString)description;
@end

@implementation _NUImageDataResult

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(_NUImageDataResult *)self data];
  v6 = [v3 stringWithFormat:@"<%@:%p> data=%@", v4, self, v5];

  return v6;
}

@end