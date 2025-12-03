@interface BMWalletPaymentsCommerceTransactionMerchant
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMWalletPaymentsCommerceTransactionMerchant)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMWalletPaymentsCommerceTransactionMerchant)initWithMerchantUniqueIdentifier:(id)identifier merchantName:(id)name webURL:(id)l domainName:(id)domainName webMerchantName:(id)merchantName adamIdentifier:(id)adamIdentifier;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (NSURL)webURL;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMWalletPaymentsCommerceTransactionMerchant

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    merchantUniqueIdentifier = [(BMWalletPaymentsCommerceTransactionMerchant *)self merchantUniqueIdentifier];
    merchantUniqueIdentifier2 = [v5 merchantUniqueIdentifier];
    v8 = merchantUniqueIdentifier2;
    if (merchantUniqueIdentifier == merchantUniqueIdentifier2)
    {
    }

    else
    {
      merchantUniqueIdentifier3 = [(BMWalletPaymentsCommerceTransactionMerchant *)self merchantUniqueIdentifier];
      merchantUniqueIdentifier4 = [v5 merchantUniqueIdentifier];
      v11 = [merchantUniqueIdentifier3 isEqual:merchantUniqueIdentifier4];

      if (!v11)
      {
        goto LABEL_21;
      }
    }

    merchantName = [(BMWalletPaymentsCommerceTransactionMerchant *)self merchantName];
    merchantName2 = [v5 merchantName];
    v15 = merchantName2;
    if (merchantName == merchantName2)
    {
    }

    else
    {
      merchantName3 = [(BMWalletPaymentsCommerceTransactionMerchant *)self merchantName];
      merchantName4 = [v5 merchantName];
      v18 = [merchantName3 isEqual:merchantName4];

      if (!v18)
      {
        goto LABEL_21;
      }
    }

    webURL = [(BMWalletPaymentsCommerceTransactionMerchant *)self webURL];
    webURL2 = [v5 webURL];
    v21 = webURL2;
    if (webURL == webURL2)
    {
    }

    else
    {
      webURL3 = [(BMWalletPaymentsCommerceTransactionMerchant *)self webURL];
      webURL4 = [v5 webURL];
      v24 = [webURL3 isEqual:webURL4];

      if (!v24)
      {
        goto LABEL_21;
      }
    }

    domainName = [(BMWalletPaymentsCommerceTransactionMerchant *)self domainName];
    domainName2 = [v5 domainName];
    v27 = domainName2;
    if (domainName == domainName2)
    {
    }

    else
    {
      domainName3 = [(BMWalletPaymentsCommerceTransactionMerchant *)self domainName];
      domainName4 = [v5 domainName];
      v30 = [domainName3 isEqual:domainName4];

      if (!v30)
      {
        goto LABEL_21;
      }
    }

    webMerchantName = [(BMWalletPaymentsCommerceTransactionMerchant *)self webMerchantName];
    webMerchantName2 = [v5 webMerchantName];
    v33 = webMerchantName2;
    if (webMerchantName == webMerchantName2)
    {
    }

    else
    {
      webMerchantName3 = [(BMWalletPaymentsCommerceTransactionMerchant *)self webMerchantName];
      webMerchantName4 = [v5 webMerchantName];
      v36 = [webMerchantName3 isEqual:webMerchantName4];

      if (!v36)
      {
LABEL_21:
        v12 = 0;
LABEL_22:

        goto LABEL_23;
      }
    }

    adamIdentifier = [(BMWalletPaymentsCommerceTransactionMerchant *)self adamIdentifier];
    adamIdentifier2 = [v5 adamIdentifier];
    if (adamIdentifier == adamIdentifier2)
    {
      v12 = 1;
    }

    else
    {
      adamIdentifier3 = [(BMWalletPaymentsCommerceTransactionMerchant *)self adamIdentifier];
      adamIdentifier4 = [v5 adamIdentifier];
      v12 = [adamIdentifier3 isEqual:adamIdentifier4];
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
  merchantUniqueIdentifier = [(BMWalletPaymentsCommerceTransactionMerchant *)self merchantUniqueIdentifier];
  merchantName = [(BMWalletPaymentsCommerceTransactionMerchant *)self merchantName];
  webURL = [(BMWalletPaymentsCommerceTransactionMerchant *)self webURL];
  absoluteString = [webURL absoluteString];

  domainName = [(BMWalletPaymentsCommerceTransactionMerchant *)self domainName];
  webMerchantName = [(BMWalletPaymentsCommerceTransactionMerchant *)self webMerchantName];
  adamIdentifier = [(BMWalletPaymentsCommerceTransactionMerchant *)self adamIdentifier];
  v24 = @"merchantUniqueIdentifier";
  if (merchantUniqueIdentifier)
  {
    v32[0] = merchantUniqueIdentifier;
    v25 = @"merchantUniqueIndentifier";
    null2 = merchantUniqueIdentifier;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    v32[0] = null;
    v25 = @"merchantUniqueIndentifier";
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = null2;
  v32[1] = null2;
  v26 = @"merchantName";
  null3 = merchantName;
  if (!merchantName)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = null3;
  v32[2] = null3;
  v27 = @"webURL";
  if (absoluteString)
  {
    v33 = absoluteString;
    v28 = @"originURL";
    null5 = absoluteString;
  }

  else
  {
    null4 = [MEMORY[0x1E695DFB0] null];
    v33 = null4;
    v28 = @"originURL";
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = merchantName;
  v34 = null5;
  v29 = @"domainName";
  null6 = domainName;
  if (!domainName)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v35 = null6;
  v30 = @"webMerchantName";
  null7 = webMerchantName;
  if (!webMerchantName)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v36 = null7;
  v31 = @"adamIdentifier";
  null8 = adamIdentifier;
  if (!adamIdentifier)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v37 = null8;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v24 count:8];
  if (adamIdentifier)
  {
    if (webMerchantName)
    {
      goto LABEL_17;
    }

LABEL_25:

    if (domainName)
    {
      goto LABEL_18;
    }

    goto LABEL_26;
  }

  if (!webMerchantName)
  {
    goto LABEL_25;
  }

LABEL_17:
  if (domainName)
  {
    goto LABEL_18;
  }

LABEL_26:

LABEL_18:
  if (absoluteString)
  {
    if (v23)
    {
      goto LABEL_20;
    }

LABEL_28:

    if (merchantUniqueIdentifier)
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
  if (merchantUniqueIdentifier)
  {
    goto LABEL_21;
  }

LABEL_29:

LABEL_21:
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (BMWalletPaymentsCommerceTransactionMerchant)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v75[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"merchantUniqueIdentifier"];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = [dictionaryCopy objectForKeyedSubscript:@"merchantUniqueIndentifier"];
    if (!v8)
    {
LABEL_5:
      v9 = 0;
LABEL_8:
      v10 = [dictionaryCopy objectForKeyedSubscript:@"merchantName"];
      if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v20 = 0;
            v18 = 0;
            goto LABEL_31;
          }

          errorCopy = error;
          v33 = objc_alloc(MEMORY[0x1E696ABC0]);
          v34 = *MEMORY[0x1E698F240];
          v72 = *MEMORY[0x1E696A578];
          v35 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"merchantName"];
          v73 = v35;
          v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
          v36 = v33;
          error = v35;
          v37 = [v36 initWithDomain:v34 code:2 userInfo:v12];
          v20 = 0;
          v18 = 0;
          *errorCopy = v37;
          goto LABEL_30;
        }

        v61 = v10;
      }

      else
      {
        v61 = 0;
      }

      v11 = [dictionaryCopy objectForKeyedSubscript:@"webURL"];
      if (v11)
      {
        v12 = v11;
      }

      else
      {
        v12 = [dictionaryCopy objectForKeyedSubscript:@"originURL"];
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
          if (!error)
          {
            v18 = 0;
            goto LABEL_29;
          }

          v59 = v10;
          errorCopy2 = error;
          v30 = objc_alloc(MEMORY[0x1E696ABC0]);
          v31 = *MEMORY[0x1E698F240];
          v68 = *MEMORY[0x1E696A578];
          v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"webURL"];
          v69 = v19;
          v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
          v32 = [v30 initWithDomain:v31 code:2 userInfo:v13];
          error = 0;
          v18 = 0;
          *errorCopy2 = v32;
