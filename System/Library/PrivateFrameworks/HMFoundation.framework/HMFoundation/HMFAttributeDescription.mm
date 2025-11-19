@interface HMFAttributeDescription
+ (id)shortDescription;
- (BOOL)isEqual:(id)a3;
- (HMFAttributeDescription)init;
- (HMFAttributeDescription)initWithName:(id)a3 value:(id)a4 options:(unint64_t)a5 formatter:(id)a6;
- (NSString)description;
- (NSString)privateDescription;
- (NSString)shortDescription;
- (unint64_t)hash;
@end

@implementation HMFAttributeDescription

- (NSString)privateDescription
{
  v3 = [(HMFAttributeDescription *)self options]| 2;

  return HMFAttributeDescriptionDescriptionWithOptions(self, v3);
}

- (NSString)description
{
  v3 = [(HMFAttributeDescription *)self options];

  return HMFAttributeDescriptionDescriptionWithOptions(self, v3);
}

- (HMFAttributeDescription)init
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

- (HMFAttributeDescription)initWithName:(id)a3 value:(id)a4 options:(unint64_t)a5 formatter:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if ([v10 length])
  {
    v18.receiver = self;
    v18.super_class = HMFAttributeDescription;
    v13 = [(HMFAttributeDescription *)&v18 init];
    if (v13)
    {
      v14 = [v10 capitalizedString];
      name = v13->_name;
      v13->_name = v14;

      objc_storeStrong(&v13->_value, a4);
      v13->_options = a5;
      objc_storeStrong(&v13->_formatter, a6);
    }

    self = v13;
    v16 = self;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (unint64_t)hash
{
  v2 = [(HMFAttributeDescription *)self name];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v16 = 1;
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
    if (!v6)
    {
      goto LABEL_10;
    }

    v7 = [(HMFAttributeDescription *)self name];
    v8 = [(HMFAttributeDescription *)v6 name];
    v9 = [v7 isEqualToString:v8];

    if (!v9)
    {
      goto LABEL_10;
    }

    v10 = [(HMFAttributeDescription *)self value];
    v11 = [(HMFAttributeDescription *)v6 value];
    v12 = [v10 isEqual:v11];

    if (v12)
    {
      goto LABEL_10;
    }

    v13 = [(HMFAttributeDescription *)self options];
    if (v13 == [(HMFAttributeDescription *)v6 options])
    {
      v14 = [(HMFAttributeDescription *)self formatter];
      v15 = [(HMFAttributeDescription *)v6 formatter];
      v16 = HMFEqualObjects(v14, v15);
    }

    else
    {
LABEL_10:
      v16 = 0;
    }
  }

  return v16;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (NSString)shortDescription
{
  v3 = [(HMFAttributeDescription *)self options]| 1;

  return HMFAttributeDescriptionDescriptionWithOptions(self, v3);
}

@end