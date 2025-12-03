@interface MCMActionArgumentRelativeFile
- (id)fileURL;
@end

@implementation MCMActionArgumentRelativeFile

- (id)fileURL
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFF8];
  string = [(MCMActionArgumentBase *)self string];
  v4 = [v2 fileURLWithPath:string isDirectory:0 relativeToURL:0];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

@end