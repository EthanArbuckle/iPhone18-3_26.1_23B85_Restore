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
    [self hu_applyModelValueFromAnimation:v6];
  }

  v7 = [v6 copy];
  toValue = [v6 toValue];
  v9 = toValue;
  if (toValue)
  {
    v10 = toValue;
  }

  else
  {
    keyPath = [v7 keyPath];
    v10 = [self valueForKeyPath:keyPath];
  }

  fromValue = [v7 fromValue];
  v13 = [fromValue CA_addValue:v10 multipliedBy:0xFFFFFFFFLL];

  if (v10 && v13)
  {
    [v7 setAdditive:1];
    [v7 setFromValue:v13];
    v14 = [v10 CA_addValue:v10 multipliedBy:0xFFFFFFFFLL];
    [v7 setToValue:v14];
  }

  keyPath2 = [v6 keyPath];
  v16 = [self animationForKey:keyPath2];

  if (v16)
  {
    v17 = 2;
    do
    {
      v18 = MEMORY[0x277CCACA8];
      keyPath3 = [v6 keyPath];
      v20 = [v18 stringWithFormat:@"%@-%ld", keyPath3, v17];

      ++v17;
      v21 = [self animationForKey:v20];

      keyPath2 = v20;
    }

    while (v21);
  }

  else
  {
    v20 = keyPath2;
  }

  [self addAnimation:v7 forKey:v20];

  return v20;
}

- (void)hu_applyModelValueFromAnimation:()HUAdditions
{
  v7 = a3;
  toValue = [v7 toValue];

  if (toValue)
  {
    toValue2 = [v7 toValue];
    keyPath = [v7 keyPath];
    [self setValue:toValue2 forKeyPath:keyPath];
  }

  else
  {
    NSLog(&cfstr_AnimationsWith.isa);
  }
}

@end