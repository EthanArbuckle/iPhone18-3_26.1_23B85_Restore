@interface BMWalletPaymentsCommerceOrderEmailShippingRecipient
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMWalletPaymentsCommerceOrderEmailShippingRecipient)initWithFullName:(id)a3 phoneNumber:(id)a4 emailAddress:(id)a5 address:(id)a6 givenName:(id)a7 familyName:(id)a8;
- (BMWalletPaymentsCommerceOrderEmailShippingRecipient)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMWalletPaymentsCommerceOrderEmailShippingRecipient

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMWalletPaymentsCommerceOrderEmailShippingRecipient *)self fullName];
    v7 = [v5 fullName];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMWalletPaymentsCommerceOrderEmailShippingRecipient *)self fullName];
      v10 = [v5 fullName];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_21;
      }
    }

    v13 = [(BMWalletPaymentsCommerceOrderEmailShippingRecipient *)self phoneNumber];
    v14 = [v5 phoneNumber];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMWalletPaymentsCommerceOrderEmailShippingRecipient *)self phoneNumber];
      v17 = [v5 phoneNumber];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_21;
      }
    }

    v19 = [(BMWalletPaymentsCommerceOrderEmailShippingRecipient *)self emailAddress];
    v20 = [v5 emailAddress];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMWalletPaymentsCommerceOrderEmailShippingRecipient *)self emailAddress];
      v23 = [v5 emailAddress];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_21;
      }
    }

    v25 = [(BMWalletPaymentsCommerceOrderEmailShippingRecipient *)self address];
    v26 = [v5 address];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(BMWalletPaymentsCommerceOrderEmailShippingRecipient *)self address];
      v29 = [v5 address];
      v30 = [v28 isEqual:v29];

      if (!v30)
      {
        goto LABEL_21;
      }
    }

    v31 = [(BMWalletPaymentsCommerceOrderEmailShippingRecipient *)self givenName];
    v32 = [v5 givenName];
    v33 = v32;
    if (v31 == v32)
    {
    }

    else
    {
      v34 = [(BMWalletPaymentsCommerceOrderEmailShippingRecipient *)self givenName];
      v35 = [v5 givenName];
      v36 = [v34 isEqual:v35];

      if (!v36)
      {
LABEL_21:
        v12 = 0;
LABEL_22:

        goto LABEL_23;
      }
    }

    v38 = [(BMWalletPaymentsCommerceOrderEmailShippingRecipient *)self familyName];
    v39 = [v5 familyName];
    if (v38 == v39)
    {
      v12 = 1;
    }

    else
    {
      v40 = [(BMWalletPaymentsCommerceOrderEmailShippingRecipient *)self familyName];
      v41 = [v5 familyName];
      v12 = [v40 isEqual:v41];
    }

    goto LABEL_22;
  }

  v12 = 0;
LABEL_23:

  return v12;
}

- (id)jsonDictionary
{
  v25[6] = *MEMORY[0x1E69E9840];
  v3 = [(BMWalletPaymentsCommerceOrderEmailShippingRecipient *)self fullName];
  v4 = [(BMWalletPaymentsCommerceOrderEmailShippingRecipient *)self phoneNumber];
  v5 = [(BMWalletPaymentsCommerceOrderEmailShippingRecipient *)self emailAddress];
  v6 = [(BMWalletPaymentsCommerceOrderEmailShippingRecipient *)self address];
  v7 = [v6 jsonDictionary];

  v8 = [(BMWalletPaymentsCommerceOrderEmailShippingRecipient *)self givenName];
  v9 = [(BMWalletPaymentsCommerceOrderEmailShippingRecipient *)self familyName];
  v24[0] = @"fullName";
  v10 = v3;
  if (!v3)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = v10;
  v23 = v4;
  v25[0] = v10;
  v24[1] = @"phoneNumber";
  v11 = v4;
  if (!v4)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = v11;
  v25[1] = v11;
  v24[2] = @"emailAddress";
  v12 = v5;
  if (!v5)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v25[2] = v12;
  v24[3] = @"address";
  v13 = v7;
  if (!v7)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v14 = v3;
  v25[3] = v13;
  v24[4] = @"givenName";
  v15 = v8;
  if (!v8)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v25[4] = v15;
  v24[5] = @"familyName";
  v16 = v9;
  if (!v9)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v25[5] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:{6, v20}];
  if (v9)
  {
    if (v8)
    {
      goto LABEL_15;
    }
  }

  else
  {

    if (v8)
    {
LABEL_15:
      if (v7)
      {
        goto LABEL_16;
      }

LABEL_24:

      if (v5)
      {
        goto LABEL_17;
      }

      goto LABEL_25;
    }
  }

  if (!v7)
  {
    goto LABEL_24;
  }

LABEL_16:
  if (v5)
  {
    goto LABEL_17;
  }

LABEL_25:

LABEL_17:
  if (v23)
  {
    if (v14)
    {
      goto LABEL_19;
    }
  }

  else
  {

    if (v14)
    {
      goto LABEL_19;
    }
  }

