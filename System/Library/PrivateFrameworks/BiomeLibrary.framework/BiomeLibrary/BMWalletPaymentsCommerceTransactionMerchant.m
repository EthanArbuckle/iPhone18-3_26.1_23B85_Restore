@interface BMWalletPaymentsCommerceTransactionMerchant
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMWalletPaymentsCommerceTransactionMerchant)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMWalletPaymentsCommerceTransactionMerchant)initWithMerchantUniqueIdentifier:(id)a3 merchantName:(id)a4 webURL:(id)a5 domainName:(id)a6 webMerchantName:(id)a7 adamIdentifier:(id)a8;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (NSURL)webURL;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMWalletPaymentsCommerceTransactionMerchant

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMWalletPaymentsCommerceTransactionMerchant *)self merchantUniqueIdentifier];
    v7 = [v5 merchantUniqueIdentifier];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMWalletPaymentsCommerceTransactionMerchant *)self merchantUniqueIdentifier];
      v10 = [v5 merchantUniqueIdentifier];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_21;
      }
    }

    v13 = [(BMWalletPaymentsCommerceTransactionMerchant *)self merchantName];
    v14 = [v5 merchantName];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMWalletPaymentsCommerceTransactionMerchant *)self merchantName];
      v17 = [v5 merchantName];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_21;
      }
    }

    v19 = [(BMWalletPaymentsCommerceTransactionMerchant *)self webURL];
    v20 = [v5 webURL];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMWalletPaymentsCommerceTransactionMerchant *)self webURL];
      v23 = [v5 webURL];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_21;
      }
    }

    v25 = [(BMWalletPaymentsCommerceTransactionMerchant *)self domainName];
    v26 = [v5 domainName];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(BMWalletPaymentsCommerceTransactionMerchant *)self domainName];
      v29 = [v5 domainName];
      v30 = [v28 isEqual:v29];

      if (!v30)
      {
        goto LABEL_21;
      }
    }

    v31 = [(BMWalletPaymentsCommerceTransactionMerchant *)self webMerchantName];
    v32 = [v5 webMerchantName];
    v33 = v32;
    if (v31 == v32)
    {
    }

    else
    {
      v34 = [(BMWalletPaymentsCommerceTransactionMerchant *)self webMerchantName];
      v35 = [v5 webMerchantName];
      v36 = [v34 isEqual:v35];

      if (!v36)
      {
LABEL_21:
        v12 = 0;
LABEL_22:

        goto LABEL_23;
      }
    }

    v38 = [(BMWalletPaymentsCommerceTransactionMerchant *)self adamIdentifier];
    v39 = [v5 adamIdentifier];
    if (v38 == v39)
    {
      v12 = 1;
    }

    else
    {
      v40 = [(BMWalletPaymentsCommerceTransactionMerchant *)self adamIdentifier];
      v41 = [v5 adamIdentifier];
      v12 = [v40 isEqual:v41];
    }

    goto LABEL_22;
  }

  v12 = 0;
LABEL_23:

  return v12;
}

