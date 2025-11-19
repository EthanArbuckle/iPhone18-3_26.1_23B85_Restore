@interface ICSearchUserInput
+ (id)emptyInput;
- (BOOL)isEqual:(id)a3;
- (ICSearchUserInput)initWithSearchString:(id)a3 tokens:(id)a4 keyboardLanguage:(id)a5;
- (NSString)displayString;
- (id)copyWithZone:(_NSZone *)a3;
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

- (ICSearchUserInput)initWithSearchString:(id)a3 tokens:(id)a4 keyboardLanguage:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = ICSearchUserInput;
  v12 = [(ICSearchUserInput *)&v17 init];
  if (v12)
  {
    if (v10)
    {
      if ([v9 length])
      {
        v13 = 0;
      }

      else
      {
        v13 = [v10 count] == 0;
      }
    }

    else
    {
      v13 = 1;
    }

    v12->_isEmpty = v13;
    if (![(ICSearchUserInput *)v12 isEmpty])
    {
      objc_storeStrong(&v12->_searchString, a3);
      v14 = [v10 copy];
      tokens = v12->_tokens;
      v12->_tokens = v14;

      objc_storeStrong(&v12->_keyboardLanguage, a5);
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = ICDynamicCast();

  if (v5)
  {
    v6 = [(ICSearchUserInput *)self searchString];
    v7 = [v6 ic_trimmedString];
    v8 = [v5 searchString];
    v9 = [v8 ic_trimmedString];
    if ([v7 isEqual:v9])
    {
      v10 = [(ICSearchUserInput *)self tokens];
      v11 = [v5 tokens];
      v12 = [v10 isEqualToArray:v11];
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
  v6 = [(ICSearchUserInput *)self searchString];
  v7 = [(ICSearchUserInput *)self tokens];
  v8 = [v3 stringWithFormat:@"%@ - searchString: %@, tokens: %@", v5, v6, v7];

  return v8;
}

- (NSString)displayString
{
  v3 = [(ICSearchUserInput *)self searchString];
  v4 = [v3 ic_trimmedString];

  if ([v4 length])
  {
    v5 = v4;
  }

  else
  {
    v6 = [(ICSearchUserInput *)self tokens];
    v7 = [v6 count];

    if (v7 == 1)
    {
      v8 = [(ICSearchUserInput *)self tokens];
      v9 = [v8 firstObject];
      v5 = [v9 title];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [ICSearchUserInput allocWithZone:a3];
  v5 = [(ICSearchUserInput *)self searchString];
  v6 = [v5 copy];
  v7 = [(ICSearchUserInput *)self tokens];
  v8 = [v7 copy];
  v9 = [(ICSearchUserInput *)self keyboardLanguage];
  v10 = [v9 copy];
  v11 = [(ICSearchUserInput *)v4 initWithSearchString:v6 tokens:v8 keyboardLanguage:v10];

  return v11;
}

@end