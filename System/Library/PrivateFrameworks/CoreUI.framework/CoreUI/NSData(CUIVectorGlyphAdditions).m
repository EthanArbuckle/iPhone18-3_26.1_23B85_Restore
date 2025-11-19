@interface NSData(CUIVectorGlyphAdditions)
- (uint64_t)isEqualToClipStrokeData:()CUIVectorGlyphAdditions withAccuracy:;
@end

@implementation NSData(CUIVectorGlyphAdditions)

- (uint64_t)isEqualToClipStrokeData:()CUIVectorGlyphAdditions withAccuracy:
{
  v7 = [a4 length];
  if (v7 != [a1 length])
  {
    return 0;
  }

  if ([a4 isEqualToData:a1])
  {
    return 1;
  }

  v9 = [a1 rawKeyframeData];
  v10 = [a4 rawKeyframeData];
  result = 0;
  if (v9 && v10)
  {
    if (![v9 length])
    {
      return 1;
    }

    v11 = 0;
    while (1)
    {
      v24 = 0;
      v25 = 0;
      v23 = 0;
      [v9 getBytes:&v25 + 4 range:{v11, 4, 0}];
      [v10 getBytes:&v23 + 4 range:{v11, 4}];
      if (HIDWORD(v25) != HIDWORD(v23))
      {
        break;
      }

      v12 = v11 + 4;
      [v9 getBytes:&v25 range:{v12, 4}];
      [v10 getBytes:&v23 range:{v12, 4}];
      LODWORD(v13) = v25;
      if (*&v25 != *&v23)
      {
        break;
      }

      v14 = v12 + 4;
      [v9 getBytes:&v24 + 4 range:{v14, 4, v13}];
      [v10 getBytes:&v22 range:{v14, 4}];
      *&v15 = v22;
      if (v22 < (*(&v24 + 1) - a2) || v22 > (*(&v24 + 1) + a2))
      {
        break;
      }

      v17 = v14 + 4;
      [v9 getBytes:&v24 range:{v17, 4, v15}];
      [v10 getBytes:&v21 range:{v17, 4}];
      *&v18 = v21;
      if (v21 < (*&v24 - a2) || v21 > (*&v24 + a2))
      {
        break;
      }

      v20 = [v9 length];
      v11 = v17 + 4;
      result = 1;
      if (v11 >= v20)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

@end