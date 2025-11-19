@interface DMFFetchOSUpdateStatusResultObject
+ (id)descriptionForStatus:(unint64_t)a3;
- (DMFFetchOSUpdateStatusResultObject)initWithCoder:(id)a3;
- (DMFFetchOSUpdateStatusResultObject)initWithProductKey:(id)a3 status:(unint64_t)a4 downloadPercentComplete:(double)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMFFetchOSUpdateStatusResultObject

- (DMFFetchOSUpdateStatusResultObject)initWithProductKey:(id)a3 status:(unint64_t)a4 downloadPercentComplete:(double)a5
{
  v8 = a3;
  v13.receiver = self;
  v13.super_class = DMFFetchOSUpdateStatusResultObject;
  v9 = [(CATTaskResultObject *)&v13 init];
  if (v9)
  {
    v10 = [v8 copy];
    productKey = v9->_productKey;
    v9->_productKey = v10;

    v9->_status = a4;
    v9->_downloadPercentComplete = a5;
  }

  return v9;
}

- (DMFFetchOSUpdateStatusResultObject)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = DMFFetchOSUpdateStatusResultObject;
  v5 = [(CATTaskResultObject *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"productKey"];
    productKey = v5->_productKey;
    v5->_productKey = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"status"];
    v5->_status = [v9 unsignedIntegerValue];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"downloadPercentComplete"];
    [v10 doubleValue];
    v5->_downloadPercentComplete = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = DMFFetchOSUpdateStatusResultObject;
  v4 = a3;
  [(CATTaskResultObject *)&v9 encodeWithCoder:v4];
  v5 = [(DMFFetchOSUpdateStatusResultObject *)self productKey:v9.receiver];
  [v4 encodeObject:v5 forKey:@"productKey"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[DMFFetchOSUpdateStatusResultObject status](self, "status")}];
  [v4 encodeObject:v6 forKey:@"status"];

  v7 = MEMORY[0x1E696AD98];
  [(DMFFetchOSUpdateStatusResultObject *)self downloadPercentComplete];
  v8 = [v7 numberWithDouble:?];
  [v4 encodeObject:v8 forKey:@"downloadPercentComplete"];
}

+ (id)descriptionForStatus:(unint64_t)a3
{
  v3 = @"idle";
  if (a3 == 1)
  {
    v3 = @"downloading";
  }

  if (a3 == 2)
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
  v4 = [(DMFFetchOSUpdateStatusResultObject *)self productKey];
  v5 = v4;
  v6 = @"None";
  if (v4)
  {
    v6 = v4;
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