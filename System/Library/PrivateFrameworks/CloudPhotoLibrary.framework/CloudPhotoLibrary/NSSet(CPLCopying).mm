@interface NSSet(CPLCopying)
- (__CFString)cplFullDescription;
@end

@implementation NSSet(CPLCopying)

- (__CFString)cplFullDescription
{
  v19 = *MEMORY[0x1E69E9840];
  if ([a1 count])
  {
    v2 = objc_msgSend(objc_alloc(MEMORY[0x1E696AD60]), "initWithString:", @"{(");
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

    [(__CFString *)v2 appendString:@"\n}"]);
  }

  else
  {
    v2 = @"{()}";
  }

  v11 = *MEMORY[0x1E69E9840];

  return v2;
}

@end