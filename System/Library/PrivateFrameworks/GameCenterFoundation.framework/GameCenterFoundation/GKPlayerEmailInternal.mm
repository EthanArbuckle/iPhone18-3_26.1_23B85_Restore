@interface GKPlayerEmailInternal
+ (id)secureCodedPropertyKeys;
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation GKPlayerEmailInternal

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_594 != -1)
  {
    +[GKPlayerEmailInternal secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_593;

  return v3;
}

void __48__GKPlayerEmailInternal_secureCodedPropertyKeys__block_invoke()
{
  v4[2] = *MEMORY[0x277D85DE8];
  v3[0] = @"address";
  v3[1] = @"verified";
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:2];
  v1 = secureCodedPropertyKeys_sSecureCodedKeys_593;
  secureCodedPropertyKeys_sSecureCodedKeys_593 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    address = [(GKPlayerEmailInternal *)self address];
    if (address)
    {
      address2 = [v5 address];
      v8 = [address isEqualToString:address2];
    }

    else
    {
      address2 = [(GKPlayerEmailInternal *)self addressSHA1];
      addressSHA1 = [v5 addressSHA1];
      v8 = [address2 isEqualToString:addressSHA1];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  address = [(GKPlayerEmailInternal *)self address];
  if (address)
  {
    [(GKPlayerEmailInternal *)self address];
  }

  else
  {
    [(GKPlayerEmailInternal *)self addressSHA1];
  }
  v4 = ;
  v5 = [v4 hash];

  return v5;
}

@end