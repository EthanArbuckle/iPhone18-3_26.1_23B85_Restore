@interface _MNLPRPlate
- (id)charMatching:(void *)matching alphabetics:(void *)alphabetics numerics:;
- (id)description;
- (uint64_t)charIndexForTarget:(void *)target alphabetics:(void *)alphabetics numerics:;
- (void)charForTarget:(void *)target alphabetics:(void *)alphabetics numerics:(void *)numerics result:;
- (void)enumerateCharsUsingBlock:(uint64_t)block;
@end

@implementation _MNLPRPlate

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p> %@", v5, self, self->_chars];

  return v6;
}

- (void)enumerateCharsUsingBlock:(uint64_t)block
{
  v3 = a2;
  if (block)
  {
    v4 = 0;
    v6 = 0;
    do
    {
      if (v4 >= [*(block + 8) count])
      {
        break;
      }

      v5 = [*(block + 8) objectAtIndexedSubscript:v4];
      v3[2](v3, v5, v4, &v6);

      ++v4;
    }

    while ((v6 & 1) == 0);
  }
}

- (uint64_t)charIndexForTarget:(void *)target alphabetics:(void *)alphabetics numerics:
{
  v7 = a2;
  targetCopy = target;
  alphabeticsCopy = alphabetics;
  if (self)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0x7FFFFFFFFFFFFFFFLL;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __55___MNLPRPlate_charIndexForTarget_alphabetics_numerics___block_invoke;
    v11[3] = &unk_1E842AE88;
    v11[4] = &v12;
    [(_MNLPRPlate *)self charForTarget:v7 alphabetics:targetCopy numerics:alphabeticsCopy result:v11];
    self = v13[3];
    _Block_object_dispose(&v12, 8);
  }

  return self;
}

- (id)charMatching:(void *)matching alphabetics:(void *)alphabetics numerics:
{
  v7 = a2;
  matchingCopy = matching;
  alphabeticsCopy = alphabetics;
  if (self)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__4186;
    v16 = __Block_byref_object_dispose__4187;
    v17 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __49___MNLPRPlate_charMatching_alphabetics_numerics___block_invoke;
    v11[3] = &unk_1E842AE88;
    v11[4] = &v12;
    [(_MNLPRPlate *)self charForTarget:v7 alphabetics:matchingCopy numerics:alphabeticsCopy result:v11];
    self = v13[5];
    _Block_object_dispose(&v12, 8);
  }

  return self;
}

- (void)charForTarget:(void *)target alphabetics:(void *)alphabetics numerics:(void *)numerics result:
{
  v19 = a2;
  targetCopy = target;
  alphabeticsCopy = alphabetics;
  numericsCopy = numerics;
  charIndex = [v19 charIndex];
  v13 = [*(self + 8) count];
  if (charIndex < 0)
  {
    if (v13 < 1)
    {
      goto LABEL_17;
    }

    v17 = v13 + 1;
    v18 = -1;
    while (1)
    {
      v15 = v17 - 2;
      v16 = [*(self + 8) objectAtIndexedSubscript:v17 - 2];
      if (-[_MNLPRPlateCharacter isOfType:alphabetics:numerics:](v16, [v19 type], targetCopy, alphabeticsCopy))
      {
        if (v18 == [v19 charIndex])
        {
LABEL_16:
          numericsCopy[2](numericsCopy, v16, v15);

          goto LABEL_17;
        }

        --v18;
      }

      if (--v17 < 2)
      {
        goto LABEL_17;
      }
    }
  }

  if (v13)
  {
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = [*(self + 8) objectAtIndexedSubscript:v15];
      if (-[_MNLPRPlateCharacter isOfType:alphabetics:numerics:](v16, [v19 type], targetCopy, alphabeticsCopy))
      {
        if (v14 == [v19 charIndex])
        {
          goto LABEL_16;
        }

        ++v14;
      }

      ++v15;
    }

    while (v15 < [*(self + 8) count]);
  }

LABEL_17:
}

@end