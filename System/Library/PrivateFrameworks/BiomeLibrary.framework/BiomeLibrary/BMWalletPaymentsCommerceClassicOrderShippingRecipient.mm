@interface BMWalletPaymentsCommerceClassicOrderShippingRecipient
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMWalletPaymentsCommerceClassicOrderShippingRecipient)initWithGivenName:(id)name familyName:(id)familyName phoneNumber:(id)number emailAddress:(id)address address:(id)a7;
- (BMWalletPaymentsCommerceClassicOrderShippingRecipient)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMWalletPaymentsCommerceClassicOrderShippingRecipient

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    givenName = [(BMWalletPaymentsCommerceClassicOrderShippingRecipient *)self givenName];
    givenName2 = [v5 givenName];
    v8 = givenName2;
    if (givenName == givenName2)
    {
    }

    else
    {
      givenName3 = [(BMWalletPaymentsCommerceClassicOrderShippingRecipient *)self givenName];
      givenName4 = [v5 givenName];
      v11 = [givenName3 isEqual:givenName4];

      if (!v11)
      {
        goto LABEL_17;
      }
    }

    familyName = [(BMWalletPaymentsCommerceClassicOrderShippingRecipient *)self familyName];
    familyName2 = [v5 familyName];
    v15 = familyName2;
    if (familyName == familyName2)
    {
    }

    else
    {
      familyName3 = [(BMWalletPaymentsCommerceClassicOrderShippingRecipient *)self familyName];
      familyName4 = [v5 familyName];
      v18 = [familyName3 isEqual:familyName4];

      if (!v18)
      {
        goto LABEL_17;
      }
    }

    phoneNumber = [(BMWalletPaymentsCommerceClassicOrderShippingRecipient *)self phoneNumber];
    phoneNumber2 = [v5 phoneNumber];
    v21 = phoneNumber2;
    if (phoneNumber == phoneNumber2)
    {
    }

    else
    {
      phoneNumber3 = [(BMWalletPaymentsCommerceClassicOrderShippingRecipient *)self phoneNumber];
      phoneNumber4 = [v5 phoneNumber];
      v24 = [phoneNumber3 isEqual:phoneNumber4];

      if (!v24)
      {
        goto LABEL_17;
      }
    }

    emailAddress = [(BMWalletPaymentsCommerceClassicOrderShippingRecipient *)self emailAddress];
    emailAddress2 = [v5 emailAddress];
    v27 = emailAddress2;
    if (emailAddress == emailAddress2)
    {
    }

    else
    {
      emailAddress3 = [(BMWalletPaymentsCommerceClassicOrderShippingRecipient *)self emailAddress];
      emailAddress4 = [v5 emailAddress];
      v30 = [emailAddress3 isEqual:emailAddress4];

      if (!v30)
      {
LABEL_17:
        v12 = 0;
LABEL_23:

        goto LABEL_24;
      }
    }

    address = [(BMWalletPaymentsCommerceClassicOrderShippingRecipient *)self address];
    address2 = [v5 address];
    if (address == address2)
    {
      v12 = 1;
    }

    else
    {
      address3 = [(BMWalletPaymentsCommerceClassicOrderShippingRecipient *)self address];
      address4 = [v5 address];
      v12 = [address3 isEqual:address4];
    }

    goto LABEL_23;
  }

  v12 = 0;
LABEL_24:

  return v12;
}

- (id)jsonDictionary
{
  v24[5] = *MEMORY[0x1E69E9840];
  givenName = [(BMWalletPaymentsCommerceClassicOrderShippingRecipient *)self givenName];
  familyName = [(BMWalletPaymentsCommerceClassicOrderShippingRecipient *)self familyName];
  phoneNumber = [(BMWalletPaymentsCommerceClassicOrderShippingRecipient *)self phoneNumber];
  emailAddress = [(BMWalletPaymentsCommerceClassicOrderShippingRecipient *)self emailAddress];
  address = [(BMWalletPaymentsCommerceClassicOrderShippingRecipient *)self address];
  jsonDictionary = [address jsonDictionary];

  v19 = @"givenName";
  null = givenName;
  if (!givenName)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v17 = null;
  v24[0] = null;
  v20 = @"familyName";
  null2 = familyName;
  if (!familyName)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v24[1] = null2;
  v21 = @"phoneNumber";
  null3 = phoneNumber;
  if (!phoneNumber)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v24[2] = null3;
  v22 = @"emailAddress";
  null4 = emailAddress;
  if (!emailAddress)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v24[3] = null4;
  v23 = @"address";
  null5 = jsonDictionary;
  if (!jsonDictionary)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v24[4] = null5;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v19 count:{5, v17}];
  if (jsonDictionary)
  {
    if (emailAddress)
    {
      goto LABEL_13;
    }
  }

  else
  {

    if (emailAddress)
    {
LABEL_13:
      if (phoneNumber)
      {
        goto LABEL_14;
      }

      goto LABEL_21;
    }
  }

  if (phoneNumber)
  {
LABEL_14:
    if (familyName)
    {
      goto LABEL_15;
    }

LABEL_22:

    if (givenName)
    {
      goto LABEL_16;
    }

    goto LABEL_23;
  }

