@interface PKProvisioningContinuityDiscoveryRequestMessage
- (BOOL)configureWithContent:(id)content;
- (BOOL)isEqual:(id)equal;
- (PKProvisioningContinuityDiscoveryRequestMessage)initWithContinuityType:(unint64_t)type advertisement:(id)advertisement;
- (id)description;
@end

@implementation PKProvisioningContinuityDiscoveryRequestMessage

- (PKProvisioningContinuityDiscoveryRequestMessage)initWithContinuityType:(unint64_t)type advertisement:(id)advertisement
{
  v6 = MEMORY[0x1E695DF90];
  advertisementCopy = advertisement;
  v8 = objc_alloc_init(v6);
  v9 = v8;
  if (type == 1)
  {
    v10 = @"carKey";
  }

  else
  {
    v10 = 0;
  }

  [v8 setObject:v10 forKeyedSubscript:@"continuityType"];
  dictionaryRepresentation = [advertisementCopy dictionaryRepresentation];

  [v9 setObject:dictionaryRepresentation forKeyedSubscript:@"advertisement"];
  v14.receiver = self;
  v14.super_class = PKProvisioningContinuityDiscoveryRequestMessage;
  v12 = [(PKSharingGenericMessage *)&v14 initWithFormat:3 type:2001 genericSharingDict:MEMORY[0x1E695E0F8] appleSharingDict:v9];

  return v12;
}

- (BOOL)configureWithContent:(id)content
{
  contentCopy = content;
  v13.receiver = self;
  v13.super_class = PKProvisioningContinuityDiscoveryRequestMessage;
  if ([(PKSharingGenericMessage *)&v13 configureWithContent:contentCopy])
  {
    v5 = [contentCopy PKDictionaryForKey:@"apple"];
    v6 = [v5 PKStringForKey:@"continuityType"];
    self->_continuityType = PKProvisioningContinuityDiscoveryRequestTypeFromString(v6);

    continuityType = self->_continuityType;
    v8 = continuityType != 0;
    if (continuityType)
    {
      v9 = [v5 PKDictionaryForKey:@"advertisement"];
      v10 = [PKContinuityProximityAdvertisement advertisementWithDictionary:v9];
      advertisement = self->_advertisement;
      self->_advertisement = v10;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  identifier = [(PKSharingMessage *)self identifier];
  [v3 appendFormat:@"identifier: '%@'; ", identifier];

  v5 = PKSharingMessageTypeToString([(PKSharingMessage *)self type]);
  [v3 appendFormat:@"type: '%@'; ", v5];

  if (self->_continuityType == 1)
  {
    v6 = @"carKey";
  }

  else
  {
    v6 = 0;
  }

  [v3 appendFormat:@"continuityType: '%@'; ", v6];
  [v3 appendFormat:@"advertisement: '%@'; ", self->_advertisement];
  [v3 appendFormat:@">"];
  v7 = [v3 copy];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    LOBYTE(self) = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    if (self)
    {
      v10.receiver = self;
      v10.super_class = PKProvisioningContinuityDiscoveryRequestMessage;
      if ([(PKSharingGenericMessage *)&v10 isEqual:v6]&& self->_continuityType == v6->_continuityType)
      {
        advertisement = self->_advertisement;
        v8 = v6->_advertisement;
        if (advertisement && v8)
        {
          LOBYTE(self) = [(PKContinuityProximityAdvertisement *)advertisement isEqual:?];
        }

        else
        {
          LOBYTE(self) = advertisement == v8;
        }
      }

      else
      {
        LOBYTE(self) = 0;
      }
    }
  }

  else
  {
    LOBYTE(self) = 0;
  }

  return self;
}

@end