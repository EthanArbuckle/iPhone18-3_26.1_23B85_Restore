@interface FMFPlacemark
- (BOOL)isEqual:(id)equal;
- (FMFPlacemark)initWithCoder:(id)coder;
- (FMFPlacemark)initWithDictionary:(id)dictionary;
- (FMFPlacemark)initWithLocality:(id)locality administrativeArea:(id)area country:(id)country state:(id)state streetAddress:(id)address streetName:(id)name;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryValue;
- (id)formattedAddress;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FMFPlacemark

- (FMFPlacemark)initWithLocality:(id)locality administrativeArea:(id)area country:(id)country state:(id)state streetAddress:(id)address streetName:(id)name
{
  v35[4] = *MEMORY[0x277D85DE8];
  localityCopy = locality;
  areaCopy = area;
  countryCopy = country;
  stateCopy = state;
  addressCopy = address;
  nameCopy = name;
  v20 = [(FMFPlacemark *)self init];
  v21 = v20;
  if (v20)
  {
    if (areaCopy)
    {
      v22 = areaCopy;
    }

    else
    {
      v22 = &stru_285D7AA10;
    }

    objc_storeStrong(&v20->_administrativeArea, v22);
    if (countryCopy)
    {
      v23 = countryCopy;
    }

    else
    {
      v23 = &stru_285D7AA10;
    }

    objc_storeStrong(&v21->_country, v23);
    if (localityCopy)
    {
      v24 = localityCopy;
    }

    else
    {
      v24 = &stru_285D7AA10;
    }

    objc_storeStrong(&v21->_locality, v24);
    if (stateCopy)
    {
      v25 = stateCopy;
    }

    else
    {
      v25 = &stru_285D7AA10;
    }

    objc_storeStrong(&v21->_state, v25);
    if (addressCopy)
    {
      v26 = addressCopy;
    }

    else
    {
      v26 = &stru_285D7AA10;
    }

    objc_storeStrong(&v21->_streetAddress, v26);
    if (nameCopy)
    {
      v27 = nameCopy;
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

- (FMFPlacemark)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [(FMFPlacemark *)self init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"administrativeArea"];
    null = [MEMORY[0x277CBEB68] null];
    if (v6 == null)
    {
      v8 = 0;
    }

    else
    {
      v8 = [dictionaryCopy objectForKeyedSubscript:@"administrativeArea"];
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
    if (v6 != null)
    {
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"country"];
    null2 = [MEMORY[0x277CBEB68] null];
    if (v10 == null2)
    {
      v12 = 0;
    }

    else
    {
      v12 = [dictionaryCopy objectForKeyedSubscript:@"country"];
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
    if (v10 != null2)
    {
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"formattedAddressLines"];
    null3 = [MEMORY[0x277CBEB68] null];
    if (v14 == null3)
    {
      v19 = objc_opt_new();
      formattedAddressLines = v5->_formattedAddressLines;
      v5->_formattedAddressLines = v19;
    }

    else
    {
      v16 = [dictionaryCopy objectForKeyedSubscript:@"formattedAddressLines"];
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

    v21 = [dictionaryCopy objectForKeyedSubscript:@"locality"];
    null4 = [MEMORY[0x277CBEB68] null];
    if (v21 == null4)
    {
      v23 = 0;
    }

    else
    {
      v23 = [dictionaryCopy objectForKeyedSubscript:@"locality"];
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
    if (v21 != null4)
    {
    }

    v25 = [dictionaryCopy objectForKeyedSubscript:@"stateCode"];
    null5 = [MEMORY[0x277CBEB68] null];
    if (v25 == null5)
    {
      v27 = 0;
    }

    else
    {
      v27 = [dictionaryCopy objectForKeyedSubscript:@"stateCode"];
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
    if (v25 != null5)
    {
    }

    v29 = [dictionaryCopy objectForKeyedSubscript:@"streetAddress"];
    null6 = [MEMORY[0x277CBEB68] null];
    if (v29 == null6)
    {
      v31 = 0;
    }

    else
    {
      v31 = [dictionaryCopy objectForKeyedSubscript:@"streetAddress"];
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
    if (v29 != null6)
    {
    }

    v33 = [dictionaryCopy objectForKeyedSubscript:@"streetName"];
    null7 = [MEMORY[0x277CBEB68] null];
    if (v33 == null7)
    {
      v35 = 0;
    }

    else
    {
      v35 = [dictionaryCopy objectForKeyedSubscript:@"streetName"];
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
    if (v33 != null7)
    {
    }
  }

  return v5;
}

- (FMFPlacemark)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(FMFPlacemark *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"administrativeArea"];
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

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"country"];
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
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"formattedAddressLines"];
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

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"locality"];
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

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stateCode"];
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

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"streetAddress"];
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

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"streetName"];
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

- (void)encodeWithCoder:(id)coder
{
  administrativeArea = self->_administrativeArea;
  coderCopy = coder;
  [coderCopy encodeObject:administrativeArea forKey:@"administrativeArea"];
  [coderCopy encodeObject:self->_country forKey:@"country"];
  [coderCopy encodeObject:self->_formattedAddressLines forKey:@"formattedAddressLines"];
  [coderCopy encodeObject:self->_locality forKey:@"locality"];
  [coderCopy encodeObject:self->_state forKey:@"stateCode"];
  [coderCopy encodeObject:self->_streetAddress forKey:@"streetAddress"];
  [coderCopy encodeObject:self->_streetName forKey:@"streetName"];
}

- (id)formattedAddress
{
  formattedAddressLines = [(FMFPlacemark *)self formattedAddressLines];
  v3 = [formattedAddressLines componentsJoinedByString:@"\n"];
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

- (id)copyWithZone:(_NSZone *)zone
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    administrativeArea = [(FMFPlacemark *)self administrativeArea];
    administrativeArea2 = [v5 administrativeArea];
    if ([administrativeArea isEqualToString:administrativeArea2])
    {
      country = [(FMFPlacemark *)self country];
      country2 = [v5 country];
      if ([country isEqualToString:country2])
      {
        formattedAddressLines = [(FMFPlacemark *)self formattedAddressLines];
        formattedAddressLines2 = [v5 formattedAddressLines];
        if ([formattedAddressLines isEqualToArray:formattedAddressLines2])
        {
          locality = [(FMFPlacemark *)self locality];
          locality2 = [v5 locality];
          v26 = locality;
          if ([locality isEqualToString:locality2])
          {
            state = [(FMFPlacemark *)self state];
            state2 = [v5 state];
            v24 = state;
            if ([state isEqualToString:state2])
            {
              streetAddress = [(FMFPlacemark *)self streetAddress];
              streetAddress2 = [v5 streetAddress];
              v22 = streetAddress;
              v16 = streetAddress;
              v17 = streetAddress2;
              if ([v16 isEqualToString:streetAddress2])
              {
                streetName = [(FMFPlacemark *)self streetName];
                streetName2 = [v5 streetName];
                v18 = [streetName isEqualToString:streetName2];
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
  administrativeArea = [(FMFPlacemark *)self administrativeArea];
  v4 = [administrativeArea hash];
  country = [(FMFPlacemark *)self country];
  v6 = [country hash] ^ v4;
  formattedAddressLines = [(FMFPlacemark *)self formattedAddressLines];
  v8 = [formattedAddressLines hash];
  locality = [(FMFPlacemark *)self locality];
  v10 = v6 ^ v8 ^ [locality hash];
  state = [(FMFPlacemark *)self state];
  v12 = [state hash];
  streetAddress = [(FMFPlacemark *)self streetAddress];
  v14 = v12 ^ [streetAddress hash];
  streetName = [(FMFPlacemark *)self streetName];
  v16 = v14 ^ [streetName hash];

  return v10 ^ v16;
}

@end