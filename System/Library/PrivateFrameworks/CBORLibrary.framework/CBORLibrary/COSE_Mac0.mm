@interface COSE_Mac0
- (COSE_Mac0)initWithCBOR:(id)r;
- (COSE_Mac0)initWithProtectedHeaders:(id)headers unprotectedHeaders:(id)unprotectedHeaders payload:(id)payload tag:(id)tag;
- (id)description;
- (id)generateMessageForMACWithApplicationProtectedAttributes:(id)attributes;
@end

@implementation COSE_Mac0

- (COSE_Mac0)initWithCBOR:(id)r
{
  rCopy = r;
  if ([rCopy type] != 4)
  {
    goto LABEL_11;
  }

  array = [rCopy array];
  v6 = [array count];

  if (v6 < 4)
  {
    goto LABEL_11;
  }

  v7 = [rCopy tag];
  if (!v7)
  {
    goto LABEL_5;
  }

  v8 = v7;
  v9 = [rCopy tag];
  numeric = [v9 numeric];
  integerValue = [numeric integerValue];

  if (integerValue == 17)
  {
LABEL_5:
    array2 = [rCopy array];
    v13 = [array2 objectAtIndexedSubscript:2];

    if ([v13 type] == 2 || objc_msgSend(v13, "type") == 11)
    {
      array3 = [rCopy array];
      v15 = [array3 objectAtIndexedSubscript:3];

      if ([v15 type] == 2)
      {
        v22.receiver = self;
        v22.super_class = COSE_Mac0;
        v16 = [(COSE *)&v22 initWithCBOR:rCopy];
        v17 = v16;
        if (v16)
        {
          [(COSE *)v16 setType:?];
          data = [v15 data];
          mac = v17->_mac;
          v17->_mac = data;
        }

        self = v17;
        selfCopy = self;
      }

      else
      {
        selfCopy = 0;
      }
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
LABEL_11:
    selfCopy = 0;
  }

  return selfCopy;
}

- (COSE_Mac0)initWithProtectedHeaders:(id)headers unprotectedHeaders:(id)unprotectedHeaders payload:(id)payload tag:(id)tag
{
  v18[1] = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  unprotectedHeadersCopy = unprotectedHeaders;
  headersCopy = headers;
  v13 = [CBOR cborWithData:tag];
  v18[0] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v15 = [(COSE *)self initWithProtectedHeaders:headersCopy unprotectedHeaders:unprotectedHeadersCopy payload:payloadCopy type:17 additionalCBORs:v14];

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (id)generateMessageForMACWithApplicationProtectedAttributes:(id)attributes
{
  attributesCopy = attributes;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [CBOR cborWithUTF8String:@"MAC0"];
  [v5 addObject:v6];

  v7 = objc_opt_new();
  protectedHeaderParameters = [(COSE *)self protectedHeaderParameters];
  if (!protectedHeaderParameters)
  {
    protectedHeaderParameters = v7;
  }

  v9 = [CBOR cborWithData:protectedHeaderParameters];
  [v5 addObject:v9];

  if (attributesCopy)
  {
    v10 = [CBOR cborWithData:attributesCopy];
    [v5 addObject:v10];
  }

  else
  {
    [v5 addObject:v7];
  }

  content = [(COSE *)self content];
  v12 = [CBOR cborWithData:content];
  [v5 addObject:v12];

  v13 = [CBOR cborWithArray:v5];
  v14 = [MEMORY[0x277CBEA90] dataWithCBOR:v13];

  return v14;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  protectedHeadererDictionary = [(COSE *)self protectedHeadererDictionary];
  v5 = [(COSE_Mac0 *)self mac];
  v6 = [v3 initWithFormat:@"ProtectedHeaders: %@, mac: %@", protectedHeadererDictionary, v5];

  return v6;
}

@end