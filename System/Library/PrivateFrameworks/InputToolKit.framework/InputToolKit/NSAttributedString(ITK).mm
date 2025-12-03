@interface NSAttributedString(ITK)
- (id)itk_attributedStringByReplacingCharactersInSet:()ITK withString:;
- (id)itk_attributedStringByReplacingNewlineCharactersWithWhiteSpace;
- (void)itk_enumerateClampedAttribute:()ITK inRange:options:usingBlock:;
- (void)itk_enumerateUnclampedAttribute:()ITK inRange:options:usingBlock:;
@end

@implementation NSAttributedString(ITK)

- (void)itk_enumerateClampedAttribute:()ITK inRange:options:usingBlock:
{
  v12 = a3;
  v13 = a7;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3010000000;
  v18[3] = &unk_254C03015;
  v18[4] = a4;
  v18[5] = a5;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __84__NSAttributedString_ITK__itk_enumerateClampedAttribute_inRange_options_usingBlock___block_invoke;
  v15[3] = &unk_2797AF150;
  v14 = v13;
  v16 = v14;
  v17 = v18;
  [self enumerateAttribute:v12 inRange:a4 options:a5 usingBlock:{a6, v15}];

  _Block_object_dispose(v18, 8);
}

- (void)itk_enumerateUnclampedAttribute:()ITK inRange:options:usingBlock:
{
  v12 = a3;
  v13 = a7;
  if (a5)
  {
    v14 = a4 + ((a5 - 1) & (a6 << 62 >> 63));
    v23 = 0;
    v15 = [self length];
    while (1)
    {
      v21 = 0;
      v22 = 0;
      if ((a6 & 0x100000) != 0)
      {
        [self attribute:v12 atIndex:v14 effectiveRange:&v21];
      }

      else
      {
        [self attribute:v12 atIndex:v14 longestEffectiveRange:&v21 inRange:{0, v15}];
      }
      v16 = ;
      v13[2](v13, v16, v21, v22, &v23);
      if (v23)
      {
        break;
      }

      if ((a6 & 2) != 0)
      {
        if (v21 <= a4)
        {
          break;
        }

        v14 = v21 - 1;
      }

      else
      {
        v17 = [self length];
        v18 = v17 - v15 + v21 + v22;
        v19 = a5 - v15 + v17;
        v20 = v17 == v15;
        if (v17 == v15)
        {
          v14 = v22 + v21;
        }

        else
        {
          v15 = v17;
          v14 = v18;
        }

        if (!v20)
        {
          a5 = v19;
        }

        if (v14 >= a5 + a4)
        {
          break;
        }
      }
    }
  }
}

- (id)itk_attributedStringByReplacingNewlineCharactersWithWhiteSpace
{
  newlineCharacterSet = [MEMORY[0x277CCA900] newlineCharacterSet];
  v3 = [self itk_attributedStringByReplacingCharactersInSet:newlineCharacterSet withString:@" "];

  return v3;
}

- (id)itk_attributedStringByReplacingCharactersInSet:()ITK withString:
{
  v6 = a3;
  v7 = a4;
  selfCopy = self;
  string = [selfCopy string];
  v10 = [string rangeOfCharacterFromSet:v6];

  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [selfCopy mutableCopy];
    string2 = [v11 string];
    v13 = [string2 rangeOfCharacterFromSet:v6];
    v15 = v14;

    while (v13 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v11 replaceCharactersInRange:v13 withString:{v15, v7}];
      string3 = [v11 string];
      v17 = [string3 length] - v13;

      string4 = [v11 string];
      v13 = [string4 rangeOfCharacterFromSet:v6 options:2 range:{v13, v17}];
      v15 = v19;
    }

    if (v11)
    {
      v20 = [v11 copy];

      selfCopy = v20;
    }
  }

  return selfCopy;
}

@end