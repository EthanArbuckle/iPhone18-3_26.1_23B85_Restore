@interface NSString(Trimming)
- (id)stringByReplacingPathBeforeComponent:()Trimming with:;
- (id)stringByTrimming;
- (id)stringByTrimmingColumnSensitive;
@end

@implementation NSString(Trimming)

- (id)stringByTrimming
{
  whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v3 = [self stringByTrimmingCharactersInSet:whitespaceCharacterSet];

  return v3;
}

- (id)stringByTrimmingColumnSensitive
{
  whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v3 = [self stringByTrimmingCharactersInSet:whitespaceCharacterSet];

  if ([v3 isEqualToString:@"^"])
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{column %lu}", objc_msgSend(self, "length")];

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
    pathComponents = [self pathComponents];
    v11 = [pathComponents indexOfObject:v9];

    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = 0;
    }

    else
    {
      v12 = [pathComponents subarrayWithRange:{v11, objc_msgSend(pathComponents, "count") - v11}];

      pathComponents2 = [v7 pathComponents];
      v14 = MEMORY[0x1E696AEC0];
      v15 = [pathComponents2 arrayByAddingObjectsFromArray:v12];
      v8 = [v14 pathWithComponents:v15];

      pathComponents = v12;
    }
  }

  return v8;
}

@end