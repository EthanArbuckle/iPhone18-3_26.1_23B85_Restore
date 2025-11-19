@interface BMWalletPaymentsCommerceClassicOrderShippingRecipient
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMWalletPaymentsCommerceClassicOrderShippingRecipient)initWithGivenName:(id)a3 familyName:(id)a4 phoneNumber:(id)a5 emailAddress:(id)a6 address:(id)a7;
- (BMWalletPaymentsCommerceClassicOrderShippingRecipient)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMWalletPaymentsCommerceClassicOrderShippingRecipient

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMWalletPaymentsCommerceClassicOrderShippingRecipient *)self givenName];
    v7 = [v5 givenName];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMWalletPaymentsCommerceClassicOrderShippingRecipient *)self givenName];
      v10 = [v5 givenName];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_17;
      }
    }

    v13 = [(BMWalletPaymentsCommerceClassicOrderShippingRecipient *)self familyName];
    v14 = [v5 familyName];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMWalletPaymentsCommerceClassicOrderShippingRecipient *)self familyName];
      v17 = [v5 familyName];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_17;
      }
    }

    v19 = [(BMWalletPaymentsCommerceClassicOrderShippingRecipient *)self phoneNumber];
    v20 = [v5 phoneNumber];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMWalletPaymentsCommerceClassicOrderShippingRecipient *)self phoneNumber];
      v23 = [v5 phoneNumber];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_17;
      }
    }

    v25 = [(BMWalletPaymentsCommerceClassicOrderShippingRecipient *)self emailAddress];
    v26 = [v5 emailAddress];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(BMWalletPaymentsCommerceClassicOrderShippingRecipient *)self emailAddress];
      v29 = [v5 emailAddress];
      v30 = [v28 isEqual:v29];

      if (!v30)
      {
LABEL_17:
        v12 = 0;
LABEL_23:

        goto LABEL_24;
      }
    }

    v31 = [(BMWalletPaymentsCommerceClassicOrderShippingRecipient *)self address];
    v32 = [v5 address];
    if (v31 == v32)
    {
      v12 = 1;
    }

    else
    {
      v33 = [(BMWalletPaymentsCommerceClassicOrderShippingRecipient *)self address];
      v34 = [v5 address];
      v12 = [v33 isEqual:v34];
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
  v3 = [(BMWalletPaymentsCommerceClassicOrderShippingRecipient *)self givenName];
  v4 = [(BMWalletPaymentsCommerceClassicOrderShippingRecipient *)self familyName];
  v5 = [(BMWalletPaymentsCommerceClassicOrderShippingRecipient *)self phoneNumber];
  v6 = [(BMWalletPaymentsCommerceClassicOrderShippingRecipient *)self emailAddress];
  v7 = [(BMWalletPaymentsCommerceClassicOrderShippingRecipient *)self address];
  v8 = [v7 jsonDictionary];

  v19 = @"givenName";
  v9 = v3;
  if (!v3)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v17 = v9;
  v24[0] = v9;
  v20 = @"familyName";
  v10 = v4;
  if (!v4)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v24[1] = v10;
  v21 = @"phoneNumber";
  v11 = v5;
  if (!v5)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v24[2] = v11;
  v22 = @"emailAddress";
  v12 = v6;
  if (!v6)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v24[3] = v12;
  v23 = @"address";
  v13 = v8;
  if (!v8)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v24[4] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v19 count:{5, v17}];
  if (v8)
  {
    if (v6)
    {
      goto LABEL_13;
    }
  }

  else
  {

    if (v6)
    {
LABEL_13:
      if (v5)
      {
        goto LABEL_14;
      }

      goto LABEL_21;
    }
  }

  if (v5)
  {
LABEL_14:
    if (v4)
    {
      goto LABEL_15;
    }

LABEL_22:

    if (v3)
    {
      goto LABEL_16;
    }

    goto LABEL_23;
  }

LABEL_21:

  if (!v4)
  {
    goto LABEL_22;
  }

LABEL_15:
  if (v3)
  {
    goto LABEL_16;
  }

LABEL_23:

LABEL_16:
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (BMWalletPaymentsCommerceClassicOrderShippingRecipient)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v52[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"givenName"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"familyName"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v41 = 0;
          v16 = 0;
          goto LABEL_46;
        }

        v38 = a4;
        v22 = objc_alloc(MEMORY[0x1E696ABC0]);
        v23 = *MEMORY[0x1E698F240];
        v49 = *MEMORY[0x1E696A578];
        v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"familyName"];
        v50 = v24;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
        v41 = 0;
        v16 = 0;
        *v38 = [v22 initWithDomain:v23 code:2 userInfo:v10];
        goto LABEL_45;
      }

      v41 = v9;
    }

    else
    {
      v41 = 0;
    }

    v10 = [v6 objectForKeyedSubscript:@"phoneNumber"];
    v39 = v8;
    v40 = self;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v24 = 0;
          v16 = 0;
          goto LABEL_45;
        }

        v25 = a4;
        v26 = objc_alloc(MEMORY[0x1E696ABC0]);
        v27 = *MEMORY[0x1E698F240];
        v47 = *MEMORY[0x1E696A578];
        v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"phoneNumber"];
        v48 = v13;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
        v28 = [v26 initWithDomain:v27 code:2 userInfo:v11];
        v24 = 0;
        v16 = 0;
        *v25 = v28;
