@interface PKAccountPhysicalCardExpirationMessagingInfo
- (PKAccountPhysicalCardExpirationMessagingInfo)initWithCoder:(id)coder;
- (PKAccountPhysicalCardExpirationMessagingInfo)initWithDictionary:(id)dictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKAccountPhysicalCardExpirationMessagingInfo

- (PKAccountPhysicalCardExpirationMessagingInfo)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = PKAccountPhysicalCardExpirationMessagingInfo;
  v5 = [(PKAccountPhysicalCardExpirationMessagingInfo *)&v14 init];
  if (v5 && ((v5->_scatterInterval = [dictionaryCopy PKIntegerForKey:@"scatterInterval"], objc_msgSend(dictionaryCopy, "PKStringForKey:", @"physicalCardIdentifier"), v6 = objc_claimAutoreleasedReturnValue(), physicalCardIdentifier = v5->_physicalCardIdentifier, v5->_physicalCardIdentifier = v6, physicalCardIdentifier, objc_msgSend(dictionaryCopy, "PKStringForKey:", @"messagingType"), v8 = objc_claimAutoreleasedReturnValue(), v9 = PKAccountPhysicalCardExpirationMessagingTypeFromString(v8), v5->_messagingType = v9, v10 = v5->_physicalCardIdentifier, v8, v10) ? (v11 = v9 == 0) : (v11 = 1), v11))
  {
    v12 = 0;
  }

  else
  {
    v12 = v5;
  }

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  scatterInterval = self->_scatterInterval;
  coderCopy = coder;
  [coderCopy encodeInteger:scatterInterval forKey:@"scatterInterval"];
  [coderCopy encodeObject:self->_physicalCardIdentifier forKey:@"physicalCardIdentifier"];
  [coderCopy encodeInteger:self->_messagingType forKey:@"messagingType"];
}

- (PKAccountPhysicalCardExpirationMessagingInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKAccountPhysicalCardExpirationMessagingInfo;
  v5 = [(PKAccountPhysicalCardExpirationMessagingInfo *)&v9 init];
  if (v5)
  {
    v5->_scatterInterval = [coderCopy decodeIntegerForKey:@"scatterInterval"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"physicalCardIdentifier"];
    physicalCardIdentifier = v5->_physicalCardIdentifier;
    v5->_physicalCardIdentifier = v6;

    v5->_messagingType = [coderCopy decodeIntegerForKey:@"messagingType"];
  }

  return v5;
}

@end