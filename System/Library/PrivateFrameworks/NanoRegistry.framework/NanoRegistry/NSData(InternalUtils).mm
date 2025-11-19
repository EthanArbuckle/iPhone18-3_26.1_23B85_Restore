@interface NSData(InternalUtils)
- (uint64_t)matchesDataAtFilePath:()InternalUtils;
@end

@implementation NSData(InternalUtils)

- (uint64_t)matchesDataAtFilePath:()InternalUtils
{
  v4 = a3;
  if (v4 && ([MEMORY[0x1E696AC08] defaultManager], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "fileExistsAtPath:", v4), v5, v6))
  {
    v7 = [MEMORY[0x1E696AC00] fileHandleForReadingAtPath:v4];
    v8 = 0;
    do
    {
      v9 = objc_autoreleasePoolPush();
      v10 = v8;
      [v7 seekToOffset:v8 error:0];
      v11 = [v7 readDataOfLength:1024];
      v12 = [a1 length];
      v13 = 1024;
      if (v12 - v8 <= 0x400)
      {
        v13 = [a1 length] - v8;
      }

      v14 = [a1 subdataWithRange:{v8, v13}];
      v15 = [v11 length];
      v16 = [v11 isEqualToData:v14];

      objc_autoreleasePoolPop(v9);
      if (!v16)
      {
        break;
      }

      v8 = v15 + v10;
    }

    while ([a1 length] > v8);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end