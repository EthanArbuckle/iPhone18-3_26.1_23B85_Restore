@interface StateAffectingPropertyKeys
@end

@implementation StateAffectingPropertyKeys

void ___StateAffectingPropertyKeys_block_invoke()
{
  v6[3] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v1 = *MEMORY[0x1E69B35D0];
  v6[0] = *MEMORY[0x1E69B35F8];
  v6[1] = v1;
  v6[2] = *MEMORY[0x1E69B35E8];
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:3];
  v3 = [v0 setWithArray:v2];
  v4 = _StateAffectingPropertyKeys___set;
  _StateAffectingPropertyKeys___set = v3;

  v5 = *MEMORY[0x1E69E9840];
}

@end