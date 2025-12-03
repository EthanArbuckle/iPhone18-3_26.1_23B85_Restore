@interface NSData(ClipStrokeKeyframes)
+ (NSMutableData)encodedClipStrokeKeyframesFromString:()ClipStrokeKeyframes subpathOffset:;
+ (NSMutableData)mergingRawIndexedKeyframes:()ClipStrokeKeyframes;
- (BOOL)containsCompoundKeyframesAtIndex:()ClipStrokeKeyframes;
- (NSMutableArray)indexedRawKeyframes;
- (id)_rawKeyframesAtIndex:()ClipStrokeKeyframes validatedOffsetCount:;
- (id)encodedKeyframesReferencedSubpaths;
- (id)encodedSubpathKeyframes;
- (id)rawKeyframeData;
- (id)rawKeyframesAtIndex:()ClipStrokeKeyframes;
- (uint64_t)numOffsets;
- (uint64_t)validate:()ClipStrokeKeyframes;
- (void)clipStrokeKeyframeString;
@end

@implementation NSData(ClipStrokeKeyframes)

- (uint64_t)numOffsets
{
  v2 = 0;
  [self getBytes:&v2 length:4];
  return v2;
}

- (NSMutableArray)indexedRawKeyframes
{
  v9 = 0;
  v2 = 0;
  if ([self validate:&v9])
  {
    v2 = [NSMutableArray arrayWithCapacity:v9];
    v3 = objc_alloc_init(NSData);
    if (v9)
    {
      for (i = 0; i < v9; ++i)
      {
        v5 = [self _rawKeyframesAtIndex:i validatedOffsetCount:?];
        if (v5)
        {
          v6 = v5;
          v7 = v2;
        }

        else
        {
          v7 = v2;
          v6 = v3;
        }

        [(NSMutableArray *)v7 addObject:v6];
      }
    }
  }

  return v2;
}

+ (NSMutableData)encodedClipStrokeKeyframesFromString:()ClipStrokeKeyframes subpathOffset:
{
  if (!a4)
  {
    return 0;
  }

  v5 = [a4 componentsSeparatedByString:@" "];
  v6 = [v5 count];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = [objc_msgSend(v5 "firstObject")];
  if (v8 != 1)
  {
    if (!v8 && ((v7 - 1) & 3) == 0)
    {
      v9 = [NSMutableData dataWithCapacity:4 * v7 + 4];
      v35 = 8;
      v36 = 1;
      [(NSMutableData *)v9 appendBytes:&v36 length:4];
      [(NSMutableData *)v9 appendBytes:&v35 length:4];
      if (v7 != 1)
      {
        for (i = 1; i < v7; i += 4)
        {
          v34 = [objc_msgSend(v5 objectAtIndexedSubscript:{i), "integerValue"}];
          [objc_msgSend(v5 objectAtIndexedSubscript:{i + 1), "floatValue"}];
          v33 = v11;
          [objc_msgSend(v5 objectAtIndexedSubscript:{i + 2), "floatValue"}];
          v32 = v12 + self;
          [objc_msgSend(v5 objectAtIndexedSubscript:{i + 3), "floatValue"}];
          v31 = v13 + self;
          [(NSMutableData *)v9 appendBytes:&v34 length:4];
          [(NSMutableData *)v9 appendBytes:&v33 length:4];
          [(NSMutableData *)v9 appendBytes:&v32 length:4];
          [(NSMutableData *)v9 appendBytes:&v31 length:4];
        }
      }

      return v9;
    }

    return 0;
  }

  if (v7 == 1)
  {
    return 0;
  }

  v14 = [objc_msgSend(v5 objectAtIndexedSubscript:{1), "integerValue"}];
  v36 = v14;
  v15 = v14 + 2;
  if (v7 < v14 + 2)
  {
    return 0;
  }

  v16 = [v5 subarrayWithRange:{2, v14}];
  if (((v7 - v15) & 3) != 0)
  {
    return 0;
  }

  v18 = v16;
  v19 = v15;
  v9 = [NSMutableData dataWithCapacity:4 * v7];
  [(NSMutableData *)v9 appendBytes:&v36 length:4];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v20 = [v18 countByEnumeratingWithState:&v27 objects:v37 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v28;
    do
    {
      for (j = 0; j != v21; j = j + 1)
      {
        if (*v28 != v22)
        {
          objc_enumerationMutation(v18);
        }

        v35 = 4 * [*(*(&v27 + 1) + 8 * j) integerValue];
        [(NSMutableData *)v9 appendBytes:&v35 length:4];
      }

      v21 = [v18 countByEnumeratingWithState:&v27 objects:v37 count:16];
    }

    while (v21);
  }

  while (v19 < v7)
  {
    v35 = [objc_msgSend(v5 objectAtIndexedSubscript:{v19), "integerValue"}];
    [objc_msgSend(v5 objectAtIndexedSubscript:{v19 + 1), "floatValue"}];
    v34 = v24;
    [objc_msgSend(v5 objectAtIndexedSubscript:{v19 + 2), "floatValue"}];
    v33 = v25 + self;
    [objc_msgSend(v5 objectAtIndexedSubscript:{v19 + 3), "floatValue"}];
    v32 = v26 + self;
    [(NSMutableData *)v9 appendBytes:&v35 length:4];
    [(NSMutableData *)v9 appendBytes:&v34 length:4];
    [(NSMutableData *)v9 appendBytes:&v33 length:4];
    [(NSMutableData *)v9 appendBytes:&v32 length:4];
    v19 += 4;
  }

  return v9;
}