LABEL_21:

  if (!familyName)
  {
    goto LABEL_22;
  }

LABEL_15:
  if (givenName)
  {
    goto LABEL_16;
  }

LABEL_23:

LABEL_16:
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (BMWalletPaymentsCommerceClassicOrderShippingRecipient)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v52[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"givenName"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"familyName"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v41 = 0;
          v16 = 0;
          goto LABEL_46;
        }

        errorCopy = error;
        v22 = objc_alloc(MEMORY[0x1E696ABC0]);
        v23 = *MEMORY[0x1E698F240];
        v49 = *MEMORY[0x1E696A578];
        v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"familyName"];
        v50 = v24;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
        v41 = 0;
        v16 = 0;
        *errorCopy = [v22 initWithDomain:v23 code:2 userInfo:v10];
        goto LABEL_45;
      }

      v41 = v9;
    }

    else
    {
      v41 = 0;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"phoneNumber"];
    v39 = v8;
    selfCopy = self;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v24 = 0;
          v16 = 0;
          goto LABEL_45;
        }

        errorCopy2 = error;
        v26 = objc_alloc(MEMORY[0x1E696ABC0]);
        v27 = *MEMORY[0x1E698F240];
        v47 = *MEMORY[0x1E696A578];
        v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"phoneNumber"];
        v48 = v13;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
        v28 = [v26 initWithDomain:v27 code:2 userInfo:v11];
        v24 = 0;
        v16 = 0;
        *errorCopy2 = v28;
LABEL_44:

        v8 = v39;
        self = selfCopy;
LABEL_45:

        goto LABEL_46;
      }

      v37 = v10;
    }

    else
    {
      v37 = 0;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"emailAddress"];
    errorCopy3 = error;
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v13 = 0;
          v16 = 0;
          goto LABEL_43;
        }

        v35 = objc_alloc(MEMORY[0x1E696ABC0]);
        v29 = *MEMORY[0x1E698F240];
        v45 = *MEMORY[0x1E696A578];
        v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"emailAddress"];
        v46 = v14;
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
        v30 = [v35 initWithDomain:v29 code:2 userInfo:v15];
        v13 = 0;
        v16 = 0;
        *errorCopy3 = v30;
        goto LABEL_41;
      }

      v13 = v11;
    }

    else
    {
      v13 = 0;
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"address"];
    if (!v14 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v15 = 0;
LABEL_16:
      v16 = [(BMWalletPaymentsCommerceClassicOrderShippingRecipient *)selfCopy initWithGivenName:v39 familyName:v41 phoneNumber:v37 emailAddress:v13 address:v15];
      selfCopy = v16;
LABEL_41:

LABEL_42:
LABEL_43:
      v24 = v37;
      goto LABEL_44;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v14;
      v42 = 0;
      v15 = [[BMWalletPaymentsCommerceClassicOrderAddress alloc] initWithJSONDictionary:v17 error:&v42];
      v18 = v42;
      if (!v18)
      {

        goto LABEL_16;
      }

      if (errorCopy3)
      {
        v18 = v18;
        *errorCopy3 = v18;
      }

      v14 = v17;
    }

    else
    {
      if (!errorCopy3)
      {
        v16 = 0;
        goto LABEL_42;
      }

      v36 = objc_alloc(MEMORY[0x1E696ABC0]);
      v34 = *MEMORY[0x1E698F240];
      v43 = *MEMORY[0x1E696A578];
      v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"address"];
      v44 = v15;
      v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
      *errorCopy3 = [v36 initWithDomain:v34 code:2 userInfo:v31];
    }

    v16 = 0;
    goto LABEL_41;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    goto LABEL_4;
  }

  if (!error)
  {
    v8 = 0;
    v16 = 0;
    goto LABEL_47;
  }

  errorCopy4 = error;
  v20 = objc_alloc(MEMORY[0x1E696ABC0]);
  v21 = *MEMORY[0x1E698F240];
  v51 = *MEMORY[0x1E696A578];
  v41 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"givenName"];
  v52[0] = v41;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:&v51 count:1];
  v8 = 0;
  v16 = 0;
  *errorCopy4 = [v20 initWithDomain:v21 code:2 userInfo:v9];
