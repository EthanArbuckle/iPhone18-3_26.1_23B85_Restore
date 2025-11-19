@interface CALayer(HUAdditions)
- (id)hu_addAnimationAdditively:()HUAdditions applyModelValue:;
- (void)hu_applyModelValueFromAnimation:()HUAdditions;
@end

@implementation CALayer(HUAdditions)

- (id)hu_addAnimationAdditively:()HUAdditions applyModelValue:
{
  v6 = a3;
  if (a4)
  {
    [a1 hu_applyModelValueFromAnimation:v6];
  }

  v7 = [v6 copy];
  v8 = [v6 toValue];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v11 = [v7 keyPath];
    v10 = [a1 valueForKeyPath:v11];
  }

  v12 = [v7 fromValue];
  v13 = [v12 CA_addValue:v10 multipliedBy:0xFFFFFFFFLL];

  if (v10 && v13)
  {
    [v7 setAdditive:1];
    [v7 setFromValue:v13];
    v14 = [v10 CA_addValue:v10 multipliedBy:0xFFFFFFFFLL];
    [v7 setToValue:v14];
  }

  v15 = [v6 keyPath];
  v16 = [a1 animationForKey:v15];

  if (v16)
  {
    v17 = 2;
    do
    {
      v18 = MEMORY[0x277CCACA8];
      v19 = [v6 keyPath];
      v20 = [v18 stringWithFormat:@"%@-%ld", v19, v17];

      ++v17;
      v21 = [a1 animationForKey:v20];

      v15 = v20;
    }

    while (v21);
  }

  else
  {
    v20 = v15;
  }

  [a1 addAnimation:v7 forKey:v20];

  return v20;
}

- (void)hu_applyModelValueFromAnimation:()HUAdditions
{
  v7 = a3;
  v4 = [v7 toValue];

  if (v4)
  {
    v5 = [v7 toValue];
    v6 = [v7 keyPath];
    [a1 setValue:v5 forKeyPath:v6];
  }

  else
  {
    NSLog(&cfstr_AnimationsWith.isa);
  }
}

@end