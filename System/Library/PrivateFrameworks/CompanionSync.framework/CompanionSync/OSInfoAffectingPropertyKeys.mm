@interface OSInfoAffectingPropertyKeys
@end

@implementation OSInfoAffectingPropertyKeys

void ___OSInfoAffectingPropertyKeys_block_invoke()
{
  v6[3] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v1 = *MEMORY[0x1E69B3640];
  v6[0] = *MEMORY[0x1E69B3598];
  v6[1] = v1;
  v6[2] = *MEMORY[0x1E69B3628];
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:3];
  v3 = [v0 setWithArray:v2];
  v4 = _OSInfoAffectingPropertyKeys___set;
  _OSInfoAffectingPropertyKeys___set = v3;

  v5 = *MEMORY[0x1E69E9840];
}

@end