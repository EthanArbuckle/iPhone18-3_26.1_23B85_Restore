@interface DMFScheduleOSUpdateResultObject
- (DMFScheduleOSUpdateResultObject)initWithAction:(unint64_t)action productKey:(id)key error:(id)error;
- (DMFScheduleOSUpdateResultObject)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFScheduleOSUpdateResultObject

- (DMFScheduleOSUpdateResultObject)initWithAction:(unint64_t)action productKey:(id)key error:(id)error
{
  keyCopy = key;
  errorCopy = error;
  v17.receiver = self;
  v17.super_class = DMFScheduleOSUpdateResultObject;
  v10 = [(CATTaskResultObject *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_action = action;
    v12 = [keyCopy copy];
    productKey = v11->_productKey;
    v11->_productKey = v12;

    v14 = [errorCopy copy];
    error = v11->_error;
    v11->_error = v14;
  }

  return v11;
}

- (DMFScheduleOSUpdateResultObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = DMFScheduleOSUpdateResultObject;
  v5 = [(CATTaskResultObject *)&v14 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"action"];
    v5->_action = [v6 unsignedIntegerValue];

    v7 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"productKey"];
    productKey = v5->_productKey;
    v5->_productKey = v8;

    v10 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"error"];
    error = v5->_error;
    v5->_error = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = DMFScheduleOSUpdateResultObject;
  coderCopy = coder;
  [(CATTaskResultObject *)&v8 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[DMFScheduleOSUpdateResultObject action](self, "action", v8.receiver, v8.super_class)}];
  [coderCopy encodeObject:v5 forKey:@"action"];

  productKey = [(DMFScheduleOSUpdateResultObject *)self productKey];
  [coderCopy encodeObject:productKey forKey:@"productKey"];

  error = [(DMFScheduleOSUpdateResultObject *)self error];
  [coderCopy encodeObject:error forKey:@"error"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@:%p {\n", objc_opt_class(), self];
  v4 = [DMFScheduleOSUpdateRequest _descriptionForAction:[(DMFScheduleOSUpdateResultObject *)self action]];
  [v3 appendFormat:@"\tAction      : %@\n", v4];

  productKey = [(DMFScheduleOSUpdateResultObject *)self productKey];
  v6 = productKey;
  if (productKey)
  {
    v7 = productKey;
  }

  else
  {
    v7 = @"None";
  }

  [v3 appendFormat:@"\tProduct Key : %@\n", v7];

  error = [(DMFScheduleOSUpdateResultObject *)self error];
  v9 = error;
  if (error)
  {
    v10 = error;
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