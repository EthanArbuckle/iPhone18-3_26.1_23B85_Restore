@interface DMFFetchOSUpdateStatusResultObject
+ (id)descriptionForStatus:(unint64_t)status;
- (DMFFetchOSUpdateStatusResultObject)initWithCoder:(id)coder;
- (DMFFetchOSUpdateStatusResultObject)initWithProductKey:(id)key status:(unint64_t)status downloadPercentComplete:(double)complete;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFFetchOSUpdateStatusResultObject

- (DMFFetchOSUpdateStatusResultObject)initWithProductKey:(id)key status:(unint64_t)status downloadPercentComplete:(double)complete
{
  keyCopy = key;
  v13.receiver = self;
  v13.super_class = DMFFetchOSUpdateStatusResultObject;
  v9 = [(CATTaskResultObject *)&v13 init];
  if (v9)
  {
    v10 = [keyCopy copy];
    productKey = v9->_productKey;
    v9->_productKey = v10;

    v9->_status = status;
    v9->_downloadPercentComplete = complete;
  }

  return v9;
}

- (DMFFetchOSUpdateStatusResultObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = DMFFetchOSUpdateStatusResultObject;
  v5 = [(CATTaskResultObject *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"productKey"];
    productKey = v5->_productKey;
    v5->_productKey = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"status"];
    v5->_status = [v9 unsignedIntegerValue];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"downloadPercentComplete"];
    [v10 doubleValue];
    v5->_downloadPercentComplete = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = DMFFetchOSUpdateStatusResultObject;
  coderCopy = coder;
  [(CATTaskResultObject *)&v9 encodeWithCoder:coderCopy];
  v5 = [(DMFFetchOSUpdateStatusResultObject *)self productKey:v9.receiver];
  [coderCopy encodeObject:v5 forKey:@"productKey"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[DMFFetchOSUpdateStatusResultObject status](self, "status")}];
  [coderCopy encodeObject:v6 forKey:@"status"];

  v7 = MEMORY[0x1E696AD98];
  [(DMFFetchOSUpdateStatusResultObject *)self downloadPercentComplete];
  v8 = [v7 numberWithDouble:?];
  [coderCopy encodeObject:v8 forKey:@"downloadPercentComplete"];
}

+ (id)descriptionForStatus:(unint64_t)status
{
  v3 = @"idle";
  if (status == 1)
  {
    v3 = @"downloading";
  }

  if (status == 2)
  {
    return @"installing";
  }

  else
  {
    return v3;
  }
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@:%p {\n", objc_opt_class(), self];
  productKey = [(DMFFetchOSUpdateStatusResultObject *)self productKey];
  v5 = productKey;
  v6 = @"None";
  if (productKey)
  {
    v6 = productKey;
  }

  [v3 appendFormat:@"\tProduct Key               : “%@”\n", v6];

  v7 = [objc_opt_class() descriptionForStatus:{-[DMFFetchOSUpdateStatusResultObject status](self, "status")}];
  [v3 appendFormat:@"\tStatus                    : %@\n", v7];

  [(DMFFetchOSUpdateStatusResultObject *)self downloadPercentComplete];
  [v3 appendFormat:@"\tDownload Percent Complete : %.0f%%\n", v8 * 100.0];
  [v3 appendString:@"}>"];
  v9 = [v3 copy];

  return v9;
}

@end