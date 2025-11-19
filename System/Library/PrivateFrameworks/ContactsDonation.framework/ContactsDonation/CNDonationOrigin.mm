@interface CNDonationOrigin
+ (id)originWithUpdatedDonationIdentifier:(id)a3 fromOrigin:(id)a4;
- (BOOL)isEqual:(id)a3;
- (CNDonationOrigin)initWithBundleIdentifier:(id)a3 donationIdentifier:(id)a4 clusterIdentifier:(id)a5 donationDate:(id)a6 expirationDate:(id)a7;
- (CNDonationOrigin)initWithCoder:(id)a3;
- (CNDonationOrigin)initWithDonationOrigin:(id)a3;
- (CNDonationOrigin)initWithPropertyListRepresentation:(id)a3;
- (NSDictionary)propertyListRepresentation;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNDonationOrigin

- (CNDonationOrigin)initWithDonationOrigin:(id)a3
{
  v4 = a3;
  v5 = [v4 bundleIdentifier];
  v6 = [v4 donationIdentifier];
  v7 = [v4 clusterIdentifier];
  v8 = [v4 donationDate];
  v9 = [v4 expirationDate];

  v10 = [(CNDonationOrigin *)self initWithBundleIdentifier:v5 donationIdentifier:v6 clusterIdentifier:v7 donationDate:v8 expirationDate:v9];
  return v10;
}

+ (id)originWithUpdatedDonationIdentifier:(id)a3 fromOrigin:(id)a4
{
  v5 = a3;
  v6 = [a4 mutableCopy];
  [v6 setDonationIdentifier:v5];

  return v6;
}

- (CNDonationOrigin)initWithBundleIdentifier:(id)a3 donationIdentifier:(id)a4 clusterIdentifier:(id)a5 donationDate:(id)a6 expirationDate:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (v12)
  {
    goto LABEL_5;
  }

  if (CNGuardOSLog_cn_once_token_0 != -1)
  {
    [CNDonationOrigin initWithBundleIdentifier:donationIdentifier:clusterIdentifier:donationDate:expirationDate:];
  }

  v17 = CNGuardOSLog_cn_once_object_0;
  if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0, OS_LOG_TYPE_FAULT))
  {
    [CNDonationOrigin initWithBundleIdentifier:v17 donationIdentifier:? clusterIdentifier:? donationDate:? expirationDate:?];
    if (v13)
    {
      goto LABEL_10;
    }
  }

  else
  {
LABEL_5:
    if (v13)
    {
      goto LABEL_10;
    }
  }

  if (CNGuardOSLog_cn_once_token_0 != -1)
  {
    [CNDonationOrigin initWithBundleIdentifier:donationIdentifier:clusterIdentifier:donationDate:expirationDate:];
  }

  v18 = CNGuardOSLog_cn_once_object_0;
  if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0, OS_LOG_TYPE_FAULT))
  {
    [CNDonationOrigin initWithBundleIdentifier:v18 donationIdentifier:? clusterIdentifier:? donationDate:? expirationDate:?];
  }

LABEL_10:
  if (v15)
  {
    if (v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v15 = [MEMORY[0x277CBEAA8] date];
    if (v16)
    {
      goto LABEL_12;
    }
  }

  v16 = [v15 dateByAddingTimeInterval:2419200.0];
LABEL_12:
  v32.receiver = self;
  v32.super_class = CNDonationOrigin;
  v19 = [(CNDonationOrigin *)&v32 init];
  if (v19)
  {
    v20 = [v12 copy];
    bundleIdentifier = v19->_bundleIdentifier;
    v19->_bundleIdentifier = v20;

    v22 = [v13 copy];
    donationIdentifier = v19->_donationIdentifier;
    v19->_donationIdentifier = v22;

    if (v14)
    {
      v24 = [v14 copy];
    }

    else
    {
      v24 = &stru_2838DBC88;
    }

    clusterIdentifier = v19->_clusterIdentifier;
    v19->_clusterIdentifier = &v24->isa;

    v26 = [v15 copy];
    donationDate = v19->_donationDate;
    v19->_donationDate = v26;

    v28 = [v16 copy];
    expirationDate = v19->_expirationDate;
    v19->_expirationDate = v28;

    v30 = v19;
  }

  return v19;
}