LABEL_46:

LABEL_47:
  v32 = *MEMORY[0x1E69E9840];
  return v16;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMWalletPaymentsCommerceClassicOrderShippingRecipient *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_givenName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_familyName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_phoneNumber)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_emailAddress)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_address)
  {
    PBDataWriterPlaceMark();
    [(BMWalletPaymentsCommerceClassicOrderAddress *)self->_address writeTo:toCopy];
    PBDataWriterRecallMark();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v24.receiver = self;
  v24.super_class = BMWalletPaymentsCommerceClassicOrderShippingRecipient;
  v5 = [(BMEventBase *)&v24 init];
  if (!v5)
  {
    goto LABEL_38;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_36;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v25[0]) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:v25 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v25[0] & 0x7F) << v7;
        if ((v25[0] & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        if (v8++ >= 9)
        {
          v14 = 0;
          goto LABEL_16;
        }
      }

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        goto LABEL_36;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 2)
      {
        break;
      }

      if (v15 == 3)
      {
        v18 = PBReaderReadString();
        v19 = 40;
        goto LABEL_31;
      }

      if (v15 == 4)
      {
        v18 = PBReaderReadString();
        v19 = 48;
        goto LABEL_31;
      }

      if (v15 != 5)
      {
        goto LABEL_34;
      }

      v25[0] = 0;
      v25[1] = 0;
      if (!PBReaderPlaceMark())
      {
        goto LABEL_37;
      }

      v16 = [[BMWalletPaymentsCommerceClassicOrderAddress alloc] initByReadFrom:fromCopy];
      if (!v16)
      {
        goto LABEL_37;
      }

      address = v5->_address;
      v5->_address = v16;

      PBReaderRecallMark();
LABEL_32:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_36;
      }
    }

    if (v15 == 1)
    {
      v18 = PBReaderReadString();
      v19 = 24;
      goto LABEL_31;
    }

    if (v15 == 2)
    {
      v18 = PBReaderReadString();
      v19 = 32;
LABEL_31:
      v20 = *(&v5->super.super.isa + v19);
      *(&v5->super.super.isa + v19) = v18;

      goto LABEL_32;
    }

LABEL_34:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_32;
  }

LABEL_36:
  if ([fromCopy hasError])
  {
LABEL_37:
    v22 = 0;
  }

  else
  {
LABEL_38:
    v22 = v5;
  }

  return v22;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  givenName = [(BMWalletPaymentsCommerceClassicOrderShippingRecipient *)self givenName];
  familyName = [(BMWalletPaymentsCommerceClassicOrderShippingRecipient *)self familyName];
  phoneNumber = [(BMWalletPaymentsCommerceClassicOrderShippingRecipient *)self phoneNumber];
  emailAddress = [(BMWalletPaymentsCommerceClassicOrderShippingRecipient *)self emailAddress];
  address = [(BMWalletPaymentsCommerceClassicOrderShippingRecipient *)self address];
  v9 = [v3 initWithFormat:@"BMWalletPaymentsCommerceClassicOrderShippingRecipient with givenName: %@, familyName: %@, phoneNumber: %@, emailAddress: %@, address: %@", givenName, familyName, phoneNumber, emailAddress, address];

  return v9;
}

- (BMWalletPaymentsCommerceClassicOrderShippingRecipient)initWithGivenName:(id)name familyName:(id)familyName phoneNumber:(id)number emailAddress:(id)address address:(id)a7
{
  nameCopy = name;
  familyNameCopy = familyName;
  numberCopy = number;
  addressCopy = address;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = BMWalletPaymentsCommerceClassicOrderShippingRecipient;
  v17 = [(BMEventBase *)&v20 init];
  if (v17)
  {
    v17->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v17->_givenName, name);
    objc_storeStrong(&v17->_familyName, familyName);
    objc_storeStrong(&v17->_phoneNumber, number);
    objc_storeStrong(&v17->_emailAddress, address);
    objc_storeStrong(&v17->_address, a7);
  }

  return v17;
}

+ (id)protoFields
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"givenName" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"familyName" number:2 type:13 subMessageClass:{0, v2}];
  v10[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"phoneNumber" number:3 type:13 subMessageClass:0];
  v10[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"emailAddress" number:4 type:13 subMessageClass:0];
  v10[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"address" number:5 type:14 subMessageClass:objc_opt_class()];
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)columns
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"givenName" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"familyName" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"phoneNumber" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"emailAddress" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"address_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_278];
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

id __64__BMWalletPaymentsCommerceClassicOrderShippingRecipient_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 address];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v7 = [[v5 alloc] initWithData:dataCopy];

    v8 = [[BMWalletPaymentsCommerceClassicOrderShippingRecipient alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end