@interface PKAccountPhysicalCardExpirationMessagingInfo
- (PKAccountPhysicalCardExpirationMessagingInfo)initWithCoder:(id)a3;
- (PKAccountPhysicalCardExpirationMessagingInfo)initWithDictionary:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKAccountPhysicalCardExpirationMessagingInfo

- (PKAccountPhysicalCardExpirationMessagingInfo)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PKAccountPhysicalCardExpirationMessagingInfo;
  v5 = [(PKAccountPhysicalCardExpirationMessagingInfo *)&v14 init];
  if (v5 && ((v5->_scatterInterval = [v4 PKIntegerForKey:@"scatterInterval"], objc_msgSend(v4, "PKStringForKey:", @"physicalCardIdentifier"), v6 = objc_claimAutoreleasedReturnValue(), physicalCardIdentifier = v5->_physicalCardIdentifier, v5->_physicalCardIdentifier = v6, physicalCardIdentifier, objc_msgSend(v4, "PKStringForKey:", @"messagingType"), v8 = objc_claimAutoreleasedReturnValue(), v9 = PKAccountPhysicalCardExpirationMessagingTypeFromString(v8), v5->_messagingType = v9, v10 = v5->_physicalCardIdentifier, v8, v10) ? (v11 = v9 == 0) : (v11 = 1), v11))
  {
    v12 = 0;
  }

  else
  {
    v12 = v5;
  }

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  scatterInterval = self->_scatterInterval;
  v5 = a3;
  [v5 encodeInteger:scatterInterval forKey:@"scatterInterval"];
  [v5 encodeObject:self->_physicalCardIdentifier forKey:@"physicalCardIdentifier"];
  [v5 encodeInteger:self->_messagingType forKey:@"messagingType"];
}

- (PKAccountPhysicalCardExpirationMessagingInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKAccountPhysicalCardExpirationMessagingInfo;
  v5 = [(PKAccountPhysicalCardExpirationMessagingInfo *)&v9 init];
  if (v5)
  {
    v5->_scatterInterval = [v4 decodeIntegerForKey:@"scatterInterval"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"physicalCardIdentifier"];
    physicalCardIdentifier = v5->_physicalCardIdentifier;
    v5->_physicalCardIdentifier = v6;

    v5->_messagingType = [v4 decodeIntegerForKey:@"messagingType"];
  }

  return v5;
}

@end