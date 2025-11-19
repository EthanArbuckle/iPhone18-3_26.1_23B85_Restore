@interface NSArray(CPLCopying)
- (__CFString)cplFullDescription;
- (uint64_t)cplDeepCopy;
@end

@implementation NSArray(CPLCopying)

- (uint64_t)cplDeepCopy
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [a1 count];
  if (v2)
  {
    v3 = v2;
    memset(v13, 0, sizeof(v13));
    if (v2 >= 0xB)
    {
      v4 = malloc_type_calloc(v2, 8uLL, 0x80040B8603338uLL);
    }

    else
    {
      v4 = v13;
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __34__NSArray_CPLCopying__cplDeepCopy__block_invoke;
    v12[3] = &__block_descriptor_40_e15_v32__0_8Q16_B24l;
    v12[4] = v4;
    [a1 enumerateObjectsUsingBlock:v12];
    v7 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:v4 count:v3];
    for (i = 0; i != v3; ++i)
    {
      v9 = *(v4 + i);
      *(v4 + i) = 0;
    }

    if (v4 != v13)
    {
      free(v4);
    }

    for (j = 72; j != -8; j -= 8)
    {
    }

    v11 = *MEMORY[0x1E69E9840];
    return v7;
  }

  else
  {
    v5 = *MEMORY[0x1E69E9840];

    return [a1 copy];
  }
}

- (__CFString)cplFullDescription
{
  v19 = *MEMORY[0x1E69E9840];
  if ([a1 count])
  {
    v2 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"["];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    obj = a1;
    v3 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v15;
      v6 = @"\n  %@";
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v15 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v8 = [*(*(&v14 + 1) + 8 * i) cplFullDescription];
          v9 = [v8 componentsSeparatedByString:@"\n"];
          v10 = [v9 componentsJoinedByString:@"\n  "];
          [(__CFString *)v2 appendFormat:v6, v10];

          v6 = @",\n  %@";
        }

        v4 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
        v6 = @",\n  %@";
      }

      while (v4);
    }

    [(__CFString *)v2 appendString:@"\n]"];
  }

  else
  {
    v2 = @"[]";
  }

  v11 = *MEMORY[0x1E69E9840];

  return v2;
}

@end