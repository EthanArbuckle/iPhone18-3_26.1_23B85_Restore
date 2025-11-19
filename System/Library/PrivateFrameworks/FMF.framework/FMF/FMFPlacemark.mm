@interface FMFPlacemark
- (BOOL)isEqual:(id)a3;
- (FMFPlacemark)initWithCoder:(id)a3;
- (FMFPlacemark)initWithDictionary:(id)a3;
- (FMFPlacemark)initWithLocality:(id)a3 administrativeArea:(id)a4 country:(id)a5 state:(id)a6 streetAddress:(id)a7 streetName:(id)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryValue;
- (id)formattedAddress;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FMFPlacemark

- (FMFPlacemark)initWithLocality:(id)a3 administrativeArea:(id)a4 country:(id)a5 state:(id)a6 streetAddress:(id)a7 streetName:(id)a8
{
  v35[4] = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = [(FMFPlacemark *)self init];
  v21 = v20;
  if (v20)
  {
    if (v15)
    {
      v22 = v15;
    }

    else
    {
      v22 = &stru_285D7AA10;
    }

    objc_storeStrong(&v20->_administrativeArea, v22);
    if (v16)
    {
      v23 = v16;
    }

    else
    {
      v23 = &stru_285D7AA10;
    }

    objc_storeStrong(&v21->_country, v23);
    if (v14)
    {
      v24 = v14;
    }

    else
    {
      v24 = &stru_285D7AA10;
    }

    objc_storeStrong(&v21->_locality, v24);
    if (v17)
    {
      v25 = v17;
    }

    else
    {
      v25 = &stru_285D7AA10;
    }

    objc_storeStrong(&v21->_state, v25);
    if (v18)
    {
      v26 = v18;
    }

    else
    {
      v26 = &stru_285D7AA10;
    }

    objc_storeStrong(&v21->_streetAddress, v26);
    if (v19)
    {
      v27 = v19;
    }

    else
    {
      v27 = &stru_285D7AA10;
    }

    objc_storeStrong(&v21->_streetName, v27);
    locality = v21->_locality;
    v35[0] = v21->_streetName;
    v35[1] = locality;
    country = v21->_country;
    v35[2] = v21->_state;
    v35[3] = country;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:4];
    v31 = [v30 fm_filter:&__block_literal_global_2];
    formattedAddressLines = v21->_formattedAddressLines;
    v21->_formattedAddressLines = v31;
  }

  v33 = *MEMORY[0x277D85DE8];
  return v21;
}

- (FMFPlacemark)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [(FMFPlacemark *)self init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"administrativeArea"];
    v7 = [MEMORY[0x277CBEB68] null];
    if (v6 == v7)
    {
      v8 = 0;
    }

    else
    {
      v8 = [v4 objectForKeyedSubscript:@"administrativeArea"];
    }

    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = &stru_285D7AA10;
    }

    objc_storeStrong(&v5->_administrativeArea, v9);
    if (v6 != v7)
    {
    }

    v10 = [v4 objectForKeyedSubscript:@"country"];
    v11 = [MEMORY[0x277CBEB68] null];
    if (v10 == v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = [v4 objectForKeyedSubscript:@"country"];
    }

    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = &stru_285D7AA10;
    }

    objc_storeStrong(&v5->_country, v13);
    if (v10 != v11)
    {
    }

    v14 = [v4 objectForKeyedSubscript:@"formattedAddressLines"];
    v15 = [MEMORY[0x277CBEB68] null];
    if (v14 == v15)
    {
      v19 = objc_opt_new();
      formattedAddressLines = v5->_formattedAddressLines;
      v5->_formattedAddressLines = v19;
    }

    else
    {
      v16 = [v4 objectForKeyedSubscript:@"formattedAddressLines"];
      formattedAddressLines = v16;
      if (v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = objc_opt_new();
      }

      v20 = v5->_formattedAddressLines;
      v5->_formattedAddressLines = v18;
    }

    v21 = [v4 objectForKeyedSubscript:@"locality"];
    v22 = [MEMORY[0x277CBEB68] null];
    if (v21 == v22)
    {
      v23 = 0;
    }

    else
    {
      v23 = [v4 objectForKeyedSubscript:@"locality"];
    }

    if (v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = &stru_285D7AA10;
    }

    objc_storeStrong(&v5->_locality, v24);
    if (v21 != v22)
    {
    }

    v25 = [v4 objectForKeyedSubscript:@"stateCode"];
    v26 = [MEMORY[0x277CBEB68] null];
    if (v25 == v26)
    {
      v27 = 0;
    }

    else
    {
      v27 = [v4 objectForKeyedSubscript:@"stateCode"];
    }

    if (v27)
    {
      v28 = v27;
    }

    else
    {
      v28 = &stru_285D7AA10;
    }

    objc_storeStrong(&v5->_state, v28);
    if (v25 != v26)
    {
    }

    v29 = [v4 objectForKeyedSubscript:@"streetAddress"];
    v30 = [MEMORY[0x277CBEB68] null];
    if (v29 == v30)
    {
      v31 = 0;
    }

    else
    {
      v31 = [v4 objectForKeyedSubscript:@"streetAddress"];
    }

    if (v31)
    {
      v32 = v31;
    }

    else
    {
      v32 = &stru_285D7AA10;
    }

    objc_storeStrong(&v5->_streetAddress, v32);
    if (v29 != v30)
    {
    }

    v33 = [v4 objectForKeyedSubscript:@"streetName"];
    v34 = [MEMORY[0x277CBEB68] null];
    if (v33 == v34)
    {
      v35 = 0;
    }

    else
    {
      v35 = [v4 objectForKeyedSubscript:@"streetName"];
    }

    if (v35)
    {
      v36 = v35;
    }

    else
    {
      v36 = &stru_285D7AA10;
    }

    objc_storeStrong(&v5->_streetName, v36);
    if (v33 != v34)
    {
    }
  }

  return v5;
}

