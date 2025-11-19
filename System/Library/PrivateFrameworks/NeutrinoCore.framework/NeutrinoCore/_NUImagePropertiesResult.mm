@interface _NUImagePropertiesResult
- (NSString)description;
@end

@implementation _NUImagePropertiesResult

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(_NUImagePropertiesResult *)self properties];
  v6 = [v5 description];
  v7 = v6;
  v8 = @"NONE";
  if (v6)
  {
    v8 = v6;
  }

  v9 = [v3 stringWithFormat:@"<%@:%p> properties=%@", v4, self, v8];

  return v9;
}

@end