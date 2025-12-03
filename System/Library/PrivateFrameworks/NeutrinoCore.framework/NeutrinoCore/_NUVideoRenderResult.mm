@interface _NUVideoRenderResult
- (NSString)description;
@end

@implementation _NUVideoRenderResult

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  video = [(_NUVideoRenderResult *)self video];
  videoComposition = [(_NUVideoRenderResult *)self videoComposition];
  v7 = [v3 stringWithFormat:@"<%@:%p video=%@ composition=%@>", v4, self, video, videoComposition];

  return v7;
}

@end