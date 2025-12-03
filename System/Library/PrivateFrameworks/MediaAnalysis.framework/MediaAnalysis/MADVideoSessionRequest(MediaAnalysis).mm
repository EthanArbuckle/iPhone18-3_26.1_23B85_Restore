@interface MADVideoSessionRequest(MediaAnalysis)
- (void)taskWithSignpostPayload:()MediaAnalysis error:;
@end

@implementation MADVideoSessionRequest(MediaAnalysis)

- (void)taskWithSignpostPayload:()MediaAnalysis error:
{
  v16[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([self isMemberOfClass:objc_opt_class()])
  {
    a4 = [objc_opt_class() taskWithRequest:self signpostPayload:v6];
  }

  else if (a4)
  {
    v7 = MEMORY[0x1E696ABC0];
    v8 = *MEMORY[0x1E696A768];
    v15 = *MEMORY[0x1E696A578];
    v9 = MEMORY[0x1E696AEC0];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [v9 stringWithFormat:@"Unsupported request class: %@", v11, v15];
    v16[0] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    *a4 = [v7 errorWithDomain:v8 code:-18 userInfo:v13];

    a4 = 0;
  }

  return a4;
}

@end