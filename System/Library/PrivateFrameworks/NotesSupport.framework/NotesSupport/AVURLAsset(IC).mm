@interface AVURLAsset(IC)
+ (id)ic_safeURLAssetWithURL:()IC;
@end

@implementation AVURLAsset(IC)

+ (id)ic_safeURLAssetWithURL:()IC
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8 = *MEMORY[0x1E6987BD8];
  v9[0] = &unk_1F4FD7098;
  v3 = MEMORY[0x1E695DF20];
  v4 = a3;
  v5 = [v3 dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [MEMORY[0x1E6988168] URLAssetWithURL:v4 options:v5];

  return v6;
}

@end