LABEL_44:

        v8 = v39;
        self = v40;
LABEL_45:

        goto LABEL_46;
      }

      v37 = v10;
    }

    else
    {
      v37 = 0;
    }

    v11 = [v6 objectForKeyedSubscript:@"emailAddress"];
    v12 = a4;
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
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
        *v12 = v30;
        goto LABEL_41;
      }

      v13 = v11;
    }

    else
    {
      v13 = 0;
    }

    v14 = [v6 objectForKeyedSubscript:@"address"];
    if (!v14 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v15 = 0;
LABEL_16:
      v16 = [(BMWalletPaymentsCommerceClassicOrderShippingRecipient *)v40 initWithGivenName:v39 familyName:v41 phoneNumber:v37 emailAddress:v13 address:v15];
      v40 = v16;
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

      if (v12)
      {
        v18 = v18;
        *v12 = v18;
      }

      v14 = v17;
    }

    else
    {
      if (!v12)
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
      *v12 = [v36 initWithDomain:v34 code:2 userInfo:v31];
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

  if (!a4)
  {
    v8 = 0;
    v16 = 0;
    goto LABEL_47;
  }

  v19 = a4;
  v20 = objc_alloc(MEMORY[0x1E696ABC0]);
  v21 = *MEMORY[0x1E698F240];
  v51 = *MEMORY[0x1E696A578];
  v41 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"givenName"];
  v52[0] = v41;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:&v51 count:1];
  v8 = 0;
  v16 = 0;
  *v19 = [v20 initWithDomain:v21 code:2 userInfo:v9];
LABEL_46:

LABEL_47:
  v32 = *MEMORY[0x1E69E9840];
  return v16;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMWalletPaymentsCommerceClassicOrderShippingRecipient *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
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
    [(BMWalletPaymentsCommerceClassicOrderAddress *)self->_address writeTo:v4];
    PBDataWriterRecallMark();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = BMWalletPaymentsCommerceClassicOrderShippingRecipient;
  v5 = [(BMEventBase *)&v24 init];
  if (!v5)
  {
    goto LABEL_38;
  }

  v6 = [v4 position];
  if (v6 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_36;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v25[0]) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:v25 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
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

      v14 = [v4 hasError] ? 0 : v9;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v14 & 7) == 4)
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

      v16 = [[BMWalletPaymentsCommerceClassicOrderAddress alloc] initByReadFrom:v4];
      if (!v16)
      {
        goto LABEL_37;
      }

      address = v5->_address;
      v5->_address = v16;

      PBReaderRecallMark();
LABEL_32:
      v21 = [v4 position];
      if (v21 >= [v4 length])
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
  if ([v4 hasError])
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
  v4 = [(BMWalletPaymentsCommerceClassicOrderShippingRecipient *)self givenName];
  v5 = [(BMWalletPaymentsCommerceClassicOrderShippingRecipient *)self familyName];
  v6 = [(BMWalletPaymentsCommerceClassicOrderShippingRecipient *)self phoneNumber];
  v7 = [(BMWalletPaymentsCommerceClassicOrderShippingRecipient *)self emailAddress];
  v8 = [(BMWalletPaymentsCommerceClassicOrderShippingRecipient *)self address];
  v9 = [v3 initWithFormat:@"BMWalletPaymentsCommerceClassicOrderShippingRecipient with givenName: %@, familyName: %@, phoneNumber: %@, emailAddress: %@, address: %@", v4, v5, v6, v7, v8];

  return v9;
}

- (BMWalletPaymentsCommerceClassicOrderShippingRecipient)initWithGivenName:(id)a3 familyName:(id)a4 phoneNumber:(id)a5 emailAddress:(id)a6 address:(id)a7
{
  v19 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = BMWalletPaymentsCommerceClassicOrderShippingRecipient;
  v17 = [(BMEventBase *)&v20 init];
  if (v17)
  {
    v17->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v17->_givenName, a3);
    objc_storeStrong(&v17->_familyName, a4);
    objc_storeStrong(&v17->_phoneNumber, a5);
    objc_storeStrong(&v17->_emailAddress, a6);
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

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    v6 = a3;
    v7 = [[v5 alloc] initWithData:v6];

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