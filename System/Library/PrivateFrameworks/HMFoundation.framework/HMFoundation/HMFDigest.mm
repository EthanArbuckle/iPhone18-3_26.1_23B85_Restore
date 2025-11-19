@interface HMFDigest
- (BOOL)isEqual:(id)a3;
- (HMFDigest)init;
- (HMFDigest)initWithAlgorithm:(int64_t)a3 value:(id)a4;
- (HMFDigest)initWithCoder:(id)a3;
- (NSString)propertyDescription;
- (int64_t)algorithm;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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

- (HMFDigest)initWithAlgorithm:(int64_t)a3 value:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = HMFDigest;
  v7 = [(HMFDigest *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_algorithm = a3;
    v9 = [v6 copy];
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

  v6 = [(HMFDigest *)self value];
  v7 = [v3 stringWithFormat:@", Algorithm = %@, Value = %@", v5, v6];

  return v7;
}

- (unint64_t)hash
{
  v2 = [(HMFDigest *)self value];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    v7 = v6;
    if (v6 && self->_algorithm == v6->_algorithm)
    {
      v8 = [(HMFDigest *)self value];
      v9 = [(HMFDigest *)v7 value];
      v10 = HMFEqualObjects(v8, v9);
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

- (HMFDigest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"HM.algorithm"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.value"];;

  v7 = [(HMFDigest *)self initWithAlgorithm:v5 value:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  algorithm = self->_algorithm;
  v5 = a3;
  [v5 encodeInteger:algorithm forKey:@"HM.algorithm"];
  v6 = [(HMFDigest *)self value];
  [v5 encodeObject:v6 forKey:@"HM.value;"];
}

@end