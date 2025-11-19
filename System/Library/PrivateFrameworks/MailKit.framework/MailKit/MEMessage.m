@interface MEMessage
+ (BOOL)extensionCanSetHeaderKey:(id)a3;
+ (id)_protectedHeaders;
- (BOOL)isEqual:(id)a3;
- (MEMessage)initWithCoder:(id)a3;
- (MEMessage)initWithState:(int64_t)a3 encryptionState:(int64_t)a4 signatureState:(int64_t)a5 subject:(id)a6 recipients:(id)a7 from:(id)a8 dataSent:(id)a9 dateReceived:(id)a10 headers:(id)a11 rawData:(id)a12 senderMetadata:(id)a13;
- (NSString)ef_publicDescription;
- (id)_sanitaizedHeadersForHeaders:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MEMessage

- (MEMessage)initWithState:(int64_t)a3 encryptionState:(int64_t)a4 signatureState:(int64_t)a5 subject:(id)a6 recipients:(id)a7 from:(id)a8 dataSent:(id)a9 dateReceived:(id)a10 headers:(id)a11 rawData:(id)a12 senderMetadata:(id)a13
{
  v32 = a6;
  v31 = a7;
  v30 = a8;
  v29 = a9;
  v28 = a10;
  v17 = a11;
  v27 = a12;
  v26 = a13;
  v33.receiver = self;
  v33.super_class = MEMessage;
  v18 = [(MEMessage *)&v33 init];
  v19 = v18;
  if (v18)
  {
    v18->_state = a3;
    v18->_encryptionState = a4;
    v18->_signatureState = a5;
    objc_storeStrong(&v18->_subject, a6);
    objc_storeStrong(&v19->_fromAddress, a8);
    v20 = [(MEMessage *)v19 _sanitaizedHeadersForHeaders:v17];
    headers = v19->_headers;
    v19->_headers = v20;

    objc_storeStrong(&v19->_recipients, a7);
    objc_storeStrong(&v19->_dateSent, a9);
    objc_storeStrong(&v19->_dateReceived, a10);
    objc_storeStrong(&v19->_rawData, a12);
    objc_storeStrong(&v19->_senderMetadata, a13);
  }

  return v19;
}

- (MEMessage)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"EFPropertyKey_state"];
  v6 = [v4 decodeIntegerForKey:@"EFPropertyKey_encryptionState"];
  v7 = [v4 decodeIntegerForKey:@"EFPropertyKey_signatureState"];
  v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_subject"];
  v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_recipients"];
  v27 = v7;
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_fromAddress"];
  v9 = MEMORY[0x277CBEB98];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v9 setWithObjects:{v10, v11, objc_opt_class(), 0}];
  v13 = [v4 decodeObjectOfClasses:v12 forKey:@"EFPropertyKey_headers"];
  v14 = v5;

  v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_dateSent"];
  dateSent = self->_dateSent;
  self->_dateSent = v15;

  v17 = v15;
  v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_dateReceived"];
  dateReceived = self->_dateReceived;
  self->_dateReceived = v18;

  v20 = v18;
  v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_rawData"];
  rawData = self->_rawData;
  self->_rawData = v21;

  v23 = v21;
  v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_senderMetadata"];
  v25 = [(MEMessage *)self initWithState:v14 encryptionState:v6 signatureState:v27 subject:v29 recipients:v28 from:v8 dataSent:v17 dateReceived:v20 headers:v13 rawData:v23 senderMetadata:v24];

  return v25;
}

