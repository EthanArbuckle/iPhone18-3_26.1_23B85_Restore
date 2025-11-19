@interface SFCompactRoundedNamesByWeight
@end

@implementation SFCompactRoundedNamesByWeight

void ___SFCompactRoundedNamesByWeight_block_invoke()
{
  v11[8] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB998]];
  v10[0] = v0;
  v11[0] = @".SFCompactRounded-Ultralight";
  v1 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB988]];
  v10[1] = v1;
  v11[1] = @".SFCompactRounded-Thin";
  v2 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB968]];
  v10[2] = v2;
  v11[2] = @".SFCompactRounded-Light";
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB978]];
  v10[3] = v3;
  v11[3] = @".SFCompactRounded-Regular";
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB970]];
  v10[4] = v4;
  v11[4] = @".SFCompactRounded-Medium";
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB980]];
  v10[5] = v5;
  v11[5] = @".SFCompactRounded-Semibold";
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB958]];
  v10[6] = v6;
  v11[6] = @".SFCompactRounded-Bold";
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB960]];
  v10[7] = v7;
  v11[7] = @".SFCompactRounded-Heavy";
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:8];
  v9 = _SFCompactRoundedNamesByWeight_namesByWeight;
  _SFCompactRoundedNamesByWeight_namesByWeight = v8;
}

@end