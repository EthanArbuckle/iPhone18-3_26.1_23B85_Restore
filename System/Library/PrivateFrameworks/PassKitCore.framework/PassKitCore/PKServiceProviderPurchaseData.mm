@interface PKServiceProviderPurchaseData
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPKServiceProviderPurchaseData:(id)data;
- (PKServiceProviderPurchaseData)initWithCoder:(id)coder;
- (PKServiceProviderPurchaseData)initWithDictionary:(id)dictionary;
- (id)description;
@end

@implementation PKServiceProviderPurchaseData

- (PKServiceProviderPurchaseData)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = PKServiceProviderPurchaseData;
  v5 = [(PKServiceProviderPurchaseData *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy copy];
    dictionaryRepresentation = v5->_dictionaryRepresentation;
    v5->_dictionaryRepresentation = v6;
  }

  return v5;
}

- (PKServiceProviderPurchaseData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKServiceProviderPurchaseData;
  v5 = [(PKServiceProviderPurchaseData *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dictionary"];
    dictionaryRepresentation = v5->_dictionaryRepresentation;
    v5->_dictionaryRepresentation = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKServiceProviderPurchaseData *)self isEqualToPKServiceProviderPurchaseData:equalCopy];

  return v5;
}

- (BOOL)isEqualToPKServiceProviderPurchaseData:(id)data
{
  if (self == data)
  {
    return 1;
  }

  dictionaryRepresentation = self->_dictionaryRepresentation;
  dictionaryRepresentation = [data dictionaryRepresentation];
  LOBYTE(dictionaryRepresentation) = [(NSDictionary *)dictionaryRepresentation isEqualToDictionary:dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  dictionaryRepresentation = self->_dictionaryRepresentation;
  if (dictionaryRepresentation)
  {
    v5 = [(NSDictionary *)dictionaryRepresentation description];
    [v3 appendFormat:@"dictionary: '%@'; ", v5];
  }

  [v3 appendFormat:@">"];

  return v3;
}

@end