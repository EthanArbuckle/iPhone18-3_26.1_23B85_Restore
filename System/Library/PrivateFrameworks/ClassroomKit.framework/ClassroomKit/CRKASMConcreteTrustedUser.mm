@interface CRKASMConcreteTrustedUser
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToConcreteTrustedUser:(id)user;
- (CRKASMConcreteTrustedUser)initWithBackingPerson:(id)person certificateVendor:(id)vendor;
- (NSSet)certificates;
- (NSString)description;
- (unint64_t)hash;
@end

@implementation CRKASMConcreteTrustedUser

- (CRKASMConcreteTrustedUser)initWithBackingPerson:(id)person certificateVendor:(id)vendor
{
  vendorCopy = vendor;
  v11.receiver = self;
  v11.super_class = CRKASMConcreteTrustedUser;
  v8 = [(CRKASMConcreteUser *)&v11 initWithBackingPerson:person];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_certificateVendor, vendor);
  }

  return v9;
}

- (NSSet)certificates
{
  certificateVendor = [(CRKASMConcreteTrustedUser *)self certificateVendor];
  identifier = [(CRKASMConcreteUser *)self identifier];
  v5 = [certificateVendor certificatesForUserIdentifier:identifier];

  return v5;
}

- (BOOL)isEqualToConcreteTrustedUser:(id)user
{
  userCopy = user;
  if ([(CRKASMConcreteUser *)self isEqualToConcreteUser:userCopy])
  {
    certificateVendor = [(CRKASMConcreteTrustedUser *)self certificateVendor];
    if (certificateVendor || ([userCopy certificateVendor], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      certificateVendor2 = [(CRKASMConcreteTrustedUser *)self certificateVendor];
      certificateVendor3 = [userCopy certificateVendor];
      v9 = [certificateVendor2 isEqual:certificateVendor3];

      if (certificateVendor)
      {
LABEL_9:

        goto LABEL_10;
      }
    }

    else
    {
      v9 = 1;
    }

    goto LABEL_9;
  }

  v9 = 0;
LABEL_10:

  return v9;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = CRKASMConcreteTrustedUser;
  v3 = [(CRKASMConcreteUser *)&v7 hash];
  certificateVendor = [(CRKASMConcreteTrustedUser *)self certificateVendor];
  v5 = [certificateVendor hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else if ([(CRKASMConcreteTrustedUser *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = [(CRKASMConcreteTrustedUser *)self isEqualToConcreteTrustedUser:equalCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v9.receiver = self;
  v9.super_class = CRKASMConcreteTrustedUser;
  v5 = [(CRKASMConcreteUser *)&v9 description];
  certificateVendor = [(CRKASMConcreteTrustedUser *)self certificateVendor];
  v7 = [v3 stringWithFormat:@"<%@: %p { super = %@, certificateVendor = %@ }>", v4, self, v5, certificateVendor];

  return v7;
}

@end