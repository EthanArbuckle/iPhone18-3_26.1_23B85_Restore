@interface CCWalletPaymentsCommerceOrderEmailEmailMetadata
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCWalletPaymentsCommerceOrderEmailEmailMetadata)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCWalletPaymentsCommerceOrderEmailEmailMetadata)initWithMessageID:(id)d dateSent:(id)sent subject:(id)subject senderDomain:(id)domain fromEmailAddress:(id)address fromDisplayName:(id)name toEmailAddress:(id)emailAddress toDisplayName:(id)self0 replyToEmailAddress:(id)self1 replyToDisplayName:(id)self2 error:(id *)self3;
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
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCWalletPaymentsCommerceOrderEmailEmailMetadata

- (CCWalletPaymentsCommerceOrderEmailEmailMetadata)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"messageID"];
    v10 = [dictionaryCopy objectForKeyedSubscript:@"dateSent"];
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
      selfCopy2 = self;
      v14 = objc_alloc(MEMORY[0x1E695DF00]);
      [v11 doubleValue];
      v15 = [v14 initWithTimeIntervalSinceReferenceDate:?];
    }

    else
    {
      v26 = v8;
      selfCopy2 = self;
      v15 = 0;
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"subject"];
    v25 = [dictionaryCopy objectForKeyedSubscript:@"senderDomain"];
    v24 = [dictionaryCopy objectForKeyedSubscript:@"fromEmailAddress"];
    v18 = [dictionaryCopy objectForKeyedSubscript:@"fromDisplayName"];
    v23 = [dictionaryCopy objectForKeyedSubscript:@"toEmailAddress"];
    v19 = [dictionaryCopy objectForKeyedSubscript:@"toDisplayName"];
    v20 = [dictionaryCopy objectForKeyedSubscript:@"replyToEmailAddress"];
    v21 = [dictionaryCopy objectForKeyedSubscript:@"replyToDisplayName"];
    v16 = [[CCWalletPaymentsCommerceOrderEmailEmailMetadata alloc] initWithMessageID:v9 dateSent:v15 subject:v17 senderDomain:v25 fromEmailAddress:v24 fromDisplayName:v18 toEmailAddress:v23 toDisplayName:v19 replyToEmailAddress:v20 replyToDisplayName:v21 error:error];

    v11 = v15;
    v13 = v26;
    self = selfCopy2;
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
    messageID = [(CCWalletPaymentsCommerceOrderEmailEmailMetadata *)self messageID];
    [v3 setObject:messageID forKeyedSubscript:@"messageID"];
  }

  if (self->_hasRaw_dateSent)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_dateSent];
    [v3 setObject:v5 forKeyedSubscript:@"dateSent"];
  }

  if (self->_subject)
  {
    subject = [(CCWalletPaymentsCommerceOrderEmailEmailMetadata *)self subject];
    [v3 setObject:subject forKeyedSubscript:@"subject"];
  }

  if (self->_senderDomain)
  {
    senderDomain = [(CCWalletPaymentsCommerceOrderEmailEmailMetadata *)self senderDomain];
    [v3 setObject:senderDomain forKeyedSubscript:@"senderDomain"];
  }

  if (self->_fromEmailAddress)
  {
    fromEmailAddress = [(CCWalletPaymentsCommerceOrderEmailEmailMetadata *)self fromEmailAddress];
    [v3 setObject:fromEmailAddress forKeyedSubscript:@"fromEmailAddress"];
  }

  if (self->_fromDisplayName)
  {
    fromDisplayName = [(CCWalletPaymentsCommerceOrderEmailEmailMetadata *)self fromDisplayName];
    [v3 setObject:fromDisplayName forKeyedSubscript:@"fromDisplayName"];
  }

  if (self->_toEmailAddress)
  {
    toEmailAddress = [(CCWalletPaymentsCommerceOrderEmailEmailMetadata *)self toEmailAddress];
    [v3 setObject:toEmailAddress forKeyedSubscript:@"toEmailAddress"];
  }

  if (self->_toDisplayName)
  {
    toDisplayName = [(CCWalletPaymentsCommerceOrderEmailEmailMetadata *)self toDisplayName];
    [v3 setObject:toDisplayName forKeyedSubscript:@"toDisplayName"];
  }

  if (self->_replyToEmailAddress)
  {
    replyToEmailAddress = [(CCWalletPaymentsCommerceOrderEmailEmailMetadata *)self replyToEmailAddress];
    [v3 setObject:replyToEmailAddress forKeyedSubscript:@"replyToEmailAddress"];
  }

  if (self->_replyToDisplayName)
  {
    replyToDisplayName = [(CCWalletPaymentsCommerceOrderEmailEmailMetadata *)self replyToDisplayName];
    [v3 setObject:replyToDisplayName forKeyedSubscript:@"replyToDisplayName"];
  }

  v14 = [v3 copy];

  return v14;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  if (self->_messageID)
  {
    v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7958 stringValue:self->_messageID];
    blockCopy[2](blockCopy, v5);
  }

  if (self->_hasRaw_dateSent)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7959 doubleValue:self->_raw_dateSent];
    blockCopy[2](blockCopy, v6);
  }

  if (self->_subject)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7960 stringValue:self->_subject];
    blockCopy[2](blockCopy, v7);
  }

  if (self->_senderDomain)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7961 stringValue:self->_senderDomain];
    blockCopy[2](blockCopy, v8);
  }

  if (self->_fromEmailAddress)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7962 stringValue:self->_fromEmailAddress];
    blockCopy[2](blockCopy, v9);
  }

  if (self->_fromDisplayName)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7963 stringValue:self->_fromDisplayName];
    blockCopy[2](blockCopy, v10);
  }

  if (self->_toEmailAddress)
  {
    v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7964 stringValue:self->_toEmailAddress];
    blockCopy[2](blockCopy, v11);
  }

  if (self->_toDisplayName)
  {
    v12 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7965 stringValue:self->_toDisplayName];
    blockCopy[2](blockCopy, v12);
  }

  if (self->_replyToEmailAddress)
  {
    v13 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7966 stringValue:self->_replyToEmailAddress];
    blockCopy[2](blockCopy, v13);
  }

  v14 = blockCopy;
  if (self->_replyToDisplayName)
  {
    v15 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7967 stringValue:self->_replyToDisplayName];
    blockCopy[2](blockCopy, v15);

    v14 = blockCopy;
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

- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v7 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:dataCopy];
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
      v41 = dataCopy;
      v34 = v33 = error;
      v35 = *&v7[*v10];
      v11 = CCSkipFieldErrorForMessage();

      error = v33;
      dataCopy = v41;
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

- (CCWalletPaymentsCommerceOrderEmailEmailMetadata)initWithMessageID:(id)d dateSent:(id)sent subject:(id)subject senderDomain:(id)domain fromEmailAddress:(id)address fromDisplayName:(id)name toEmailAddress:(id)emailAddress toDisplayName:(id)self0 replyToEmailAddress:(id)self1 replyToDisplayName:(id)self2 error:(id *)self3
{
  dCopy = d;
  sentCopy = sent;
  subjectCopy = subject;
  domainCopy = domain;
  addressCopy = address;
  nameCopy = name;
  emailAddressCopy = emailAddress;
  displayNameCopy = displayName;
  toEmailAddressCopy = toEmailAddress;
  toDisplayNameCopy = toDisplayName;
  v24 = objc_opt_new();
  v47 = subjectCopy;
  if (dCopy)
  {
    objc_opt_class();
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v26 = 0;
    if (!IsInstanceOfExpectedClass)
    {
LABEL_8:
      v29 = emailAddressCopy;
      v30 = domainCopy;
      goto LABEL_9;
    }

    CCPBDataWriterWriteStringField();
    if (!sentCopy)
    {
LABEL_4:
      v27 = v26;
      if (subjectCopy)
      {
        goto LABEL_5;
      }

LABEL_14:
      v26 = v27;
      if (!domainCopy)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v26 = 0;
    if (!sentCopy)
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

  [sentCopy timeIntervalSinceReferenceDate];
  CCPBDataWriterWriteDoubleField();
  if (!subjectCopy)
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
  if (domainCopy)
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
    v29 = emailAddressCopy;
    v30 = domainCopy;
    v31 = addressCopy;
LABEL_21:
    CCSetError();
    v32 = 0;
    v26 = v27;
    goto LABEL_22;
  }

LABEL_7:
  v27 = v26;
LABEL_17:
  v30 = domainCopy;
  if (!addressCopy)
  {
    v31 = 0;
    v26 = v27;
LABEL_26:
    v37 = nameCopy;
    if (nameCopy)
    {
      objc_opt_class();
      v39 = CCValidateIsInstanceOfExpectedClass();
      v40 = v26;

      if (!v39)
      {
        v29 = emailAddressCopy;
        CCSetError();
        v32 = 0;
        v26 = v40;
        selfCopy2 = self;
        goto LABEL_24;
      }

      CCPBDataWriterWriteStringField();
    }

    else
    {
      v40 = v26;
    }

    if (emailAddressCopy)
    {
      objc_opt_class();
      v41 = CCValidateIsInstanceOfExpectedClass();
      v26 = v40;

      if (!v41)
      {
LABEL_42:
        v29 = emailAddressCopy;
        goto LABEL_10;
      }

      CCPBDataWriterWriteStringField();
      if (!displayNameCopy)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v26 = v40;
      if (!displayNameCopy)
      {
LABEL_34:
        v27 = v26;
LABEL_39:
        if (!toEmailAddressCopy)
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
          if (!toDisplayNameCopy)
          {
            v29 = emailAddressCopy;
            goto LABEL_49;
          }

          objc_opt_class();
          v44 = CCValidateIsInstanceOfExpectedClass();
          v27 = v26;

          if (v44)
          {
            v29 = emailAddressCopy;
            CCPBDataWriterWriteStringField();
            v26 = v27;
LABEL_49:
            immutableData = [v24 immutableData];
            selfCopy2 = [(CCItemMessage *)self initWithData:immutableData error:v46];

            v32 = selfCopy2;
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
      v29 = emailAddressCopy;
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
    v31 = addressCopy;
    CCPBDataWriterWriteStringField();
    goto LABEL_26;
  }

  v29 = emailAddressCopy;
LABEL_9:
  v31 = addressCopy;
LABEL_10:
  CCSetError();
  v32 = 0;
LABEL_22:
  selfCopy2 = self;
LABEL_23:
  v37 = nameCopy;
LABEL_24:

  return v32;
}

@end