LABEL_28:

          v10 = v59;
LABEL_29:
          v20 = v61;
LABEL_30:

          goto LABEL_31;
        }

        selfCopy = self;
        errorCopy3 = error;
        v24 = MEMORY[0x1E695DFF8];
        v12 = v12;
        v25 = [[v24 alloc] initWithString:v12];

        if (!v25)
        {
          if (!errorCopy3)
          {
            error = 0;
            v18 = 0;
            v20 = v61;
            self = selfCopy;
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
          error = 0;
          v18 = 0;
          *errorCopy3 = v45;
          self = selfCopy;
          goto LABEL_28;
        }

        v59 = v10;
        v60 = v25;
        error = errorCopy3;
        self = selfCopy;
LABEL_16:
        v13 = [dictionaryCopy objectForKeyedSubscript:@"domainName"];
        if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!error)
            {
              v19 = 0;
              v18 = 0;
              error = v60;
              goto LABEL_28;
            }

            errorCopy4 = error;
            v38 = objc_alloc(MEMORY[0x1E696ABC0]);
            v39 = *MEMORY[0x1E698F240];
            v66 = *MEMORY[0x1E696A578];
            v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"domainName"];
            v67 = v16;
            v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
            v40 = [v38 initWithDomain:v39 code:2 userInfo:v14];
            v57 = 0;
            v18 = 0;
            *errorCopy4 = v40;
            goto LABEL_27;
          }

          v57 = v13;
        }

        else
        {
          v57 = 0;
        }

        v14 = [dictionaryCopy objectForKeyedSubscript:@"webMerchantName"];
        v56 = v9;
        if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!error)
            {
              v16 = 0;
              v18 = 0;
              goto LABEL_27;
            }

            selfCopy4 = self;
            v49 = objc_alloc(MEMORY[0x1E696ABC0]);
            v41 = *MEMORY[0x1E698F240];
            v64 = *MEMORY[0x1E696A578];
            errorCopy5 = error;
            error = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"webMerchantName"];
            errorCopy6 = error;
            v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&errorCopy6 forKeys:&v64 count:1];
            v42 = [v49 initWithDomain:v41 code:2 userInfo:v17];
            v16 = 0;
            v18 = 0;
            *errorCopy5 = v42;
            goto LABEL_26;
          }

          selfCopy4 = self;
          v16 = v14;
        }

        else
        {
          selfCopy4 = self;
          v16 = 0;
        }

        v17 = [dictionaryCopy objectForKeyedSubscript:@"adamIdentifier"];
        if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (error)
            {
              v50 = objc_alloc(MEMORY[0x1E696ABC0]);
              v48 = *MEMORY[0x1E698F240];
              v62 = *MEMORY[0x1E696A578];
              errorCopy7 = error;
              v46 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"adamIdentifier"];
              v63 = v46;
              v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
              *errorCopy7 = [v50 initWithDomain:v48 code:2 userInfo:v47];

              error = 0;
            }

            v18 = 0;
            goto LABEL_26;
          }

          error = v17;
        }

        else
        {
          error = 0;
        }

        v18 = [(BMWalletPaymentsCommerceTransactionMerchant *)selfCopy4 initWithMerchantUniqueIdentifier:v56 merchantName:v61 webURL:v60 domainName:v57 webMerchantName:v16 adamIdentifier:error];
        selfCopy4 = v18;
