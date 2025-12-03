@interface FUAirline
- (BOOL)isEqual:(id)equal;
- (FUAirline)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FUAirline

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    iATACode = [(FUAirline *)self IATACode];
    iATACode2 = [equalCopy IATACode];
    if (iATACode != iATACode2)
    {
      iATACode3 = [(FUAirline *)self IATACode];
      iATACode4 = [equalCopy IATACode];
      v42 = iATACode3;
      if (![iATACode3 isEqual:?])
      {
        v10 = 0;
        goto LABEL_27;
      }
    }

    fAACode = [(FUAirline *)self FAACode];
    fAACode2 = [equalCopy FAACode];
    if (fAACode != fAACode2)
    {
      fAACode3 = [(FUAirline *)self FAACode];
      fAACode4 = [equalCopy FAACode];
      if (![fAACode3 isEqual:fAACode4])
      {
        v10 = 0;
LABEL_25:

LABEL_26:
        if (iATACode == iATACode2)
        {
LABEL_28:

          goto LABEL_29;
        }

LABEL_27:

        goto LABEL_28;
      }
    }

    name = [(FUAirline *)self name];
    name2 = [equalCopy name];
    v40 = name;
    v15 = name == name2;
    v16 = name2;
    if (!v15)
    {
      name3 = [(FUAirline *)self name];
      name4 = [equalCopy name];
      v36 = name3;
      if (![name3 isEqual:?])
      {
        v10 = 0;
        v18 = v40;
LABEL_23:

LABEL_24:
        if (fAACode == fAACode2)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }
    }

    phoneNumber = [(FUAirline *)self phoneNumber];
    phoneNumber2 = [equalCopy phoneNumber];
    v38 = v16;
    v39 = fAACode4;
    if (phoneNumber == phoneNumber2)
    {
      v34 = fAACode3;
    }

    else
    {
      v20 = fAACode3;
      phoneNumber3 = [(FUAirline *)self phoneNumber];
      phoneNumber4 = [equalCopy phoneNumber];
      v33 = phoneNumber3;
      if (![phoneNumber3 isEqual:?])
      {
        v10 = 0;
        v29 = phoneNumber2;
        fAACode3 = v20;
        fAACode4 = v39;
        goto LABEL_21;
      }

      v34 = v20;
    }

    v22 = [(FUAirline *)self URL];
    v23 = [equalCopy URL];
    v24 = v23;
    if (v22 == v23)
    {

      v10 = 1;
    }

    else
    {
      v25 = [(FUAirline *)self URL];
      [equalCopy URL];
      v31 = fAACode2;
      v26 = fAACode;
      v28 = v27 = phoneNumber;
      v10 = [v25 isEqual:v28];

      phoneNumber = v27;
      fAACode = v26;
      fAACode2 = v31;
    }

    v29 = phoneNumber2;
    fAACode3 = v34;
    fAACode4 = v39;
    if (phoneNumber == phoneNumber2)
    {
LABEL_22:

      v18 = v40;
      v16 = v38;
      if (v40 == v38)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

LABEL_21:

    goto LABEL_22;
  }

  v10 = 0;
LABEL_29:

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  iATACode = [(FUAirline *)self IATACode];
  v6 = [iATACode copy];
  [v4 setIATACode:v6];

  fAACode = [(FUAirline *)self FAACode];
  v8 = [fAACode copy];
  [v4 setFAACode:v8];

  name = [(FUAirline *)self name];
  v10 = [name copy];
  [v4 setName:v10];

  phoneNumber = [(FUAirline *)self phoneNumber];
  v12 = [phoneNumber copy];
  [v4 setPhoneNumber:v12];

  v13 = [(FUAirline *)self URL];
  v14 = [v13 copy];
  [v4 setURL:v14];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  name = [(FUAirline *)self name];
  iATACode = [(FUAirline *)self IATACode];
  v6 = [v3 stringWithFormat:@"Airline: %@ (%@)", name, iATACode];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  iATACode = [(FUAirline *)self IATACode];

  if (iATACode)
  {
    iATACode2 = [(FUAirline *)self IATACode];
    [coderCopy encodeObject:iATACode2 forKey:@"IATACode"];
  }

  fAACode = [(FUAirline *)self FAACode];

  if (fAACode)
  {
    fAACode2 = [(FUAirline *)self FAACode];
    [coderCopy encodeObject:fAACode2 forKey:@"FAACode"];
  }

  name = [(FUAirline *)self name];

  if (name)
  {
    name2 = [(FUAirline *)self name];
    [coderCopy encodeObject:name2 forKey:@"name"];
  }

  phoneNumber = [(FUAirline *)self phoneNumber];

  if (phoneNumber)
  {
    phoneNumber2 = [(FUAirline *)self phoneNumber];
    [coderCopy encodeObject:phoneNumber2 forKey:@"phoneNumber"];
  }

  v12 = [(FUAirline *)self URL];

  v13 = coderCopy;
  if (v12)
  {
    v14 = [(FUAirline *)self URL];
    [coderCopy encodeObject:v14 forKey:@"URL"];

    v13 = coderCopy;
  }
}

- (FUAirline)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = FUAirline;
  v5 = [(FUAirline *)&v18 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IATACode"];
    IATACode = v5->_IATACode;
    v5->_IATACode = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FAACode"];
    FAACode = v5->_FAACode;
    v5->_FAACode = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"phoneNumber"];
    phoneNumber = v5->_phoneNumber;
    v5->_phoneNumber = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"URL"];
    URL = v5->_URL;
    v5->_URL = v14;

    v16 = v5;
  }

  return v5;
}

@end