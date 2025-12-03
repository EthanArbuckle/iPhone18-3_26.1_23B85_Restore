@interface _NUImagePropertiesResult
- (NSString)description;
@end

@implementation _NUImagePropertiesResult

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  properties = [(_NUImagePropertiesResult *)self properties];
  v6 = [properties description];
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