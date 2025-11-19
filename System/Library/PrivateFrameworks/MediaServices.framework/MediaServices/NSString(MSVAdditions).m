@interface NSString(MSVAdditions)
- (id)msv_stringByResolvingRealPath;
- (unint64_t)msv_unsignedLongLongValue;
@end

@implementation NSString(MSVAdditions)

- (id)msv_stringByResolvingRealPath
{
  v2 = [a1 copy];
  v3 = realpath_DARWIN_EXTSN([a1 fileSystemRepresentation], 0);
  if (v3)
  {
    v4 = v3;
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v3];

    free(v4);
    v2 = v5;
  }

  else
  {
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
    v7 = [v2 copy];
    v8 = v7;
    while ([v7 length])
    {
      v9 = v8;
      v10 = [v8 lastPathComponent];
      v8 = [v8 stringByDeletingLastPathComponent];

      [v6 addObject:v10];
      if ([v8 length])
      {
        v11 = realpath_DARWIN_EXTSN([v8 fileSystemRepresentation], 0);
        if (v11)
        {
          v12 = v11;
          v16 = 0;
          v17 = &v16;
          v18 = 0x3032000000;
          v19 = __Block_byref_object_copy__2966;
          v20 = __Block_byref_object_dispose__2967;
          v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v11];
          v15[0] = MEMORY[0x1E69E9820];
          v15[1] = 3221225472;
          v15[2] = __55__NSString_MSVAdditions__msv_stringByResolvingRealPath__block_invoke;
          v15[3] = &unk_1E7981FB8;
          v15[4] = &v16;
          [v6 enumerateObjectsWithOptions:2 usingBlock:v15];
          v13 = v17[5];

          free(v12);
          _Block_object_dispose(&v16, 8);

          v2 = v13;
          break;
        }
      }

      v7 = v8;
    }
  }

  return v2;
}

- (unint64_t)msv_unsignedLongLongValue
{
  v1 = [a1 UTF8String];

  return strtoull(v1, 0, 0);
}

@end