- (void)encodeWithCoder:(id)a3
{
  v12 = a3;
  [v12 encodeInteger:self->_state forKey:@"EFPropertyKey_state"];
  [v12 encodeInteger:self->_encryptionState forKey:@"EFPropertyKey_encryptionState"];
  [v12 encodeInteger:self->_signatureState forKey:@"EFPropertyKey_signatureState"];
  v4 = [(MEMessage *)self subject];
  [v12 encodeObject:v4 forKey:@"EFPropertyKey_subject"];

  v5 = [(MEMessage *)self recipients];
  [v12 encodeObject:v5 forKey:@"EFPropertyKey_recipients"];

  v6 = [(MEMessage *)self fromAddress];
  [v12 encodeObject:v6 forKey:@"EFPropertyKey_fromAddress"];

  v7 = [(MEMessage *)self dateSent];
  [v12 encodeObject:v7 forKey:@"EFPropertyKey_dateSent"];

  v8 = [(MEMessage *)self dateReceived];
  [v12 encodeObject:v8 forKey:@"EFPropertyKey_dateReceived"];

  v9 = [(MEMessage *)self headers];
  [v12 encodeObject:v9 forKey:@"EFPropertyKey_headers"];

  v10 = [(MEMessage *)self rawData];
  [v12 encodeObject:v10 forKey:@"EFPropertyKey_rawData"];

  v11 = [(MEMessage *)self senderMetadata];
  [v12 encodeObject:v11 forKey:@"EFPropertyKey_senderMetadata"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if ([v5 isEqual:objc_opt_class()])
  {
    v6 = v4;
    v7 = [(MEMessage *)self state];
    if (v7 == [v6 state] && (v8 = -[MEMessage encryptionState](self, "encryptionState"), v8 == objc_msgSend(v6, "encryptionState")))
    {
      v9 = [(MEMessage *)self subject];
      v10 = [v6 subject];
      if ([v9 isEqual:v10])
      {
        v11 = [(MEMessage *)self recipients];
        v12 = [v6 recipients];
        if ([v11 isEqual:v12])
        {
          v20 = [(MEMessage *)self fromAddress];
          v13 = [v6 fromAddress];
          if ([v20 isEqual:v13])
          {
            v19 = [(MEMessage *)self senderMetadata];
            v18 = [v6 senderMetadata];
            if (EFObjectsAreEqual())
            {
              v17 = [(MEMessage *)self headers];
              v14 = [v6 headers];
              v15 = EFObjectsAreEqual();
            }

            else
            {
              v15 = 0;
            }
          }

          else
          {
            v15 = 0;
          }
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (unint64_t)hash
{
  v3 = [(MEMessage *)self state];
  v4 = [(MEMessage *)self encryptionState];
  v5 = [(MEMessage *)self subject];
  v6 = [v5 hash];

  v7 = [(MEMessage *)self recipients];
  v8 = [v7 hash];

  v9 = [(MEMessage *)self fromAddress];
  v10 = [v9 hash];

  v11 = [(MEMessage *)self senderMetadata];
  v12 = [v11 hash];

  v13 = [(MEMessage *)self headers];
  v14 = 33 * (33 * (33 * (33 * (33 * (33 * v3 + v4) + v6) + v8) + v10) + v12);
  v15 = [v13 hash] + 0xD09303BF9D65;

  return v14 + v15;
}

- (id)_sanitaizedHeadersForHeaders:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = v14;
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v21 count:{16, v14}];
  if (v4)
  {
    v5 = *v17;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v16 + 1) + 8 * i);
        v8 = objc_alloc_init(MEMORY[0x277CBEA60]);
        v9 = [v3 objectForKeyedSubscript:v7];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = v9;
          v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_11;
          }

          v10 = [v9 ef_filter:&__block_literal_global_5];
        }

        v11 = v10;

        v8 = v11;
LABEL_11:
        if ([v8 count])
        {
          [v15 setObject:v8 forKeyedSubscript:v7];
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v4);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v15;
}

uint64_t __42__MEMessage__sanitaizedHeadersForHeaders___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (NSString)ef_publicDescription
{
  v3 = [MEMORY[0x277D07148] currentDevice];
  v4 = [v3 isInternal];

  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277D07090]) initWithStyle:2];
    v6 = [(MEMessage *)self recipients];
    v21 = MEMORY[0x277CCACA8];
    v30 = v6;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = MEMORY[0x277D07080];
    v29 = v8;
    v28 = [(MEMessage *)self fromAddress];
    v27 = [v28 rawString];
    v25 = [v9 emailAddressWithString:v27];
    v26 = [v25 ef_publicDescription];
    v24 = [v6 to];
    v22 = [v24 ef_compactMap:&__block_literal_global_44];
    v23 = [v5 stringFromEmailAddressList:v22];
    v20 = [v6 cc];
    v18 = [v20 ef_compactMap:&__block_literal_global_44];
    v19 = [v5 stringFromEmailAddressList:v18];
    v17 = [v6 bcc];
    v10 = [v17 ef_compactMap:&__block_literal_global_44];
    v11 = [v5 stringFromEmailAddressList:v10];
    v12 = MEMORY[0x277D07198];
    v13 = [(MEMessage *)self subject];
    v14 = [v12 partiallyRedactedStringForString:v13 maximumUnredactedLength:3];
    v15 = [v21 stringWithFormat:@"<%@: %p>\nfromAddress: %@\nto: %@\ncc: %@\nbcc: %@\nsubject: %@\nstate: %ld", v29, self, v26, v23, v19, v11, v14, -[MEMessage state](self, "state")];
  }

  else
  {
    v15 = [(MEMessage *)self description];
  }

  return v15;
}

