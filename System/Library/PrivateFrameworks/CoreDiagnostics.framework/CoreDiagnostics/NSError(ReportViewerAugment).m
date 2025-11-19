@interface NSError(ReportViewerAugment)
- (id)augmentWithPrefix:()ReportViewerAugment;
@end

@implementation NSError(ReportViewerAugment)

- (id)augmentWithPrefix:()ReportViewerAugment
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696ABC0];
  v5 = a3;
  v6 = [a1 domain];
  v7 = [a1 code];
  v15 = *MEMORY[0x1E696A578];
  v8 = MEMORY[0x1E696AEC0];
  v9 = [a1 localizedDescription];
  v10 = [v8 stringWithFormat:@"%@: %@", v5, v9];

  v16[0] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v12 = [v4 errorWithDomain:v6 code:v7 userInfo:v11];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

@end