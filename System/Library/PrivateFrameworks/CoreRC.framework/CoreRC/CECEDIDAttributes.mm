@interface CECEDIDAttributes
- (CECEDIDAttributes)initWithAttributes:(id)attributes;
- (CECEDIDAttributes)initWithCoder:(id)coder;
- (CECEDIDAttributes)initWithModelName:(id)name;
- (CECEDIDAttributes)initWithVendorID:(int64_t)d;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CECEDIDAttributes

- (CECEDIDAttributes)initWithVendorID:(int64_t)d
{
  v5.receiver = self;
  v5.super_class = CECEDIDAttributes;
  result = [(CECEDIDAttributes *)&v5 init];
  if (result)
  {
    result->_vendorID = d;
  }

  return result;
}

- (CECEDIDAttributes)initWithModelName:(id)name
{
  v7.receiver = self;
  v7.super_class = CECEDIDAttributes;
  v4 = [(CECEDIDAttributes *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(CECEDIDAttributes *)v4 setModelName:name];
  }

  return v5;
}

- (CECEDIDAttributes)initWithCoder:(id)coder
{
  if (self)
  {
    self->_address = [coder decodeIntegerForKey:@"address"];
    self->_vendorID = [coder decodeIntegerForKey:@"vendorID"];
    self->_productID = [coder decodeIntegerForKey:@"productID"];
    self->_week = [coder decodeIntegerForKey:@"week"];
    self->_year = [coder decodeIntegerForKey:@"year"];
    v5 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    self->_modelName = v5;
    v6 = v5;
    v7 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    self->_uuid = v7;
    v8 = v7;
  }

  return self;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeInteger:self->_address forKey:@"address"];
  [coder encodeInteger:self->_vendorID forKey:@"vendorID"];
  [coder encodeInteger:self->_productID forKey:@"productID"];
  [coder encodeInteger:self->_week forKey:@"week"];
  [coder encodeInteger:self->_year forKey:@"year"];
  [coder encodeObject:self->_modelName forKey:@"name"];
  uuid = self->_uuid;

  [coder encodeObject:uuid forKey:@"uuid"];
}

- (id)description
{
  v5.receiver = self;
  v5.super_class = CECEDIDAttributes;
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:{-[CECEDIDAttributes description](&v5, sel_description)}];
  if ([(CECEDIDAttributes *)self modelName])
  {
    [v3 appendFormat:@" %@", -[CECEDIDAttributes modelName](self, "modelName")];
  }

  [v3 appendFormat:@" vID: 0x%04lX;", -[CECEDIDAttributes vendorID](self, "vendorID")];
  [v3 appendFormat:@" pID: 0x%04lX;", -[CECEDIDAttributes productID](self, "productID")];
  [v3 appendFormat:@" year: %ld;", -[CECEDIDAttributes year](self, "year")];
  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];

  return [v4 initWithAttributes:self];
}

- (void)dealloc
{
  modelName = self->_modelName;
  if (modelName)
  {

    self->_modelName = 0;
  }

  uuid = self->_uuid;
  if (uuid)
  {

    self->_uuid = 0;
  }

  v5.receiver = self;
  v5.super_class = CECEDIDAttributes;
  [(CECEDIDAttributes *)&v5 dealloc];
}

- (CECEDIDAttributes)initWithAttributes:(id)attributes
{
  if (!attributes)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = CECEDIDAttributes;
  v4 = [(CECEDIDAttributes *)&v6 init];
  if (v4)
  {
    v4->_address = [attributes address];
    v4->_vendorID = [attributes vendorID];
    v4->_productID = [attributes productID];
    v4->_week = [attributes week];
    v4->_year = [attributes year];
    v4->_modelName = [objc_msgSend(attributes "modelName")];
    v4->_uuid = [objc_msgSend(attributes "uuid")];
  }

  return v4;
}

@end