LABEL_19:
  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (BMWalletPaymentsCommerceOrderEmailShippingRecipient)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v70[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"fullName"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"phoneNumber"];
    v55 = v7;
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v23 = 0;
          v16 = 0;
          goto LABEL_55;
        }

        v25 = a4;
        v26 = objc_alloc(MEMORY[0x1E696ABC0]);
        v27 = v8;
        v28 = *MEMORY[0x1E698F240];
        v67 = *MEMORY[0x1E696A578];
        v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"phoneNumber"];
        v68 = v29;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
        v30 = v28;
        v8 = v27;
        v23 = 0;
        v16 = 0;
        *v25 = [v26 initWithDomain:v30 code:2 userInfo:v10];
        v11 = v29;
        goto LABEL_54;
      }

      v56 = v9;
    }

    else
    {
      v56 = 0;
    }

    v10 = [v6 objectForKeyedSubscript:@"emailAddress"];
    v57 = self;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v11 = 0;
          v16 = 0;
          goto LABEL_53;
        }

        v31 = a4;
        v32 = objc_alloc(MEMORY[0x1E696ABC0]);
        v33 = v8;
        v34 = *MEMORY[0x1E698F240];
        v65 = *MEMORY[0x1E696A578];
        v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"emailAddress"];
        v66 = v17;
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
        v35 = v34;
        v8 = v33;
        v16 = 0;
        *v31 = [v32 initWithDomain:v35 code:2 userInfo:v18];
        v11 = 0;
        goto LABEL_51;
      }

      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = [v6 objectForKeyedSubscript:@"address"];
    v51 = v11;
    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v16 = 0;
          goto LABEL_52;
        }

        v36 = objc_alloc(MEMORY[0x1E696ABC0]);
        v54 = v8;
        v37 = *MEMORY[0x1E698F240];
        v63 = *MEMORY[0x1E696A578];
        v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"address"];
        v64 = v18;
        v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
        v39 = v37;
        v8 = v54;
        *a4 = [v36 initWithDomain:v39 code:2 userInfo:v38];

        v16 = 0;
        v17 = v12;
LABEL_51:

        v12 = v17;
LABEL_52:

        self = v57;
LABEL_53:
        v23 = v56;
LABEL_54:

        v7 = v55;
        goto LABEL_55;
      }

      v17 = v12;
      v58 = 0;
      v18 = [[BMWalletPaymentsCommerceOrderEmailAddress alloc] initWithJSONDictionary:v17 error:&v58];
      v19 = v58;
      if (v19)
      {
        if (a4)
        {
          v19 = v19;
          *a4 = v19;
        }

        v16 = 0;
        goto LABEL_51;
      }

      v52 = v18;
    }

    else
    {
      v52 = 0;
    }

    v13 = [v6 objectForKeyedSubscript:@"givenName"];
    v53 = v8;
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v14 = 0;
          v16 = 0;
          goto LABEL_50;
        }

        v40 = objc_alloc(MEMORY[0x1E696ABC0]);
        v41 = *MEMORY[0x1E698F240];
        v61 = *MEMORY[0x1E696A578];
        v42 = a4;
        a4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"givenName"];
        v62 = a4;
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
        v43 = [v40 initWithDomain:v41 code:2 userInfo:v15];
        v14 = 0;
        v16 = 0;
        *v42 = v43;
        goto LABEL_48;
      }

      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = [v6 objectForKeyedSubscript:@"familyName"];
    if (!v15 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      a4 = 0;
LABEL_19:
      v16 = [(BMWalletPaymentsCommerceOrderEmailShippingRecipient *)v57 initWithFullName:v53 phoneNumber:v56 emailAddress:v11 address:v52 givenName:v14 familyName:a4];
      v57 = v16;
LABEL_49:

LABEL_50:
      v17 = v12;
      v18 = v52;
      v8 = v53;
      goto LABEL_51;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      a4 = v15;
      goto LABEL_19;
    }

    if (a4)
    {
      v50 = objc_alloc(MEMORY[0x1E696ABC0]);
      v49 = *MEMORY[0x1E698F240];
      v59 = *MEMORY[0x1E696A578];
      v44 = a4;
      v45 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"familyName"];
      v60 = v45;
      v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
      *v44 = [v50 initWithDomain:v49 code:2 userInfo:v46];

      a4 = 0;
    }

    v16 = 0;
LABEL_48:
    v11 = v51;
    goto LABEL_49;
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
    goto LABEL_56;
  }

  v20 = a4;
  v21 = objc_alloc(MEMORY[0x1E696ABC0]);
  v22 = *MEMORY[0x1E698F240];
  v69 = *MEMORY[0x1E696A578];
  v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"fullName"];
  v70[0] = v23;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v70 forKeys:&v69 count:1];
  v24 = [v21 initWithDomain:v22 code:2 userInfo:v9];
  v8 = 0;
  v16 = 0;
  *v20 = v24;
LABEL_55:

LABEL_56:
  v47 = *MEMORY[0x1E69E9840];
  return v16;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMWalletPaymentsCommerceOrderEmailShippingRecipient *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (self->_fullName)
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
    [(BMWalletPaymentsCommerceOrderEmailAddress *)self->_address writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_givenName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_familyName)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = BMWalletPaymentsCommerceOrderEmailShippingRecipient;
  v5 = [(BMEventBase *)&v24 init];
  if (!v5)
  {
    goto LABEL_39;
  }

  v6 = [v4 position];
  if (v6 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_37;
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
        goto LABEL_37;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 3)
      {
        break;
      }

      if (v15 != 4)
      {
        if (v15 == 5)
        {
          v16 = PBReaderReadString();
          v17 = 56;
        }

        else
        {
          if (v15 != 6)
          {
LABEL_31:
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_38;
            }

            goto LABEL_36;
          }

          v16 = PBReaderReadString();
          v17 = 64;
        }

        goto LABEL_35;
      }

      v25[0] = 0;
      v25[1] = 0;
      if (!PBReaderPlaceMark())
      {
        goto LABEL_38;
      }

      v18 = [[BMWalletPaymentsCommerceOrderEmailAddress alloc] initByReadFrom:v4];
      if (!v18)
      {
        goto LABEL_38;
      }

      address = v5->_address;
      v5->_address = v18;

      PBReaderRecallMark();
LABEL_36:
      v21 = [v4 position];
      if (v21 >= [v4 length])
      {
        goto LABEL_37;
      }
    }

    switch(v15)
    {
      case 1:
        v16 = PBReaderReadString();
        v17 = 24;
        break;
      case 2:
        v16 = PBReaderReadString();
        v17 = 32;
        break;
      case 3:
        v16 = PBReaderReadString();
        v17 = 40;
        break;
      default:
        goto LABEL_31;
    }

LABEL_35:
    v20 = *(&v5->super.super.isa + v17);
    *(&v5->super.super.isa + v17) = v16;

    goto LABEL_36;
  }

LABEL_37:
  if ([v4 hasError])
  {
LABEL_38:
    v22 = 0;
  }

  else
  {
LABEL_39:
    v22 = v5;
  }

  return v22;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMWalletPaymentsCommerceOrderEmailShippingRecipient *)self fullName];
  v5 = [(BMWalletPaymentsCommerceOrderEmailShippingRecipient *)self phoneNumber];
  v6 = [(BMWalletPaymentsCommerceOrderEmailShippingRecipient *)self emailAddress];
  v7 = [(BMWalletPaymentsCommerceOrderEmailShippingRecipient *)self address];
  v8 = [(BMWalletPaymentsCommerceOrderEmailShippingRecipient *)self givenName];
  v9 = [(BMWalletPaymentsCommerceOrderEmailShippingRecipient *)self familyName];
  v10 = [v3 initWithFormat:@"BMWalletPaymentsCommerceOrderEmailShippingRecipient with fullName: %@, phoneNumber: %@, emailAddress: %@, address: %@, givenName: %@, familyName: %@", v4, v5, v6, v7, v8, v9];

  return v10;
}

- (BMWalletPaymentsCommerceOrderEmailShippingRecipient)initWithFullName:(id)a3 phoneNumber:(id)a4 emailAddress:(id)a5 address:(id)a6 givenName:(id)a7 familyName:(id)a8
{
  v22 = a3;
  v21 = a4;
  v20 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v23.receiver = self;
  v23.super_class = BMWalletPaymentsCommerceOrderEmailShippingRecipient;
  v18 = [(BMEventBase *)&v23 init];
  if (v18)
  {
    v18->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v18->_fullName, a3);
    objc_storeStrong(&v18->_phoneNumber, a4);
    objc_storeStrong(&v18->_emailAddress, a5);
    objc_storeStrong(&v18->_address, a6);
    objc_storeStrong(&v18->_givenName, a7);
    objc_storeStrong(&v18->_familyName, a8);
  }

  return v18;
}

+ (id)protoFields
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"fullName" number:1 type:13 subMessageClass:0];
  v11[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"phoneNumber" number:2 type:13 subMessageClass:0];
  v11[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"emailAddress" number:3 type:13 subMessageClass:0];
  v11[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"address" number:4 type:14 subMessageClass:objc_opt_class()];
  v11[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"givenName" number:5 type:13 subMessageClass:0];
  v11[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"familyName" number:6 type:13 subMessageClass:0];
  v11[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)columns
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"fullName" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"phoneNumber" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"emailAddress" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"address_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_406_92404];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"givenName" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"familyName" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v11[0] = v2;
  v11[1] = v3;
  v11[2] = v4;
  v11[3] = v5;
  v11[4] = v6;
  v11[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

id __62__BMWalletPaymentsCommerceOrderEmailShippingRecipient_columns__block_invoke(uint64_t a1, void *a2)
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

    v8 = [[BMWalletPaymentsCommerceOrderEmailShippingRecipient alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end