- (NSURL)webURL
{
  raw_webURL = self->_raw_webURL;
  if (raw_webURL)
  {
    v4 = [MEMORY[0x1E698F280] convertValue:raw_webURL toType:4];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = [(BMWalletPaymentsCommerceTransactionMerchant *)self merchantUniqueIdentifier];
  v4 = [(BMWalletPaymentsCommerceTransactionMerchant *)self merchantName];
  v5 = [(BMWalletPaymentsCommerceTransactionMerchant *)self webURL];
  v6 = [v5 absoluteString];

  v7 = [(BMWalletPaymentsCommerceTransactionMerchant *)self domainName];
  v8 = [(BMWalletPaymentsCommerceTransactionMerchant *)self webMerchantName];
  v9 = [(BMWalletPaymentsCommerceTransactionMerchant *)self adamIdentifier];
  v24 = @"merchantUniqueIdentifier";
  if (v3)
  {
    v32[0] = v3;
    v25 = @"merchantUniqueIndentifier";
    v10 = v3;
  }

  else
  {
    v20 = [MEMORY[0x1E695DFB0] null];
    v32[0] = v20;
    v25 = @"merchantUniqueIndentifier";
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = v10;
  v32[1] = v10;
  v26 = @"merchantName";
  v11 = v4;
  if (!v4)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = v11;
  v32[2] = v11;
  v27 = @"webURL";
  if (v6)
  {
    v33 = v6;
    v28 = @"originURL";
    v12 = v6;
  }

  else
  {
    v19 = [MEMORY[0x1E695DFB0] null];
    v33 = v19;
    v28 = @"originURL";
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = v4;
  v34 = v12;
  v29 = @"domainName";
  v13 = v7;
  if (!v7)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v35 = v13;
  v30 = @"webMerchantName";
  v14 = v8;
  if (!v8)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v36 = v14;
  v31 = @"adamIdentifier";
  v15 = v9;
  if (!v9)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v37 = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v24 count:8];
  if (v9)
  {
    if (v8)
    {
      goto LABEL_17;
    }

LABEL_25:

    if (v7)
    {
      goto LABEL_18;
    }

    goto LABEL_26;
  }

  if (!v8)
  {
    goto LABEL_25;
  }

LABEL_17:
  if (v7)
  {
    goto LABEL_18;
  }

LABEL_26:

LABEL_18:
  if (v6)
  {
    if (v23)
    {
      goto LABEL_20;
    }

LABEL_28:

    if (v3)
    {
      goto LABEL_21;
    }

    goto LABEL_29;
  }

  if (!v23)
  {
    goto LABEL_28;
  }

LABEL_20:
  if (v3)
  {
    goto LABEL_21;
  }

LABEL_29:

LABEL_21:
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (BMWalletPaymentsCommerceTransactionMerchant)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v75[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"merchantUniqueIdentifier"];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = [v6 objectForKeyedSubscript:@"merchantUniqueIndentifier"];
    if (!v8)
    {
LABEL_5:
      v9 = 0;
LABEL_8:
      v10 = [v6 objectForKeyedSubscript:@"merchantName"];
      if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v20 = 0;
            v18 = 0;
            goto LABEL_31;
          }

          v52 = a4;
          v33 = objc_alloc(MEMORY[0x1E696ABC0]);
          v34 = *MEMORY[0x1E698F240];
          v72 = *MEMORY[0x1E696A578];
          v35 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"merchantName"];
          v73 = v35;
          v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
          v36 = v33;
          a4 = v35;
          v37 = [v36 initWithDomain:v34 code:2 userInfo:v12];
          v20 = 0;
          v18 = 0;
          *v52 = v37;
          goto LABEL_30;
        }

        v61 = v10;
      }

      else
      {
        v61 = 0;
      }

      v11 = [v6 objectForKeyedSubscript:@"webURL"];
      if (v11)
      {
        v12 = v11;
      }

      else
      {
        v12 = [v6 objectForKeyedSubscript:@"originURL"];
        if (!v12)
        {
          goto LABEL_15;
        }
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v18 = 0;
            goto LABEL_29;
          }

          v59 = v10;
          v51 = a4;
          v30 = objc_alloc(MEMORY[0x1E696ABC0]);
          v31 = *MEMORY[0x1E698F240];
          v68 = *MEMORY[0x1E696A578];
          v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"webURL"];
          v69 = v19;
          v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
          v32 = [v30 initWithDomain:v31 code:2 userInfo:v13];
          a4 = 0;
          v18 = 0;
          *v51 = v32;
LABEL_28:

          v10 = v59;
LABEL_29:
          v20 = v61;