- (void)clipStrokeKeyframeString
{
  v15 = 0;
  if (![self validate:&v15])
  {
    return 0;
  }

  v2 = 4 * v15;
  v3 = 4 * v15 + 4;
  if ((([self length] - v3) & 0xF) != 0)
  {
    return 0;
  }

  v6 = +[NSMutableString string];
  v4 = v6;
  if (v15 == 1)
  {
    [v6 appendString:@"0"];
  }

  else
  {
    [v6 appendString:@"1"];
    if (v15)
    {
      v7 = 0;
      v8 = 4;
      do
      {
        HIDWORD(v14) = 0;
        [self getBytes:&v14 + 4 range:{v8, 4}];
        if (!HIDWORD(v14) || (v14 & 0x300000000) != 0)
        {
          return 0;
        }

        ++v7;
        [v4 appendString:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @" %u", HIDWORD(v14) >> 2)}];
        v8 += 4;
      }

      while (v7 < v15);
    }
  }

  if (v3 < [self length])
  {
    v10 = v2 + 16;
    do
    {
      v13 = 0;
      v14 = 0;
      [self getBytes:&v14 + 4 range:{v10 - 12, 4}];
      [self getBytes:&v14 range:{v10 - 8, 4}];
      [self getBytes:&v13 + 4 range:{v10 - 4, 4}];
      [self getBytes:&v13 range:{v10, 4}];
      [v4 appendString:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @" %u %f %f %f", HIDWORD(v14), *&v14, *(&v13 + 1), *&v13)}];
      v11 = [self length];
      v12 = v10 + 4;
      v10 += 16;
    }

    while (v12 < v11);
  }

  return v4;
}

- (uint64_t)validate:()ClipStrokeKeyframes
{
  if ([self length] >= 4)
  {
    result = [self numOffsets];
    if (!result)
    {
      return result;
    }

    v6 = result;
    v7 = result + 1;
    if ([self length] >= 4 * (result + 1) && ((objc_msgSend(self, "length") - 4 * v7) & 0xF) == 0)
    {
      *a3 = v6;
      return 1;
    }
  }

  return 0;
}

- (id)rawKeyframesAtIndex:()ClipStrokeKeyframes
{
  v7 = 0;
  v5 = [self validate:&v7];
  result = 0;
  if (v5)
  {
    return [self _rawKeyframesAtIndex:a3 validatedOffsetCount:v7];
  }

  return result;
}

- (id)rawKeyframeData
{
  v4 = 0;
  if ([self validate:&v4] && (v2 = 4 * v4 + 4, ((objc_msgSend(self, "length") - v2) & 0xF) == 0))
  {
    return [self subdataWithRange:v2];
  }

  else
  {
    return 0;
  }
}