- (id)description
{
  v3 = [MEMORY[0x277CFBDF0] descriptionBuilderWithObject:self];
  v4 = [(CNDonationOrigin *)self bundleIdentifier];
  v5 = [v3 appendName:@"bundleIdentifier" object:v4];

  v6 = [(CNDonationOrigin *)self donationIdentifier];
  v7 = [v3 appendName:@"donationIdentifier" object:v6];

  v8 = [(CNDonationOrigin *)self clusterIdentifier];
  v9 = [v3 appendName:@"clusterIdentifier" object:v8];

  v10 = [(CNDonationOrigin *)self donationDate];
  v11 = [v3 appendName:@"donationDate" object:v10];

  v12 = [(CNDonationOrigin *)self expirationDate];
  v13 = [v3 appendName:@"expirationDate" object:v12];

  v14 = [v3 build];

  return v14;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [CNMutableDonationOrigin alloc];

  return [(CNDonationOrigin *)v4 initWithDonationOrigin:self];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CFBE18];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __28__CNDonationOrigin_isEqual___block_invoke;
  v23[3] = &unk_2785698D8;
  v23[4] = self;
  v24 = v4;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __28__CNDonationOrigin_isEqual___block_invoke_2;
  v21[3] = &unk_2785698D8;
  v21[4] = self;
  v6 = v24;
  v22 = v6;
  v7 = MEMORY[0x22AA69CD0](v21);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __28__CNDonationOrigin_isEqual___block_invoke_3;
  v19[3] = &unk_2785698D8;
  v19[4] = self;
  v8 = v6;
  v20 = v8;
  v9 = MEMORY[0x22AA69CD0](v19);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __28__CNDonationOrigin_isEqual___block_invoke_4;
  v17[3] = &unk_2785698D8;
  v17[4] = self;
  v10 = v8;
  v18 = v10;
  v11 = MEMORY[0x22AA69CD0](v17);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __28__CNDonationOrigin_isEqual___block_invoke_5;
  v15[3] = &unk_2785698D8;
  v15[4] = self;
  v16 = v10;
  v12 = v10;
  v13 = MEMORY[0x22AA69CD0](v15);
  LOBYTE(self) = [v5 isObject:self memberOfSameClassAndEqualTo:v12 withBlocks:{v23, v7, v9, v11, v13, 0}];

  return self;
}

uint64_t __28__CNDonationOrigin_isEqual___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CFBE18];
  v3 = [*(a1 + 32) bundleIdentifier];
  v4 = [*(a1 + 40) bundleIdentifier];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

uint64_t __28__CNDonationOrigin_isEqual___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x277CFBE18];
  v3 = [*(a1 + 32) donationIdentifier];
  v4 = [*(a1 + 40) donationIdentifier];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

