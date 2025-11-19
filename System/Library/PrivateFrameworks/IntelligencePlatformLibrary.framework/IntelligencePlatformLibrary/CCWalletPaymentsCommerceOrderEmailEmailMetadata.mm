@interface CCWalletPaymentsCommerceOrderEmailEmailMetadata
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCWalletPaymentsCommerceOrderEmailEmailMetadata)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCWalletPaymentsCommerceOrderEmailEmailMetadata)initWithMessageID:(id)a3 dateSent:(id)a4 subject:(id)a5 senderDomain:(id)a6 fromEmailAddress:(id)a7 fromDisplayName:(id)a8 toEmailAddress:(id)a9 toDisplayName:(id)a10 replyToEmailAddress:(id)a11 replyToDisplayName:(id)a12 error:(id *)a13;
- (NSDate)dateSent;
- (NSString)fromDisplayName;
- (NSString)fromEmailAddress;
- (NSString)messageID;
- (NSString)replyToDisplayName;
- (NSString)replyToEmailAddress;
- (NSString)senderDomain;
- (NSString)subject;
- (NSString)toDisplayName;
- (NSString)toEmailAddress;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCWalletPaymentsCommerceOrderEmailEmailMetadata

- (CCWalletPaymentsCommerceOrderEmailEmailMetadata)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"messageID"];
    v10 = [v6 objectForKeyedSubscript:@"dateSent"];
    if (v10)
    {
      v11 = v10;
      objc_opt_class();
      v12 = CCValidateIsInstanceOfExpectedClass();
      v13 = v8;

      if ((v12 & 1) == 0)
      {
        CCSetError();
        v16 = 0;
        goto LABEL_9;
      }

      v26 = v13;
      v27 = self;
      v14 = objc_alloc(MEMORY[0x1E695DF00]);
      [v11 doubleValue];
      v15 = [v14 initWithTimeIntervalSinceReferenceDate:?];
    }

    else
    {
      v26 = v8;
      v27 = self;
      v15 = 0;
    }

    v17 = [v6 objectForKeyedSubscript:@"subject"];
    v25 = [v6 objectForKeyedSubscript:@"senderDomain"];
    v24 = [v6 objectForKeyedSubscript:@"fromEmailAddress"];
    v18 = [v6 objectForKeyedSubscript:@"fromDisplayName"];
    v23 = [v6 objectForKeyedSubscript:@"toEmailAddress"];
    v19 = [v6 objectForKeyedSubscript:@"toDisplayName"];
    v20 = [v6 objectForKeyedSubscript:@"replyToEmailAddress"];
    v21 = [v6 objectForKeyedSubscript:@"replyToDisplayName"];
    v16 = [[CCWalletPaymentsCommerceOrderEmailEmailMetadata alloc] initWithMessageID:v9 dateSent:v15 subject:v17 senderDomain:v25 fromEmailAddress:v24 fromDisplayName:v18 toEmailAddress:v23 toDisplayName:v19 replyToEmailAddress:v20 replyToDisplayName:v21 error:a4];

    v11 = v15;
    v13 = v26;
    self = v27;
LABEL_9:

    v8 = v13;
    goto LABEL_10;
  }

  CCSetError();
  v16 = 0;
