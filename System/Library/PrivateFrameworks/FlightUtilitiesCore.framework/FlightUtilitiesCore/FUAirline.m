@interface FUAirline
- (BOOL)isEqual:(id)a3;
- (FUAirline)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FUAirline

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [(FUAirline *)self IATACode];
    v8 = [v6 IATACode];
    if (v7 != v8)
    {
      v9 = [(FUAirline *)self IATACode];
      v41 = [v6 IATACode];
      v42 = v9;
      if (![v9 isEqual:?])
      {
        v10 = 0;
        goto LABEL_27;
      }
    }

    v11 = [(FUAirline *)self FAACode];
    v12 = [v6 FAACode];
    if (v11 != v12)
    {
      v3 = [(FUAirline *)self FAACode];
      v4 = [v6 FAACode];
      if (![v3 isEqual:v4])
      {
        v10 = 0;
LABEL_25:

LABEL_26:
        if (v7 == v8)
        {
LABEL_28:

          goto LABEL_29;
        }

LABEL_27:

        goto LABEL_28;
      }
    }

    v13 = [(FUAirline *)self name];
    v14 = [v6 name];
    v40 = v13;
    v15 = v13 == v14;
    v16 = v14;
    if (!v15)
    {
      v17 = [(FUAirline *)self name];
      v35 = [v6 name];
      v36 = v17;
      if (![v17 isEqual:?])
      {
        v10 = 0;
        v18 = v40;
LABEL_23:

LABEL_24:
        if (v11 == v12)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }
    }

    v19 = [(FUAirline *)self phoneNumber];
    v37 = [v6 phoneNumber];
    v38 = v16;
    v39 = v4;
    if (v19 == v37)
    {
      v34 = v3;
    }

    else
    {
      v20 = v3;
      v21 = [(FUAirline *)self phoneNumber];
      v32 = [v6 phoneNumber];
      v33 = v21;
      if (![v21 isEqual:?])
      {
        v10 = 0;
        v29 = v37;
        v3 = v20;
        v4 = v39;
        goto LABEL_21;
      }

      v34 = v20;
    }

    v22 = [(FUAirline *)self URL];
    v23 = [v6 URL];
    v24 = v23;
    if (v22 == v23)
    {

      v10 = 1;
    }

    else
    {
      v25 = [(FUAirline *)self URL];
      [v6 URL];
      v31 = v12;
      v26 = v11;
      v28 = v27 = v19;
      v10 = [v25 isEqual:v28];

      v19 = v27;
      v11 = v26;
      v12 = v31;
    }

    v29 = v37;
    v3 = v34;
    v4 = v39;
    if (v19 == v37)
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(FUAirline *)self IATACode];
  v6 = [v5 copy];
  [v4 setIATACode:v6];

  v7 = [(FUAirline *)self FAACode];
  v8 = [v7 copy];
  [v4 setFAACode:v8];

  v9 = [(FUAirline *)self name];
  v10 = [v9 copy];
  [v4 setName:v10];

  v11 = [(FUAirline *)self phoneNumber];
  v12 = [v11 copy];
  [v4 setPhoneNumber:v12];

  v13 = [(FUAirline *)self URL];
  v14 = [v13 copy];
  [v4 setURL:v14];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(FUAirline *)self name];
  v5 = [(FUAirline *)self IATACode];
  v6 = [v3 stringWithFormat:@"Airline: %@ (%@)", v4, v5];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v15 = a3;
  v4 = [(FUAirline *)self IATACode];

  if (v4)
  {
    v5 = [(FUAirline *)self IATACode];
    [v15 encodeObject:v5 forKey:@"IATACode"];
  }

  v6 = [(FUAirline *)self FAACode];

  if (v6)
  {
    v7 = [(FUAirline *)self FAACode];
    [v15 encodeObject:v7 forKey:@"FAACode"];
  }

  v8 = [(FUAirline *)self name];

  if (v8)
  {
    v9 = [(FUAirline *)self name];
    [v15 encodeObject:v9 forKey:@"name"];
  }

  v10 = [(FUAirline *)self phoneNumber];

  if (v10)
  {
    v11 = [(FUAirline *)self phoneNumber];
    [v15 encodeObject:v11 forKey:@"phoneNumber"];
  }

  v12 = [(FUAirline *)self URL];

  v13 = v15;
  if (v12)
  {
    v14 = [(FUAirline *)self URL];
    [v15 encodeObject:v14 forKey:@"URL"];

    v13 = v15;
  }
}

- (FUAirline)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = FUAirline;
  v5 = [(FUAirline *)&v18 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IATACode"];
    IATACode = v5->_IATACode;
    v5->_IATACode = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FAACode"];
    FAACode = v5->_FAACode;
    v5->_FAACode = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"phoneNumber"];
    phoneNumber = v5->_phoneNumber;
    v5->_phoneNumber = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"URL"];
    URL = v5->_URL;
    v5->_URL = v14;

    v16 = v5;
  }

  return v5;
}

@end