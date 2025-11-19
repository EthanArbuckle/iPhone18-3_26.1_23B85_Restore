@interface DMFScheduleOSUpdateRequest
+ (BOOL)_action:(unint64_t *)a3 fromString:(id)a4;
+ (id)_descriptionForAction:(unint64_t)a3;
- (DMFScheduleOSUpdateRequest)init;
- (DMFScheduleOSUpdateRequest)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMFScheduleOSUpdateRequest

+ (BOOL)_action:(unint64_t *)a3 fromString:(id)a4
{
  v4 = 0;
  if (a3 && a4)
  {
    v6 = [a4 lowercaseString];
    if ([v6 isEqualToString:@"download"])
    {
      v7 = 0;
    }

    else if ([v6 isEqualToString:@"install"])
    {
      v7 = 1;
    }

    else
    {
      if (![v6 isEqualToString:@"default"])
      {
        v4 = 0;
        goto LABEL_10;
      }

      v7 = 2;
    }

    *a3 = v7;
    v4 = 1;
LABEL_10:
  }

  return v4;
}

+ (id)_descriptionForAction:(unint64_t)a3
{
  if (a3 > 2)
  {
    return @"Invalid Action";
  }

  else
  {
    return off_1E8616C88[a3];
  }
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@:%p {\n", objc_opt_class(), self];
  v4 = [DMFScheduleOSUpdateRequest _descriptionForAction:[(DMFScheduleOSUpdateRequest *)self action]];
  [v3 appendFormat:@"\tAction          : %@\n", v4];

  v5 = [(DMFScheduleOSUpdateRequest *)self productKey];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = @"None";
  }

  [v3 appendFormat:@"\tProduct Key     : %@\n", v7];

  v8 = [(DMFScheduleOSUpdateRequest *)self productVersion];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = @"None";
  }

  [v3 appendFormat:@"\tProduct Version : %@\n", v10];

  v11 = [(DMFScheduleOSUpdateRequest *)self useDelay];
  v12 = @"NO";
  if (v11)
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

- (DMFScheduleOSUpdateRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = DMFScheduleOSUpdateRequest;
  v5 = [(CATTaskRequest *)&v15 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"productKey"];
    productKey = v5->_productKey;
    v5->_productKey = v7;

    v9 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"productVersion"];
    productVersion = v5->_productVersion;
    v5->_productVersion = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"action"];
    v5->_action = [v12 unsignedIntegerValue];

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"useDelay"];
    v5->_useDelay = [v13 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = DMFScheduleOSUpdateRequest;
  v4 = a3;
  [(CATTaskRequest *)&v9 encodeWithCoder:v4];
  v5 = [(DMFScheduleOSUpdateRequest *)self productKey:v9.receiver];
  [v4 encodeObject:v5 forKey:@"productKey"];

  v6 = [(DMFScheduleOSUpdateRequest *)self productVersion];
  [v4 encodeObject:v6 forKey:@"productVersion"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[DMFScheduleOSUpdateRequest action](self, "action")}];
  [v4 encodeObject:v7 forKey:@"action"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFScheduleOSUpdateRequest useDelay](self, "useDelay")}];
  [v4 encodeObject:v8 forKey:@"useDelay"];
}

@end