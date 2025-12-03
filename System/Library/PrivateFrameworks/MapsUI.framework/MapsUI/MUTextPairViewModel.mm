@interface MUTextPairViewModel
+ (id)textPairViewModelsFromStrings:(id)strings;
@end

@implementation MUTextPairViewModel

+ (id)textPairViewModelsFromStrings:(id)strings
{
  stringsCopy = strings;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([stringsCopy count])
  {
    v5 = 0;
    do
    {
      v6 = objc_alloc_init(MUTextPairViewModel);
      v7 = [stringsCopy objectAtIndexedSubscript:v5];
      [(MUTextPairViewModel *)v6 setLeftText:v7];

      if ([stringsCopy count] <= v5 + 1)
      {
        [(MUTextPairViewModel *)v6 setRightText:0];
      }

      else
      {
        v8 = [stringsCopy objectAtIndexedSubscript:?];
        [(MUTextPairViewModel *)v6 setRightText:v8];
      }

      [v4 addObject:v6];

      v5 += 2;
    }

    while (v5 < [stringsCopy count]);
  }

  v9 = [v4 copy];

  return v9;
}

@end