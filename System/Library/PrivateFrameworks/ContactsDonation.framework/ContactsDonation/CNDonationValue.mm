@interface CNDonationValue
+ (id)donationValueWithEmailAddress:(id)address label:(id)label origin:(id)origin;
+ (id)donationValueWithImageData:(id)data origin:(id)origin;
+ (id)donationValueWithNameComponents:(id)components origin:(id)origin;
+ (id)donationValueWithPhoneNumber:(id)number label:(id)label origin:(id)origin;
+ (id)donationValueWithPostalAddress:(id)address style:(int64_t)style label:(id)label origin:(id)origin;
- (BOOL)isEqual:(id)equal;
- (CNDonationValue)initWithCoder:(id)coder;
- (CNDonationValue)initWithOrigin:(id)origin;
- (CNDonationValue)initWithPropertyListRepresentation:(id)representation;
- (id)copyWithNewExpirationDate:(id)date;
- (id)propertyListRepresentation;
- (unint64_t)hash;
- (void)acceptDonationValueVisitor:(id)visitor;
@end

@implementation CNDonationValue

+ (id)donationValueWithNameComponents:(id)components origin:(id)origin
{
  originCopy = origin;
  componentsCopy = components;
  v7 = [[_CNNameComponentsDonationValue alloc] initWithNameComponents:componentsCopy origin:originCopy];

  return v7;
}

+ (id)donationValueWithEmailAddress:(id)address label:(id)label origin:(id)origin
{
  originCopy = origin;
  labelCopy = label;
  addressCopy = address;
  v10 = [[_CNEmailAddressDonationValue alloc] initWithEmailAddress:addressCopy label:labelCopy origin:originCopy];

  return v10;
}

+ (id)donationValueWithPhoneNumber:(id)number label:(id)label origin:(id)origin
{
  originCopy = origin;
  labelCopy = label;
  numberCopy = number;
  v10 = [[_CNPhoneNumberDonationValue alloc] initWithPhoneNumber:numberCopy label:labelCopy origin:originCopy];

  return v10;
}

+ (id)donationValueWithPostalAddress:(id)address style:(int64_t)style label:(id)label origin:(id)origin
{
  originCopy = origin;
  labelCopy = label;
  addressCopy = address;
  v12 = [[_CNPostalAddressDonationValue alloc] initWithPostalAddress:addressCopy style:style label:labelCopy origin:originCopy];

  return v12;
}

+ (id)donationValueWithImageData:(id)data origin:(id)origin
{
  originCopy = origin;
  dataCopy = data;
  v7 = [[_CNImageDataDonationValue alloc] initWithImageData:dataCopy origin:originCopy];

  return v7;
}

