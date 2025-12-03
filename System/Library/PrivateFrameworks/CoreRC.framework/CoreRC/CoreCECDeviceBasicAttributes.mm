@interface CoreCECDeviceBasicAttributes
+ (id)deviceAttributesWithPrimaryType:(unint64_t)type otherTypes:(unint64_t)types features:(unint64_t)features rcProfile:(id)profile vendorID:(unint64_t)d version:(unint64_t)version active:(BOOL)active options:(unint64_t)self0;
- (BOOL)isEqual:(id)equal;
- (CoreCECDeviceBasicAttributes)initWithCoder:(id)coder;
- (CoreCECDeviceBasicAttributes)initWithPrimaryType:(unint64_t)type otherTypes:(unint64_t)types features:(unint64_t)features rcProfile:(id)profile vendorID:(unint64_t)d version:(unint64_t)version active:(BOOL)active options:(unint64_t)self0;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CoreCECDeviceBasicAttributes

+ (id)deviceAttributesWithPrimaryType:(unint64_t)type otherTypes:(unint64_t)types features:(unint64_t)features rcProfile:(id)profile vendorID:(unint64_t)d version:(unint64_t)version active:(BOOL)active options:(unint64_t)self0
{
  LOBYTE(v12) = active;
  v10 = [[CoreCECDeviceBasicAttributes alloc] initWithPrimaryType:type otherTypes:types features:features rcProfile:profile vendorID:d version:version active:v12 options:options];

  return v10;
}

- (CoreCECDeviceBasicAttributes)initWithPrimaryType:(unint64_t)type otherTypes:(unint64_t)types features:(unint64_t)features rcProfile:(id)profile vendorID:(unint64_t)d version:(unint64_t)version active:(BOOL)active options:(unint64_t)self0
{
  v16 = [(CoreCECDeviceBasicAttributes *)self init];
  v17 = v16;
  if (v16)
  {
    v16->_deviceType = type;
    v16->_allDeviceTypes = (1 << (type - 1)) | types;
    v16->_deviceFeatures = features;
    v18 = [profile copy];
    v17->_cecVersion = version;
    v17->_vendorID = d;
    v17->_isActiveSource = active;
    v17->_rcProfile = v18;
    v17->_options = options;
  }

  return v17;
}

- (CoreCECDeviceBasicAttributes)initWithCoder:(id)coder
{
  v4 = [(CoreCECDeviceBasicAttributes *)self init];
  if (v4)
  {
    v4->_deviceType = [coder decodeIntegerForKey:@"deviceType"];
    v4->_allDeviceTypes = [coder decodeIntegerForKey:@"allDeviceTypes"];
    v4->_deviceFeatures = [coder decodeIntegerForKey:@"deviceFeatures"];
    v4->_rcProfile = [objc_msgSend(coder decodeObjectOfClasses:objc_msgSend(+[CoreCECTypesInternal defaultTypes](CoreCECTypesInternal forKey:{"defaultTypes"), "rcProfileClasses"), @"rcProfile", "copy"}];
    v4->_vendorID = [coder decodeIntegerForKey:@"vendorID"];
    v4->_cecVersion = [coder decodeIntegerForKey:@"cecVersion"];
    v4->_isActiveSource = [coder decodeBoolForKey:@"isActiveSource"];
    v4->_options = [coder decodeIntegerForKey:@"options"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeInteger:self->_deviceType forKey:@"deviceType"];
  [coder encodeInteger:self->_cecVersion forKey:@"cecVersion"];
  [coder encodeInteger:self->_vendorID forKey:@"vendorID"];
  [coder encodeInteger:self->_allDeviceTypes forKey:@"allDeviceTypes"];
  [coder encodeInteger:self->_deviceFeatures forKey:@"deviceFeatures"];
  [coder encodeObject:self->_rcProfile forKey:@"rcProfile"];
  [coder encodeBool:self->_isActiveSource forKey:@"isActiveSource"];
  options = self->_options;

  [coder encodeInteger:options forKey:@"options"];
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
  isActiveSource = [(CoreCECDeviceBasicAttributes *)self isActiveSource];
  v5 = @"NO";
  if (isActiveSource)
  {
    v5 = @"YES";
  }

  [v3 appendFormat:@" IsActiveSource: %@;", v5];
  return v3;
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  deviceType = [(CoreCECDeviceBasicAttributes *)self deviceType];
  if (deviceType != [equal deviceType])
  {
    return 0;
  }

  cecVersion = [(CoreCECDeviceBasicAttributes *)self cecVersion];
  if (cecVersion != [equal cecVersion])
  {
    return 0;
  }

  vendorID = [(CoreCECDeviceBasicAttributes *)self vendorID];
  if (vendorID != [equal vendorID])
  {
    return 0;
  }

  allDeviceTypes = [(CoreCECDeviceBasicAttributes *)self allDeviceTypes];
  if (allDeviceTypes != [equal allDeviceTypes])
  {
    return 0;
  }

  deviceFeatures = [(CoreCECDeviceBasicAttributes *)self deviceFeatures];
  if (deviceFeatures != [equal deviceFeatures])
  {
    return 0;
  }

  rcProfile = [(CoreCECDeviceBasicAttributes *)self rcProfile];
  rcProfile2 = [equal rcProfile];

  return [(NSDictionary *)rcProfile isEqual:rcProfile2];
}

- (unint64_t)hash
{
  v3 = [(NSDictionary *)[(CoreCECDeviceBasicAttributes *)self rcProfile] hash];
  deviceType = [(CoreCECDeviceBasicAttributes *)self deviceType];
  v5 = deviceType ^ [(CoreCECDeviceBasicAttributes *)self cecVersion]^ v3;
  vendorID = [(CoreCECDeviceBasicAttributes *)self vendorID];
  v7 = vendorID ^ [(CoreCECDeviceBasicAttributes *)self allDeviceTypes];
  return v5 ^ v7 ^ [(CoreCECDeviceBasicAttributes *)self deviceFeatures];
}

@end