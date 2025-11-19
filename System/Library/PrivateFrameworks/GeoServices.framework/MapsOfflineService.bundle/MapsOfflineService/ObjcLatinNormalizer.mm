@interface ObjcLatinNormalizer
- (ObjcLatinNormalizer)initWithParams:(BOOL)a3 trimSpaces:(BOOL)a4 punctMode:(int)a5 stripAccents:(BOOL)a6;
- (id)normalize:(id)a3 :(id)a4;
- (id)normalizeUnicode:(id)a3;
- (id)regexpReplace:(id)a3 :(id)a4 :(id)a5;
- (id)replacePunctuation:(id)a3;
- (id)transformCase:(id)a3 :(id)a4;
- (id)trimConsecutiveSpaces:(id)a3;
@end

@implementation ObjcLatinNormalizer

- (ObjcLatinNormalizer)initWithParams:(BOOL)a3 trimSpaces:(BOOL)a4 punctMode:(int)a5 stripAccents:(BOOL)a6
{
  v6 = a6;
  v7 = *&a5;
  v8 = a4;
  v9 = a3;
  v23.receiver = self;
  v23.super_class = ObjcLatinNormalizer;
  v10 = [(ObjcLatinNormalizer *)&v23 init];
  v11 = v10;
  if (v10)
  {
    [(ObjcLatinNormalizer *)v10 setToLower:v9];
    [(ObjcLatinNormalizer *)v11 setTrimSpaces:v8];
    [(ObjcLatinNormalizer *)v11 setPunctMode:v7];
    [(ObjcLatinNormalizer *)v11 setStripAccents:v6];
    [(ObjcLatinNormalizer *)v11 setLetterNormalizations:&off_272CB98];
    v12 = [(ObjcLatinNormalizer *)v11 letterNormalizations];
    v13 = [v12 allKeys];
    v14 = [v13 componentsJoinedByString:&stru_272B528];
    v15 = [@"[" stringByAppendingString:v14];
    v16 = [v15 stringByAppendingString:@"]"];
    [(ObjcLatinNormalizer *)v11 setLetterNormalizationPattern:v16];

    [(ObjcLatinNormalizer *)v11 setNumberNormalizations:&off_272CBC0];
    v17 = [(ObjcLatinNormalizer *)v11 numberNormalizations];
    v18 = [v17 allKeys];
    v19 = [v18 componentsJoinedByString:&stru_272B528];
    v20 = [@"[" stringByAppendingString:v19];
    v21 = [v20 stringByAppendingString:@"]"];
    [(ObjcLatinNormalizer *)v11 setNumberNormalizationPattern:v21];
  }

  return v11;
}

- (id)normalize:(id)a3 :(id)a4
{
  v6 = a4;
  v7 = [(ObjcLatinNormalizer *)self normalizeUnicode:a3];
  v8 = [(ObjcLatinNormalizer *)self spaceNewlines:v7];
  v9 = [(ObjcLatinNormalizer *)self replacePunctuation:v8];
  v10 = [(ObjcLatinNormalizer *)self transformCase:v9];

  v11 = [(ObjcLatinNormalizer *)self trimConsecutiveSpaces:v10];

  return v11;
}

- (id)transformCase:(id)a3 :(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(ObjcLatinNormalizer *)self toLower])
  {
    v8 = [v6 lowercaseStringWithLocale:v7];
  }

  else
  {
    v8 = v6;
  }

  v9 = v8;

  return v9;
}

- (id)trimConsecutiveSpaces:(id)a3
{
  v4 = a3;
  if ([(ObjcLatinNormalizer *)self trimSpaces])
  {
    v5 = [v4 length];
    v6 = malloc_type_malloc(2 * v5 + 2, 0x1000040BDFB0063uLL);
    v7 = malloc_type_malloc(2 * v5 + 2, 0x1000040BDFB0063uLL);
    [v4 getCharacters:v6 range:{0, v5}];
    v8 = +[NSCharacterSet whitespaceCharacterSet];
    if (v5)
    {
      v20 = v4;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 1;
      do
      {
        v14 = v6[v9];
        v15 = [v8 characterIsMember:v14];
        if (!v15 || (v11 |= v9 == 0, v10 = (v5 == &dword_0 + 1) | v10, (v13 & 1) != 0))
        {
          v7[v12++] = v14;
        }

        v13 = v15 ^ 1;
        ++v9;
        v5 = v5 - 1;
      }

      while (v5);
      v16 = v10 << 63 >> 63;
      v4 = v20;
    }

    else
    {
      v12 = 0;
      v11 = 0;
      v16 = 0;
    }

    v18 = v12 - (v11 & 1);
    if ((v18 + v16 < 0) ^ __OFADD__(v18, v16) | (v18 + v16 == 0))
    {
      v17 = &stru_272B528;
    }

    else
    {
      v17 = [NSString stringWithCharacters:&v7[v11 & 1] length:v18 + v16];
    }

    free(v6);
    free(v7);
  }

  else
  {
    v17 = v4;
  }

  return v17;
}

