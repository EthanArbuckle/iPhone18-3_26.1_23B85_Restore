@interface MEMessage
+ (BOOL)extensionCanSetHeaderKey:(id)key;
+ (id)_protectedHeaders;
- (BOOL)isEqual:(id)equal;
- (MEMessage)initWithCoder:(id)coder;
- (MEMessage)initWithState:(int64_t)state encryptionState:(int64_t)encryptionState signatureState:(int64_t)signatureState subject:(id)subject recipients:(id)recipients from:(id)from dataSent:(id)sent dateReceived:(id)self0 headers:(id)self1 rawData:(id)self2 senderMetadata:(id)self3;
- (NSString)ef_publicDescription;
- (id)_sanitaizedHeadersForHeaders:(id)headers;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MEMessage

- (MEMessage)initWithState:(int64_t)state encryptionState:(int64_t)encryptionState signatureState:(int64_t)signatureState subject:(id)subject recipients:(id)recipients from:(id)from dataSent:(id)sent dateReceived:(id)self0 headers:(id)self1 rawData:(id)self2 senderMetadata:(id)self3
{
  subjectCopy = subject;
  recipientsCopy = recipients;
  fromCopy = from;
  sentCopy = sent;
  receivedCopy = received;
  headersCopy = headers;
  dataCopy = data;
  metadataCopy = metadata;
  v33.receiver = self;
  v33.super_class = MEMessage;
  v18 = [(MEMessage *)&v33 init];
  v19 = v18;
  if (v18)
  {
    v18->_state = state;
    v18->_encryptionState = encryptionState;
    v18->_signatureState = signatureState;
    objc_storeStrong(&v18->_subject, subject);
    objc_storeStrong(&v19->_fromAddress, from);
    v20 = [(MEMessage *)v19 _sanitaizedHeadersForHeaders:headersCopy];
    headers = v19->_headers;
    v19->_headers = v20;

    objc_storeStrong(&v19->_recipients, recipients);
    objc_storeStrong(&v19->_dateSent, sent);
    objc_storeStrong(&v19->_dateReceived, received);
    objc_storeStrong(&v19->_rawData, data);
    objc_storeStrong(&v19->_senderMetadata, metadata);
  }

  return v19;
}

