@interface WFStreetAddress
+ (id)objectWithWFSerializedRepresentation:(id)a3;
+ (id)streetAddressWithPlacemark:(id)a3 label:(id)a4;
+ (id)streetAddressWithPostalAddress:(id)a3 label:(id)a4;
+ (id)streetAddressWithStreet:(id)a3 subLocality:(id)a4 city:(id)a5 subAdministrativeArea:(id)a6 state:(id)a7 postalCode:(id)a8 country:(id)a9 isoCountryCode:(id)a10 label:(id)a11;
+ (id)streetAddressWithTextCheckingResult:(id)a3;
+ (id)streetAddressesInString:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (CNPostalAddress)postalAddress;
- (NSString)addressString;
- (NSString)localizedLabel;
- (NSString)shortAddressString;
- (NSString)street;
- (NSString)wfName;
- (WFStreetAddress)initWithPostalAddress:(id)a3 placemark:(id)a4 formattedAddress:(id)a5 label:(id)a6;
- (WFStreetAddress)initWithStreet:(id)a3 subLocality:(id)a4 city:(id)a5 subAdministrativeArea:(id)a6 state:(id)a7 postalCode:(id)a8 country:(id)a9 isoCountryCode:(id)a10 placemark:(id)a11 formattedAddress:(id)a12 label:(id)a13;
- (WFStreetAddress)streetAddressWithLabel:(id)a3;
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
  v20 = [(WFStreetAddress *)self subLocality];
  v17 = [v20 hash];
  v19 = [(WFStreetAddress *)self city];
  v16 = [v19 hash];
  v3 = [(WFStreetAddress *)self subAdministrativeArea];
  v15 = [v3 hash];
  v4 = [(WFStreetAddress *)self state];
  v5 = [v4 hash];
  v6 = [(WFStreetAddress *)self postalCode];
  v7 = [v6 hash];
  v8 = [(WFStreetAddress *)self country];
  v9 = [v8 hash];
  v10 = [(WFStreetAddress *)self isoCountryCode];
  v11 = [v10 hash];
  v12 = [(WFStreetAddress *)self label];
  v13 = v7 ^ v9 ^ v11 ^ [v12 hash] ^ 0x390AF033;

  return v18 ^ v17 ^ v16 ^ v15 ^ v5 ^ v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v22 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ((street = self->_street, street == v4->_street) || [(NSString *)street isEqualToString:?]))
    {
      v6 = [(WFStreetAddress *)self subLocality];
      v7 = [(WFStreetAddress *)v4 subLocality];
      if (v6 == v7 || [v6 isEqualToString:v7])
      {
        v8 = [(WFStreetAddress *)self city];
        v9 = [(WFStreetAddress *)v4 city];
        if (v8 == v9 || [v8 isEqualToString:v9])
        {
          v10 = [(WFStreetAddress *)self subAdministrativeArea];
          v11 = [(WFStreetAddress *)v4 subAdministrativeArea];
          if (v10 == v11 || [v10 isEqualToString:v11])
          {
            v12 = [(WFStreetAddress *)self state];
            v13 = [(WFStreetAddress *)v4 state];
            if (v12 == v13 || [v12 isEqualToString:v13])
            {
              v30 = v10;
              v31 = v13;
              v14 = [(WFStreetAddress *)self postalCode];
              v15 = [(WFStreetAddress *)v4 postalCode];
              if (v14 == v15 || [v14 isEqualToString:v15])
              {
                v28 = v11;
                v29 = v15;
                v16 = [(WFStreetAddress *)self country];
                v17 = [(WFStreetAddress *)v4 country];
                v27 = v16;
                if (v16 == v17 || [v16 isEqualToString:v17])
                {
                  v26 = v17;
                  v18 = [(WFStreetAddress *)self isoCountryCode];
                  v19 = [(WFStreetAddress *)v4 isoCountryCode];
                  if (v18 == v19 || [v18 isEqualToString:v19])
                  {
                    v20 = [(WFStreetAddress *)self label:v19];
                    v21 = [(WFStreetAddress *)v4 label];
                    if (v20 == v21)
                    {
                      v22 = 1;
                    }

                    else
                    {
                      v22 = [v20 isEqualToString:v21];
                    }

                    v19 = v24;
                    v12 = v25;
                  }

                  else
                  {
                    v22 = 0;
                  }

                  v17 = v26;
                }

                else
                {
                  v22 = 0;
                }

                v11 = v28;
                v15 = v29;
              }

              else
              {
                v22 = 0;
              }

              v10 = v30;
              v13 = v31;
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
  v2 = [(WFStreetAddress *)self label];
  if (v2)
  {
    v3 = [WFContactLabeledValue localizedStringForLabel:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)wfName
{
  v2 = [(WFStreetAddress *)self addressString];
  v3 = [v2 componentsSeparatedByString:@"\n"];
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
    v8 = [(WFStreetAddress *)self placemark];
    v9 = [v8 name];
    v10 = [(WFStreetAddress *)self postalAddress];
    v11 = [v10 street];
    if ([v9 isEqualToString:v11])
    {
      v12 = 0;
    }

    else
    {
      v13 = [(WFStreetAddress *)self placemark];
      v12 = [v13 name];
    }

    v14 = [(WFStreetAddress *)self postalAddress];
    v15 = [v7 attributedStringFromPostalAddress:v14 name:v12 organization:0 attributes:0];
    v16 = [v15 string];

    v17 = [MEMORY[0x277CCA900] alphanumericCharacterSet];
    v18 = [(__CFString *)v16 rangeOfCharacterFromSet:v17];

    if (v18 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v19 = &stru_282F53518;
    }

    else
    {
      v19 = v16;
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
    v3 = street;
  }

  else
  {
    v4 = [(WFStreetAddress *)self placemark];
    v3 = [v4 name];
  }

  return v3;
}

- (NSString)shortAddressString
{
  v3 = [(WFStreetAddress *)self street];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(WFStreetAddress *)self city];
    v7 = v6;
    if (v6)
    {
      v5 = v6;
    }

    else
    {
      v8 = [(WFStreetAddress *)self state];
      v9 = v8;
      if (v8)
      {
        v10 = v8;
      }

      else
      {
        v10 = [(WFStreetAddress *)self country];
      }

      v5 = v10;
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
    v7 = [(WFStreetAddress *)self street];

    if (v7)
    {
      v8 = [(WFStreetAddress *)self street];
      [v6 setStreet:v8];
    }

    v9 = [(WFStreetAddress *)self subLocality];

    if (v9)
    {
      v10 = [(WFStreetAddress *)self subLocality];
      [v6 setSubLocality:v10];
    }

    v11 = [(WFStreetAddress *)self city];

    if (v11)
    {
      v12 = [(WFStreetAddress *)self city];
      [v6 setCity:v12];
    }

    v13 = [(WFStreetAddress *)self subAdministrativeArea];

    if (v13)
    {
      v14 = [(WFStreetAddress *)self subAdministrativeArea];
      [v6 setSubAdministrativeArea:v14];
    }

    v15 = [(WFStreetAddress *)self state];

    if (v15)
    {
      v16 = [(WFStreetAddress *)self state];
      [v6 setState:v16];
    }

    v17 = [(WFStreetAddress *)self postalCode];

    if (v17)
    {
      v18 = [(WFStreetAddress *)self postalCode];
      [v6 setPostalCode:v18];
    }

    v19 = [(WFStreetAddress *)self country];

    if (v19)
    {
      v20 = [(WFStreetAddress *)self country];
      [v6 setCountry:v20];
    }

    v21 = [(WFStreetAddress *)self isoCountryCode];

    if (v21)
    {
      v22 = [(WFStreetAddress *)self isoCountryCode];
      [v6 setISOCountryCode:v22];
    }

    v23 = [v6 copy];
    v24 = self->_postalAddress;
    self->_postalAddress = v23;

    postalAddress = self->_postalAddress;
  }

  return postalAddress;
}

- (WFStreetAddress)streetAddressWithLabel:(id)a3
{
  v4 = a3;
  v16 = objc_alloc(objc_opt_class());
  v17 = [(WFStreetAddress *)self street];
  v15 = [(WFStreetAddress *)self subLocality];
  v5 = [(WFStreetAddress *)self city];
  v6 = [(WFStreetAddress *)self subAdministrativeArea];
  v7 = [(WFStreetAddress *)self state];
  v8 = [(WFStreetAddress *)self postalCode];
  v9 = [(WFStreetAddress *)self country];
  v10 = [(WFStreetAddress *)self isoCountryCode];
  v11 = [(WFStreetAddress *)self placemark];
  v12 = [(WFStreetAddress *)self addressString];
  v13 = [v16 initWithStreet:v17 subLocality:v15 city:v5 subAdministrativeArea:v6 state:v7 postalCode:v8 country:v9 isoCountryCode:v10 placemark:v11 formattedAddress:v12 label:v4];

  return v13;
}

- (WFStreetAddress)initWithStreet:(id)a3 subLocality:(id)a4 city:(id)a5 subAdministrativeArea:(id)a6 state:(id)a7 postalCode:(id)a8 country:(id)a9 isoCountryCode:(id)a10 placemark:(id)a11 formattedAddress:(id)a12 label:(id)a13
{
  v18 = a3;
  v19 = a4;
  v54 = a5;
  v53 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v24 = a11;
  v25 = a12;
  v26 = a13;
  v27 = [(WFStreetAddress *)self init];
  if (v27)
  {
    v28 = [v18 copy];
    street = v27->_street;
    v27->_street = v28;

    v30 = [v19 copy];
    subLocality = v27->_subLocality;
    v27->_subLocality = v30;

    v32 = [v54 copy];
    city = v27->_city;
    v27->_city = v32;

    v34 = [v53 copy];
    subAdministrativeArea = v27->_subAdministrativeArea;
    v27->_subAdministrativeArea = v34;

    v36 = [v20 copy];
    state = v27->_state;
    v27->_state = v36;

    v38 = [v21 copy];
    postalCode = v27->_postalCode;
    v27->_postalCode = v38;

    v40 = [v22 copy];
    country = v27->_country;
    v27->_country = v40;

    v42 = [v23 copy];
    isoCountryCode = v27->_isoCountryCode;
    v27->_isoCountryCode = v42;

    v44 = [v24 copy];
    placemark = v27->_placemark;
    v27->_placemark = v44;

    v46 = [v25 copy];
    addressString = v27->_addressString;
    v27->_addressString = v46;

    v48 = [v26 copy];
    label = v27->_label;
    v27->_label = v48;

    v50 = v27;
  }

  return v27;
}

- (WFStreetAddress)initWithPostalAddress:(id)a3 placemark:(id)a4 formattedAddress:(id)a5 label:(id)a6
{
  v6 = a3;
  if (a3)
  {
    v10 = a6;
    v11 = a5;
    v12 = a4;
    v13 = v6;
    v23 = [(WFStreetAddress *)v13 street];
    v22 = [(WFStreetAddress *)v13 subLocality];
    v14 = [(WFStreetAddress *)v13 city];
    v15 = [(WFStreetAddress *)v13 subAdministrativeArea];
    v16 = [(WFStreetAddress *)v13 state];
    v20 = [(WFStreetAddress *)v13 postalCode];
    v21 = [(WFStreetAddress *)v13 country];
    v17 = [(WFStreetAddress *)v13 ISOCountryCode];

    v18 = [(WFStreetAddress *)self initWithStreet:v23 subLocality:v22 city:v14 subAdministrativeArea:v15 state:v16 postalCode:v20 country:v21 isoCountryCode:v17 placemark:v12 formattedAddress:v11 label:v10];
    self = v18;

    v6 = self;
  }

  return v6;
}

+ (id)objectWithWFSerializedRepresentation:(id)a3
{
  v4 = a3;
  v5 = [v4 wfObjectOfClass:objc_opt_class() forKey:@"link.contentkit.addressplacemark"];
  v23 = a1;
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

  v20 = [v4 wfObjectOfClass:objc_opt_class() forKey:@"link.contentkit.addressstreet"];
  v10 = [v4 wfObjectOfClass:objc_opt_class() forKey:@"link.contentkit.addresssublocality"];
  v11 = [v4 wfObjectOfClass:objc_opt_class() forKey:@"link.contentkit.addresscity"];
  v12 = [v4 wfObjectOfClass:objc_opt_class() forKey:@"link.contentkit.addresssubadministrativearea"];
  v13 = [v4 wfObjectOfClass:objc_opt_class() forKey:@"link.contentkit.addressstate"];
  v21 = [v4 wfObjectOfClass:objc_opt_class() forKey:@"link.contentkit.addresspostalcode"];
  v14 = [v4 wfObjectOfClass:objc_opt_class() forKey:@"link.contentkit.addresscountry"];
  v15 = [v4 wfObjectOfClass:objc_opt_class() forKey:@"link.contentkit.addressisocountrycode"];
  v16 = [v4 wfObjectOfClass:objc_opt_class() forKey:@"link.contentkit.addressstring"];
  v17 = [v4 wfObjectOfClass:objc_opt_class() forKey:@"link.contentkit.addresslabel"];
  v19 = [[v23 alloc] initWithStreet:v20 subLocality:v10 city:v11 subAdministrativeArea:v12 state:v13 postalCode:v21 country:v14 isoCountryCode:v15 placemark:v9 formattedAddress:v16 label:v17];

  return v19;
}

+ (id)streetAddressWithPostalAddress:(id)a3 label:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithPostalAddress:v7 placemark:0 formattedAddress:0 label:v6];

  return v8;
}

+ (id)streetAddressWithPlacemark:(id)a3 label:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 alloc];
  v9 = WFCNPostalAddressFromCLPlacemark(v7);
  v10 = [v8 initWithPostalAddress:v9 placemark:v7 formattedAddress:0 label:v6];

  return v10;
}

+ (id)streetAddressWithStreet:(id)a3 subLocality:(id)a4 city:(id)a5 subAdministrativeArea:(id)a6 state:(id)a7 postalCode:(id)a8 country:(id)a9 isoCountryCode:(id)a10 label:(id)a11
{
  if (a3 || a4 || a5 || a6 || a7 || a8 || a9 || a10)
  {
    v19 = a11;
    v20 = a10;
    v21 = a9;
    v22 = a8;
    v23 = a7;
    v24 = a6;
    v25 = a5;
    v26 = a4;
    v27 = a3;
    v18 = [[a1 alloc] initWithStreet:v27 subLocality:v26 city:v25 subAdministrativeArea:v24 state:v23 postalCode:v22 country:v21 isoCountryCode:v20 placemark:0 formattedAddress:0 label:v19];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (id)streetAddressWithTextCheckingResult:(id)a3
{
  v4 = [a3 components];
  v5 = [v4 objectForKey:*MEMORY[0x277CCA6E8]];
  v6 = [v4 objectForKey:*MEMORY[0x277CCA6B0]];
  v7 = [v4 objectForKey:*MEMORY[0x277CCA6E0]];
  v8 = [v4 objectForKey:*MEMORY[0x277CCA6F0]];
  v9 = [v4 objectForKey:*MEMORY[0x277CCA6B8]];
  v10 = [a1 streetAddressWithStreet:v5 subLocality:0 city:v6 subAdministrativeArea:0 state:v7 postalCode:v8 country:v9 isoCountryCode:0 label:0];

  return v10;
}

+ (id)streetAddressesInString:(id)a3 error:(id *)a4
{
  if (a3)
  {
    v4 = [WFDataDetector resultsForString:a3 ofTypes:16 error:a4];
    v5 = [v4 streetAddresses];
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  return v5;
}

@end