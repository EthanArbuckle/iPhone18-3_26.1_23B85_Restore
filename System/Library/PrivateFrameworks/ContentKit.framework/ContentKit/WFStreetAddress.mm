@interface WFStreetAddress
+ (id)objectWithWFSerializedRepresentation:(id)representation;
+ (id)streetAddressWithPlacemark:(id)placemark label:(id)label;
+ (id)streetAddressWithPostalAddress:(id)address label:(id)label;
+ (id)streetAddressWithStreet:(id)street subLocality:(id)locality city:(id)city subAdministrativeArea:(id)area state:(id)state postalCode:(id)code country:(id)country isoCountryCode:(id)self0 label:(id)self1;
+ (id)streetAddressWithTextCheckingResult:(id)result;
+ (id)streetAddressesInString:(id)string error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (CNPostalAddress)postalAddress;
- (NSString)addressString;
- (NSString)localizedLabel;
- (NSString)shortAddressString;
- (NSString)street;
- (NSString)wfName;
- (WFStreetAddress)initWithPostalAddress:(id)address placemark:(id)placemark formattedAddress:(id)formattedAddress label:(id)label;
- (WFStreetAddress)initWithStreet:(id)street subLocality:(id)locality city:(id)city subAdministrativeArea:(id)area state:(id)state postalCode:(id)code country:(id)country isoCountryCode:(id)self0 placemark:(id)self1 formattedAddress:(id)self2 label:(id)self3;
- (WFStreetAddress)streetAddressWithLabel:(id)label;
- (id)wfSerializedRepresentation;
- (unint64_t)hash;
@end

@implementation WFStreetAddress

- (id)wfSerializedRepresentation
{
  v3 = objc_opt_new();
  [v3 setValue:self->_street forKey:@"link.contentkit.addressstreet"];
  [v3 setValue:self->_subLocality forKey:@"link.contentkit.addresssublocality"];
  [v3 setValue:self->_city forKey:@"link.contentkit.addresscity"];
  [v3 setValue:self->_subAdministrativeArea forKey:@"link.contentkit.addresssubadministrativearea"];
  [v3 setValue:self->_state forKey:@"link.contentkit.addressstate"];
  [v3 setValue:self->_postalCode forKey:@"link.contentkit.addresspostalcode"];
  [v3 setValue:self->_country forKey:@"link.contentkit.addresscountry"];
  [v3 setValue:self->_isoCountryCode forKey:@"link.contentkit.addressisocountrycode"];
  placemark = self->_placemark;
  if (placemark)
  {
    v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:placemark requiringSecureCoding:1 error:0];
    [v3 setValue:v5 forKey:@"link.contentkit.addressplacemark"];
  }

  else
  {
    [v3 setValue:0 forKey:@"link.contentkit.addressplacemark"];
  }

  [v3 setValue:self->_addressString forKey:@"link.contentkit.addressstring"];
  [v3 setValue:self->_label forKey:@"link.contentkit.addresslabel"];

  return v3;
}

