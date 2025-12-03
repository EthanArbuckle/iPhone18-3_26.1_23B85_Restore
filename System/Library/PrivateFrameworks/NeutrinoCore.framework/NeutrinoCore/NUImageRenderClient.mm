@interface NUImageRenderClient
- (id)description;
@end

@implementation NUImageRenderClient

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  name = [(NURenderClient *)self name];
  v6 = [v3 stringWithFormat:@"<%@:%p '%@'>", v4, self, name];

  return v6;
}

@end