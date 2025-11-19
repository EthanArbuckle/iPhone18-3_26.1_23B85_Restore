@interface NSMutableAttributedString(ICAXAdditions)
- (void)icaxApplyLowerPitchTokenToRange:()ICAXAdditions;
@end

@implementation NSMutableAttributedString(ICAXAdditions)

- (void)icaxApplyLowerPitchTokenToRange:()ICAXAdditions
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8 = *MEMORY[0x1E6988EB8];
  v9[0] = MEMORY[0x1E695E118];
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [a1 setAttributes:v7 range:{a3, a4}];
}

@end