- (unint64_t)hash
{
  v18 = [(NSString *)self->_street hash];
  subLocality = [(WFStreetAddress *)self subLocality];
  v17 = [subLocality hash];
  city = [(WFStreetAddress *)self city];
  v16 = [city hash];
  subAdministrativeArea = [(WFStreetAddress *)self subAdministrativeArea];
  v15 = [subAdministrativeArea hash];
  state = [(WFStreetAddress *)self state];
  v5 = [state hash];
  postalCode = [(WFStreetAddress *)self postalCode];
  v7 = [postalCode hash];
  country = [(WFStreetAddress *)self country];
  v9 = [country hash];
  isoCountryCode = [(WFStreetAddress *)self isoCountryCode];
  v11 = [isoCountryCode hash];
  label = [(WFStreetAddress *)self label];
  v13 = v7 ^ v9 ^ v11 ^ [label hash] ^ 0x390AF033;

  return v18 ^ v17 ^ v16 ^ v15 ^ v5 ^ v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v22 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ((street = self->_street, street == equalCopy->_street) || [(NSString *)street isEqualToString:?]))
    {
      subLocality = [(WFStreetAddress *)self subLocality];
      subLocality2 = [(WFStreetAddress *)equalCopy subLocality];
      if (subLocality == subLocality2 || [subLocality isEqualToString:subLocality2])
      {
        city = [(WFStreetAddress *)self city];
        city2 = [(WFStreetAddress *)equalCopy city];
        if (city == city2 || [city isEqualToString:city2])
        {
          subAdministrativeArea = [(WFStreetAddress *)self subAdministrativeArea];
          subAdministrativeArea2 = [(WFStreetAddress *)equalCopy subAdministrativeArea];
          if (subAdministrativeArea == subAdministrativeArea2 || [subAdministrativeArea isEqualToString:subAdministrativeArea2])
          {
            state = [(WFStreetAddress *)self state];
            state2 = [(WFStreetAddress *)equalCopy state];
            if (state == state2 || [state isEqualToString:state2])
            {
              v30 = subAdministrativeArea;
              v31 = state2;
              postalCode = [(WFStreetAddress *)self postalCode];
              postalCode2 = [(WFStreetAddress *)equalCopy postalCode];
              if (postalCode == postalCode2 || [postalCode isEqualToString:postalCode2])
              {
                v28 = subAdministrativeArea2;
                v29 = postalCode2;
                country = [(WFStreetAddress *)self country];
                country2 = [(WFStreetAddress *)equalCopy country];
                v27 = country;
                if (country == country2 || [country isEqualToString:country2])
                {
                  v26 = country2;
                  isoCountryCode = [(WFStreetAddress *)self isoCountryCode];
                  isoCountryCode2 = [(WFStreetAddress *)equalCopy isoCountryCode];
                  if (isoCountryCode == isoCountryCode2 || [isoCountryCode isEqualToString:isoCountryCode2])
                  {
                    v20 = [(WFStreetAddress *)self label:isoCountryCode2];
                    label = [(WFStreetAddress *)equalCopy label];
                    if (v20 == label)
                    {
                      v22 = 1;
                    }

                    else
                    {
                      v22 = [v20 isEqualToString:label];
                    }

                    isoCountryCode2 = v24;
                    state = v25;
                  }

                  else
                  {
                    v22 = 0;
                  }

                  country2 = v26;
                }

                else
                {
                  v22 = 0;
                }

                subAdministrativeArea2 = v28;
                postalCode2 = v29;
              }

              else
              {
                v22 = 0;
              }

              subAdministrativeArea = v30;
              state2 = v31;
            }

            else
            {
              v22 = 0;
            }
          }

          else
          {
            v22 = 0;
          }
        }

        else
        {
          v22 = 0;
        }
      }

      else
      {
        v22 = 0;
      }
    }

    else
    {
      v22 = 0;
    }
  }

  return v22;
}

- (NSString)localizedLabel
{
  label = [(WFStreetAddress *)self label];
  if (label)
  {
    v3 = [WFContactLabeledValue localizedStringForLabel:label];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)wfName
{
  addressString = [(WFStreetAddress *)self addressString];
  v3 = [addressString componentsSeparatedByString:@"\n"];
  v4 = [v3 componentsJoinedByString:{@", "}];

  return v4;
}

- (NSString)addressString
{
  p_addressString = &self->_addressString;
  addressString = self->_addressString;
  if (!addressString)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2050000000;
    v5 = getCNPostalAddressFormatterClass_softClass;
    v25 = getCNPostalAddressFormatterClass_softClass;
    if (!getCNPostalAddressFormatterClass_softClass)
    {
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __getCNPostalAddressFormatterClass_block_invoke;
      v21[3] = &unk_27834A178;
      v21[4] = &v22;
      __getCNPostalAddressFormatterClass_block_invoke(v21);
      v5 = v23[3];
    }

    v6 = v5;
    _Block_object_dispose(&v22, 8);
    v7 = objc_opt_new();
    placemark = [(WFStreetAddress *)self placemark];
    name = [placemark name];
    postalAddress = [(WFStreetAddress *)self postalAddress];
    street = [postalAddress street];
    if ([name isEqualToString:street])
    {
      name2 = 0;
    }

    else
    {
      placemark2 = [(WFStreetAddress *)self placemark];
      name2 = [placemark2 name];
    }

    postalAddress2 = [(WFStreetAddress *)self postalAddress];
    v15 = [v7 attributedStringFromPostalAddress:postalAddress2 name:name2 organization:0 attributes:0];
    string = [v15 string];

    alphanumericCharacterSet = [MEMORY[0x277CCA900] alphanumericCharacterSet];
    v18 = [(__CFString *)string rangeOfCharacterFromSet:alphanumericCharacterSet];

    if (v18 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v19 = &stru_282F53518;
    }

    else
    {
      v19 = string;
    }

    objc_storeStrong(p_addressString, v19);

    addressString = self->_addressString;
  }

  return addressString;
}