LABEL_10:

  return v16;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  if (self->_messageID)
  {
    v4 = [(CCWalletPaymentsCommerceOrderEmailEmailMetadata *)self messageID];
    [v3 setObject:v4 forKeyedSubscript:@"messageID"];
  }

  if (self->_hasRaw_dateSent)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_dateSent];
    [v3 setObject:v5 forKeyedSubscript:@"dateSent"];
  }

  if (self->_subject)
  {
    v6 = [(CCWalletPaymentsCommerceOrderEmailEmailMetadata *)self subject];
    [v3 setObject:v6 forKeyedSubscript:@"subject"];
  }

  if (self->_senderDomain)
  {
    v7 = [(CCWalletPaymentsCommerceOrderEmailEmailMetadata *)self senderDomain];
    [v3 setObject:v7 forKeyedSubscript:@"senderDomain"];
  }

  if (self->_fromEmailAddress)
  {
    v8 = [(CCWalletPaymentsCommerceOrderEmailEmailMetadata *)self fromEmailAddress];
    [v3 setObject:v8 forKeyedSubscript:@"fromEmailAddress"];
  }

  if (self->_fromDisplayName)
  {
    v9 = [(CCWalletPaymentsCommerceOrderEmailEmailMetadata *)self fromDisplayName];
    [v3 setObject:v9 forKeyedSubscript:@"fromDisplayName"];
  }

  if (self->_toEmailAddress)
  {
    v10 = [(CCWalletPaymentsCommerceOrderEmailEmailMetadata *)self toEmailAddress];
    [v3 setObject:v10 forKeyedSubscript:@"toEmailAddress"];
  }

  if (self->_toDisplayName)
  {
    v11 = [(CCWalletPaymentsCommerceOrderEmailEmailMetadata *)self toDisplayName];
    [v3 setObject:v11 forKeyedSubscript:@"toDisplayName"];
  }

  if (self->_replyToEmailAddress)
  {
    v12 = [(CCWalletPaymentsCommerceOrderEmailEmailMetadata *)self replyToEmailAddress];
    [v3 setObject:v12 forKeyedSubscript:@"replyToEmailAddress"];
  }

  if (self->_replyToDisplayName)
  {
    v13 = [(CCWalletPaymentsCommerceOrderEmailEmailMetadata *)self replyToDisplayName];
    [v3 setObject:v13 forKeyedSubscript:@"replyToDisplayName"];
  }

  v14 = [v3 copy];

  return v14;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v16 = a3;
  if (self->_messageID)
  {
    v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7958 stringValue:self->_messageID];
    v16[2](v16, v5);
  }

  if (self->_hasRaw_dateSent)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7959 doubleValue:self->_raw_dateSent];
    v16[2](v16, v6);
  }

  if (self->_subject)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7960 stringValue:self->_subject];
    v16[2](v16, v7);
  }

  if (self->_senderDomain)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7961 stringValue:self->_senderDomain];
    v16[2](v16, v8);
  }

  if (self->_fromEmailAddress)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7962 stringValue:self->_fromEmailAddress];
    v16[2](v16, v9);
  }

  if (self->_fromDisplayName)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7963 stringValue:self->_fromDisplayName];
    v16[2](v16, v10);
  }

  if (self->_toEmailAddress)
  {
    v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7964 stringValue:self->_toEmailAddress];
    v16[2](v16, v11);
  }

  if (self->_toDisplayName)
  {
    v12 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7965 stringValue:self->_toDisplayName];
    v16[2](v16, v12);
  }

  if (self->_replyToEmailAddress)
  {
    v13 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7966 stringValue:self->_replyToEmailAddress];
    v16[2](v16, v13);
  }

  v14 = v16;
  if (self->_replyToDisplayName)
  {
    v15 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7967 stringValue:self->_replyToDisplayName];
    v16[2](v16, v15);

    v14 = v16;
  }
}

- (NSString)replyToDisplayName
{
  v2 = [(NSString *)self->_replyToDisplayName copy];

  return v2;
}

- (NSString)replyToEmailAddress
{
  v2 = [(NSString *)self->_replyToEmailAddress copy];

  return v2;
}

- (NSString)toDisplayName
{
  v2 = [(NSString *)self->_toDisplayName copy];

  return v2;
}

- (NSString)toEmailAddress
{
  v2 = [(NSString *)self->_toEmailAddress copy];

  return v2;
}

- (NSString)fromDisplayName
{
  v2 = [(NSString *)self->_fromDisplayName copy];

  return v2;
}

- (NSString)fromEmailAddress
{
  v2 = [(NSString *)self->_fromEmailAddress copy];

  return v2;
}

- (NSString)senderDomain
{
  v2 = [(NSString *)self->_senderDomain copy];

  return v2;
}

- (NSString)subject
{
  v2 = [(NSString *)self->_subject copy];

  return v2;
}

- (NSDate)dateSent
{
  if (self->_hasRaw_dateSent)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:self->_raw_dateSent];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)messageID
{
  v2 = [(NSString *)self->_messageID copy];

  return v2;
}

- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:v6];
  v8 = MEMORY[0x1E6993AB8];
  v9 = MEMORY[0x1E6993AB0];
  v10 = MEMORY[0x1E6993AA8];
  if (*&v7[*MEMORY[0x1E6993AB8]] >= *&v7[*MEMORY[0x1E6993AB0]])
  {
    goto LABEL_56;
  }

  v11 = 0;
  v12 = MEMORY[0x1E6993AA0];
  while (2)
  {
    if (*&v7[*v10])
    {
      v13 = 0;
    }

    else
    {
      v13 = v11 == 0;
    }

    if (v13)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v17 = *v8;
        v18 = *&v7[v17];
        v19 = v18 + 1;
        if (v18 == -1 || v19 > *&v7[*v9])
        {
          break;
        }

        v20 = *(*&v7[*v12] + v18);
        *&v7[v17] = v19;
        v16 |= (v20 & 0x7F) << v14;
        if ((v20 & 0x80) == 0)
        {
          goto LABEL_17;
        }

        v14 += 7;
        if (v15++ >= 9)
        {
          v22 = 0;
          v23 = *v10;
          if (*&v7[v23])
          {
            goto LABEL_57;
          }

          goto LABEL_21;
        }
      }

      *&v7[*v10] = 1;
