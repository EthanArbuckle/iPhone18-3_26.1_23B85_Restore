@interface NSMutableData(ClipStrokeKeyframes)
- (id)appendEncodedClipStrokeKeyframes:()ClipStrokeKeyframes subpathOffset:keyframeSetIndex:;
- (id)appendRawKeyframes:()ClipStrokeKeyframes subpathOffset:;
@end

@implementation NSMutableData(ClipStrokeKeyframes)

- (id)appendRawKeyframes:()ClipStrokeKeyframes subpathOffset:
{
  result = [a4 length];
  if ((result & 0xF) == 0)
  {
    result = [a4 length];
    if (result)
    {
      for (i = 0; i < result; i += 16)
      {
        v9 = 0;
        [self appendBytes:objc_msgSend(a4 length:{"bytes") + i, 8}];
        [a4 getBytes:&v9 + 4 range:{i + 8, 4}];
        [a4 getBytes:&v9 range:{i + 12, 4}];
        *&v9 = *&v9 + a2;
        *(&v9 + 1) = *(&v9 + 1) + a2;
        [self appendBytes:&v9 + 4 length:4];
        [self appendBytes:&v9 length:4];
        result = [a4 length];
      }
    }
  }

  return result;
}

- (id)appendEncodedClipStrokeKeyframes:()ClipStrokeKeyframes subpathOffset:keyframeSetIndex:
{
  v12 = 0;
  result = [a4 validate:&v12];
  if (result)
  {
    v10 = [a4 rawKeyframesAtIndex:a5];
    *&v11 = a2;
    return [self appendRawKeyframes:v10 subpathOffset:v11];
  }

  return result;
}

@end