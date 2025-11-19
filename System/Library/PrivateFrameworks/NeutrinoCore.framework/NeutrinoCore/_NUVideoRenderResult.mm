@interface _NUVideoRenderResult
- (NSString)description;
@end

@implementation _NUVideoRenderResult

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(_NUVideoRenderResult *)self video];
  v6 = [(_NUVideoRenderResult *)self videoComposition];
  v7 = [v3 stringWithFormat:@"<%@:%p video=%@ composition=%@>", v4, self, v5, v6];

  return v7;
}

@end