@interface COKeyPath
+ (id)allowedCharacterSet;
+ (id)createWithString:(id)string;
+ (id)predicateWithComponents:(id)components;
- (BOOL)isEqual:(id)equal;
- (COKeyPath)initWithComponents:(id)components;
- (id)description;
- (unint64_t)hash;
@end

@implementation COKeyPath

- (COKeyPath)initWithComponents:(id)components
{
  componentsCopy = components;
  v22.receiver = self;
  v22.super_class = COKeyPath;
  v6 = [(COKeyPath *)&v22 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_10;
  }

  v21 = v6;
  string = [MEMORY[0x277CCAB68] string];
  if (![componentsCopy count])
  {
LABEL_9:
    v7 = v21;
    absoluteString = v21->_absoluteString;
    v21->_absoluteString = string;
    v16 = string;

    objc_storeStrong(&v21->_components, components);
LABEL_10:
    v17 = v7;
    goto LABEL_11;
  }

  v9 = 0;
  while (1)
  {
    v10 = [componentsCopy objectAtIndex:v9];
    v11 = +[COKeyPath allowedCharacterSet];
    invertedSet = [v11 invertedSet];

    v13 = [v10 rangeOfCharacterFromSet:invertedSet];
    if (v13 != 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (v9)
    {
      v14 = @".%@";
    }

    else
    {
      v14 = @"%@";
    }

    [(NSString *)string appendFormat:v14, v10];

    if (++v9 >= [componentsCopy count])
    {
      goto LABEL_9;
    }
  }

  v19 = v13;
  v20 = COLogForCategory(4);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    [(COKeyPath *)v10 initWithComponents:v19, v20];
  }

  v17 = 0;
  v7 = v21;
LABEL_11:

  return v17;
}

+ (id)createWithString:(id)string
{
  stringCopy = string;
  v4 = objc_alloc_init(COKeyPath);
  [(COKeyPath *)v4 setAbsoluteString:stringCopy];
  v5 = [stringCopy componentsSeparatedByString:@"."];

  [(COKeyPath *)v4 setComponents:v5];

  return v4;
}

+ (id)allowedCharacterSet
{
  if (allowedCharacterSet_onceToken != -1)
  {
    +[COKeyPath allowedCharacterSet];
  }

  v3 = allowedCharacterSet_allowedCharacterSet;

  return v3;
}

void __32__COKeyPath_allowedCharacterSet__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCAB50]);
  v1 = [MEMORY[0x277CCA900] uppercaseLetterCharacterSet];
  [v0 formUnionWithCharacterSet:v1];

  v2 = [MEMORY[0x277CCA900] lowercaseLetterCharacterSet];
  [v0 formUnionWithCharacterSet:v2];

  v3 = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
  [v0 formUnionWithCharacterSet:v3];

  [v0 addCharactersInString:@"_"];
  [v0 addCharactersInString:@"-"];
  v4 = allowedCharacterSet_allowedCharacterSet;
  allowedCharacterSet_allowedCharacterSet = v0;
}

+ (id)predicateWithComponents:(id)components
{
  v19 = *MEMORY[0x277D85DE8];
  componentsCopy = components;
  array = [MEMORY[0x277CBEB18] array];
  if ([componentsCopy count])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = componentsCopy;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF contains %@", *(*(&v14 + 1) + 8 * i)];
          [array addObject:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    v11 = [objc_alloc(MEMORY[0x277CCA920]) initWithType:1 subpredicates:array];
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else if (objc_opt_respondsToSelector())
  {
    absoluteString = self->_absoluteString;
    absoluteString = [(COKeyPath *)equalCopy absoluteString];
    v7 = [(NSString *)absoluteString isEqualToString:absoluteString];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  absoluteString = [(COKeyPath *)self absoluteString];
  v3 = [absoluteString hash];

  return v3;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  absoluteString = [(COKeyPath *)self absoluteString];
  v4 = [v2 stringWithFormat:@"%@", absoluteString];

  return v4;
}

- (void)initWithComponents:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v6 = *MEMORY[0x277D85DE8];
  v5[0] = 67109120;
  v5[1] = [a1 characterAtIndex:a2];
  _os_log_error_impl(&dword_244328000, a3, OS_LOG_TYPE_ERROR, "COKeyPath components contains an invalid character '%c'", v5, 8u);
  v4 = *MEMORY[0x277D85DE8];
}

@end