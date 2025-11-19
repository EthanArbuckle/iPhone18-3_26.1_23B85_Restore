@interface NSArray(MNExtras)
- (id)_navigation_firstObjectPassingTest:()MNExtras;
@end

@implementation NSArray(MNExtras)

- (id)_navigation_firstObjectPassingTest:()MNExtras
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __56__NSArray_MNExtras___navigation_firstObjectPassingTest___block_invoke;
    v9[3] = &unk_1E842FBB8;
    v10 = v4;
    v6 = [a1 indexOfObjectPassingTest:v9];
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = 0;
    }

    else
    {
      v7 = [a1 objectAtIndexedSubscript:v6];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end