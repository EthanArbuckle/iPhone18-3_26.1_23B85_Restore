@interface NSArray(AppleDicom)
- (__CFString)dicomVRForArray;
@end

@implementation NSArray(AppleDicom)

- (__CFString)dicomVRForArray
{
  v27 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = a1;
  v1 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v1)
  {

    goto LABEL_25;
  }

  v20 = 0;
  v2 = 0;
  v18 = 0;
  v19 = 0;
  v17 = 0;
  v3 = 0;
  v4 = 0;
  v5 = *v23;
  do
  {
    for (i = 0; i != v1; ++i)
    {
      if (*v23 != v5)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v22 + 1) + 8 * i);
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      objc_opt_class();
      v9 = objc_opt_isKindOfClass();
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v7 doubleValue];
        if (v2 & 1 | (vabdd_f64(ceil(v10), v10) >= 2.22044605e-16))
        {
          v2 = 1;
        }

        else
        {
          if ([v7 longLongValue] < v19)
          {
            v19 = [v7 longLongValue];
          }

          if ([v7 unsignedLongLongValue] > v17)
          {
            v17 = [v7 unsignedLongLongValue];
          }

          v2 = 0;
        }

        v3 = 1;
      }

      else
      {
        objc_opt_class();
        v3 |= isKindOfClass ^ 1;
        if (objc_opt_isKindOfClass())
        {
          v11 = v7;
          if ([v11 lengthOfBytesUsingEncoding:4] > v18)
          {
            v18 = [v11 lengthOfBytesUsingEncoding:4];
          }

          v12 = [v11 containsString:@"\\""];

          v20 |= v12;
        }
      }

      v4 |= v9 ^ 1;
    }

    v1 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  }

  while (v1);

  if ((v4 & 1) == 0)
  {
    if (v2)
    {
      v13 = @"FD";
      goto LABEL_47;
    }

    if ((v19 & 0x8000000000000000) != 0)
    {
      if (v19 < 0xFFFFFFFFFFFF8000 || v17 >= 0x8000)
      {
        if (v17 >> 31)
        {
          v15 = 0;
        }

        else
        {
          v15 = v19 > 0xFFFFFFFF7FFFFFFFLL;
        }

        if (v15)
        {
          v13 = @"SL";
        }

        else
        {
          v13 = @"SV";
        }
      }

      else
      {
        v13 = @"SS";
      }

      goto LABEL_47;
    }

    if (v17 >= 0x10000)
    {
      if (HIDWORD(v17))
      {
        v13 = @"UV";
      }

      else
      {
        v13 = @"UL";
      }

      goto LABEL_47;
    }

LABEL_25:
    v13 = @"US";
    goto LABEL_47;
  }

  if (v3)
  {
    v13 = 0;
  }

  else if (v20 & 1 | (v18 > 0x3F))
  {
    v14 = @"ST";
    if (v18 > 0x3E8)
    {
      v14 = @"LT";
    }

    v13 = v14;
  }

  else
  {
    v13 = @"LO";
  }

LABEL_47:

  return v13;
}

@end