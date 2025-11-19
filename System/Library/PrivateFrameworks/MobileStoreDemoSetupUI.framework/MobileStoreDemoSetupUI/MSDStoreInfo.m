@interface MSDStoreInfo
- (MSDStoreInfo)initWithDict:(id)a3;
- (id)_buildFullAddress:(id)a3;
- (id)_buildStoreDescription:(id)a3;
- (id)description;
@end

@implementation MSDStoreInfo

- (MSDStoreInfo)initWithDict:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = MSDStoreInfo;
  v5 = [(MSDStoreInfo *)&v30 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"hq"];
    v7 = [v4 objectForKey:@"confirm_store_selection"];
    v8 = [v4 objectForKey:@"confirmation_code"];
    v9 = [v4 objectForKey:@"apple_id"];
    v10 = [v4 objectForKey:@"store_name"];
    v11 = [v4 objectForKey:@"company_name"];
    v12 = [v4 objectForKey:@"latitude"];
    v28 = [v4 objectForKey:@"longitude"];
    v13 = [v4 objectForKey:@"nearby"];
    v29 = v6;
    v14 = v6;
    v15 = v7;
    v5->_isHQ = [v14 BOOLValue];
    v5->_confirmStoreSelection = [v7 BOOLValue];
    objc_storeStrong(&v5->_confirmationCode, v8);
    objc_storeStrong(&v5->_appleID, v9);
    objc_storeStrong(&v5->_storeName, v10);
    objc_storeStrong(&v5->_companyName, v11);
    v16 = [(MSDStoreInfo *)v5 _buildFullAddress:v4];
    fullAddress = v5->_fullAddress;
    v5->_fullAddress = v16;

    v18 = [v13 BOOLValue];
    v19 = 0;
    v5->_isNearby = v18;
    if (v12)
    {
      v20 = v28;
      if (v28)
      {
        [v12 doubleValue];
        v22 = v21;
        [v28 doubleValue];
        v19 = [objc_alloc(MEMORY[0x277CE41F8]) initWithLatitude:v22 longitude:v23];
      }
    }

    else
    {
      v20 = v28;
    }

    storeLocation = v5->_storeLocation;
    v5->_storeLocation = v19;

    v25 = [(MSDStoreInfo *)v5 _buildStoreDescription:v4];
    storeDescription = v5->_storeDescription;
    v5->_storeDescription = v25;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MSDStoreInfo *)self storeName];
  v7 = [(MSDStoreInfo *)self appleID];
  v8 = [(MSDStoreInfo *)self storeLocation];
  [v8 coordinate];
  v10 = v9;
  v11 = [(MSDStoreInfo *)self storeLocation];
  [v11 coordinate];
  v13 = [v3 stringWithFormat:@"<%@: %@%@ (%lf, %lf)>", v5, v6, v7, v10, v12];;

  return v13;
}

- (id)_buildFullAddress:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKey:@"address"];
  v5 = [v3 objectForKey:@"city"];
  v6 = [v3 objectForKey:@"state"];
  v7 = [v3 objectForKey:@"country_name"];
  v8 = [v3 objectForKey:@"country_code"];
  v9 = [v3 objectForKey:@"zip"];

  v10 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v11 = [v4 stringByTrimmingCharactersInSet:v10];

  v12 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v13 = [v5 stringByTrimmingCharactersInSet:v12];

  v14 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v15 = [v6 stringByTrimmingCharactersInSet:v14];

  v16 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v17 = [v7 stringByTrimmingCharactersInSet:v16];

  v18 = [v9 uppercaseString];

  v19 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v20 = [v18 stringByTrimmingCharactersInSet:v19];

  v21 = objc_alloc_init(MEMORY[0x277CBDB80]);
  v22 = objc_alloc_init(MEMORY[0x277CBDB60]);
  v23 = v22;
  if (v11)
  {
    [v22 setStreet:v11];
  }

  if (v13)
  {
    [v23 setCity:v13];
  }

  if (v15 && ([v11 isEqualToString:v15] & 1) == 0)
  {
    [v23 setState:v15];
  }

  if (v20)
  {
    [v23 setPostalCode:v20];
  }

  if (v8)
  {
    [v23 setISOCountryCode:v8];
  }

  if (v17)
  {
    [v23 setCountry:v17];
  }

  v24 = [v21 stringFromPostalAddress:v23];

  return v24;
}

- (id)_buildStoreDescription:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKey:@"address"];
  v5 = [v3 objectForKey:@"city"];
  v6 = [v3 objectForKey:@"distance_unit"];
  v7 = [v3 objectForKey:@"distance_in_unit"];

  v8 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v9 = [v4 stringByTrimmingCharactersInSet:v8];

  v10 = objc_opt_new();
  if (v7 && v6)
  {
    v11 = objc_alloc_init(MEMORY[0x277CD4DD0]);
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v7, v6];
    [v11 distanceFromString:v12];
    v13 = [v11 stringFromDistance:?];

    [v10 appendString:v13];
  }

  if (v9 | v5)
  {
    if ([v10 length])
    {
      [v10 appendString:@" • "];
    }

    if (v9 && v5)
    {
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@, %@", v9, v5];
      [v10 appendString:v14];

      goto LABEL_15;
    }

    if (v9)
    {
      v15 = v10;
      v16 = v9;
    }

    else
    {
      if (!v5)
      {
        goto LABEL_15;
      }

      v15 = v10;
      v16 = v5;
    }

    [v15 appendString:v16];
  }

LABEL_15:

  return v10;
}

@end