LABEL_17:
      v23 = *v10;
      v24 = *&v7[v23];
      if (v24)
      {
        v22 = 0;
      }

      else
      {
        v22 = v16;
      }

      if (v24)
      {
        goto LABEL_57;
      }

LABEL_21:
      v25 = v22 >> 3;
      if ((v22 >> 3) > 6)
      {
        if (v25 <= 8)
        {
          if (v25 == 7)
          {
            v26 = CCPBReaderReadStringNoCopy();
            v27 = 64;
            goto LABEL_46;
          }

          if (v25 == 8)
          {
            v26 = CCPBReaderReadStringNoCopy();
            v27 = 72;
            goto LABEL_46;
          }
        }

        else
        {
          switch(v25)
          {
            case 9:
              v26 = CCPBReaderReadStringNoCopy();
              v27 = 80;
              goto LABEL_46;
            case 0xA:
              v26 = CCPBReaderReadStringNoCopy();
              v27 = 88;
              goto LABEL_46;
            case 0xB:
              v26 = CCPBReaderReadStringNoCopy();
              v27 = 96;
              goto LABEL_46;
          }
        }
      }

      else if (v25 <= 2)
      {
        if (v25 == 1)
        {
          v26 = CCPBReaderReadStringNoCopy();
          v27 = 32;
          goto LABEL_46;
        }

        if (v25 == 2)
        {
          v28 = *v8;
          v29 = *&v7[v28];
          if (v29 <= 0xFFFFFFFFFFFFFFF7 && v29 + 8 <= *&v7[*v9])
          {
            v30 = *(*&v7[*v12] + v29);
            *&v7[v28] = v29 + 8;
          }

          else
          {
            *&v7[v23] = 1;
            v30 = 0.0;
          }

          v11 = 0;
          self->_raw_dateSent = v30;
          self->_hasRaw_dateSent = 1;
          goto LABEL_48;
        }
      }

      else
      {
        switch(v25)
        {
          case 3:
            v26 = CCPBReaderReadStringNoCopy();
            v27 = 40;
            goto LABEL_46;
          case 4:
            v26 = CCPBReaderReadStringNoCopy();
            v27 = 48;
            goto LABEL_46;
          case 6:
            v26 = CCPBReaderReadStringNoCopy();
            v27 = 56;
LABEL_46:
            v31 = *(&self->super.super.isa + v27);
            *(&self->super.super.isa + v27) = v26;

LABEL_47:
            v11 = 0;
            goto LABEL_48;
        }
      }

      if (CCPBReaderSkipValueWithTag())
      {
        goto LABEL_47;
      }

      v32 = objc_opt_class();
      NSStringFromClass(v32);
      v41 = v6;
      v34 = v33 = a4;
      v35 = *&v7[*v10];
      v11 = CCSkipFieldErrorForMessage();

      a4 = v33;
      v6 = v41;
LABEL_48:
      if (*&v7[*v8] < *&v7[*v9])
      {
        continue;
      }
    }

    break;
  }

  if (v11)
  {
    CCSetError();
    goto LABEL_58;
  }

LABEL_56:
  if (!*&v7[*v10])
  {
    v39 = 1;
    goto LABEL_60;
  }

LABEL_57:
  v36 = objc_opt_class();
  v11 = NSStringFromClass(v36);
  v37 = *&v7[*v10];
  v38 = CCInvalidBufferErrorForMessage();
  CCSetError();

LABEL_58:
  v39 = 0;
LABEL_60:

  return v39;
}

