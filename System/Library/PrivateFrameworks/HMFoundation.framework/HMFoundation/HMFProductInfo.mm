@interface HMFProductInfo
+ (id)decodeSoftwareVersionWithCoder:(id)a3;
+ (id)productInfo;
+ (id)shortDescription;
+ (void)encodeSoftwareVersion:(id)a3 withCoder:(id)a4;
- (BOOL)isEqual:(id)a3;
- (HMFProductInfo)init;
- (HMFProductInfo)initWithCoder:(id)a3;
- (HMFProductInfo)initWithPlatform:(int64_t)a3 class:(int64_t)a4 variant:(int64_t)a5 softwareVersion:(id)a6 color:(int64_t)a7 modelIdentifier:(id)a8;
- (id)attributeDescriptions;
- (id)shortDescription;
- (int64_t)productClass;
- (int64_t)productPlatform;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMFProductInfo

+ (id)productInfo
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__HMFProductInfo_productInfo__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (qword_280AFC280 != -1)
  {
    dispatch_once(&qword_280AFC280, block);
  }

  v2 = _MergedGlobals_2;

  return v2;
}

void __29__HMFProductInfo_productInfo__block_invoke(uint64_t a1)
{
  v11 = +[HMFSystemInfo systemInfo];
  v2 = objc_alloc(*(a1 + 32));
  v3 = [v11 productPlatform];
  v4 = [v11 productClass];
  v5 = [v11 productVariant];
  v6 = [v11 softwareVersion];
  v7 = [v11 productColor];
  v8 = [v11 modelIdentifier];
  v9 = [v2 initWithPlatform:v3 class:v4 variant:v5 softwareVersion:v6 color:v7 modelIdentifier:v8];
  v10 = _MergedGlobals_2;
  _MergedGlobals_2 = v9;
}

- (int64_t)productClass
{
  if (self->_productClass >= 0xCuLL)
  {
    return 0;
  }

  else
  {
    return self->_productClass;
  }
}

- (int64_t)productPlatform
{
  if (self->_productPlatform >= 6uLL)
  {
    return 0;
  }

  else
  {
    return self->_productPlatform;
  }
}

- (HMFProductInfo)init
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

- (HMFProductInfo)initWithPlatform:(int64_t)a3 class:(int64_t)a4 variant:(int64_t)a5 softwareVersion:(id)a6 color:(int64_t)a7 modelIdentifier:(id)a8
{
  v15 = a6;
  v16 = a8;
  v20.receiver = self;
  v20.super_class = HMFProductInfo;
  v17 = [(HMFProductInfo *)&v20 init];
  v18 = v17;
  if (v17)
  {
    v17->_productPlatform = a3;
    v17->_productClass = a4;
    v17->_productVariant = a5;
    objc_storeStrong(&v17->_softwareVersion, a6);
    v18->_productColor = a7;
    objc_storeStrong(&v18->_modelIdentifier, a8);
  }

  return v18;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (id)attributeDescriptions
{
  v27[6] = *MEMORY[0x277D85DE8];
  v3 = [HMFAttributeDescription alloc];
  v4 = [(HMFProductInfo *)self productPlatform]- 1;
  if (v4 > 4)
  {
    v5 = @"Unknown";
  }

  else
  {
    v5 = off_2786E7BD8[v4];
  }

  v26 = [(HMFAttributeDescription *)v3 initWithName:@"Platform" value:v5];
  v27[0] = v26;
  v6 = [HMFAttributeDescription alloc];
  v25 = HMFProductClassToString([(HMFProductInfo *)self productClass]);
  v7 = [(HMFAttributeDescription *)v6 initWithName:@"Product Class" value:?];
  v27[1] = v7;
  v8 = [HMFAttributeDescription alloc];
  v9 = [(HMFProductInfo *)self productVariant]- 1;
  if (v9 > 2)
  {
    v10 = @"Customer";
  }

  else
  {
    v10 = off_2786E7C00[v9];
  }

  v11 = [(HMFAttributeDescription *)v8 initWithName:@"Product Variant" value:v10];
  v27[2] = v11;
  v12 = [HMFAttributeDescription alloc];
  v13 = [(HMFProductInfo *)self softwareVersion];
  v14 = [v13 versionString];
  v15 = [(HMFAttributeDescription *)v12 initWithName:@"Software Version" value:v14];
  v27[3] = v15;
  v16 = [HMFAttributeDescription alloc];
  v17 = HMFProductColorToString([(HMFProductInfo *)self productColor]);
  v18 = [(HMFAttributeDescription *)v16 initWithName:@"Product Color" value:v17];
  v27[4] = v18;
  v19 = [HMFAttributeDescription alloc];
  v20 = [(HMFProductInfo *)self modelIdentifier];
  v21 = [(HMFAttributeDescription *)v19 initWithName:@"Model Identifier" value:v20];
  v27[5] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:6];

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (unint64_t)hash
{
  v2 = [(HMFProductInfo *)self softwareVersion];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_9;
    }

    v5 = [(HMFProductInfo *)self softwareVersion];
    v6 = [(HMFProductInfo *)v4 softwareVersion];
    v7 = [v5 isEqual:v6];

    if (!v7)
    {
      goto LABEL_9;
    }

    v8 = [(HMFProductInfo *)self productPlatform];
    if (v8 == [(HMFProductInfo *)v4 productPlatform]&& (v9 = [(HMFProductInfo *)self productClass], v9 == [(HMFProductInfo *)v4 productClass]) && (v10 = [(HMFProductInfo *)self productVariant], v10 == [(HMFProductInfo *)v4 productVariant]) && (v11 = [(HMFProductInfo *)self productColor], v11 == [(HMFProductInfo *)v4 productColor]))
    {
      v12 = [(HMFProductInfo *)self modelIdentifier];
      v13 = [(HMFProductInfo *)v4 modelIdentifier];
      v14 = [v12 isEqualToString:v13];
    }

    else
    {
LABEL_9:
      v14 = 0;
    }
  }

  return v14;
}

