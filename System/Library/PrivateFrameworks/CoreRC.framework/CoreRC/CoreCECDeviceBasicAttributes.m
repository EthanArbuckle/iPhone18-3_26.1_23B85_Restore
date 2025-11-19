@interface CoreCECDeviceBasicAttributes
+ (id)deviceAttributesWithPrimaryType:(unint64_t)a3 otherTypes:(unint64_t)a4 features:(unint64_t)a5 rcProfile:(id)a6 vendorID:(unint64_t)a7 version:(unint64_t)a8 active:(BOOL)a9 options:(unint64_t)a10;
- (BOOL)isEqual:(id)a3;
- (CoreCECDeviceBasicAttributes)initWithCoder:(id)a3;
- (CoreCECDeviceBasicAttributes)initWithPrimaryType:(unint64_t)a3 otherTypes:(unint64_t)a4 features:(unint64_t)a5 rcProfile:(id)a6 vendorID:(unint64_t)a7 version:(unint64_t)a8 active:(BOOL)a9 options:(unint64_t)a10;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CoreCECDeviceBasicAttributes

+ (id)deviceAttributesWithPrimaryType:(unint64_t)a3 otherTypes:(unint64_t)a4 features:(unint64_t)a5 rcProfile:(id)a6 vendorID:(unint64_t)a7 version:(unint64_t)a8 active:(BOOL)a9 options:(unint64_t)a10
{
  LOBYTE(v12) = a9;
  v10 = [[CoreCECDeviceBasicAttributes alloc] initWithPrimaryType:a3 otherTypes:a4 features:a5 rcProfile:a6 vendorID:a7 version:a8 active:v12 options:a10];

  return v10;
}

- (CoreCECDeviceBasicAttributes)initWithPrimaryType:(unint64_t)a3 otherTypes:(unint64_t)a4 features:(unint64_t)a5 rcProfile:(id)a6 vendorID:(unint64_t)a7 version:(unint64_t)a8 active:(BOOL)a9 options:(unint64_t)a10
{
  v16 = [(CoreCECDeviceBasicAttributes *)self init];
  v17 = v16;
  if (v16)
  {
    v16->_deviceType = a3;
    v16->_allDeviceTypes = (1 << (a3 - 1)) | a4;
    v16->_deviceFeatures = a5;
    v18 = [a6 copy];
    v17->_cecVersion = a8;
    v17->_vendorID = a7;
    v17->_isActiveSource = a9;
    v17->_rcProfile = v18;
    v17->_options = a10;
  }

  return v17;
}

- (CoreCECDeviceBasicAttributes)initWithCoder:(id)a3
{
  v4 = [(CoreCECDeviceBasicAttributes *)self init];
  if (v4)
  {
    v4->_deviceType = [a3 decodeIntegerForKey:@"deviceType"];
    v4->_allDeviceTypes = [a3 decodeIntegerForKey:@"allDeviceTypes"];
    v4->_deviceFeatures = [a3 decodeIntegerForKey:@"deviceFeatures"];
    v4->_rcProfile = [objc_msgSend(a3 decodeObjectOfClasses:objc_msgSend(+[CoreCECTypesInternal defaultTypes](CoreCECTypesInternal forKey:{"defaultTypes"), "rcProfileClasses"), @"rcProfile", "copy"}];
    v4->_vendorID = [a3 decodeIntegerForKey:@"vendorID"];
    v4->_cecVersion = [a3 decodeIntegerForKey:@"cecVersion"];
    v4->_isActiveSource = [a3 decodeBoolForKey:@"isActiveSource"];
    v4->_options = [a3 decodeIntegerForKey:@"options"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeInteger:self->_deviceType forKey:@"deviceType"];
  [a3 encodeInteger:self->_cecVersion forKey:@"cecVersion"];
  [a3 encodeInteger:self->_vendorID forKey:@"vendorID"];
  [a3 encodeInteger:self->_allDeviceTypes forKey:@"allDeviceTypes"];
  [a3 encodeInteger:self->_deviceFeatures forKey:@"deviceFeatures"];
  [a3 encodeObject:self->_rcProfile forKey:@"rcProfile"];
  [a3 encodeBool:self->_isActiveSource forKey:@"isActiveSource"];
  options = self->_options;

  [a3 encodeInteger:options forKey:@"options"];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CoreCECDeviceBasicAttributes;
  [(CoreCECDeviceBasicAttributes *)&v3 dealloc];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CoreCECDeviceBasicAttributes;
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:{-[CoreCECDeviceBasicAttributes description](&v7, sel_description)}];
  [v3 appendFormat:@" Type: %@;", CoreCECDeviceTypeString(-[CoreCECDeviceBasicAttributes deviceType](self, "deviceType"))];
  [v3 appendFormat:@" CEC: %@;", CoreCECVersionString(-[CoreCECDeviceBasicAttributes cecVersion](self, "cecVersion"))];
  [v3 appendFormat:@" Vendor: %@;", CoreCECVendorIDString(-[CoreCECDeviceBasicAttributes vendorID](self, "vendorID"))];
  [v3 appendFormat:@" All Device Types: 0x%02X;", -[CoreCECDeviceBasicAttributes allDeviceTypes](self, "allDeviceTypes")];
  [v3 appendFormat:@" Features: 0x%08lX;", -[CoreCECDeviceBasicAttributes deviceFeatures](self, "deviceFeatures")];
  [v3 appendFormat:@" RCProfile: %@;", CoreCECRCProfileString(-[CoreCECDeviceBasicAttributes rcProfile](self, "rcProfile"))];
  v4 = [(CoreCECDeviceBasicAttributes *)self isActiveSource];
  v5 = @"NO";
  if (v4)
  {
    v5 = @"YES";
  }

  [v3 appendFormat:@" IsActiveSource: %@;", v5];
  return v3;
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [(CoreCECDeviceBasicAttributes *)self deviceType];
  if (v5 != [a3 deviceType])
  {
    return 0;
  }

  v6 = [(CoreCECDeviceBasicAttributes *)self cecVersion];
  if (v6 != [a3 cecVersion])
  {
    return 0;
  }

  v7 = [(CoreCECDeviceBasicAttributes *)self vendorID];
  if (v7 != [a3 vendorID])
  {
    return 0;
  }

  v8 = [(CoreCECDeviceBasicAttributes *)self allDeviceTypes];
  if (v8 != [a3 allDeviceTypes])
  {
    return 0;
  }

  v9 = [(CoreCECDeviceBasicAttributes *)self deviceFeatures];
  if (v9 != [a3 deviceFeatures])
  {
    return 0;
  }

  v10 = [(CoreCECDeviceBasicAttributes *)self rcProfile];
  v11 = [a3 rcProfile];

  return [(NSDictionary *)v10 isEqual:v11];
}

- (unint64_t)hash
{
  v3 = [(NSDictionary *)[(CoreCECDeviceBasicAttributes *)self rcProfile] hash];
  v4 = [(CoreCECDeviceBasicAttributes *)self deviceType];
  v5 = v4 ^ [(CoreCECDeviceBasicAttributes *)self cecVersion]^ v3;
  v6 = [(CoreCECDeviceBasicAttributes *)self vendorID];
  v7 = v6 ^ [(CoreCECDeviceBasicAttributes *)self allDeviceTypes];
  return v5 ^ v7 ^ [(CoreCECDeviceBasicAttributes *)self deviceFeatures];
}

@end