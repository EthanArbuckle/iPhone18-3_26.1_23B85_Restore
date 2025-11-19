@interface FSTaskOption
+ (id)option:(id)a3 value:(id)a4;
+ (id)optionWithoutValue:(id)a3;
- (BOOL)isEqual:(id)a3;
- (FSTaskOption)initWithCoder:(id)a3;
- (FSTaskOption)initWithOption:(id)a3 value:(id)a4 hasValue:(BOOL)a5;
- (id)originalArgv;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FSTaskOption

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"This object may only be encoded by an NSXPCCoder." userInfo:0];
    objc_exception_throw(v4);
  }

  [v5 encodeBool:self->_hasValue forKey:@"FSTaskOption.hasValue"];
  [v5 encodeObject:self->_option forKey:@"FSTaskOption.opt"];
  [v5 encodeObject:self->_optionValue forKey:@"FSTaskOption.val"];
}

- (FSTaskOption)initWithCoder:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"This object may only be decoded by an NSXPCCoder." userInfo:0];
    objc_exception_throw(v9);
  }

  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FSTaskOption.opt"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FSTaskOption.val"];
  v7 = -[FSTaskOption initWithOption:value:hasValue:](self, "initWithOption:value:hasValue:", v5, v6, [v4 decodeBoolForKey:@"FSTaskOption.hasValue"]);

  return v7;
}

- (FSTaskOption)initWithOption:(id)a3 value:(id)a4 hasValue:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v17.receiver = self;
  v17.super_class = FSTaskOption;
  v10 = [(FSTaskOption *)&v17 init];
  if (!v10)
  {
    goto LABEL_10;
  }

  if (![v8 hasPrefix:@"-"])
  {
    v12 = v8;
LABEL_9:
    v10->_hasValue = a5;
    option = v10->_option;
    v10->_option = v12;
    v15 = v12;

    objc_storeStrong(&v10->_optionValue, a4);
LABEL_10:
    v13 = v10;
    goto LABEL_11;
  }

  if ([v8 hasPrefix:@"--"])
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  v12 = [v8 substringFromIndex:v11];
  if ([(NSString *)v12 length])
  {
    goto LABEL_9;
  }

  v13 = 0;
LABEL_11:

  return v13;
}

+ (id)option:(id)a3 value:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithOption:v7 value:v6 hasValue:1];

  return v8;
}

+ (id)optionWithoutValue:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithOption:v4 value:&stru_285DEFA28 hasValue:0];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v11 = 1;
    goto LABEL_22;
  }

  if (!v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v11 = 0;
    goto LABEL_22;
  }

  v6 = v5;
  v7 = [(FSTaskOption *)self option];
  if (v7)
  {
    v8 = [(FSTaskOption *)self option];
    v9 = [(FSTaskOption *)v6 option];
    v10 = [v8 isEqual:v9];
  }

  else
  {
    v10 = 0;
  }

  v12 = [(FSTaskOption *)self optionValue];
  if (v12 && ([(FSTaskOption *)v6 optionValue], (v13 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v14 = 1;
  }

  else
  {
    v15 = [(FSTaskOption *)self optionValue];
    if (v15)
    {
      v14 = 0;
    }

    else
    {
      v16 = [(FSTaskOption *)v6 optionValue];
      v14 = v16 == 0;
    }

    if (!v12)
    {
      goto LABEL_18;
    }

    v13 = 0;
  }

LABEL_18:
  v17 = [(FSTaskOption *)self optionValue];
  if (v17)
  {
    v18 = [(FSTaskOption *)self optionValue];
    v19 = [(FSTaskOption *)v6 optionValue];
    v20 = [v18 isEqual:v19];
  }

  else
  {
    v20 = 1;
  }

  v11 = v10 & v14 & v20;
LABEL_22:

  return v11;
}

- (id)originalArgv
{
  v16 = *MEMORY[0x277D85DE8];
  if ([(NSString *)self->_option length])
  {
    if ([(NSString *)self->_option length]<= 1)
    {
      v3 = @"-";
    }

    else
    {
      v3 = @"--";
    }

    v4 = [(__CFString *)v3 stringByAppendingString:self->_option];
    v5 = v4;
    if (self->_hasValue)
    {
      optionValue = self->_optionValue;
      v14 = v4;
      v15 = optionValue;
      v7 = MEMORY[0x277CBEA60];
      v8 = &v14;
      v9 = 2;
    }

    else
    {
      v13 = v4;
      v7 = MEMORY[0x277CBEA60];
      v8 = &v13;
      v9 = 1;
    }

    v10 = [v7 arrayWithObjects:v8 count:{v9, v13, v14, v15}];
  }

  else
  {
    v10 = MEMORY[0x277CBEBF8];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end