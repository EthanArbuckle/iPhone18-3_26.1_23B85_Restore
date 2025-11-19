@interface DMFScheduleOSUpdateResultObject
- (DMFScheduleOSUpdateResultObject)initWithAction:(unint64_t)a3 productKey:(id)a4 error:(id)a5;
- (DMFScheduleOSUpdateResultObject)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMFScheduleOSUpdateResultObject

- (DMFScheduleOSUpdateResultObject)initWithAction:(unint64_t)a3 productKey:(id)a4 error:(id)a5
{
  v8 = a4;
  v9 = a5;
  v17.receiver = self;
  v17.super_class = DMFScheduleOSUpdateResultObject;
  v10 = [(CATTaskResultObject *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_action = a3;
    v12 = [v8 copy];
    productKey = v11->_productKey;
    v11->_productKey = v12;

    v14 = [v9 copy];
    error = v11->_error;
    v11->_error = v14;
  }

  return v11;
}

- (DMFScheduleOSUpdateResultObject)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = DMFScheduleOSUpdateResultObject;
  v5 = [(CATTaskResultObject *)&v14 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"action"];
    v5->_action = [v6 unsignedIntegerValue];

    v7 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v8 = [v4 decodeObjectOfClasses:v7 forKey:@"productKey"];
    productKey = v5->_productKey;
    v5->_productKey = v8;

    v10 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"error"];
    error = v5->_error;
    v5->_error = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = DMFScheduleOSUpdateResultObject;
  v4 = a3;
  [(CATTaskResultObject *)&v8 encodeWithCoder:v4];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[DMFScheduleOSUpdateResultObject action](self, "action", v8.receiver, v8.super_class)}];
  [v4 encodeObject:v5 forKey:@"action"];

  v6 = [(DMFScheduleOSUpdateResultObject *)self productKey];
  [v4 encodeObject:v6 forKey:@"productKey"];

  v7 = [(DMFScheduleOSUpdateResultObject *)self error];
  [v4 encodeObject:v7 forKey:@"error"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@:%p {\n", objc_opt_class(), self];
  v4 = [DMFScheduleOSUpdateRequest _descriptionForAction:[(DMFScheduleOSUpdateResultObject *)self action]];
  [v3 appendFormat:@"\tAction      : %@\n", v4];

  v5 = [(DMFScheduleOSUpdateResultObject *)self productKey];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = @"None";
  }

  [v3 appendFormat:@"\tProduct Key : %@\n", v7];

  v8 = [(DMFScheduleOSUpdateResultObject *)self error];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = @"None";
  }

  [v3 appendFormat:@"\tError       : %@\n", v10];

  [v3 appendString:@"}>"];
  v11 = [v3 copy];

  return v11;
}

@end