@interface NSAttributedString(CRTT)
- (id)Coherence_attributedSubstringFromRange:()CRTT;
- (void)Coherence_enumerateClampedAttribute:()CRTT inRange:options:usingBlock:;
- (void)Coherence_enumerateUnclampedAttribute:()CRTT inRange:options:usingBlock:;
@end

@implementation NSAttributedString(CRTT)

- (id)Coherence_attributedSubstringFromRange:()CRTT
{
  string = [self string];
  v8 = [string rangeOfComposedCharacterSequencesForRange:{a3, a4}];
  v10 = [self attributedSubstringFromRange:{v8, v9}];

  return v10;
}

- (void)Coherence_enumerateClampedAttribute:()CRTT inRange:options:usingBlock:
{
  v12 = a7;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x4012000000;
  v17[3] = __Block_byref_object_copy__0;
  v17[4] = __Block_byref_object_dispose__0;
  v17[5] = &unk_1AE2A3E8A;
  v17[6] = a4;
  v17[7] = a5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __91__NSAttributedString_CRTT__Coherence_enumerateClampedAttribute_inRange_options_usingBlock___block_invoke;
  v14[3] = &unk_1E7A12720;
  v15 = v12;
  v16 = v17;
  v13 = v12;
  [self enumerateAttribute:a3 inRange:a4 options:a5 usingBlock:{a6, v14}];

  _Block_object_dispose(v17, 8);
}

- (void)Coherence_enumerateUnclampedAttribute:()CRTT inRange:options:usingBlock:
{
  v12 = a3;
  v13 = a7;
  if (a5)
  {
    v24 = 0;
    v14 = [self length];
    v15 = a4 + ((a5 - 1) & (a6 << 62 >> 63));
    if ((a6 & 0x100000) != 0)
    {
      goto LABEL_4;
    }

LABEL_3:
    for (i = [self attribute:v12 atIndex:v15 longestEffectiveRange:&v22 inRange:{0, v14}];
    {
      v17 = i;
      v13[2](v13, i, v22, v23, &v24);
      if (v24)
      {
        break;
      }

      if ((a6 & 2) != 0)
      {
        if (v22 <= a4)
        {
          break;
        }

        v15 = v22 - 1;
      }

      else
      {
        v18 = [self length];
        v19 = v18 - v14 + v22 + v23;
        v20 = a5 - v14 + v18;
        v21 = v18 == v14;
        if (v18 == v14)
        {
          v15 = v23 + v22;
        }

        else
        {
          v14 = v18;
          v15 = v19;
        }

        if (!v21)
        {
          a5 = v20;
        }

        if (v15 >= a5 + a4)
        {
          break;
        }
      }

      if ((a6 & 0x100000) == 0)
      {
        goto LABEL_3;
      }

LABEL_4:
      [self attribute:v12 atIndex:v15 effectiveRange:&v22];
    }
  }
}

@end