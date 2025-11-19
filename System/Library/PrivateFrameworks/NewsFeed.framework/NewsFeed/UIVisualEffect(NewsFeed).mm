@interface UIVisualEffect(NewsFeed)
+ (id)ne_visualEffectsForDailyBriefing;
@end

@implementation UIVisualEffect(NewsFeed)

+ (id)ne_visualEffectsForDailyBriefing
{
  v16[3] = *MEMORY[0x1E69E9840];
  v11 = 0;
  v12 = 0;
  v5[0] = 0x3FE0A3D70A3D70A4;
  memset(&v5[1], 0, 32);
  v5[5] = 0x3FE0A3D70A3D70A4;
  v6 = 0u;
  v7 = 0u;
  v9 = 0;
  v10 = 0;
  v8 = 0x3FE0A3D70A3D70A4;
  v13 = xmmword_1D7270BF0;
  v14 = vdupq_n_s64(0x3FB1EB851EB851ECuLL);
  v15 = 0;
  v0 = [MEMORY[0x1E69DC898] colorEffectMatrix:v5];
  v1 = [MEMORY[0x1E69DC730] effectWithBlurRadius:40.0];
  v16[0] = v1;
  v2 = [MEMORY[0x1E69DC898] colorEffectSaturate:2.0];
  v16[1] = v2;
  v16[2] = v0;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:3];

  return v3;
}

@end