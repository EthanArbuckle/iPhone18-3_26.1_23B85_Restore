@interface NSString(Trimming)
- (id)stringByReplacingPathBeforeComponent:()Trimming with:;
- (id)stringByTrimming;
- (id)stringByTrimmingColumnSensitive;
@end

@implementation NSString(Trimming)

- (id)stringByTrimming
{
  v2 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v3 = [a1 stringByTrimmingCharactersInSet:v2];

  return v3;
}

- (id)stringByTrimmingColumnSensitive
{
  v2 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v3 = [a1 stringByTrimmingCharactersInSet:v2];

  if ([v3 isEqualToString:@"^"])
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{column %lu}", objc_msgSend(a1, "length")];

    v3 = v4;
  }

  return v3;
}

- (id)stringByReplacingPathBeforeComponent:()Trimming with:
{
  v6 = a4;
  v7 = v6;
  v8 = 0;
  if (a3 && v6)
  {
    v9 = a3;
    v10 = [a1 pathComponents];
    v11 = [v10 indexOfObject:v9];

    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = 0;
    }

    else
    {
      v12 = [v10 subarrayWithRange:{v11, objc_msgSend(v10, "count") - v11}];

      v13 = [v7 pathComponents];
      v14 = MEMORY[0x1E696AEC0];
      v15 = [v13 arrayByAddingObjectsFromArray:v12];
      v8 = [v14 pathWithComponents:v15];

      v10 = v12;
    }
  }

  return v8;
}

@end