LABEL_30:

          goto LABEL_31;
        }

        v58 = self;
        v23 = a4;
        v24 = MEMORY[0x1E695DFF8];
        v12 = v12;
        v25 = [[v24 alloc] initWithString:v12];

        if (!v25)
        {
          if (!v23)
          {
            a4 = 0;
            v18 = 0;
            v20 = v61;
            self = v58;
            goto LABEL_30;
          }

          v59 = v10;
          v43 = objc_alloc(MEMORY[0x1E696ABC0]);
          v44 = *MEMORY[0x1E698F240];
          v70 = *MEMORY[0x1E696A578];
          v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"-initWithString: for %@ returned nil", @"webURL"];
          v71 = v19;
          v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
          v45 = [v43 initWithDomain:v44 code:2 userInfo:v13];
          a4 = 0;
          v18 = 0;
          *v23 = v45;
          self = v58;
          goto LABEL_28;
        }

        v59 = v10;
        v60 = v25;
        a4 = v23;
        self = v58;
LABEL_16:
        v13 = [v6 objectForKeyedSubscript:@"domainName"];
        if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!a4)
            {
              v19 = 0;
              v18 = 0;
              a4 = v60;
              goto LABEL_28;
            }

            v53 = a4;
            v38 = objc_alloc(MEMORY[0x1E696ABC0]);
            v39 = *MEMORY[0x1E698F240];
            v66 = *MEMORY[0x1E696A578];
            v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"domainName"];
            v67 = v16;
            v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
            v40 = [v38 initWithDomain:v39 code:2 userInfo:v14];
            v57 = 0;
            v18 = 0;
            *v53 = v40;
            goto LABEL_27;
          }

          v57 = v13;
        }

        else
        {
          v57 = 0;
        }

        v14 = [v6 objectForKeyedSubscript:@"webMerchantName"];
        v56 = v9;
        if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!a4)
            {
              v16 = 0;
              v18 = 0;
              goto LABEL_27;
            }

            v15 = self;
            v49 = objc_alloc(MEMORY[0x1E696ABC0]);
            v41 = *MEMORY[0x1E698F240];
            v64 = *MEMORY[0x1E696A578];
            v54 = a4;
            a4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"webMerchantName"];
            v65 = a4;
            v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
            v42 = [v49 initWithDomain:v41 code:2 userInfo:v17];
            v16 = 0;
            v18 = 0;
            *v54 = v42;
            goto LABEL_26;
          }

          v15 = self;
          v16 = v14;
        }

        else
        {
          v15 = self;
          v16 = 0;
        }

        v17 = [v6 objectForKeyedSubscript:@"adamIdentifier"];
        if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (a4)
            {
              v50 = objc_alloc(MEMORY[0x1E696ABC0]);
              v48 = *MEMORY[0x1E698F240];
              v62 = *MEMORY[0x1E696A578];
              v55 = a4;
              v46 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"adamIdentifier"];
              v63 = v46;
              v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
              *v55 = [v50 initWithDomain:v48 code:2 userInfo:v47];

              a4 = 0;
            }

            v18 = 0;
            goto LABEL_26;
          }

          a4 = v17;
        }

        else
        {
          a4 = 0;
        }

        v18 = [(BMWalletPaymentsCommerceTransactionMerchant *)v15 initWithMerchantUniqueIdentifier:v56 merchantName:v61 webURL:v60 domainName:v57 webMerchantName:v16 adamIdentifier:a4];
        v15 = v18;
LABEL_26:

        self = v15;
        v9 = v56;
LABEL_27:

        a4 = v60;
        v19 = v57;
        goto LABEL_28;
      }

LABEL_15:
      v59 = v10;
      v60 = 0;
      goto LABEL_16;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v8;
    v9 = v8;
    goto LABEL_8;
  }

  if (!a4)
  {
    v9 = 0;
    v18 = 0;
    goto LABEL_32;
  }

  v26 = a4;
  v27 = objc_alloc(MEMORY[0x1E696ABC0]);
  v28 = *MEMORY[0x1E698F240];
  v74 = *MEMORY[0x1E696A578];
  v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"merchantUniqueIdentifier"];
  v75[0] = v20;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v75 forKeys:&v74 count:1];
  v29 = [v27 initWithDomain:v28 code:2 userInfo:v10];
  v9 = 0;
  v18 = 0;
  *v26 = v29;
LABEL_31:

