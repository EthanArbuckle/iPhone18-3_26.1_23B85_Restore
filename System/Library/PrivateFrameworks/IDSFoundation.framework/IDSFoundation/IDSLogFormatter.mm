@interface IDSLogFormatter
+ (id)descriptionForArray:(id)array options:(unint64_t)options level:(int64_t)level;
+ (id)descriptionForData:(id)data options:(unint64_t)options;
+ (id)descriptionForDictionary:(id)dictionary options:(unint64_t)options level:(int64_t)level;
+ (id)descriptionForObject:(id)object options:(unint64_t)options level:(int64_t)level;
+ (id)descriptionForString:(id)string options:(unint64_t)options;
@end

@implementation IDSLogFormatter

+ (id)descriptionForString:(id)string options:(unint64_t)options
{
  optionsCopy = options;
  stringCopy = string;
  v6 = stringCopy;
  if ((optionsCopy & 8) != 0 && [stringCopy length] >= 0x65)
  {
    v7 = MEMORY[0x1E696AEC0];
    _md5Hash = [v6 _md5Hash];
    [v7 stringWithFormat:@"-> %@", _md5Hash];
    v10 = LABEL_7:;

    goto LABEL_9;
  }

  if ((optionsCopy & 4) != 0 && [v6 length] >= 0x33)
  {
    v9 = MEMORY[0x1E696AEC0];
    _md5Hash = [v6 substringToIndex:20];
    [v9 stringWithFormat:@"%@ <...>", _md5Hash];
    goto LABEL_7;
  }

  v10 = v6;
LABEL_9:

  return v10;
}

+ (id)descriptionForData:(id)data options:(unint64_t)options
{
  optionsCopy = options;
  dataCopy = data;
  v6 = dataCopy;
  if ((optionsCopy & 2) != 0 && [dataCopy length] >= 0x65)
  {
    v7 = MEMORY[0x1E696AEC0];
    sHA1HexString = [v6 SHA1HexString];
    v9 = [v7 stringWithFormat:@"-> %@", sHA1HexString];
  }

  else
  {
    if ((optionsCopy & 1) != 0 && [v6 length] >= 0x33)
    {
      truncatedDescription = [v6 truncatedDescription];
    }

    else
    {
      truncatedDescription = [v6 description];
    }

    v9 = truncatedDescription;
  }

  return v9;
}

+ (id)descriptionForArray:(id)array options:(unint64_t)options level:(int64_t)level
{
  arrayCopy = array;
  v9 = objc_alloc_init(MEMORY[0x1E696AD60]);
  objc_msgSend(v9, "appendString:", @"(");
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1A7CB78E8;
  v15[3] = &unk_1E77E2AE8;
  optionsCopy = options;
  v10 = v9;
  v16 = v10;
  levelCopy = level;
  selfCopy = self;
  v11 = arrayCopy;
  v17 = v11;
  [v11 enumerateObjectsUsingBlock:v15];
  if ((options & 0x10) != 0 && level >= 1)
  {
    do
    {
      [v10 appendString:@"  "];
      --level;
    }

    while (level);
  }

  [v10 appendString:@""]);
  v12 = v17;
  v13 = v10;

  return v10;
}

+ (id)descriptionForDictionary:(id)dictionary options:(unint64_t)options level:(int64_t)level
{
  v27 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v9 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v9 appendString:@"{\n"];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = dictionaryCopy;
  v20 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v20)
  {
    v19 = *v23;
    v10 = level + 1;
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
        levelCopy = level;
        if ((level & 0x8000000000000000) == 0)
        {
          do
          {
            [v9 appendString:@"  "];
            --v13;
          }

          while (v13);
        }

        v15 = [self descriptionForObject:v12 options:options level:v10];
        v16 = [obj objectForKey:v12];
        v17 = [self descriptionForObject:v16 options:options level:v10];
        [v9 appendFormat:@"%@ : %@\n", v15, v17];

        level = levelCopy;
      }

      v20 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v20);
  }

  if (level >= 1)
  {
    do
    {
      [v9 appendString:@"  "];
      --level;
    }

    while (level);
  }

  [v9 appendString:@"}"];

  return v9;
}

+ (id)descriptionForObject:(id)object options:(unint64_t)options level:(int64_t)level
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [self descriptionForString:objectCopy options:options];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [self descriptionForData:objectCopy options:options];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [self descriptionForArray:objectCopy options:options level:level];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [self descriptionForDictionary:objectCopy options:options level:level];
        }

        else
        {
          [objectCopy description];
        }
        v9 = ;
      }
    }
  }

  v10 = v9;

  return v10;
}

@end