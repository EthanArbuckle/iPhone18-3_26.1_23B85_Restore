@interface HMFDigest
- (BOOL)isEqual:(id)equal;
- (HMFDigest)init;
- (HMFDigest)initWithAlgorithm:(int64_t)algorithm value:(id)value;
- (HMFDigest)initWithCoder:(id)coder;
- (NSString)propertyDescription;
- (int64_t)algorithm;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMFDigest

- (HMFDigest)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (HMFDigest)initWithAlgorithm:(int64_t)algorithm value:(id)value
{
  valueCopy = value;
  v12.receiver = self;
  v12.super_class = HMFDigest;
  v7 = [(HMFDigest *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_algorithm = algorithm;
    v9 = [valueCopy copy];
    value = v8->_value;
    v8->_value = v9;
  }

  return v8;
}

- (NSString)propertyDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMFDigest *)self algorithm]- 2;
  if (v4 > 6)
  {
    v5 = @"Unknown";
  }

  else
  {
    v5 = off_2786E7EB0[v4];
  }

  value = [(HMFDigest *)self value];
  v7 = [v3 stringWithFormat:@", Algorithm = %@, Value = %@", v5, value];

  return v7;
}

- (unint64_t)hash
{
  value = [(HMFDigest *)self value];
  v3 = [value hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    v7 = v6;
    if (v6 && self->_algorithm == v6->_algorithm)
    {
      value = [(HMFDigest *)self value];
      value2 = [(HMFDigest *)v7 value];
      v10 = HMFEqualObjects(value, value2);
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (int64_t)algorithm
{
  algorithm = self->_algorithm;
  if (algorithm > 8)
  {
    return 0;
  }

  else
  {
    return qword_22AE82980[algorithm];
  }
}

- (HMFDigest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"HM.algorithm"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.value"];;

  v7 = [(HMFDigest *)self initWithAlgorithm:v5 value:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  algorithm = self->_algorithm;
  coderCopy = coder;
  [coderCopy encodeInteger:algorithm forKey:@"HM.algorithm"];
  value = [(HMFDigest *)self value];
  [coderCopy encodeObject:value forKey:@"HM.value;"];
}

@end