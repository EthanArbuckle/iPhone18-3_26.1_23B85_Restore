@interface MCMActionArgumentRelativeDirectoryWithInterpolation
- (id)fileURL;
@end

@implementation MCMActionArgumentRelativeDirectoryWithInterpolation

- (id)fileURL
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFF8];
  v3 = [(MCMActionArgumentBase *)self string];
  v4 = [v2 fileURLWithPath:v3 isDirectory:1 relativeToURL:0];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

@end