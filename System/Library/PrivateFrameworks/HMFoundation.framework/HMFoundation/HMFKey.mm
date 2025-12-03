@interface HMFKey
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToData:(id)data;
- (HMFKey)init;
- (HMFKey)initWithCoder:(id)coder;
- (HMFKey)initWithType:(id)type size:(unint64_t)size data:(id)data;
- (id)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

- (HMFKey)initWithType:(id)type size:(unint64_t)size data:(id)data
{
  typeCopy = type;
  dataCopy = data;
  if (!typeCopy || (v10 = dataCopy, ![typeCopy length]))
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
    v12 = [typeCopy copy];
    type = v11->_type;
    v11->_type = v12;

    v14 = [MEMORY[0x277CBEA90] _newZeroingDataWithBytes:objc_msgSend(v10 length:{"bytes"), objc_msgSend(v10, "length")}];
    data = v11->_data;
    v11->_data = v14;

    if (!size)
    {
      size = 8 * [v10 length];
    }

    v11->_size = size;
  }

  return v11;
}

- (unint64_t)hash
{
  data = [(HMFKey *)self data];
  v3 = [data hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
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
    if (v6)
    {
      type = [(HMFKey *)v6 type];
      type2 = [(HMFKey *)self type];
      if ([type isEqualToString:type2] && (v10 = -[HMFKey size](v7, "size"), v10 == -[HMFKey size](self, "size")))
      {
        data = [(HMFKey *)v7 data];
        data2 = [(HMFKey *)self data];
        v13 = [data isEqual:data2];
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

- (BOOL)isEqualToData:(id)data
{
  dataCopy = data;
  data = [(HMFKey *)self data];
  v6 = HMFEqualObjects(data, dataCopy);

  return v6;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  shortDescription = [objc_opt_class() shortDescription];
  type = [(HMFKey *)self type];
  v6 = [(HMFKey *)self size];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", v6];
  v8 = [v3 stringWithFormat:@"%@ type: %@ length: %@", shortDescription, type, v7];

  return v8;
}

- (HMFKey)initWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy containsValueForKey:@"HMF.kt"])
  {
    v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMF.kt"];
  }

  else
  {
    v5 = @"Unknown";
  }

  if ([coderCopy containsValueForKey:@"HMF.ks"])
  {
    v6 = [coderCopy decodeIntegerForKey:@"HMF.ks"];
  }

  else
  {
    v6 = 0;
  }

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HAP.data"];
  v8 = [(HMFKey *)self initWithType:v5 size:v6 data:v7];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  type = [(HMFKey *)self type];
  [coderCopy encodeObject:type forKey:@"HMF.kt"];

  [coderCopy encodeInteger:-[HMFKey size](self forKey:{"size"), @"HMF.ks"}];
  data = [(HMFKey *)self data];
  [coderCopy encodeObject:data forKey:@"HAP.data"];
}

@end