- (CNDonationValue)initWithOrigin:(id)origin
{
  originCopy = origin;
  v10.receiver = self;
  v10.super_class = CNDonationValue;
  v5 = [(CNDonationValue *)&v10 init];
  if (v5)
  {
    v6 = [originCopy copy];
    origin = v5->_origin;
    v5->_origin = v6;

    v8 = v5;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  selfCopy = self;
  v6 = CNAbstractMethodException();
  objc_exception_throw(v6);
}

- (unint64_t)hash
{
  selfCopy = self;
  v3 = CNAbstractMethodException();
  objc_exception_throw(v3);
}

- (id)copyWithNewExpirationDate:(id)date
{
  dateCopy = date;
  selfCopy = self;
  v6 = CNAbstractMethodException();
  objc_exception_throw(v6);
}

- (CNDonationValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CNDonationValue;
  v5 = [(CNDonationValue *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_origin"];
    v7 = [v6 copy];
    origin = v5->_origin;
    v5->_origin = v7;

    v9 = v5;
  }

  return v5;
}

- (void)acceptDonationValueVisitor:(id)visitor
{
  visitorCopy = visitor;
  selfCopy = self;
  v6 = CNAbstractMethodException();
  objc_exception_throw(v6);
}

- (CNDonationValue)initWithPropertyListRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [CNDonationOrigin alloc];
  v6 = [representationCopy objectForKeyedSubscript:@"origin"];
  v7 = [(CNDonationOrigin *)v5 initWithPropertyListRepresentation:v6];

  if (!v7)
  {
    goto LABEL_75;
  }

  v8 = [representationCopy objectForKeyedSubscript:@"name-components"];

  if (!v8)
  {
    v24 = [representationCopy objectForKeyedSubscript:@"email-address"];

    if (v24)
    {
      objc_opt_class();
      v25 = [representationCopy objectForKeyedSubscript:@"email-address"];
      if (objc_opt_isKindOfClass())
      {
        v26 = v25;
      }

      else
      {
        v26 = 0;
      }

      v9 = v26;

      objc_opt_class();
      v27 = [representationCopy objectForKeyedSubscript:@"label"];
      if (objc_opt_isKindOfClass())
      {
        v28 = v27;
      }

      else
      {
        v28 = 0;
      }

      v10 = v28;

      v23 = [[_CNEmailAddressDonationValue alloc] initWithEmailAddress:v9 label:v10 origin:v7];
      goto LABEL_38;
    }

    v29 = [representationCopy objectForKeyedSubscript:@"phone-number"];

    if (v29)
    {
      objc_opt_class();
      v30 = [representationCopy objectForKeyedSubscript:@"phone-number"];
      if (objc_opt_isKindOfClass())
      {
        v31 = v30;
      }

      else
      {
        v31 = 0;
      }

      v32 = v31;

      objc_opt_class();
      v33 = [representationCopy objectForKeyedSubscript:@"label"];
      if (objc_opt_isKindOfClass())
      {
        v34 = v33;
      }

      else
      {
        v34 = 0;
      }

      v10 = v34;

      v35 = [_CNPhoneNumberDonationValue alloc];
      v9 = [MEMORY[0x277CBDB70] phoneNumberWithStringValue:v32];

      v23 = [(_CNPhoneNumberDonationValue *)v35 initWithPhoneNumber:v9 label:v10 origin:v7];
      goto LABEL_38;
    }

    v37 = [representationCopy objectForKeyedSubscript:@"postal-address"];

    if (v37)
    {
      objc_opt_class();
      v38 = [representationCopy objectForKeyedSubscript:@"label"];
      if (objc_opt_isKindOfClass())
      {
        v39 = v38;
      }

      else
      {
        v39 = 0;
      }

      v9 = v39;

      objc_opt_class();
      v40 = [representationCopy objectForKeyedSubscript:@"donation-style"];
      if (objc_opt_isKindOfClass())
      {
        v41 = v40;
      }

      else
      {
        v41 = 0;
      }

      v10 = v41;

      v42 = [v10 isEqualToString:@"donation-address"];
      v43 = 0;
      if ((v42 & 1) == 0)
      {
        if (![v10 isEqualToString:@"donation-location"])
        {
          v36 = 0;
          goto LABEL_39;
        }

        v43 = 1;
      }

      v63 = v43;
      v44 = [representationCopy objectForKeyedSubscript:@"postal-address"];
      v45 = objc_alloc_init(MEMORY[0x277CBDB60]);
      objc_opt_class();
      v46 = [v44 objectForKeyedSubscript:@"street"];
      if (objc_opt_isKindOfClass())
      {
        v47 = v46;
      }

      else
      {
        v47 = 0;
      }

      [v45 setStreet:v47];

      objc_opt_class();
      v48 = [v44 objectForKeyedSubscript:@"subLocality"];
      if (objc_opt_isKindOfClass())
      {
        v49 = v48;
      }

      else
      {
        v49 = 0;
      }

      [v45 setSubLocality:v49];

      objc_opt_class();
      v50 = [v44 objectForKeyedSubscript:@"city"];
      if (objc_opt_isKindOfClass())
      {
        v51 = v50;
      }

      else
      {
        v51 = 0;
      }

      [v45 setCity:v51];

      objc_opt_class();
      v52 = [v44 objectForKeyedSubscript:@"subAdministrativeArea"];
      if (objc_opt_isKindOfClass())
      {
        v53 = v52;
      }

      else
      {
        v53 = 0;
      }

      [v45 setSubAdministrativeArea:v53];

      objc_opt_class();
      v54 = [v44 objectForKeyedSubscript:@"state"];
      if (objc_opt_isKindOfClass())
      {
        v55 = v54;
      }

      else
      {
        v55 = 0;
      }

      [v45 setState:v55];

      objc_opt_class();
      v56 = [v44 objectForKeyedSubscript:@"postalCode"];
      if (objc_opt_isKindOfClass())
      {
        v57 = v56;
      }

      else
      {
        v57 = 0;
      }

      [v45 setPostalCode:v57];

      objc_opt_class();
      v58 = [v44 objectForKeyedSubscript:@"country"];
      if (objc_opt_isKindOfClass())
      {
        v59 = v58;
      }

      else
      {
        v59 = 0;
      }

      [v45 setCountry:v59];

      objc_opt_class();
      v60 = [v44 objectForKeyedSubscript:@"isoCountryCode"];
      if (objc_opt_isKindOfClass())
      {
        v61 = v60;
      }

      else
      {
        v61 = 0;
      }

      [v45 setISOCountryCode:v61];

      v36 = [[_CNPostalAddressDonationValue alloc] initWithPostalAddress:v45 style:v63 label:v9 origin:v7];
      goto LABEL_39;
    }

LABEL_75:
    v36 = 0;
    goto LABEL_76;
  }

  v9 = [representationCopy objectForKeyedSubscript:@"name-components"];
  v10 = objc_alloc_init(MEMORY[0x277CCAC00]);
  objc_opt_class();
  v11 = [v9 objectForKeyedSubscript:@"namePrefix"];
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  [v10 setNamePrefix:v12];

  objc_opt_class();
  v13 = [v9 objectForKeyedSubscript:@"givenName"];
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  [v10 setGivenName:v14];

  objc_opt_class();
  v15 = [v9 objectForKeyedSubscript:@"middleName"];
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  [v10 setMiddleName:v16];

  objc_opt_class();
  v17 = [v9 objectForKeyedSubscript:@"familyName"];
  if (objc_opt_isKindOfClass())
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  [v10 setFamilyName:v18];

  objc_opt_class();
  v19 = [v9 objectForKeyedSubscript:@"nameSuffix"];
  if (objc_opt_isKindOfClass())
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  [v10 setNameSuffix:v20];

  objc_opt_class();
  v21 = [v9 objectForKeyedSubscript:@"nickname"];
  if (objc_opt_isKindOfClass())
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  [v10 setNickname:v22];

  v23 = [[_CNNameComponentsDonationValue alloc] initWithNameComponents:v10 origin:v7];
LABEL_38:
  v36 = v23;
LABEL_39:

LABEL_76:
  return &v36->super;
}

- (id)propertyListRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:5];
  [v3 setObject:&unk_2838DF398 forKeyedSubscript:@"version"];
  origin = [(CNDonationValue *)self origin];
  propertyListRepresentation = [origin propertyListRepresentation];
  [v3 setObject:propertyListRepresentation forKeyedSubscript:@"origin"];

  [(CNDonationValue *)self updatePropertyListRepresentation:v3];

  return v3;
}

@end