@interface CreateActionButton
@end

@implementation CreateActionButton

void ___CreateActionButton_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 traitCollection];
  v4 = qword_190DD1910[[v3 userInterfaceStyle] == 2];

  v5 = MEMORY[0x1E69DD250];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___CreateActionButton_block_invoke_2;
  v7[3] = &unk_1E72ED810;
  v8 = v2;
  v9 = v4;
  v6 = v2;
  [v5 animateWithDuration:327684 delay:v7 options:0 animations:0.2 completion:0.0];
}

uint64_t ___CreateActionButton_block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) isHighlighted];
  v3 = 1.0;
  if (v2)
  {
    v3 = *(a1 + 40);
  }

  v4 = *(a1 + 32);

  return [v4 setAlpha:v3];
}

@end