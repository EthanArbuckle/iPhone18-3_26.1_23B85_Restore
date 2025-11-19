@interface NSAttributedString(ICAXAdditions)
+ (id)icaxAttributedStringForSpeakingStringInLowerPitch:()ICAXAdditions;
@end

@implementation NSAttributedString(ICAXAdditions)

+ (id)icaxAttributedStringForSpeakingStringInLowerPitch:()ICAXAdditions
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AAB0];
  v4 = a3;
  v5 = [v3 alloc];
  v9 = *MEMORY[0x1E6988EB8];
  v10[0] = MEMORY[0x1E695E118];
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [v5 initWithString:v4 attributes:v6];

  return v7;
}

@end