id __33__MEMessage_ef_publicDescription__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D07080];
  v3 = [a2 rawString];
  v4 = [v2 emailAddressWithString:v3];

  return v4;
}

+ (id)_protectedHeaders
{
  if (_protectedHeaders_onceToken != -1)
  {
    +[MEMessage _protectedHeaders];
  }

  v3 = _protectedHeaders_protectedHeaders;

  return v3;
}

void __30__MEMessage__protectedHeaders__block_invoke()
{
  v24[38] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = *MEMORY[0x277D07038];
  v24[0] = *MEMORY[0x277D06FA0];
  v24[1] = v1;
  v2 = *MEMORY[0x277D07000];
  v24[2] = *MEMORY[0x277D06F50];
  v24[3] = v2;
  v3 = *MEMORY[0x277D07018];
  v24[4] = *MEMORY[0x277D06F48];
  v24[5] = v3;
  v4 = *MEMORY[0x277D07008];
  v24[6] = *MEMORY[0x277D07028];
  v24[7] = v4;
  v5 = *MEMORY[0x277D07030];
  v24[8] = *MEMORY[0x277D06FF0];
  v24[9] = v5;
  v6 = *MEMORY[0x277D06FB8];
  v24[10] = *MEMORY[0x277D06F98];
  v24[11] = v6;
  v7 = *MEMORY[0x277D06FC0];
  v24[12] = *MEMORY[0x277D06FE0];
  v24[13] = v7;
  v8 = *MEMORY[0x277D06FD0];
  v24[14] = *MEMORY[0x277D06FC8];
  v24[15] = v8;
  v9 = *MEMORY[0x277D07020];
  v24[16] = *MEMORY[0x277D07010];
  v24[17] = v9;
  v10 = *MEMORY[0x277D06FD8];
  v24[18] = *MEMORY[0x277D06FE8];
  v24[19] = v10;
  v11 = *MEMORY[0x277D06F80];
  v24[20] = *MEMORY[0x277D06F88];
  v24[21] = v11;
  v12 = *MEMORY[0x277D06F60];
  v24[22] = *MEMORY[0x277D06F58];
  v24[23] = v12;
  v13 = *MEMORY[0x277D06F70];
  v24[24] = *MEMORY[0x277D06F68];
  v24[25] = v13;
  v14 = *MEMORY[0x277D07060];
  v24[26] = *MEMORY[0x277D06F78];
  v24[27] = v14;
  v15 = *MEMORY[0x277D07040];
  v24[28] = *MEMORY[0x277D07050];
  v24[29] = v15;
  v16 = *MEMORY[0x277D07058];
  v24[30] = *MEMORY[0x277D07068];
  v24[31] = v16;
  v17 = *MEMORY[0x277D07048];
  v24[32] = *MEMORY[0x277D06F40];
  v24[33] = v17;
  v18 = *MEMORY[0x277D06FB0];
  v24[34] = *MEMORY[0x277D06FF8];
  v24[35] = v18;
  v19 = *MEMORY[0x277D06F90];
  v24[36] = *MEMORY[0x277D06F38];
  v24[37] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:38];
  v21 = [v0 setWithArray:v20];
  v22 = _protectedHeaders_protectedHeaders;
  _protectedHeaders_protectedHeaders = v21;

  v23 = *MEMORY[0x277D85DE8];
}

+ (BOOL)extensionCanSetHeaderKey:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() _protectedHeaders];
  v5 = [v3 lowercaseString];
  v6 = [v4 containsObject:v5];

  return v6 ^ 1;
}

@end