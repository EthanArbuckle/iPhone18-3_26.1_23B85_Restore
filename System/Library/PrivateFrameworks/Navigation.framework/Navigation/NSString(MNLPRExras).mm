@interface NSString(MNLPRExras)
- (id)mnlpr_componentsSeparatedByGlyph;
@end

@implementation NSString(MNLPRExras)

- (id)mnlpr_componentsSeparatedByGlyph
{
  v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(self, "length")}];
  if ([self length])
  {
    v3 = 0;
    while (1)
    {
      v4 = [self rangeOfComposedCharacterSequenceAtIndex:v3];
      if (!v5)
      {
        break;
      }

      v6 = v4;
      v7 = v5;
      v8 = [self substringWithRange:{v4, v5}];
      [v2 addObject:v8];
      v3 = v6 + v7;

      if (v3 >= [self length])
      {
        goto LABEL_5;
      }
    }

    v9 = 0;
  }

  else
  {
LABEL_5:
    v9 = v2;
  }

  return v9;
}

@end