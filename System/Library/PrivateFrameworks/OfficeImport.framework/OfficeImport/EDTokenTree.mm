@interface EDTokenTree
+ (BOOL)isTokenNoOp:(unsigned int)op formula:(id)formula;
+ (id)buildSubtree:(unsigned int)subtree formula:(id)formula;
+ (id)buildSubtreeAtIndex:(unsigned int *)index formula:(id)formula;
+ (unsigned)childCountForToken:(unsigned int)token formula:(id)formula;
@end

@implementation EDTokenTree

+ (id)buildSubtree:(unsigned int)subtree formula:(id)formula
{
  subtreeCopy = subtree;
  formulaCopy = formula;
  v7 = formulaCopy;
  if (formulaCopy && [formulaCopy tokenCount] > subtree)
  {
    v8 = [self buildSubtreeAtIndex:&subtreeCopy formula:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)buildSubtreeAtIndex:(unsigned int *)index formula:(id)formula
{
  formulaCopy = formula;
  v7 = [formulaCopy tokenTypeAtIndex:*index];
  if (v7)
  {
    v8 = [EDTokenTreeNode tokenTreeNodeWithIndexAndType:*index type:v7];
    v9 = [self childCountForToken:*index formula:formulaCopy];
    if (v9)
    {
      v10 = 0;
      v11 = 0;
      do
      {
        if (!*index)
        {
          break;
        }

        --*index;
        v12 = [self buildSubtreeAtIndex:index formula:formulaCopy];
        if (([self isTokenNoOp:objc_msgSend(v12 formula:{"tokenIndex"), formulaCopy}] & 1) == 0)
        {
          [v8 setFirstChild:v12];
          [v12 setSibling:v11];
          v13 = v12;

          ++v10;
          v11 = v13;
        }
      }

      while (v10 < v9);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (unsigned)childCountForToken:(unsigned int)token formula:(id)formula
{
  v4 = *&token;
  formulaCopy = formula;
  v7 = formulaCopy;
  if (!formulaCopy || [formulaCopy tokenCount] <= v4)
  {
    goto LABEL_18;
  }

  v8 = categoryForType([v7 tokenTypeAtIndex:v4]);
  v9 = 0;
  if (v8 && v8 != 3)
  {
    v13 = 0;
    v10 = [v7 tokenTypeAtIndex:v4];
    if (v10 <= 17)
    {
      if ((v10 - 3) < 0xF)
      {
        v9 = 2;
        goto LABEL_19;
      }

LABEL_18:
      v9 = 0;
      goto LABEL_19;
    }

    if (v10 <= 33)
    {
      if ((v10 - 18) < 4)
      {
        v9 = 1;
        goto LABEL_19;
      }

      if (v10 == 25)
      {
        v12 = [self isTokenAttrASum:{*objc_msgSend(v7, "lastExtendedDataForTokenAtIndex:length:", v4, &v13)}];
        goto LABEL_25;
      }

      if (v10 != 33)
      {
        goto LABEL_18;
      }

LABEL_22:
      v12 = XlArgumentCountForFunction(*[v7 lastExtendedDataForTokenAtIndex:v4 length:&v13]);
LABEL_25:
      v9 = v12;
      goto LABEL_19;
    }

    if (v10 <= 65)
    {
      if (v10 != 34)
      {
        if (v10 != 65)
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      }
    }

    else if (v10 != 66)
    {
      if (v10 == 97)
      {
        goto LABEL_22;
      }

      if (v10 != 98)
      {
        goto LABEL_18;
      }
    }

    v9 = *[v7 lastExtendedDataForTokenAtIndex:v4 length:&v13];
  }

LABEL_19:

  return v9;
}

+ (BOOL)isTokenNoOp:(unsigned int)op formula:(id)formula
{
  v4 = *&op;
  formulaCopy = formula;
  v7 = formulaCopy;
  if (!formulaCopy || [formulaCopy tokenCount] <= v4)
  {
    LOBYTE(v9) = 1;
    goto LABEL_10;
  }

  v8 = [v7 tokenTypeAtIndex:v4];
  LOBYTE(v9) = 1;
  if (v8 - 70 > 0x32 || ((1 << (v8 - 70)) & 0x4030F0004030FLL) == 0)
  {
    if (v8 > 0x2F)
    {
      goto LABEL_11;
    }

    if (((1 << v8) & 0xC3C008000004) == 0)
    {
      if (v8 == 25)
      {
        v11 = 0;
        v9 = [self isTokenAttrASum:{*objc_msgSend(v7, "lastExtendedDataForTokenAtIndex:length:", v4, &v11)}] ^ 1;
        goto LABEL_10;
      }

LABEL_11:
      LOBYTE(v9) = 0;
    }
  }

LABEL_10:

  return v9;
}

@end