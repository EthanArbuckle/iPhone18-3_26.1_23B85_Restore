@interface NSError(FCCKEncryption)
+ (id)fc_encryptionErrorWithCode:()FCCKEncryption description:;
+ (id)fc_encryptionErrorWithCode:()FCCKEncryption descriptionFormat:;
@end

@implementation NSError(FCCKEncryption)

+ (id)fc_encryptionErrorWithCode:()FCCKEncryption description:
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696ABC0];
  v12 = *MEMORY[0x1E696A578];
  v13[0] = a4;
  v6 = MEMORY[0x1E695DF20];
  v7 = a4;
  v8 = [v6 dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v5 errorWithDomain:@"com.apple.news.encryption" code:a3 userInfo:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)fc_encryptionErrorWithCode:()FCCKEncryption descriptionFormat:
{
  v19[1] = *MEMORY[0x1E69E9840];
  v10 = MEMORY[0x1E696AEC0];
  v11 = a4;
  v12 = [[v10 alloc] initWithFormat:v11 arguments:&a9];

  v13 = MEMORY[0x1E696ABC0];
  v18 = *MEMORY[0x1E696A578];
  v19[0] = v12;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  v15 = [v13 errorWithDomain:@"com.apple.news.encryption" code:a3 userInfo:v14];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

@end