@interface ObjcLatinNormalizer
- (ObjcLatinNormalizer)initWithParams:(BOOL)params trimSpaces:(BOOL)spaces punctMode:(int)mode stripAccents:(BOOL)accents;
- (id)normalize:(id)normalize :(id)a4;
- (id)normalizeUnicode:(id)unicode;
- (id)regexpReplace:(id)replace :(id)a4 :(id)a5;
- (id)replacePunctuation:(id)punctuation;
- (id)transformCase:(id)case :(id)a4;
- (id)trimConsecutiveSpaces:(id)spaces;
@end

@implementation ObjcLatinNormalizer

- (ObjcLatinNormalizer)initWithParams:(BOOL)params trimSpaces:(BOOL)spaces punctMode:(int)mode stripAccents:(BOOL)accents
{
  accentsCopy = accents;
  v7 = *&mode;
  spacesCopy = spaces;
  paramsCopy = params;
  v23.receiver = self;
  v23.super_class = ObjcLatinNormalizer;
  v10 = [(ObjcLatinNormalizer *)&v23 init];
  v11 = v10;
  if (v10)
  {
    [(ObjcLatinNormalizer *)v10 setToLower:paramsCopy];
    [(ObjcLatinNormalizer *)v11 setTrimSpaces:spacesCopy];
    [(ObjcLatinNormalizer *)v11 setPunctMode:v7];
    [(ObjcLatinNormalizer *)v11 setStripAccents:accentsCopy];
    [(ObjcLatinNormalizer *)v11 setLetterNormalizations:&off_272CB98];
    letterNormalizations = [(ObjcLatinNormalizer *)v11 letterNormalizations];
    allKeys = [letterNormalizations allKeys];
    v14 = [allKeys componentsJoinedByString:&stru_272B528];
    v15 = [@"[" stringByAppendingString:v14];
    v16 = [v15 stringByAppendingString:@"]"];
    [(ObjcLatinNormalizer *)v11 setLetterNormalizationPattern:v16];

    [(ObjcLatinNormalizer *)v11 setNumberNormalizations:&off_272CBC0];
    numberNormalizations = [(ObjcLatinNormalizer *)v11 numberNormalizations];
    allKeys2 = [numberNormalizations allKeys];
    v19 = [allKeys2 componentsJoinedByString:&stru_272B528];
    v20 = [@"[" stringByAppendingString:v19];
    v21 = [v20 stringByAppendingString:@"]"];
    [(ObjcLatinNormalizer *)v11 setNumberNormalizationPattern:v21];
  }

  return v11;
}

- (id)normalize:(id)normalize :(id)a4
{
  v6 = a4;
  v7 = [(ObjcLatinNormalizer *)self normalizeUnicode:normalize];
  v8 = [(ObjcLatinNormalizer *)self spaceNewlines:v7];
  v9 = [(ObjcLatinNormalizer *)self replacePunctuation:v8];
  v10 = [(ObjcLatinNormalizer *)self transformCase:v9];

  v11 = [(ObjcLatinNormalizer *)self trimConsecutiveSpaces:v10];

  return v11;
}

- (id)transformCase:(id)case :(id)a4
{
  caseCopy = case;
  v7 = a4;
  if ([(ObjcLatinNormalizer *)self toLower])
  {
    v8 = [caseCopy lowercaseStringWithLocale:v7];
  }

  else
  {
    v8 = caseCopy;
  }

  v9 = v8;

  return v9;
}