LABEL_32:
  v21 = *MEMORY[0x1E69E9840];
  return v18;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMWalletPaymentsCommerceTransactionMerchant *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_merchantUniqueIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_merchantName)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_raw_webURL)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_domainName)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_webMerchantName)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_adamIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = BMWalletPaymentsCommerceTransactionMerchant;
  v5 = [(BMEventBase *)&v23 init];
  if (!v5)
  {
    goto LABEL_24;
  }

  v6 = [v4 position];
  if (v6 < [v4 length])
  {
    do
    {
      if ([v4 hasError])
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        v24 = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v24 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v24 & 0x7F) << v7;
        if ((v24 & 0x80) == 0)
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
        break;
      }

      v15 = (v14 >> 3) - 1;
      if (v15 >= 6)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v16 = off_1E6E9E5B0[v15];
        v17 = PBReaderReadString();
        v18 = *v16;
        v19 = *(&v5->super.super.isa + v18);
        *(&v5->super.super.isa + v18) = v17;
      }

      v20 = [v4 position];
    }

    while (v20 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_23:
    v21 = 0;
  }

  else
  {
LABEL_24:
    v21 = v5;
  }

  return v21;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMWalletPaymentsCommerceTransactionMerchant *)self merchantUniqueIdentifier];
  v5 = [(BMWalletPaymentsCommerceTransactionMerchant *)self merchantName];
  v6 = [(BMWalletPaymentsCommerceTransactionMerchant *)self webURL];
  v7 = [(BMWalletPaymentsCommerceTransactionMerchant *)self domainName];
  v8 = [(BMWalletPaymentsCommerceTransactionMerchant *)self webMerchantName];
  v9 = [(BMWalletPaymentsCommerceTransactionMerchant *)self adamIdentifier];
  v10 = [v3 initWithFormat:@"BMWalletPaymentsCommerceTransactionMerchant with merchantUniqueIdentifier: %@, merchantName: %@, webURL: %@, domainName: %@, webMerchantName: %@, adamIdentifier: %@", v4, v5, v6, v7, v8, v9];

  return v10;
}

- (BMWalletPaymentsCommerceTransactionMerchant)initWithMerchantUniqueIdentifier:(id)a3 merchantName:(id)a4 webURL:(id)a5 domainName:(id)a6 webMerchantName:(id)a7 adamIdentifier:(id)a8
{
  v24 = a3;
  v23 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v25.receiver = self;
  v25.super_class = BMWalletPaymentsCommerceTransactionMerchant;
  v19 = [(BMEventBase *)&v25 init];
  if (v19)
  {
    v19->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v19->_merchantUniqueIdentifier, a3);
    objc_storeStrong(&v19->_merchantName, a4);
    if (v15)
    {
      v20 = [v15 absoluteString];
    }

    else
    {
      v20 = 0;
    }

    raw_webURL = v19->_raw_webURL;
    v19->_raw_webURL = v20;

    objc_storeStrong(&v19->_domainName, a6);
    objc_storeStrong(&v19->_webMerchantName, a7);
    objc_storeStrong(&v19->_adamIdentifier, a8);
  }

  return v19;
}

+ (id)protoFields
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"merchantUniqueIdentifier" number:1 type:13 subMessageClass:0];
  v11[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"merchantName" number:2 type:13 subMessageClass:0];
  v11[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"webURL" number:3 type:13 subMessageClass:0];
  v11[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"domainName" number:4 type:13 subMessageClass:0];
  v11[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"webMerchantName" number:5 type:13 subMessageClass:0];
  v11[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"adamIdentifier" number:6 type:13 subMessageClass:0];
  v11[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)columns
{
  v13[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"merchantUniqueIdentifier" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"merchantUniqueIndentifier" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"merchantName" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"webURL" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:4];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"originURL" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:4];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"domainName" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"webMerchantName" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"adamIdentifier" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v13[0] = v2;
  v13[1] = v3;
  v13[2] = v4;
  v13[3] = v5;
  v13[4] = v6;
  v13[5] = v7;
  v13[6] = v8;
  v13[7] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
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

    v8 = [[BMWalletPaymentsCommerceTransactionMerchant alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[6] = 0;
    }
  }

  return v4;
}

@end