uint64_t __28__CNDonationOrigin_isEqual___block_invoke_3(uint64_t a1)
{
  v2 = MEMORY[0x277CFBE18];
  v3 = [*(a1 + 32) clusterIdentifier];
  v4 = [*(a1 + 40) clusterIdentifier];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

uint64_t __28__CNDonationOrigin_isEqual___block_invoke_4(uint64_t a1)
{
  v2 = MEMORY[0x277CFBE18];
  v3 = [*(a1 + 32) donationDate];
  v4 = [*(a1 + 40) donationDate];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

uint64_t __28__CNDonationOrigin_isEqual___block_invoke_5(uint64_t a1)
{
  v2 = MEMORY[0x277CFBE18];
  v3 = [*(a1 + 32) expirationDate];
  v4 = [*(a1 + 40) expirationDate];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

- (unint64_t)hash
{
  v3 = MEMORY[0x277CFBE38];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __24__CNDonationOrigin_hash__block_invoke;
  v14[3] = &unk_278569900;
  v14[4] = self;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __24__CNDonationOrigin_hash__block_invoke_2;
  v13[3] = &unk_278569900;
  v13[4] = self;
  v4 = MEMORY[0x22AA69CD0](v13, a2);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __24__CNDonationOrigin_hash__block_invoke_3;
  v12[3] = &unk_278569900;
  v12[4] = self;
  v5 = MEMORY[0x22AA69CD0](v12);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __24__CNDonationOrigin_hash__block_invoke_4;
  v11[3] = &unk_278569900;
  v11[4] = self;
  v6 = MEMORY[0x22AA69CD0](v11);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __24__CNDonationOrigin_hash__block_invoke_5;
  v10[3] = &unk_278569900;
  v10[4] = self;
  v7 = MEMORY[0x22AA69CD0](v10);
  v8 = [v3 hashWithBlocks:{v14, v4, v5, v6, v7, 0}];

  return v8;
}

uint64_t __24__CNDonationOrigin_hash__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CFBE38];
  v2 = [*(a1 + 32) bundleIdentifier];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __24__CNDonationOrigin_hash__block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x277CFBE38];
  v2 = [*(a1 + 32) donationIdentifier];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __24__CNDonationOrigin_hash__block_invoke_3(uint64_t a1)
{
  v1 = MEMORY[0x277CFBE38];
  v2 = [*(a1 + 32) clusterIdentifier];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __24__CNDonationOrigin_hash__block_invoke_4(uint64_t a1)
{
  v1 = MEMORY[0x277CFBE38];
  v2 = [*(a1 + 32) donationDate];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __24__CNDonationOrigin_hash__block_invoke_5(uint64_t a1)
{
  v1 = MEMORY[0x277CFBE38];
  v2 = [*(a1 + 32) expirationDate];
  v3 = [v1 objectHash:v2];

  return v3;
}

- (CNDonationOrigin)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_bundleIdentifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_donationIdentifier"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_clusterIdentifier"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_donationDate"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_expirationDate"];

  v10 = [(CNDonationOrigin *)self initWithBundleIdentifier:v5 donationIdentifier:v6 clusterIdentifier:v7 donationDate:v8 expirationDate:v9];
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  bundleIdentifier = self->_bundleIdentifier;
  v5 = a3;
  [v5 encodeObject:bundleIdentifier forKey:@"_bundleIdentifier"];
  [v5 encodeObject:self->_donationIdentifier forKey:@"_donationIdentifier"];
  [v5 encodeObject:self->_clusterIdentifier forKey:@"_clusterIdentifier"];
  [v5 encodeObject:self->_donationDate forKey:@"_donationDate"];
  [v5 encodeObject:self->_expirationDate forKey:@"_expirationDate"];
}

- (CNDonationOrigin)initWithPropertyListRepresentation:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = [v3 objectForKeyedSubscript:CNDonationOriginBundleIdentifierKey];
  v22 = v4;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  objc_opt_class();
  v7 = [v3 objectForKeyedSubscript:CNDonationOriginDonationIdentifierKey];
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  objc_opt_class();
  v10 = [v3 objectForKeyedSubscript:CNDonationOriginClusterIdentifierKey];
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  objc_opt_class();
  v13 = [v3 objectForKeyedSubscript:CNDonationOriginDonationDateKey];
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  objc_opt_class();
  v16 = [v3 objectForKeyedSubscript:CNDonationOriginExpirationDateKey];

  if (objc_opt_isKindOfClass())
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;
  v19 = [(CNDonationOrigin *)self initWithBundleIdentifier:v6 donationIdentifier:v9 clusterIdentifier:v12 donationDate:v15 expirationDate:v18];

  return v19;
}

- (NSDictionary)propertyListRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:5];
  [v3 setObject:&unk_2838DF388 forKeyedSubscript:CNDonationOriginPlistEncodingVersionKey];
  v4 = [(CNDonationOrigin *)self bundleIdentifier];
  [v3 setObject:v4 forKeyedSubscript:CNDonationOriginBundleIdentifierKey];

  v5 = [(CNDonationOrigin *)self donationIdentifier];
  [v3 setObject:v5 forKeyedSubscript:CNDonationOriginDonationIdentifierKey];

  v6 = [(CNDonationOrigin *)self clusterIdentifier];
  v7 = [v6 length];

  if (v7)
  {
    v8 = [(CNDonationOrigin *)self clusterIdentifier];
    [v3 setObject:v8 forKeyedSubscript:CNDonationOriginClusterIdentifierKey];
  }

  v9 = [(CNDonationOrigin *)self donationDate];
  [v3 setObject:v9 forKeyedSubscript:CNDonationOriginDonationDateKey];

  v10 = [(CNDonationOrigin *)self expirationDate];
  [v3 setObject:v10 forKeyedSubscript:CNDonationOriginExpirationDateKey];

  return v3;
}

@end