- (id)trimConsecutiveSpaces:(id)spaces
{
  spacesCopy = spaces;
  if ([(ObjcLatinNormalizer *)self trimSpaces])
  {
    v5 = [spacesCopy length];
    v6 = malloc_type_malloc(2 * v5 + 2, 0x1000040BDFB0063uLL);
    v7 = malloc_type_malloc(2 * v5 + 2, 0x1000040BDFB0063uLL);
    [spacesCopy getCharacters:v6 range:{0, v5}];
    v8 = +[NSCharacterSet whitespaceCharacterSet];
    if (v5)
    {
      v20 = spacesCopy;
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
      spacesCopy = v20;
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
    v17 = spacesCopy;
  }

  return v17;
}

- (id)regexpReplace:(id)replace :(id)a4 :(id)a5
{
  replaceCopy = replace;
  v25 = a5;
  v30 = 0;
  v8 = [NSRegularExpression regularExpressionWithPattern:a4 options:1 error:&v30];
  v22 = v30;
  v9 = [replaceCopy mutableCopy];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v23 = replaceCopy;
  obj = [v8 matchesInString:replaceCopy options:0 range:{0, objc_msgSend(replaceCopy, "length")}];
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
        range = [v15 range];
        v18 = v17;
        v19 = [v8 replacementStringForResult:v15 inString:v9 offset:v12 template:@"$0"];
        v20 = [v25 objectForKeyedSubscript:v19];
        [v9 replaceCharactersInRange:&range[v12] withString:{v18, v20}];
        v12 += [v20 length] - v18;
      }

      v11 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v11);
  }

  return v9;
}

- (id)replacePunctuation:(id)punctuation
{
  punctuationCopy = punctuation;
  selfCopy = self;
  if ([(ObjcLatinNormalizer *)self punctMode])
  {
    v5 = +[NSCharacterSet whitespaceCharacterSet];
    v6 = +[NSCharacterSet alphanumericCharacterSet];
    v7 = +[NSCharacterSet decimalDigitCharacterSet];
    v21 = [NSCharacterSet characterSetWithCharactersInString:@"'’"];
    v8 = [punctuationCopy length];
    v9 = malloc_type_malloc(2 * v8 + 2, 0x1000040BDFB0063uLL);
    v10 = malloc_type_malloc(2 * v8 + 2, 0x1000040BDFB0063uLL);
    v19 = punctuationCopy;
    [punctuationCopy getCharacters:v9 range:{0, v8}];
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

      if (![v21 characterIsMember:v15] || -[ObjcLatinNormalizer punctMode](selfCopy, "punctMode") != 3 && -[ObjcLatinNormalizer punctMode](selfCopy, "punctMode") != 4)
      {
        if (v11 >= v20 || (((v15 & 0xFFFFFFFD) == 44) & v13) == 0 || ![v7 characterIsMember:*v14])
        {
          if ([(ObjcLatinNormalizer *)selfCopy punctMode]!= 1 && [(ObjcLatinNormalizer *)selfCopy punctMode]!= 3)
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

    punctuationCopy = v19;
  }

  else
  {
    v16 = punctuationCopy;
  }

  return v16;
}

- (id)normalizeUnicode:(id)unicode
{
  unicodeCopy = unicode;
  decomposedStringWithCanonicalMapping = [unicodeCopy decomposedStringWithCanonicalMapping];
  if ([(ObjcLatinNormalizer *)self stripAccents])
  {
    if (([decomposedStringWithCanonicalMapping isEqualToString:unicodeCopy] & 1) == 0)
    {
      v6 = [decomposedStringWithCanonicalMapping stringByApplyingTransform:NSStringTransformStripDiacritics reverse:0];

      decomposedStringWithCanonicalMapping = [v6 stringByApplyingTransform:NSStringTransformStripCombiningMarks reverse:0];
    }

    letterNormalizationPattern = [(ObjcLatinNormalizer *)self letterNormalizationPattern];
    letterNormalizations = [(ObjcLatinNormalizer *)self letterNormalizations];
    v9 = [(ObjcLatinNormalizer *)self regexpReplace:decomposedStringWithCanonicalMapping];

    decomposedStringWithCanonicalMapping = v9;
  }

  numberNormalizationPattern = [(ObjcLatinNormalizer *)self numberNormalizationPattern];
  numberNormalizations = [(ObjcLatinNormalizer *)self numberNormalizations];
  v12 = [(ObjcLatinNormalizer *)self regexpReplace:decomposedStringWithCanonicalMapping];

  precomposedStringWithCanonicalMapping = [v12 precomposedStringWithCanonicalMapping];

  return precomposedStringWithCanonicalMapping;
}

@end