- (MEMessage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"EFPropertyKey_state"];
  v6 = [coderCopy decodeIntegerForKey:@"EFPropertyKey_encryptionState"];
  v7 = [coderCopy decodeIntegerForKey:@"EFPropertyKey_signatureState"];
  v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_subject"];
  v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_recipients"];
  v27 = v7;
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_fromAddress"];
  v9 = MEMORY[0x277CBEB98];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v9 setWithObjects:{v10, v11, objc_opt_class(), 0}];
  v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"EFPropertyKey_headers"];
  v14 = v5;

  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_dateSent"];
  dateSent = self->_dateSent;
  self->_dateSent = v15;

  v17 = v15;
  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_dateReceived"];
  dateReceived = self->_dateReceived;
  self->_dateReceived = v18;

  v20 = v18;
  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_rawData"];
  rawData = self->_rawData;
  self->_rawData = v21;

  v23 = v21;
  v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_senderMetadata"];
  v25 = [(MEMessage *)self initWithState:v14 encryptionState:v6 signatureState:v27 subject:v29 recipients:v28 from:v8 dataSent:v17 dateReceived:v20 headers:v13 rawData:v23 senderMetadata:v24];

  return v25;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:self->_state forKey:@"EFPropertyKey_state"];
  [coderCopy encodeInteger:self->_encryptionState forKey:@"EFPropertyKey_encryptionState"];
  [coderCopy encodeInteger:self->_signatureState forKey:@"EFPropertyKey_signatureState"];
  subject = [(MEMessage *)self subject];
  [coderCopy encodeObject:subject forKey:@"EFPropertyKey_subject"];

  recipients = [(MEMessage *)self recipients];
  [coderCopy encodeObject:recipients forKey:@"EFPropertyKey_recipients"];

  fromAddress = [(MEMessage *)self fromAddress];
  [coderCopy encodeObject:fromAddress forKey:@"EFPropertyKey_fromAddress"];

  dateSent = [(MEMessage *)self dateSent];
  [coderCopy encodeObject:dateSent forKey:@"EFPropertyKey_dateSent"];

  dateReceived = [(MEMessage *)self dateReceived];
  [coderCopy encodeObject:dateReceived forKey:@"EFPropertyKey_dateReceived"];

  headers = [(MEMessage *)self headers];
  [coderCopy encodeObject:headers forKey:@"EFPropertyKey_headers"];

  rawData = [(MEMessage *)self rawData];
  [coderCopy encodeObject:rawData forKey:@"EFPropertyKey_rawData"];

  senderMetadata = [(MEMessage *)self senderMetadata];
  [coderCopy encodeObject:senderMetadata forKey:@"EFPropertyKey_senderMetadata"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if ([v5 isEqual:objc_opt_class()])
  {
    v6 = equalCopy;
    state = [(MEMessage *)self state];
    if (state == [v6 state] && (v8 = -[MEMessage encryptionState](self, "encryptionState"), v8 == objc_msgSend(v6, "encryptionState")))
    {
      subject = [(MEMessage *)self subject];
      subject2 = [v6 subject];
      if ([subject isEqual:subject2])
      {
        recipients = [(MEMessage *)self recipients];
        recipients2 = [v6 recipients];
        if ([recipients isEqual:recipients2])
        {
          fromAddress = [(MEMessage *)self fromAddress];
          fromAddress2 = [v6 fromAddress];
          if ([fromAddress isEqual:fromAddress2])
          {
            senderMetadata = [(MEMessage *)self senderMetadata];
            senderMetadata2 = [v6 senderMetadata];
            if (EFObjectsAreEqual())
            {
              headers = [(MEMessage *)self headers];
              headers2 = [v6 headers];
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
  state = [(MEMessage *)self state];
  encryptionState = [(MEMessage *)self encryptionState];
  subject = [(MEMessage *)self subject];
  v6 = [subject hash];

  recipients = [(MEMessage *)self recipients];
  v8 = [recipients hash];

  fromAddress = [(MEMessage *)self fromAddress];
  v10 = [fromAddress hash];

  senderMetadata = [(MEMessage *)self senderMetadata];
  v12 = [senderMetadata hash];

  headers = [(MEMessage *)self headers];
  v14 = 33 * (33 * (33 * (33 * (33 * (33 * state + encryptionState) + v6) + v8) + v10) + v12);
  v15 = [headers hash] + 0xD09303BF9D65;

  return v14 + v15;
}

- (id)_sanitaizedHeadersForHeaders:(id)headers
{
  v22 = *MEMORY[0x277D85DE8];
  headersCopy = headers;
  v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = headersCopy;
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v21 count:{16, headersCopy}];
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
  currentDevice = [MEMORY[0x277D07148] currentDevice];
  isInternal = [currentDevice isInternal];

  if (isInternal)
  {
    v5 = [objc_alloc(MEMORY[0x277D07090]) initWithStyle:2];
    recipients = [(MEMessage *)self recipients];
    v21 = MEMORY[0x277CCACA8];
    v30 = recipients;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = MEMORY[0x277D07080];
    v29 = v8;
    fromAddress = [(MEMessage *)self fromAddress];
    rawString = [fromAddress rawString];
    v25 = [v9 emailAddressWithString:rawString];
    ef_publicDescription = [v25 ef_publicDescription];
    v24 = [recipients to];
    v22 = [v24 ef_compactMap:&__block_literal_global_44];
    v23 = [v5 stringFromEmailAddressList:v22];
    v20 = [recipients cc];
    v18 = [v20 ef_compactMap:&__block_literal_global_44];
    v19 = [v5 stringFromEmailAddressList:v18];
    v17 = [recipients bcc];
    v10 = [v17 ef_compactMap:&__block_literal_global_44];
    v11 = [v5 stringFromEmailAddressList:v10];
    v12 = MEMORY[0x277D07198];
    subject = [(MEMessage *)self subject];
    v14 = [v12 partiallyRedactedStringForString:subject maximumUnredactedLength:3];
    v15 = [v21 stringWithFormat:@"<%@: %p>\nfromAddress: %@\nto: %@\ncc: %@\nbcc: %@\nsubject: %@\nstate: %ld", v29, self, ef_publicDescription, v23, v19, v11, v14, -[MEMessage state](self, "state")];
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

+ (BOOL)extensionCanSetHeaderKey:(id)key
{
  keyCopy = key;
  _protectedHeaders = [objc_opt_class() _protectedHeaders];
  lowercaseString = [keyCopy lowercaseString];
  v6 = [_protectedHeaders containsObject:lowercaseString];

  return v6 ^ 1;
}

@end