- (id)encodedSubpathKeyframes
{
  v2 = +[NSMutableDictionary dictionary];
  v18 = 0;
  if ([self validate:&v18])
  {
    v17 = v18;
    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x3052000000;
    v16[3] = __Block_byref_object_copy__0;
    v16[4] = __Block_byref_object_dispose__0;
    v16[5] = +[NSMutableDictionary dictionary];
    if (v18)
    {
      v3 = 0;
      do
      {
        v4 = v3 + 1;
        v5 = 4 * (v3 + 1);
        v15 = 0;
        [self getBytes:&v15 range:{v5, 4}];
        v14 = 0;
        if (v3 + 1 == v18)
        {
          v6 = [self length];
          v14 = v6;
        }

        else
        {
          [self getBytes:&v14 range:{4 * v3 + 8, 4}];
          v6 = v14;
        }

        ++v3;
        v7 = v15;
        if (v6 >= v15 && ((v6 - v15) & 0xF) == 0)
        {
          if (v6 > v15)
          {
            do
            {
              v13 = 0;
              [self getBytes:&v13 + 4 range:{v7 + 8, 4}];
              [self getBytes:&v13 range:{v7 + 12, 4}];
              v9 = floorf(*(&v13 + 1));
              if (v9 == floorf(*&v13))
              {
                *&v8 = v9;
                v10 = [v2 objectForKey:{+[NSNumber numberWithFloat:](NSNumber, "numberWithFloat:", v8)}];
                if (!v10)
                {
                  v10 = [NSMutableData dataWithLength:v4];
                  [(NSMutableData *)v10 replaceBytesInRange:0 withBytes:4, &v17];
                }

                -[NSMutableData appendBytes:length:](v10, "appendBytes:length:", [self bytes] + v7, 8);
                [self getBytes:&v13 + 4 range:{v7 + 8, 4}];
                [self getBytes:&v13 range:{v7 + 12, 4}];
                *&v13 = *&v13 - v9;
                *(&v13 + 1) = *(&v13 + 1) - v9;
                [(NSMutableData *)v10 appendBytes:&v13 + 4 length:4];
                [(NSMutableData *)v10 appendBytes:&v13 length:4];
              }

              v7 += 16;
            }

            while (v7 < v14);
          }

          v12[0] = _NSConcreteStackBlock;
          v12[1] = 3221225472;
          v12[2] = __54__NSData_ClipStrokeKeyframes__encodedSubpathKeyframes__block_invoke;
          v12[3] = &unk_1E724A598;
          v12[4] = v16;
          v12[5] = v5;
          v12[6] = 4;
          [v2 enumerateKeysAndObjectsUsingBlock:v12];
        }
      }

      while (v4 < v18);
    }

    _Block_object_dispose(v16, 8);
  }

  return v2;
}

- (id)encodedKeyframesReferencedSubpaths
{
  v2 = +[NSMutableSet set];
  rawKeyframeData = [self rawKeyframeData];
  if ([rawKeyframeData length])
  {
    v4 = 0;
    do
    {
      v14 = 0;
      [self getBytes:&v14 + 4 range:{v4 + 8, 4}];
      [self getBytes:&v14 range:{v4 + 12, 4}];
      v5 = floorf(*(&v14 + 1));
      v6 = floorf(*&v14);
      v7 = [NSNumber alloc];
      *&v8 = v5;
      v9 = [v7 initWithFloat:v8];
      v10 = [NSNumber alloc];
      *&v11 = v6;
      v12 = [v10 initWithFloat:v11];
      [v2 addObject:v9];

      v4 += 16;
    }

    while (v4 < [rawKeyframeData length]);
  }

  return v2;
}

- (BOOL)containsCompoundKeyframesAtIndex:()ClipStrokeKeyframes
{
  v2 = [self rawKeyframesAtIndex:?];
  if (![v2 length])
  {
    return 0;
  }

  v3 = 0;
  do
  {
    v8 = 0;
    [self getBytes:&v8 + 4 range:{v3 + 8, 4}];
    [self getBytes:&v8 range:{v3 + 12, 4}];
    v4 = floorf(*(&v8 + 1));
    v5 = floorf(*&v8);
    v6 = v4 != v5;
    if (v4 != v5)
    {
      break;
    }

    v3 += 16;
  }

  while (v3 < [v2 length]);
  return v6;
}

- (id)_rawKeyframesAtIndex:()ClipStrokeKeyframes validatedOffsetCount:
{
  v10 = 0;
  [self getBytes:&v10 range:{4 * a3 + 4, 4}];
  v9 = 0;
  if (a3 + 2 >= a4)
  {
    v7 = [self length];
    v9 = v7;
  }

  else
  {
    [self getBytes:&v9 range:{4 * (a3 + 2), 4}];
    v7 = v9;
  }

  if (v10 >= v7 || [self length] < v7)
  {
    return 0;
  }

  result = 0;
  if (v9 != v10 && ((v9 - v10) & 0xF) == 0)
  {
    return [self subdataWithRange:?];
  }

  return result;
}

+ (NSMutableData)mergingRawIndexedKeyframes:()ClipStrokeKeyframes
{
  v4 = [a3 count];
  v11 = v4;
  0x3FFFFFFFCLL = [NSMutableData dataWithLength:(4 * v4 + 4) & 0x3FFFFFFFCLL];
  [(NSMutableData *)0x3FFFFFFFCLL replaceBytesInRange:0 withBytes:4, &v11];
  if (v11)
  {
    v6 = 0;
    v7 = 4;
    do
    {
      v8 = [a3 objectAtIndex:v6];
      v10 = [(NSMutableData *)0x3FFFFFFFCLL length];
      ++v6;
      [(NSMutableData *)0x3FFFFFFFCLL replaceBytesInRange:v7 withBytes:4, &v10];
      [(NSMutableData *)0x3FFFFFFFCLL appendData:v8];
      v7 += 4;
    }

    while (v6 < v11);
  }

  return 0x3FFFFFFFCLL;
}

@end