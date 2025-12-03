@interface DMFScheduleOSUpdateRequest
+ (BOOL)_action:(unint64_t *)_action fromString:(id)string;
+ (id)_descriptionForAction:(unint64_t)action;
- (DMFScheduleOSUpdateRequest)init;
- (DMFScheduleOSUpdateRequest)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFScheduleOSUpdateRequest

+ (BOOL)_action:(unint64_t *)_action fromString:(id)string
{
  v4 = 0;
  if (_action && string)
  {
    lowercaseString = [string lowercaseString];
    if ([lowercaseString isEqualToString:@"download"])
    {
      v7 = 0;
    }

    else if ([lowercaseString isEqualToString:@"install"])
    {
      v7 = 1;
    }

    else
    {
      if (![lowercaseString isEqualToString:@"default"])
      {
        v4 = 0;
        goto LABEL_10;
      }

      v7 = 2;
    }

    *_action = v7;
    v4 = 1;
LABEL_10:
  }

  return v4;
}

+ (id)_descriptionForAction:(unint64_t)action
{
  if (action > 2)
  {
    return @"Invalid Action";
  }

  else
  {
    return off_1E8616C88[action];
  }
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@:%p {\n", objc_opt_class(), self];
  v4 = [DMFScheduleOSUpdateRequest _descriptionForAction:[(DMFScheduleOSUpdateRequest *)self action]];
  [v3 appendFormat:@"\tAction          : %@\n", v4];

  productKey = [(DMFScheduleOSUpdateRequest *)self productKey];
  v6 = productKey;
  if (productKey)
  {
    v7 = productKey;
  }

  else
  {
    v7 = @"None";
  }

  [v3 appendFormat:@"\tProduct Key     : %@\n", v7];

  productVersion = [(DMFScheduleOSUpdateRequest *)self productVersion];
  v9 = productVersion;
  if (productVersion)
  {
    v10 = productVersion;
  }

  else
  {
    v10 = @"None";
  }

  [v3 appendFormat:@"\tProduct Version : %@\n", v10];

  useDelay = [(DMFScheduleOSUpdateRequest *)self useDelay];
  v12 = @"NO";
  if (useDelay)
  {
    v12 = @"YES";
  }

  [v3 appendFormat:@"\tUse Delay       : %@\n", v12];
  [v3 appendString:@"}>"];
  v13 = [v3 copy];

  return v13;
}

- (DMFScheduleOSUpdateRequest)init
{
  v3.receiver = self;
  v3.super_class = DMFScheduleOSUpdateRequest;
  result = [(CATTaskRequest *)&v3 init];
  if (result)
  {
    result->_action = 2;
    result->_useDelay = 0;
  }

  return result;
}

- (DMFScheduleOSUpdateRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = DMFScheduleOSUpdateRequest;
  v5 = [(CATTaskRequest *)&v15 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"productKey"];
    productKey = v5->_productKey;
    v5->_productKey = v7;

    v9 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"productVersion"];
    productVersion = v5->_productVersion;
    v5->_productVersion = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"action"];
    v5->_action = [v12 unsignedIntegerValue];

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"useDelay"];
    v5->_useDelay = [v13 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = DMFScheduleOSUpdateRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v9 encodeWithCoder:coderCopy];
  v5 = [(DMFScheduleOSUpdateRequest *)self productKey:v9.receiver];
  [coderCopy encodeObject:v5 forKey:@"productKey"];

  productVersion = [(DMFScheduleOSUpdateRequest *)self productVersion];
  [coderCopy encodeObject:productVersion forKey:@"productVersion"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[DMFScheduleOSUpdateRequest action](self, "action")}];
  [coderCopy encodeObject:v7 forKey:@"action"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFScheduleOSUpdateRequest useDelay](self, "useDelay")}];
  [coderCopy encodeObject:v8 forKey:@"useDelay"];
}

@end