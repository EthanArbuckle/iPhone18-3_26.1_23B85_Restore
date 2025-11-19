@interface HMFKey
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToData:(id)a3;
- (HMFKey)init;
- (HMFKey)initWithCoder:(id)a3;
- (HMFKey)initWithType:(id)a3 size:(unint64_t)a4 data:(id)a5;
- (id)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMFKey

- (HMFKey)init
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

- (HMFKey)initWithType:(id)a3 size:(unint64_t)a4 data:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (!v8 || (v10 = v9, ![v8 length]))
  {
    _HMFPreconditionFailure(@"type && [type length] > 0");
  }

  if (!v10)
  {
    _HMFPreconditionFailure(@"data");
  }

  v17.receiver = self;
  v17.super_class = HMFKey;
  v11 = [(HMFKey *)&v17 init];
  if (v11)
  {
    v12 = [v8 copy];
    type = v11->_type;
    v11->_type = v12;

    v14 = [MEMORY[0x277CBEA90] _newZeroingDataWithBytes:objc_msgSend(v10 length:{"bytes"), objc_msgSend(v10, "length")}];
    data = v11->_data;
    v11->_data = v14;

    if (!a4)
    {
      a4 = 8 * [v10 length];
    }

    v11->_size = a4;
  }

  return v11;
}

- (unint64_t)hash
{
  v2 = [(HMFKey *)self data];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v13 = 1;
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
    if (v6)
    {
      v8 = [(HMFKey *)v6 type];
      v9 = [(HMFKey *)self type];
      if ([v8 isEqualToString:v9] && (v10 = -[HMFKey size](v7, "size"), v10 == -[HMFKey size](self, "size")))
      {
        v11 = [(HMFKey *)v7 data];
        v12 = [(HMFKey *)self data];
        v13 = [v11 isEqual:v12];
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (BOOL)isEqualToData:(id)a3
{
  v4 = a3;
  v5 = [(HMFKey *)self data];
  v6 = HMFEqualObjects(v5, v4);

  return v6;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [objc_opt_class() shortDescription];
  v5 = [(HMFKey *)self type];
  v6 = [(HMFKey *)self size];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", v6];
  v8 = [v3 stringWithFormat:@"%@ type: %@ length: %@", v4, v5, v7];

  return v8;
}

- (HMFKey)initWithCoder:(id)a3
{
  v4 = a3;
  if ([v4 containsValueForKey:@"HMF.kt"])
  {
    v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMF.kt"];
  }

  else
  {
    v5 = @"Unknown";
  }

  if ([v4 containsValueForKey:@"HMF.ks"])
  {
    v6 = [v4 decodeIntegerForKey:@"HMF.ks"];
  }

  else
  {
    v6 = 0;
  }

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HAP.data"];
  v8 = [(HMFKey *)self initWithType:v5 size:v6 data:v7];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMFKey *)self type];
  [v4 encodeObject:v5 forKey:@"HMF.kt"];

  [v4 encodeInteger:-[HMFKey size](self forKey:{"size"), @"HMF.ks"}];
  v6 = [(HMFKey *)self data];
  [v4 encodeObject:v6 forKey:@"HAP.data"];
}

@end