- (FMFPlacemark)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(FMFPlacemark *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"administrativeArea"];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = &stru_285D7AA10;
    }

    objc_storeStrong(&v5->_administrativeArea, v8);

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"country"];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = &stru_285D7AA10;
    }

    objc_storeStrong(&v5->_country, v11);

    v12 = MEMORY[0x277CBEB98];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"formattedAddressLines"];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = objc_opt_new();
    }

    formattedAddressLines = v5->_formattedAddressLines;
    v5->_formattedAddressLines = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"locality"];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = &stru_285D7AA10;
    }

    objc_storeStrong(&v5->_locality, v21);

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stateCode"];
    v23 = v22;
    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = &stru_285D7AA10;
    }

    objc_storeStrong(&v5->_state, v24);

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"streetAddress"];
    v26 = v25;
    if (v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = &stru_285D7AA10;
    }

    objc_storeStrong(&v5->_streetAddress, v27);

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"streetName"];
    v29 = v28;
    if (v28)
    {
      v30 = v28;
    }

    else
    {
      v30 = &stru_285D7AA10;
    }

    objc_storeStrong(&v5->_streetName, v30);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  administrativeArea = self->_administrativeArea;
  v5 = a3;
  [v5 encodeObject:administrativeArea forKey:@"administrativeArea"];
  [v5 encodeObject:self->_country forKey:@"country"];
  [v5 encodeObject:self->_formattedAddressLines forKey:@"formattedAddressLines"];
  [v5 encodeObject:self->_locality forKey:@"locality"];
  [v5 encodeObject:self->_state forKey:@"stateCode"];
  [v5 encodeObject:self->_streetAddress forKey:@"streetAddress"];
  [v5 encodeObject:self->_streetName forKey:@"streetName"];
}

- (id)formattedAddress
{
  v2 = [(FMFPlacemark *)self formattedAddressLines];
  v3 = [v2 componentsJoinedByString:@"\n"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &stru_285D7AA10;
  }

  v6 = v5;

  return v5;
}

- (id)dictionaryValue
{
  v3 = objc_opt_new();
  [v3 setObject:self->_administrativeArea forKeyedSubscript:@"administrativeArea"];
  [v3 setObject:self->_country forKeyedSubscript:@"country"];
  [v3 setObject:self->_formattedAddressLines forKeyedSubscript:@"formattedAddressLines"];
  [v3 setObject:self->_locality forKeyedSubscript:@"locality"];
  [v3 setObject:self->_streetName forKeyedSubscript:@"streetName"];
  [v3 setObject:self->_streetAddress forKeyedSubscript:@"streetAddress"];
  [v3 setObject:self->_state forKeyedSubscript:@"stateCode"];
  v4 = [v3 copy];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setAdministrativeArea:self->_administrativeArea];
  [v4 setCountry:self->_country];
  [v4 setFormattedAddressLines:self->_formattedAddressLines];
  [v4 setLocality:self->_locality];
  [v4 setState:self->_state];
  [v4 setStreetAddress:self->_streetAddress];
  [v4 setStreetName:self->_streetName];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(FMFPlacemark *)self administrativeArea];
    v7 = [v5 administrativeArea];
    if ([v6 isEqualToString:v7])
    {
      v8 = [(FMFPlacemark *)self country];
      v9 = [v5 country];
      if ([v8 isEqualToString:v9])
      {
        v10 = [(FMFPlacemark *)self formattedAddressLines];
        v11 = [v5 formattedAddressLines];
        if ([v10 isEqualToArray:v11])
        {
          v12 = [(FMFPlacemark *)self locality];
          v25 = [v5 locality];
          v26 = v12;
          if ([v12 isEqualToString:v25])
          {
            v13 = [(FMFPlacemark *)self state];
            v23 = [v5 state];
            v24 = v13;
            if ([v13 isEqualToString:v23])
            {
              v14 = [(FMFPlacemark *)self streetAddress];
              v15 = [v5 streetAddress];
              v22 = v14;
              v16 = v14;
              v17 = v15;
              if ([v16 isEqualToString:v15])
              {
                v21 = [(FMFPlacemark *)self streetName];
                v20 = [v5 streetName];
                v18 = [v21 isEqualToString:v20];
              }

              else
              {
                v18 = 0;
              }
            }

            else
            {
              v18 = 0;
            }
          }

          else
          {
            v18 = 0;
          }
        }

        else
        {
          v18 = 0;
        }
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (unint64_t)hash
{
  v3 = [(FMFPlacemark *)self administrativeArea];
  v4 = [v3 hash];
  v5 = [(FMFPlacemark *)self country];
  v6 = [v5 hash] ^ v4;
  v7 = [(FMFPlacemark *)self formattedAddressLines];
  v8 = [v7 hash];
  v9 = [(FMFPlacemark *)self locality];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(FMFPlacemark *)self state];
  v12 = [v11 hash];
  v13 = [(FMFPlacemark *)self streetAddress];
  v14 = v12 ^ [v13 hash];
  v15 = [(FMFPlacemark *)self streetName];
  v16 = v14 ^ [v15 hash];

  return v10 ^ v16;
}

@end