- (NSString)street
{
  street = self->_street;
  if (street)
  {
    name = street;
  }

  else
  {
    placemark = [(WFStreetAddress *)self placemark];
    name = [placemark name];
  }

  return name;
}

- (NSString)shortAddressString
{
  street = [(WFStreetAddress *)self street];
  v4 = street;
  if (street)
  {
    v5 = street;
  }

  else
  {
    city = [(WFStreetAddress *)self city];
    v7 = city;
    if (city)
    {
      v5 = city;
    }

    else
    {
      state = [(WFStreetAddress *)self state];
      v9 = state;
      if (state)
      {
        country = state;
      }

      else
      {
        country = [(WFStreetAddress *)self country];
      }

      v5 = country;
    }
  }

  return v5;
}

- (CNPostalAddress)postalAddress
{
  postalAddress = self->_postalAddress;
  if (!postalAddress)
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x2050000000;
    v4 = getCNMutablePostalAddressClass_softClass;
    v30 = getCNMutablePostalAddressClass_softClass;
    if (!getCNMutablePostalAddressClass_softClass)
    {
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __getCNMutablePostalAddressClass_block_invoke;
      v26[3] = &unk_27834A178;
      v26[4] = &v27;
      __getCNMutablePostalAddressClass_block_invoke(v26);
      v4 = v28[3];
    }

    v5 = v4;
    _Block_object_dispose(&v27, 8);
    v6 = objc_opt_new();
    street = [(WFStreetAddress *)self street];

    if (street)
    {
      street2 = [(WFStreetAddress *)self street];
      [v6 setStreet:street2];
    }

    subLocality = [(WFStreetAddress *)self subLocality];

    if (subLocality)
    {
      subLocality2 = [(WFStreetAddress *)self subLocality];
      [v6 setSubLocality:subLocality2];
    }

    city = [(WFStreetAddress *)self city];

    if (city)
    {
      city2 = [(WFStreetAddress *)self city];
      [v6 setCity:city2];
    }

    subAdministrativeArea = [(WFStreetAddress *)self subAdministrativeArea];

    if (subAdministrativeArea)
    {
      subAdministrativeArea2 = [(WFStreetAddress *)self subAdministrativeArea];
      [v6 setSubAdministrativeArea:subAdministrativeArea2];
    }

    state = [(WFStreetAddress *)self state];

    if (state)
    {
      state2 = [(WFStreetAddress *)self state];
      [v6 setState:state2];
    }

    postalCode = [(WFStreetAddress *)self postalCode];

    if (postalCode)
    {
      postalCode2 = [(WFStreetAddress *)self postalCode];
      [v6 setPostalCode:postalCode2];
    }

    country = [(WFStreetAddress *)self country];

    if (country)
    {
      country2 = [(WFStreetAddress *)self country];
      [v6 setCountry:country2];
    }

    isoCountryCode = [(WFStreetAddress *)self isoCountryCode];

    if (isoCountryCode)
    {
      isoCountryCode2 = [(WFStreetAddress *)self isoCountryCode];
      [v6 setISOCountryCode:isoCountryCode2];
    }

    v23 = [v6 copy];
    v24 = self->_postalAddress;
    self->_postalAddress = v23;

    postalAddress = self->_postalAddress;
  }

  return postalAddress;
}

- (WFStreetAddress)streetAddressWithLabel:(id)label
{
  labelCopy = label;
  v16 = objc_alloc(objc_opt_class());
  street = [(WFStreetAddress *)self street];
  subLocality = [(WFStreetAddress *)self subLocality];
  city = [(WFStreetAddress *)self city];
  subAdministrativeArea = [(WFStreetAddress *)self subAdministrativeArea];
  state = [(WFStreetAddress *)self state];
  postalCode = [(WFStreetAddress *)self postalCode];
  country = [(WFStreetAddress *)self country];
  isoCountryCode = [(WFStreetAddress *)self isoCountryCode];
  placemark = [(WFStreetAddress *)self placemark];
  addressString = [(WFStreetAddress *)self addressString];
  v13 = [v16 initWithStreet:street subLocality:subLocality city:city subAdministrativeArea:subAdministrativeArea state:state postalCode:postalCode country:country isoCountryCode:isoCountryCode placemark:placemark formattedAddress:addressString label:labelCopy];

  return v13;
}