+ (id)decodeSoftwareVersionWithCoder:(id)a3
{
  v3 = a3;
  if ([v3 containsValueForKey:@"HMF.softwareVersion"])
  {
    v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"HMF.softwareVersion"];
  }

  else
  {
    v5 = [v3 decodeIntegerForKey:@"HMF.majorVersion"];
    v6 = [v3 decodeIntegerForKey:@"HMF.minorVersion"];
    v7 = [v3 decodeIntegerForKey:@"HMF.patchVersion"];

    v9[0] = v5;
    v9[1] = v6;
    v9[2] = v7;
    v4 = [(HMFVersion *)[HMFSoftwareVersion alloc] initWithOperatingSystemVersion:v9];
  }

  return v4;
}

+ (void)encodeSoftwareVersion:(id)a3 withCoder:(id)a4
{
  v7 = a4;
  v5 = a3;
  [v7 encodeObject:v5 forKey:@"HMF.softwareVersion"];
  [v7 encodeInteger:objc_msgSend(v5 forKey:{"majorVersion"), @"HMF.majorVersion"}];
  [v7 encodeInteger:objc_msgSend(v5 forKey:{"minorVersion"), @"HMF.minorVersion"}];
  v6 = [v5 updateVersion];

  [v7 encodeInteger:v6 forKey:@"HMF.patchVersion"];
}

- (HMFProductInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"HMF.platform"];
  v6 = [v4 decodeIntegerForKey:@"HMF.class"];
  v7 = [v4 decodeIntegerForKey:@"HMF.variant"];
  v8 = [HMFProductInfo decodeSoftwareVersionWithCoder:v4];
  v9 = [v4 decodeIntegerForKey:@"HMF.color"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMF.modelIdentifier"];

  v11 = [(HMFProductInfo *)self initWithPlatform:v5 class:v6 variant:v7 softwareVersion:v8 color:v9 modelIdentifier:v10];
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[HMFProductInfo productPlatform](self forKey:{"productPlatform"), @"HMF.platform"}];
  [v4 encodeInteger:-[HMFProductInfo productClass](self forKey:{"productClass"), @"HMF.class"}];
  [v4 encodeInteger:-[HMFProductInfo productVariant](self forKey:{"productVariant"), @"HMF.variant"}];
  v5 = [(HMFProductInfo *)self softwareVersion];
  [HMFProductInfo encodeSoftwareVersion:v5 withCoder:v4];

  [v4 encodeInteger:-[HMFProductInfo productColor](self forKey:{"productColor"), @"HMF.color"}];
  v6 = [(HMFProductInfo *)self modelIdentifier];
  [v4 encodeObject:v6 forKey:@"HMF.modelIdentifier"];
}

@end