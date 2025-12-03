@interface NSMutableString(OSAStackshotKCDataExtension)
- (void)appendPortLabelInfo:()OSAStackshotKCDataExtension portlabels:;
@end

@implementation NSMutableString(OSAStackshotKCDataExtension)

- (void)appendPortLabelInfo:()OSAStackshotKCDataExtension portlabels:
{
  v10 = a4;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", a3];
  v7 = @"<port label truncated>";
  if (a3 && v10)
  {
    if (a3 != -1)
    {
      v8 = [v10 objectForKeyedSubscript:v6];
      v9 = v8;
      if (v8)
      {
        v7 = v8;
      }
    }

    [self appendFormat:@" (%@)", v7];
  }
}

@end