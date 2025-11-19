@interface CECEDIDAttributes
- (CECEDIDAttributes)initWithAttributes:(id)a3;
- (CECEDIDAttributes)initWithCoder:(id)a3;
- (CECEDIDAttributes)initWithModelName:(id)a3;
- (CECEDIDAttributes)initWithVendorID:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CECEDIDAttributes

- (CECEDIDAttributes)initWithVendorID:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = CECEDIDAttributes;
  result = [(CECEDIDAttributes *)&v5 init];
  if (result)
  {
    result->_vendorID = a3;
  }

  return result;
}

- (CECEDIDAttributes)initWithModelName:(id)a3
{
  v7.receiver = self;
  v7.super_class = CECEDIDAttributes;
  v4 = [(CECEDIDAttributes *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(CECEDIDAttributes *)v4 setModelName:a3];
  }

  return v5;
}

- (CECEDIDAttributes)initWithCoder:(id)a3
{
  if (self)
  {
    self->_address = [a3 decodeIntegerForKey:@"address"];
    self->_vendorID = [a3 decodeIntegerForKey:@"vendorID"];
    self->_productID = [a3 decodeIntegerForKey:@"productID"];
    self->_week = [a3 decodeIntegerForKey:@"week"];
    self->_year = [a3 decodeIntegerForKey:@"year"];
    v5 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    self->_modelName = v5;
    v6 = v5;
    v7 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    self->_uuid = v7;
    v8 = v7;
  }

  return self;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeInteger:self->_address forKey:@"address"];
  [a3 encodeInteger:self->_vendorID forKey:@"vendorID"];
  [a3 encodeInteger:self->_productID forKey:@"productID"];
  [a3 encodeInteger:self->_week forKey:@"week"];
  [a3 encodeInteger:self->_year forKey:@"year"];
  [a3 encodeObject:self->_modelName forKey:@"name"];
  uuid = self->_uuid;

  [a3 encodeObject:uuid forKey:@"uuid"];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];

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

- (CECEDIDAttributes)initWithAttributes:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = CECEDIDAttributes;
  v4 = [(CECEDIDAttributes *)&v6 init];
  if (v4)
  {
    v4->_address = [a3 address];
    v4->_vendorID = [a3 vendorID];
    v4->_productID = [a3 productID];
    v4->_week = [a3 week];
    v4->_year = [a3 year];
    v4->_modelName = [objc_msgSend(a3 "modelName")];
    v4->_uuid = [objc_msgSend(a3 "uuid")];
  }

  return v4;
}

@end