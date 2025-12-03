@interface FSTaskOption
+ (id)option:(id)option value:(id)value;
+ (id)optionWithoutValue:(id)value;
- (BOOL)isEqual:(id)equal;
- (FSTaskOption)initWithCoder:(id)coder;
- (FSTaskOption)initWithOption:(id)option value:(id)value hasValue:(BOOL)hasValue;
- (id)originalArgv;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FSTaskOption

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"This object may only be encoded by an NSXPCCoder." userInfo:0];
    objc_exception_throw(v4);
  }

  [coderCopy encodeBool:self->_hasValue forKey:@"FSTaskOption.hasValue"];
  [coderCopy encodeObject:self->_option forKey:@"FSTaskOption.opt"];
  [coderCopy encodeObject:self->_optionValue forKey:@"FSTaskOption.val"];
}

- (FSTaskOption)initWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"This object may only be decoded by an NSXPCCoder." userInfo:0];
    objc_exception_throw(v9);
  }

  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FSTaskOption.opt"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FSTaskOption.val"];
  v7 = -[FSTaskOption initWithOption:value:hasValue:](self, "initWithOption:value:hasValue:", v5, v6, [coderCopy decodeBoolForKey:@"FSTaskOption.hasValue"]);

  return v7;
}

- (FSTaskOption)initWithOption:(id)option value:(id)value hasValue:(BOOL)hasValue
{
  optionCopy = option;
  valueCopy = value;
  v17.receiver = self;
  v17.super_class = FSTaskOption;
  v10 = [(FSTaskOption *)&v17 init];
  if (!v10)
  {
    goto LABEL_10;
  }

  if (![optionCopy hasPrefix:@"-"])
  {
    v12 = optionCopy;
LABEL_9:
    v10->_hasValue = hasValue;
    option = v10->_option;
    v10->_option = v12;
    v15 = v12;

    objc_storeStrong(&v10->_optionValue, value);
LABEL_10:
    v13 = v10;
    goto LABEL_11;
  }

  if ([optionCopy hasPrefix:@"--"])
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  v12 = [optionCopy substringFromIndex:v11];
  if ([(NSString *)v12 length])
  {
    goto LABEL_9;
  }

  v13 = 0;
LABEL_11:

  return v13;
}

+ (id)option:(id)option value:(id)value
{
  valueCopy = value;
  optionCopy = option;
  v8 = [[self alloc] initWithOption:optionCopy value:valueCopy hasValue:1];

  return v8;
}

+ (id)optionWithoutValue:(id)value
{
  valueCopy = value;
  v5 = [[self alloc] initWithOption:valueCopy value:&stru_285DEFA28 hasValue:0];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v11 = 1;
    goto LABEL_22;
  }

  if (!equalCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v11 = 0;
    goto LABEL_22;
  }

  v6 = v5;
  option = [(FSTaskOption *)self option];
  if (option)
  {
    option2 = [(FSTaskOption *)self option];
    option3 = [(FSTaskOption *)v6 option];
    v10 = [option2 isEqual:option3];
  }

  else
  {
    v10 = 0;
  }

  optionValue = [(FSTaskOption *)self optionValue];
  if (optionValue && ([(FSTaskOption *)v6 optionValue], (v13 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v14 = 1;
  }

  else
  {
    optionValue2 = [(FSTaskOption *)self optionValue];
    if (optionValue2)
    {
      v14 = 0;
    }

    else
    {
      optionValue3 = [(FSTaskOption *)v6 optionValue];
      v14 = optionValue3 == 0;
    }

    if (!optionValue)
    {
      goto LABEL_18;
    }

    v13 = 0;
  }

LABEL_18:
  optionValue4 = [(FSTaskOption *)self optionValue];
  if (optionValue4)
  {
    optionValue5 = [(FSTaskOption *)self optionValue];
    optionValue6 = [(FSTaskOption *)v6 optionValue];
    v20 = [optionValue5 isEqual:optionValue6];
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