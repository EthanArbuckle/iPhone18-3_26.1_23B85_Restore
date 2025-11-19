@interface CRKASMConcreteTrustedUser
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToConcreteTrustedUser:(id)a3;
- (CRKASMConcreteTrustedUser)initWithBackingPerson:(id)a3 certificateVendor:(id)a4;
- (NSSet)certificates;
- (NSString)description;
- (unint64_t)hash;
@end

@implementation CRKASMConcreteTrustedUser

- (CRKASMConcreteTrustedUser)initWithBackingPerson:(id)a3 certificateVendor:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = CRKASMConcreteTrustedUser;
  v8 = [(CRKASMConcreteUser *)&v11 initWithBackingPerson:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_certificateVendor, a4);
  }

  return v9;
}

- (NSSet)certificates
{
  v3 = [(CRKASMConcreteTrustedUser *)self certificateVendor];
  v4 = [(CRKASMConcreteUser *)self identifier];
  v5 = [v3 certificatesForUserIdentifier:v4];

  return v5;
}

- (BOOL)isEqualToConcreteTrustedUser:(id)a3
{
  v5 = a3;
  if ([(CRKASMConcreteUser *)self isEqualToConcreteUser:v5])
  {
    v6 = [(CRKASMConcreteTrustedUser *)self certificateVendor];
    if (v6 || ([v5 certificateVendor], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v7 = [(CRKASMConcreteTrustedUser *)self certificateVendor];
      v8 = [v5 certificateVendor];
      v9 = [v7 isEqual:v8];

      if (v6)
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
  v4 = [(CRKASMConcreteTrustedUser *)self certificateVendor];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else if ([(CRKASMConcreteTrustedUser *)v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(CRKASMConcreteTrustedUser *)self isEqualToConcreteTrustedUser:v4];
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
  v6 = [(CRKASMConcreteTrustedUser *)self certificateVendor];
  v7 = [v3 stringWithFormat:@"<%@: %p { super = %@, certificateVendor = %@ }>", v4, self, v5, v6];

  return v7;
}

@end