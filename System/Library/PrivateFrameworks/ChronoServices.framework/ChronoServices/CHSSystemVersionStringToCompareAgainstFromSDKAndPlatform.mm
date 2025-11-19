@interface CHSSystemVersionStringToCompareAgainstFromSDKAndPlatform
@end

@implementation CHSSystemVersionStringToCompareAgainstFromSDKAndPlatform

void ___CHSSystemVersionStringToCompareAgainstFromSDKAndPlatform_block_invoke()
{
  v13[3] = *MEMORY[0x1E69E9840];
  v12[0] = &unk_1F0A7A088;
  v10[0] = &unk_1F0A7A0A0;
  v10[1] = &unk_1F0A7A0B8;
  v11[0] = @"14.0";
  v11[1] = @"17.0";
  v10[2] = &unk_1F0A7A0D0;
  v10[3] = &unk_1F0A7A0E8;
  v11[2] = @"17.0";
  v11[3] = @"17.0";
  v10[4] = &unk_1F0A7A100;
  v10[5] = &unk_1F0A7A118;
  v11[4] = @"17.0";
  v11[5] = @"1.0";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:6];
  v13[0] = v0;
  v12[1] = &unk_1F0A7A0A0;
  v8[0] = &unk_1F0A7A0A0;
  v8[1] = &unk_1F0A7A0B8;
  v9[0] = @"15.0";
  v9[1] = @"18.0";
  v8[2] = &unk_1F0A7A0D0;
  v8[3] = &unk_1F0A7A0E8;
  v9[2] = @"18.0";
  v9[3] = @"18.0";
  v8[4] = &unk_1F0A7A100;
  v8[5] = &unk_1F0A7A118;
  v9[4] = @"18.0";
  v9[5] = @"2.0";
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:6];
  v13[1] = v1;
  v12[2] = &unk_1F0A7A0B8;
  v6[0] = &unk_1F0A7A0A0;
  v6[1] = &unk_1F0A7A0B8;
  v7[0] = @"16.0";
  v7[1] = @"19.0";
  v6[2] = &unk_1F0A7A0D0;
  v6[3] = &unk_1F0A7A0E8;
  v7[2] = @"19.0";
  v7[3] = @"19.0";
  v6[4] = &unk_1F0A7A100;
  v6[5] = &unk_1F0A7A118;
  v7[4] = @"19.0";
  v7[5] = @"3.0";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:6];
  v13[2] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  v4 = __sdkVersionPlatformToSystemVersion;
  __sdkVersionPlatformToSystemVersion = v3;

  v5 = *MEMORY[0x1E69E9840];
}

@end