- (CCWalletPaymentsCommerceOrderEmailEmailMetadata)initWithMessageID:(id)a3 dateSent:(id)a4 subject:(id)a5 senderDomain:(id)a6 fromEmailAddress:(id)a7 fromDisplayName:(id)a8 toEmailAddress:(id)a9 toDisplayName:(id)a10 replyToEmailAddress:(id)a11 replyToDisplayName:(id)a12 error:(id *)a13
{
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v51 = a8;
  v23 = a9;
  v52 = a10;
  v50 = a11;
  v49 = a12;
  v24 = objc_opt_new();
  v47 = v20;
  if (v18)
  {
    objc_opt_class();
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v26 = 0;
    if (!IsInstanceOfExpectedClass)
    {
LABEL_8:
      v29 = v23;
      v30 = v21;
      goto LABEL_9;
    }

    CCPBDataWriterWriteStringField();
    if (!v19)
    {
LABEL_4:
      v27 = v26;
      if (v20)
      {
        goto LABEL_5;
      }

LABEL_14:
      v26 = v27;
      if (!v21)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v26 = 0;
    if (!v19)
    {
      goto LABEL_4;
    }
  }

  objc_opt_class();
  v33 = CCValidateIsInstanceOfExpectedClass();
  v27 = v26;

  if (!v33)
  {
    goto LABEL_20;
  }

  [v19 timeIntervalSinceReferenceDate];
  CCPBDataWriterWriteDoubleField();
  if (!v20)
  {
    goto LABEL_14;
  }

LABEL_5:
  objc_opt_class();
  v28 = CCValidateIsInstanceOfExpectedClass();
  v26 = v27;

  if (!v28)
  {
    goto LABEL_8;
  }

  CCPBDataWriterWriteStringField();
  if (v21)
  {
LABEL_15:
    objc_opt_class();
    v34 = CCValidateIsInstanceOfExpectedClass();
    v27 = v26;

    if (v34)
    {
      CCPBDataWriterWriteStringField();
      goto LABEL_17;
    }

LABEL_20:
    v29 = v23;
    v30 = v21;
    v31 = v22;
LABEL_21:
    CCSetError();
    v32 = 0;
    v26 = v27;
    goto LABEL_22;
  }

LABEL_7:
  v27 = v26;
LABEL_17:
  v30 = v21;
  if (!v22)
  {
    v31 = 0;
    v26 = v27;
LABEL_26:
    v37 = v51;
    if (v51)
    {
      objc_opt_class();
      v39 = CCValidateIsInstanceOfExpectedClass();
      v40 = v26;

      if (!v39)
      {
        v29 = v23;
        CCSetError();
        v32 = 0;
        v26 = v40;
        v36 = self;
        goto LABEL_24;
      }

      CCPBDataWriterWriteStringField();
    }

    else
    {
      v40 = v26;
    }

    if (v23)
    {
      objc_opt_class();
      v41 = CCValidateIsInstanceOfExpectedClass();
      v26 = v40;

      if (!v41)
      {
LABEL_42:
        v29 = v23;
        goto LABEL_10;
      }

      CCPBDataWriterWriteStringField();
      if (!v52)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v26 = v40;
      if (!v52)
      {
LABEL_34:
        v27 = v26;
LABEL_39:
        if (!v50)
        {
          v26 = v27;
          goto LABEL_44;
        }

        objc_opt_class();
        v43 = CCValidateIsInstanceOfExpectedClass();
        v26 = v27;

        if (v43)
        {
          CCPBDataWriterWriteStringField();
LABEL_44:
          if (!v49)
          {
            v29 = v23;
            goto LABEL_49;
          }

          objc_opt_class();
          v44 = CCValidateIsInstanceOfExpectedClass();
          v27 = v26;

          if (v44)
          {
            v29 = v23;
            CCPBDataWriterWriteStringField();
            v26 = v27;
LABEL_49:
            v45 = [v24 immutableData];
            v36 = [(CCItemMessage *)self initWithData:v45 error:v46];

            v32 = v36;
            goto LABEL_23;
          }

          goto LABEL_47;
        }

        goto LABEL_42;
      }
    }

    objc_opt_class();
    v42 = CCValidateIsInstanceOfExpectedClass();
    v27 = v26;

    if (!v42)
    {
LABEL_47:
      v29 = v23;
      goto LABEL_21;
    }

    CCPBDataWriterWriteStringField();
    goto LABEL_39;
  }

  objc_opt_class();
  v35 = CCValidateIsInstanceOfExpectedClass();
  v26 = v27;

  if (v35)
  {
    v31 = v22;
    CCPBDataWriterWriteStringField();
    goto LABEL_26;
  }

  v29 = v23;
LABEL_9:
  v31 = v22;
LABEL_10:
  CCSetError();
  v32 = 0;
LABEL_22:
  v36 = self;
LABEL_23:
  v37 = v51;
LABEL_24:

  return v32;
}

@end