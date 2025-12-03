@interface IDSKeyTransparencyEntry
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToKeyTransparencyEntry:(id)entry;
- (IDSKeyTransparencyEntry)initWithPushToken:(id)token loggableData:(id)data signedData:(id)signedData;
- (id)description;
- (unint64_t)hash;
@end

@implementation IDSKeyTransparencyEntry

- (IDSKeyTransparencyEntry)initWithPushToken:(id)token loggableData:(id)data signedData:(id)signedData
{
  tokenCopy = token;
  dataCopy = data;
  signedDataCopy = signedData;
  v15.receiver = self;
  v15.super_class = IDSKeyTransparencyEntry;
  v12 = [(IDSKeyTransparencyEntry *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_pushToken, token);
    objc_storeStrong(&v13->_loggableData, data);
    objc_storeStrong(&v13->_signedData, signedData);
  }

  return v13;
}

- (BOOL)isEqualToKeyTransparencyEntry:(id)entry
{
  entryCopy = entry;
  v7 = entryCopy;
  if (self == entryCopy)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    if (entryCopy)
    {
      pushToken = [(IDSKeyTransparencyEntry *)self pushToken];
      pushToken2 = [(IDSKeyTransparencyEntry *)v7 pushToken];
      if (pushToken != pushToken2)
      {
        pushToken3 = [(IDSKeyTransparencyEntry *)self pushToken];
        pushToken4 = [(IDSKeyTransparencyEntry *)v7 pushToken];
        if (![pushToken3 isEqual:pushToken4])
        {
          LOBYTE(v12) = 0;
          goto LABEL_22;
        }

        v25 = pushToken4;
        v26 = pushToken3;
      }

      loggableData = [(IDSKeyTransparencyEntry *)self loggableData];
      loggableData2 = [(IDSKeyTransparencyEntry *)v7 loggableData];
      if (loggableData == loggableData2)
      {
        [(IDSKeyTransparencyEntry *)self signedData:v21];
      }

      else
      {
        loggableData3 = [(IDSKeyTransparencyEntry *)self loggableData];
        loggableData4 = [(IDSKeyTransparencyEntry *)v7 loggableData];
        if (![loggableData3 isEqual:loggableData4])
        {
          LOBYTE(v12) = 0;
LABEL_20:

LABEL_21:
          pushToken4 = v25;
          pushToken3 = v26;
          if (pushToken == pushToken2)
          {
LABEL_23:

            goto LABEL_24;
          }

LABEL_22:

          goto LABEL_23;
        }

        [(IDSKeyTransparencyEntry *)self signedData:loggableData4];
      }
      v17 = ;
      signedData = [(IDSKeyTransparencyEntry *)v7 signedData];
      if (v17 == signedData || (-[IDSKeyTransparencyEntry signedData](self, "signedData"), v3 = objc_claimAutoreleasedReturnValue(), -[IDSKeyTransparencyEntry signedData](v7, "signedData"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
      {
        ktCapable = [(IDSKeyTransparencyEntry *)self ktCapable];
        v12 = ktCapable ^ [(IDSKeyTransparencyEntry *)v7 ktCapable]^ 1;
        if (v17 == signedData)
        {
          goto LABEL_19;
        }
      }

      else
      {
        LOBYTE(v12) = 0;
      }

LABEL_19:
      loggableData4 = v22;
      loggableData3 = v24;
      if (loggableData == loggableData2)
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(IDSKeyTransparencyEntry *)self isEqualToKeyTransparencyEntry:equalCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  pushToken = [(IDSKeyTransparencyEntry *)self pushToken];
  v4 = [pushToken hash];
  loggableData = [(IDSKeyTransparencyEntry *)self loggableData];
  v6 = [loggableData hash] ^ v4;
  signedData = [(IDSKeyTransparencyEntry *)self signedData];
  v8 = [signedData hash];

  return v6 ^ v8;
}

- (id)description
{
  v14 = objc_opt_class();
  pushToken = [(IDSKeyTransparencyEntry *)self pushToken];
  v3 = [pushToken debugDescription];
  loggableData = [(IDSKeyTransparencyEntry *)self loggableData];
  v5 = [loggableData length];
  signedData = [(IDSKeyTransparencyEntry *)self signedData];
  v7 = [signedData length];
  if ([(IDSKeyTransparencyEntry *)self ktCapable])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  productName = [(IDSKeyTransparencyEntry *)self productName];
  buildVersion = [(IDSKeyTransparencyEntry *)self buildVersion];
  v11 = [NSNumber numberWithLongLong:[(IDSKeyTransparencyEntry *)self transparencyVersion]];
  v12 = [NSString stringWithFormat:@"<%@: %p pushToken: %@, loggableData.length: %lu, signedData.length:%lu, ktCapable: %@, productName: %@, buildVersion: %@, transparencyVersion: %@>", v14, self, v3, v5, v7, v8, productName, buildVersion, v11];

  return v12;
}

@end