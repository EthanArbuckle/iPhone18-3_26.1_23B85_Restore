@interface ICSearchUserInput
+ (id)emptyInput;
- (BOOL)isEqual:(id)equal;
- (ICSearchUserInput)initWithSearchString:(id)string tokens:(id)tokens keyboardLanguage:(id)language;
- (NSString)displayString;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)_configureEmptyInput;
@end

@implementation ICSearchUserInput

+ (id)emptyInput
{
  v2 = objc_alloc_init(ICSearchUserInput);
  [(ICSearchUserInput *)v2 _configureEmptyInput];

  return v2;
}

- (ICSearchUserInput)initWithSearchString:(id)string tokens:(id)tokens keyboardLanguage:(id)language
{
  stringCopy = string;
  tokensCopy = tokens;
  languageCopy = language;
  v17.receiver = self;
  v17.super_class = ICSearchUserInput;
  v12 = [(ICSearchUserInput *)&v17 init];
  if (v12)
  {
    if (tokensCopy)
    {
      if ([stringCopy length])
      {
        v13 = 0;
      }

      else
      {
        v13 = [tokensCopy count] == 0;
      }
    }

    else
    {
      v13 = 1;
    }

    v12->_isEmpty = v13;
    if (![(ICSearchUserInput *)v12 isEmpty])
    {
      objc_storeStrong(&v12->_searchString, string);
      v14 = [tokensCopy copy];
      tokens = v12->_tokens;
      v12->_tokens = v14;

      objc_storeStrong(&v12->_keyboardLanguage, language);
    }
  }

  return v12;
}

- (void)_configureEmptyInput
{
  self->_isEmpty = 1;
  searchString = self->_searchString;
  self->_searchString = 0;

  tokens = self->_tokens;
  self->_tokens = 0;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = ICDynamicCast();

  if (v5)
  {
    searchString = [(ICSearchUserInput *)self searchString];
    ic_trimmedString = [searchString ic_trimmedString];
    searchString2 = [v5 searchString];
    ic_trimmedString2 = [searchString2 ic_trimmedString];
    if ([ic_trimmedString isEqual:ic_trimmedString2])
    {
      tokens = [(ICSearchUserInput *)self tokens];
      tokens2 = [v5 tokens];
      v12 = [tokens isEqualToArray:tokens2];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  searchString = [(ICSearchUserInput *)self searchString];
  tokens = [(ICSearchUserInput *)self tokens];
  v8 = [v3 stringWithFormat:@"%@ - searchString: %@, tokens: %@", v5, searchString, tokens];

  return v8;
}

- (NSString)displayString
{
  searchString = [(ICSearchUserInput *)self searchString];
  ic_trimmedString = [searchString ic_trimmedString];

  if ([ic_trimmedString length])
  {
    title = ic_trimmedString;
  }

  else
  {
    tokens = [(ICSearchUserInput *)self tokens];
    v7 = [tokens count];

    if (v7 == 1)
    {
      tokens2 = [(ICSearchUserInput *)self tokens];
      firstObject = [tokens2 firstObject];
      title = [firstObject title];
    }

    else
    {
      title = 0;
    }
  }

  return title;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ICSearchUserInput allocWithZone:zone];
  searchString = [(ICSearchUserInput *)self searchString];
  v6 = [searchString copy];
  tokens = [(ICSearchUserInput *)self tokens];
  v8 = [tokens copy];
  keyboardLanguage = [(ICSearchUserInput *)self keyboardLanguage];
  v10 = [keyboardLanguage copy];
  v11 = [(ICSearchUserInput *)v4 initWithSearchString:v6 tokens:v8 keyboardLanguage:v10];

  return v11;
}

@end