- (WFStreetAddress)initWithStreet:(id)street subLocality:(id)locality city:(id)city subAdministrativeArea:(id)area state:(id)state postalCode:(id)code country:(id)country isoCountryCode:(id)self0 placemark:(id)self1 formattedAddress:(id)self2 label:(id)self3
{
  streetCopy = street;
  localityCopy = locality;
  cityCopy = city;
  areaCopy = area;
  stateCopy = state;
  codeCopy = code;
  countryCopy = country;
  countryCodeCopy = countryCode;
  placemarkCopy = placemark;
  addressCopy = address;
  labelCopy = label;
  v27 = [(WFStreetAddress *)self init];
  if (v27)
  {
    v28 = [streetCopy copy];
    street = v27->_street;
    v27->_street = v28;

    v30 = [localityCopy copy];
    subLocality = v27->_subLocality;
    v27->_subLocality = v30;

    v32 = [cityCopy copy];
    city = v27->_city;
    v27->_city = v32;

    v34 = [areaCopy copy];
    subAdministrativeArea = v27->_subAdministrativeArea;
    v27->_subAdministrativeArea = v34;

    v36 = [stateCopy copy];
    state = v27->_state;
    v27->_state = v36;

    v38 = [codeCopy copy];
    postalCode = v27->_postalCode;
    v27->_postalCode = v38;

    v40 = [countryCopy copy];
    country = v27->_country;
    v27->_country = v40;

    v42 = [countryCodeCopy copy];
    isoCountryCode = v27->_isoCountryCode;
    v27->_isoCountryCode = v42;

    v44 = [placemarkCopy copy];
    placemark = v27->_placemark;
    v27->_placemark = v44;

    v46 = [addressCopy copy];
    addressString = v27->_addressString;
    v27->_addressString = v46;

    v48 = [labelCopy copy];
    label = v27->_label;
    v27->_label = v48;

    v50 = v27;
  }

  return v27;
}

- (WFStreetAddress)initWithPostalAddress:(id)address placemark:(id)placemark formattedAddress:(id)formattedAddress label:(id)label
{
  selfCopy = address;
  if (address)
  {
    labelCopy = label;
    formattedAddressCopy = formattedAddress;
    placemarkCopy = placemark;
    v13 = selfCopy;
    street = [(WFStreetAddress *)v13 street];
    subLocality = [(WFStreetAddress *)v13 subLocality];
    city = [(WFStreetAddress *)v13 city];
    subAdministrativeArea = [(WFStreetAddress *)v13 subAdministrativeArea];
    state = [(WFStreetAddress *)v13 state];
    postalCode = [(WFStreetAddress *)v13 postalCode];
    country = [(WFStreetAddress *)v13 country];
    iSOCountryCode = [(WFStreetAddress *)v13 ISOCountryCode];

    v18 = [(WFStreetAddress *)self initWithStreet:street subLocality:subLocality city:city subAdministrativeArea:subAdministrativeArea state:state postalCode:postalCode country:country isoCountryCode:iSOCountryCode placemark:placemarkCopy formattedAddress:formattedAddressCopy label:labelCopy];
    self = v18;

    selfCopy = self;
  }

  return selfCopy;
}

