@interface IDSLogFormatter
+ (id)descriptionForArray:(id)a3 options:(unint64_t)a4 level:(int64_t)a5;
+ (id)descriptionForData:(id)a3 options:(unint64_t)a4;
+ (id)descriptionForDictionary:(id)a3 options:(unint64_t)a4 level:(int64_t)a5;
+ (id)descriptionForObject:(id)a3 options:(unint64_t)a4 level:(int64_t)a5;
+ (id)descriptionForString:(id)a3 options:(unint64_t)a4;
@end

@implementation IDSLogFormatter

+ (id)descriptionForString:(id)a3 options:(unint64_t)a4
{
  v4 = a4;
  v5 = a3;
  v6 = v5;
  if ((v4 & 8) != 0 && [v5 length] >= 0x65)
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = [v6 _md5Hash];
    [v7 stringWithFormat:@"-> %@", v8];
    v10 = LABEL_7:;

    goto LABEL_9;
  }

  if ((v4 & 4) != 0 && [v6 length] >= 0x33)
  {
    v9 = MEMORY[0x1E696AEC0];
    v8 = [v6 substringToIndex:20];
    [v9 stringWithFormat:@"%@ <...>", v8];
    goto LABEL_7;
  }

  v10 = v6;
LABEL_9:

  return v10;
}

+ (id)descriptionForData:(id)a3 options:(unint64_t)a4
{
  v4 = a4;
  v5 = a3;
  v6 = v5;
  if ((v4 & 2) != 0 && [v5 length] >= 0x65)
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = [v6 SHA1HexString];
    v9 = [v7 stringWithFormat:@"-> %@", v8];
  }

  else
  {
    if ((v4 & 1) != 0 && [v6 length] >= 0x33)
    {
      v10 = [v6 truncatedDescription];
    }

    else
    {
      v10 = [v6 description];
    }

    v9 = v10;
  }

  return v9;
}

+ (id)descriptionForArray:(id)a3 options:(unint64_t)a4 level:(int64_t)a5
{
  v8 = a3;
  v9 = objc_alloc_init(MEMORY[0x1E696AD60]);
  objc_msgSend(v9, "appendString:", @"(");
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1A7CB78E8;
  v15[3] = &unk_1E77E2AE8;
  v18 = a4;
  v10 = v9;
  v16 = v10;
  v19 = a5;
  v20 = a1;
  v11 = v8;
  v17 = v11;
  [v11 enumerateObjectsUsingBlock:v15];
  if ((a4 & 0x10) != 0 && a5 >= 1)
  {
    do
    {
      [v10 appendString:@"  "];
      --a5;
    }

    while (a5);
  }

  [v10 appendString:@""]);
  v12 = v17;
  v13 = v10;

  return v10;
}

+ (id)descriptionForDictionary:(id)a3 options:(unint64_t)a4 level:(int64_t)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v9 appendString:@"{\n"];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v8;
  v20 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v20)
  {
    v19 = *v23;
    v10 = a5 + 1;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v23 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        v13 = v10;
        v14 = a5;
        if ((a5 & 0x8000000000000000) == 0)
        {
          do
          {
            [v9 appendString:@"  "];
            --v13;
          }

          while (v13);
        }

        v15 = [a1 descriptionForObject:v12 options:a4 level:v10];
        v16 = [obj objectForKey:v12];
        v17 = [a1 descriptionForObject:v16 options:a4 level:v10];
        [v9 appendFormat:@"%@ : %@\n", v15, v17];

        a5 = v14;
      }

      v20 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v20);
  }

  if (a5 >= 1)
  {
    do
    {
      [v9 appendString:@"  "];
      --a5;
    }

    while (a5);
  }

  [v9 appendString:@"}"];

  return v9;
}

+ (id)descriptionForObject:(id)a3 options:(unint64_t)a4 level:(int64_t)a5
{
  v8 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [a1 descriptionForString:v8 options:a4];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [a1 descriptionForData:v8 options:a4];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [a1 descriptionForArray:v8 options:a4 level:a5];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [a1 descriptionForDictionary:v8 options:a4 level:a5];
        }

        else
        {
          [v8 description];
        }
        v9 = ;
      }
    }
  }

  v10 = v9;

  return v10;
}

@end