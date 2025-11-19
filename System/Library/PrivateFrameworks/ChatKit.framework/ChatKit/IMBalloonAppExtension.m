@interface IMBalloonAppExtension
@end

@implementation IMBalloonAppExtension

void __64__IMBalloonAppExtension_ImageLoading____ck_generateStatusImage___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E69DCAB8] imageWithCGImage:a2];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64__IMBalloonAppExtension_ImageLoading____ck_generateStatusImage___block_invoke_2;
  v6[3] = &unk_1E72EE5D8;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

@end