LABEL_26:

        self = selfCopy4;
        v9 = v56;
LABEL_27:

        error = v60;
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

  if (!error)
  {
    v9 = 0;
    v18 = 0;
    goto LABEL_32;
  }

  errorCopy8 = error;
  v27 = objc_alloc(MEMORY[0x1E696ABC0]);
  v28 = *MEMORY[0x1E698F240];
  v74 = *MEMORY[0x1E696A578];
  v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"merchantUniqueIdentifier"];
  v75[0] = v20;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v75 forKeys:&v74 count:1];
  v29 = [v27 initWithDomain:v28 code:2 userInfo:v10];
  v9 = 0;
  v18 = 0;
  *errorCopy8 = v29;
LABEL_31:

LABEL_32:
  v21 = *MEMORY[0x1E69E9840];
  return v18;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMWalletPaymentsCommerceTransactionMerchant *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_merchantUniqueIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_merchantName)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_raw_webURL)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_domainName)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_webMerchantName)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_adamIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v23.receiver = self;
  v23.super_class = BMWalletPaymentsCommerceTransactionMerchant;
  v5 = [(BMEventBase *)&v23 init];
  if (!v5)
  {
    goto LABEL_24;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    do
    {
      if ([fromCopy hasError])
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        v24 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v24 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
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

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
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

      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
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
  merchantUniqueIdentifier = [(BMWalletPaymentsCommerceTransactionMerchant *)self merchantUniqueIdentifier];
  merchantName = [(BMWalletPaymentsCommerceTransactionMerchant *)self merchantName];
  webURL = [(BMWalletPaymentsCommerceTransactionMerchant *)self webURL];
  domainName = [(BMWalletPaymentsCommerceTransactionMerchant *)self domainName];
  webMerchantName = [(BMWalletPaymentsCommerceTransactionMerchant *)self webMerchantName];
  adamIdentifier = [(BMWalletPaymentsCommerceTransactionMerchant *)self adamIdentifier];
  v10 = [v3 initWithFormat:@"BMWalletPaymentsCommerceTransactionMerchant with merchantUniqueIdentifier: %@, merchantName: %@, webURL: %@, domainName: %@, webMerchantName: %@, adamIdentifier: %@", merchantUniqueIdentifier, merchantName, webURL, domainName, webMerchantName, adamIdentifier];

  return v10;
}

- (BMWalletPaymentsCommerceTransactionMerchant)initWithMerchantUniqueIdentifier:(id)identifier merchantName:(id)name webURL:(id)l domainName:(id)domainName webMerchantName:(id)merchantName adamIdentifier:(id)adamIdentifier
{
  identifierCopy = identifier;
  nameCopy = name;
  lCopy = l;
  domainNameCopy = domainName;
  merchantNameCopy = merchantName;
  adamIdentifierCopy = adamIdentifier;
  v25.receiver = self;
  v25.super_class = BMWalletPaymentsCommerceTransactionMerchant;
  v19 = [(BMEventBase *)&v25 init];
  if (v19)
  {
    v19->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v19->_merchantUniqueIdentifier, identifier);
    objc_storeStrong(&v19->_merchantName, name);
    if (lCopy)
    {
      absoluteString = [lCopy absoluteString];
    }

    else
    {
      absoluteString = 0;
    }

    raw_webURL = v19->_raw_webURL;
    v19->_raw_webURL = absoluteString;

    objc_storeStrong(&v19->_domainName, domainName);
    objc_storeStrong(&v19->_webMerchantName, merchantName);
    objc_storeStrong(&v19->_adamIdentifier, adamIdentifier);
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