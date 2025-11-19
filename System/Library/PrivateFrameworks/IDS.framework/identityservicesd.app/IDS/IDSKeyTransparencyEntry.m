@interface IDSKeyTransparencyEntry
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToKeyTransparencyEntry:(id)a3;
- (IDSKeyTransparencyEntry)initWithPushToken:(id)a3 loggableData:(id)a4 signedData:(id)a5;
- (id)description;
- (unint64_t)hash;
@end

@implementation IDSKeyTransparencyEntry

- (IDSKeyTransparencyEntry)initWithPushToken:(id)a3 loggableData:(id)a4 signedData:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = IDSKeyTransparencyEntry;
  v12 = [(IDSKeyTransparencyEntry *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_pushToken, a3);
    objc_storeStrong(&v13->_loggableData, a4);
    objc_storeStrong(&v13->_signedData, a5);
  }

  return v13;
}

- (BOOL)isEqualToKeyTransparencyEntry:(id)a3
{
  v6 = a3;
  v7 = v6;
  if (self == v6)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    if (v6)
    {
      v8 = [(IDSKeyTransparencyEntry *)self pushToken];
      v9 = [(IDSKeyTransparencyEntry *)v7 pushToken];
      if (v8 != v9)
      {
        v10 = [(IDSKeyTransparencyEntry *)self pushToken];
        v11 = [(IDSKeyTransparencyEntry *)v7 pushToken];
        if (![v10 isEqual:v11])
        {
          LOBYTE(v12) = 0;
          goto LABEL_22;
        }

        v25 = v11;
        v26 = v10;
      }

      v13 = [(IDSKeyTransparencyEntry *)self loggableData];
      v14 = [(IDSKeyTransparencyEntry *)v7 loggableData];
      if (v13 == v14)
      {
        [(IDSKeyTransparencyEntry *)self signedData:v21];
      }

      else
      {
        v15 = [(IDSKeyTransparencyEntry *)self loggableData];
        v16 = [(IDSKeyTransparencyEntry *)v7 loggableData];
        if (![v15 isEqual:v16])
        {
          LOBYTE(v12) = 0;
LABEL_20:

LABEL_21:
          v11 = v25;
          v10 = v26;
          if (v8 == v9)
          {
LABEL_23:

            goto LABEL_24;
          }

LABEL_22:

          goto LABEL_23;
        }

        [(IDSKeyTransparencyEntry *)self signedData:v16];
      }
      v17 = ;
      v18 = [(IDSKeyTransparencyEntry *)v7 signedData];
      if (v17 == v18 || (-[IDSKeyTransparencyEntry signedData](self, "signedData"), v3 = objc_claimAutoreleasedReturnValue(), -[IDSKeyTransparencyEntry signedData](v7, "signedData"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
      {
        v19 = [(IDSKeyTransparencyEntry *)self ktCapable];
        v12 = v19 ^ [(IDSKeyTransparencyEntry *)v7 ktCapable]^ 1;
        if (v17 == v18)
        {
          goto LABEL_19;
        }
      }

      else
      {
        LOBYTE(v12) = 0;
      }

LABEL_19:
      v16 = v22;
      v15 = v24;
      if (v13 == v14)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    LOBYTE(v12) = 0;
  }

LABEL_24:

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(IDSKeyTransparencyEntry *)self isEqualToKeyTransparencyEntry:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(IDSKeyTransparencyEntry *)self pushToken];
  v4 = [v3 hash];
  v5 = [(IDSKeyTransparencyEntry *)self loggableData];
  v6 = [v5 hash] ^ v4;
  v7 = [(IDSKeyTransparencyEntry *)self signedData];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (id)description
{
  v14 = objc_opt_class();
  v15 = [(IDSKeyTransparencyEntry *)self pushToken];
  v3 = [v15 debugDescription];
  v4 = [(IDSKeyTransparencyEntry *)self loggableData];
  v5 = [v4 length];
  v6 = [(IDSKeyTransparencyEntry *)self signedData];
  v7 = [v6 length];
  if ([(IDSKeyTransparencyEntry *)self ktCapable])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v9 = [(IDSKeyTransparencyEntry *)self productName];
  v10 = [(IDSKeyTransparencyEntry *)self buildVersion];
  v11 = [NSNumber numberWithLongLong:[(IDSKeyTransparencyEntry *)self transparencyVersion]];
  v12 = [NSString stringWithFormat:@"<%@: %p pushToken: %@, loggableData.length: %lu, signedData.length:%lu, ktCapable: %@, productName: %@, buildVersion: %@, transparencyVersion: %@>", v14, self, v3, v5, v7, v8, v9, v10, v11];

  return v12;
}

@end