+ (id)objectWithWFSerializedRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [representationCopy wfObjectOfClass:objc_opt_class() forKey:@"link.contentkit.addressplacemark"];
  selfCopy = self;
  v24 = v5;
  if ([v5 length])
  {
    v6 = MEMORY[0x277CCAAC8];
    v27 = 0;
    v28 = &v27;
    v29 = 0x2050000000;
    v7 = getCLPlacemarkClass_softClass;
    v30 = getCLPlacemarkClass_softClass;
    if (!getCLPlacemarkClass_softClass)
    {
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __getCLPlacemarkClass_block_invoke;
      v26[3] = &unk_27834A178;
      v26[4] = &v27;
      __getCLPlacemarkClass_block_invoke(v26);
      v7 = v28[3];
    }

    v8 = v7;
    _Block_object_dispose(&v27, 8);
    v25 = 0;
    v9 = [v6 unarchivedObjectOfClass:v7 fromData:v5 error:&v25];
    v22 = v25;
  }

  else
  {
    v9 = 0;
    v22 = 0;
  }

  v20 = [representationCopy wfObjectOfClass:objc_opt_class() forKey:@"link.contentkit.addressstreet"];
  v10 = [representationCopy wfObjectOfClass:objc_opt_class() forKey:@"link.contentkit.addresssublocality"];
  v11 = [representationCopy wfObjectOfClass:objc_opt_class() forKey:@"link.contentkit.addresscity"];
  v12 = [representationCopy wfObjectOfClass:objc_opt_class() forKey:@"link.contentkit.addresssubadministrativearea"];
  v13 = [representationCopy wfObjectOfClass:objc_opt_class() forKey:@"link.contentkit.addressstate"];
  v21 = [representationCopy wfObjectOfClass:objc_opt_class() forKey:@"link.contentkit.addresspostalcode"];
  v14 = [representationCopy wfObjectOfClass:objc_opt_class() forKey:@"link.contentkit.addresscountry"];
  v15 = [representationCopy wfObjectOfClass:objc_opt_class() forKey:@"link.contentkit.addressisocountrycode"];
  v16 = [representationCopy wfObjectOfClass:objc_opt_class() forKey:@"link.contentkit.addressstring"];
  v17 = [representationCopy wfObjectOfClass:objc_opt_class() forKey:@"link.contentkit.addresslabel"];
  v19 = [[selfCopy alloc] initWithStreet:v20 subLocality:v10 city:v11 subAdministrativeArea:v12 state:v13 postalCode:v21 country:v14 isoCountryCode:v15 placemark:v9 formattedAddress:v16 label:v17];

  return v19;
}

+ (id)streetAddressWithPostalAddress:(id)address label:(id)label
{
  labelCopy = label;
  addressCopy = address;
  v8 = [[self alloc] initWithPostalAddress:addressCopy placemark:0 formattedAddress:0 label:labelCopy];

  return v8;
}

+ (id)streetAddressWithPlacemark:(id)placemark label:(id)label
{
  labelCopy = label;
  placemarkCopy = placemark;
  v8 = [self alloc];
  v9 = WFCNPostalAddressFromCLPlacemark(placemarkCopy);
  v10 = [v8 initWithPostalAddress:v9 placemark:placemarkCopy formattedAddress:0 label:labelCopy];

  return v10;
}

+ (id)streetAddressWithStreet:(id)street subLocality:(id)locality city:(id)city subAdministrativeArea:(id)area state:(id)state postalCode:(id)code country:(id)country isoCountryCode:(id)self0 label:(id)self1
{
  if (street || locality || city || area || state || code || country || countryCode)
  {
    labelCopy = label;
    countryCodeCopy = countryCode;
    countryCopy = country;
    codeCopy = code;
    stateCopy = state;
    areaCopy = area;
    cityCopy = city;
    localityCopy = locality;
    streetCopy = street;
    v18 = [[self alloc] initWithStreet:streetCopy subLocality:localityCopy city:cityCopy subAdministrativeArea:areaCopy state:stateCopy postalCode:codeCopy country:countryCopy isoCountryCode:countryCodeCopy placemark:0 formattedAddress:0 label:labelCopy];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (id)streetAddressWithTextCheckingResult:(id)result
{
  components = [result components];
  v5 = [components objectForKey:*MEMORY[0x277CCA6E8]];
  v6 = [components objectForKey:*MEMORY[0x277CCA6B0]];
  v7 = [components objectForKey:*MEMORY[0x277CCA6E0]];
  v8 = [components objectForKey:*MEMORY[0x277CCA6F0]];
  v9 = [components objectForKey:*MEMORY[0x277CCA6B8]];
  v10 = [self streetAddressWithStreet:v5 subLocality:0 city:v6 subAdministrativeArea:0 state:v7 postalCode:v8 country:v9 isoCountryCode:0 label:0];

  return v10;
}

+ (id)streetAddressesInString:(id)string error:(id *)error
{
  if (string)
  {
    v4 = [WFDataDetector resultsForString:string ofTypes:16 error:error];
    streetAddresses = [v4 streetAddresses];
  }

  else
  {
    streetAddresses = MEMORY[0x277CBEBF8];
  }

  return streetAddresses;
}

@end