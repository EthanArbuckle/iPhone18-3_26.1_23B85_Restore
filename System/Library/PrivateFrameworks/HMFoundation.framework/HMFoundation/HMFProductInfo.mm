@interface HMFProductInfo
+ (id)decodeSoftwareVersionWithCoder:(id)coder;
+ (id)productInfo;
+ (id)shortDescription;
+ (void)encodeSoftwareVersion:(id)version withCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (HMFProductInfo)init;
- (HMFProductInfo)initWithCoder:(id)coder;
- (HMFProductInfo)initWithPlatform:(int64_t)platform class:(int64_t)class variant:(int64_t)variant softwareVersion:(id)version color:(int64_t)color modelIdentifier:(id)identifier;
- (id)attributeDescriptions;
- (id)shortDescription;
- (int64_t)productClass;
- (int64_t)productPlatform;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMFProductInfo

+ (id)productInfo
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__HMFProductInfo_productInfo__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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

- (HMFProductInfo)initWithPlatform:(int64_t)platform class:(int64_t)class variant:(int64_t)variant softwareVersion:(id)version color:(int64_t)color modelIdentifier:(id)identifier
{
  versionCopy = version;
  identifierCopy = identifier;
  v20.receiver = self;
  v20.super_class = HMFProductInfo;
  v17 = [(HMFProductInfo *)&v20 init];
  v18 = v17;
  if (v17)
  {
    v17->_productPlatform = platform;
    v17->_productClass = class;
    v17->_productVariant = variant;
    objc_storeStrong(&v17->_softwareVersion, version);
    v18->_productColor = color;
    objc_storeStrong(&v18->_modelIdentifier, identifier);
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
  softwareVersion = [(HMFProductInfo *)self softwareVersion];
  versionString = [softwareVersion versionString];
  v15 = [(HMFAttributeDescription *)v12 initWithName:@"Software Version" value:versionString];
  v27[3] = v15;
  v16 = [HMFAttributeDescription alloc];
  v17 = HMFProductColorToString([(HMFProductInfo *)self productColor]);
  v18 = [(HMFAttributeDescription *)v16 initWithName:@"Product Color" value:v17];
  v27[4] = v18;
  v19 = [HMFAttributeDescription alloc];
  modelIdentifier = [(HMFProductInfo *)self modelIdentifier];
  v21 = [(HMFAttributeDescription *)v19 initWithName:@"Model Identifier" value:modelIdentifier];
  v27[5] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:6];

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (unint64_t)hash
{
  softwareVersion = [(HMFProductInfo *)self softwareVersion];
  v3 = [softwareVersion hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
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

    softwareVersion = [(HMFProductInfo *)self softwareVersion];
    softwareVersion2 = [(HMFProductInfo *)equalCopy softwareVersion];
    v7 = [softwareVersion isEqual:softwareVersion2];

    if (!v7)
    {
      goto LABEL_9;
    }

    productPlatform = [(HMFProductInfo *)self productPlatform];
    if (productPlatform == [(HMFProductInfo *)equalCopy productPlatform]&& (v9 = [(HMFProductInfo *)self productClass], v9 == [(HMFProductInfo *)equalCopy productClass]) && (v10 = [(HMFProductInfo *)self productVariant], v10 == [(HMFProductInfo *)equalCopy productVariant]) && (v11 = [(HMFProductInfo *)self productColor], v11 == [(HMFProductInfo *)equalCopy productColor]))
    {
      modelIdentifier = [(HMFProductInfo *)self modelIdentifier];
      modelIdentifier2 = [(HMFProductInfo *)equalCopy modelIdentifier];
      v14 = [modelIdentifier isEqualToString:modelIdentifier2];
    }

    else
    {
LABEL_9:
      v14 = 0;
    }
  }

  return v14;
}

+ (id)decodeSoftwareVersionWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy containsValueForKey:@"HMF.softwareVersion"])
  {
    v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMF.softwareVersion"];
  }

  else
  {
    v5 = [coderCopy decodeIntegerForKey:@"HMF.majorVersion"];
    v6 = [coderCopy decodeIntegerForKey:@"HMF.minorVersion"];
    v7 = [coderCopy decodeIntegerForKey:@"HMF.patchVersion"];

    v9[0] = v5;
    v9[1] = v6;
    v9[2] = v7;
    v4 = [(HMFVersion *)[HMFSoftwareVersion alloc] initWithOperatingSystemVersion:v9];
  }

  return v4;
}

+ (void)encodeSoftwareVersion:(id)version withCoder:(id)coder
{
  coderCopy = coder;
  versionCopy = version;
  [coderCopy encodeObject:versionCopy forKey:@"HMF.softwareVersion"];
  [coderCopy encodeInteger:objc_msgSend(versionCopy forKey:{"majorVersion"), @"HMF.majorVersion"}];
  [coderCopy encodeInteger:objc_msgSend(versionCopy forKey:{"minorVersion"), @"HMF.minorVersion"}];
  updateVersion = [versionCopy updateVersion];

  [coderCopy encodeInteger:updateVersion forKey:@"HMF.patchVersion"];
}

- (HMFProductInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"HMF.platform"];
  v6 = [coderCopy decodeIntegerForKey:@"HMF.class"];
  v7 = [coderCopy decodeIntegerForKey:@"HMF.variant"];
  v8 = [HMFProductInfo decodeSoftwareVersionWithCoder:coderCopy];
  v9 = [coderCopy decodeIntegerForKey:@"HMF.color"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMF.modelIdentifier"];

  v11 = [(HMFProductInfo *)self initWithPlatform:v5 class:v6 variant:v7 softwareVersion:v8 color:v9 modelIdentifier:v10];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[HMFProductInfo productPlatform](self forKey:{"productPlatform"), @"HMF.platform"}];
  [coderCopy encodeInteger:-[HMFProductInfo productClass](self forKey:{"productClass"), @"HMF.class"}];
  [coderCopy encodeInteger:-[HMFProductInfo productVariant](self forKey:{"productVariant"), @"HMF.variant"}];
  softwareVersion = [(HMFProductInfo *)self softwareVersion];
  [HMFProductInfo encodeSoftwareVersion:softwareVersion withCoder:coderCopy];

  [coderCopy encodeInteger:-[HMFProductInfo productColor](self forKey:{"productColor"), @"HMF.color"}];
  modelIdentifier = [(HMFProductInfo *)self modelIdentifier];
  [coderCopy encodeObject:modelIdentifier forKey:@"HMF.modelIdentifier"];
}

@end