- (id)regexpReplace:(id)a3 :(id)a4 :(id)a5
{
  v7 = a3;
  v25 = a5;
  v30 = 0;
  v8 = [NSRegularExpression regularExpressionWithPattern:a4 options:1 error:&v30];
  v22 = v30;
  v9 = [v7 mutableCopy];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v23 = v7;
  obj = [v8 matchesInString:v7 options:0 range:{0, objc_msgSend(v7, "length")}];
  v10 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v27;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v26 + 1) + 8 * i);
        v16 = [v15 range];
        v18 = v17;
        v19 = [v8 replacementStringForResult:v15 inString:v9 offset:v12 template:@"$0"];
        v20 = [v25 objectForKeyedSubscript:v19];
        [v9 replaceCharactersInRange:&v16[v12] withString:{v18, v20}];
        v12 += [v20 length] - v18;
      }

      v11 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v11);
  }

  return v9;
}

- (id)replacePunctuation:(id)a3
{
  v4 = a3;
  v22 = self;
  if ([(ObjcLatinNormalizer *)self punctMode])
  {
    v5 = +[NSCharacterSet whitespaceCharacterSet];
    v6 = +[NSCharacterSet alphanumericCharacterSet];
    v7 = +[NSCharacterSet decimalDigitCharacterSet];
    v21 = [NSCharacterSet characterSetWithCharactersInString:@"'’"];
    v8 = [v4 length];
    v9 = malloc_type_malloc(2 * v8 + 2, 0x1000040BDFB0063uLL);
    v10 = malloc_type_malloc(2 * v8 + 2, 0x1000040BDFB0063uLL);
    v19 = v4;
    [v4 getCharacters:v9 range:{0, v8}];
    v18 = v9;
    if (v8)
    {
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v20 = v8 - 1;
      v14 = v9 + 1;
      while (1)
      {
        v15 = *(v14 - 1);
        if (([v6 characterIsMember:v15] & 1) == 0 && !objc_msgSend(v5, "characterIsMember:", v15))
        {
          break;
        }

        v10[v12++] = v15;
        v13 = [v7 characterIsMember:v15];
LABEL_19:
        ++v11;
        ++v14;
        v8 = v8 - 1;
        if (!v8)
        {
          goto LABEL_24;
        }
      }

      if (![v21 characterIsMember:v15] || -[ObjcLatinNormalizer punctMode](v22, "punctMode") != 3 && -[ObjcLatinNormalizer punctMode](v22, "punctMode") != 4)
      {
        if (v11 >= v20 || (((v15 & 0xFFFFFFFD) == 44) & v13) == 0 || ![v7 characterIsMember:*v14])
        {
          if ([(ObjcLatinNormalizer *)v22 punctMode]!= 1 && [(ObjcLatinNormalizer *)v22 punctMode]!= 3)
          {
            v13 = 0;
            goto LABEL_19;
          }

          v13 = 0;
          v10[v12] = 32;
          goto LABEL_18;
        }

        v13 = 0;
      }

      v10[v12] = v15;
LABEL_18:
      ++v12;
      goto LABEL_19;
    }

    v12 = 0;
LABEL_24:
    v16 = [NSString stringWithCharacters:v10 length:v12];
    free(v18);
    free(v10);

    v4 = v19;
  }

  else
  {
    v16 = v4;
  }

  return v16;
}

- (id)normalizeUnicode:(id)a3
{
  v4 = a3;
  v5 = [v4 decomposedStringWithCanonicalMapping];
  if ([(ObjcLatinNormalizer *)self stripAccents])
  {
    if (([v5 isEqualToString:v4] & 1) == 0)
    {
      v6 = [v5 stringByApplyingTransform:NSStringTransformStripDiacritics reverse:0];

      v5 = [v6 stringByApplyingTransform:NSStringTransformStripCombiningMarks reverse:0];
    }

    v7 = [(ObjcLatinNormalizer *)self letterNormalizationPattern];
    v8 = [(ObjcLatinNormalizer *)self letterNormalizations];
    v9 = [(ObjcLatinNormalizer *)self regexpReplace:v5];

    v5 = v9;
  }

  v10 = [(ObjcLatinNormalizer *)self numberNormalizationPattern];
  v11 = [(ObjcLatinNormalizer *)self numberNormalizations];
  v12 = [(ObjcLatinNormalizer *)self regexpReplace:v5];

  v13 = [v12 precomposedStringWithCanonicalMapping];

  return v13;
}

@end