@interface COSE_Mac0
- (COSE_Mac0)initWithCBOR:(id)a3;
- (COSE_Mac0)initWithProtectedHeaders:(id)a3 unprotectedHeaders:(id)a4 payload:(id)a5 tag:(id)a6;
- (id)description;
- (id)generateMessageForMACWithApplicationProtectedAttributes:(id)a3;
@end

@implementation COSE_Mac0

- (COSE_Mac0)initWithCBOR:(id)a3
{
  v4 = a3;
  if ([v4 type] != 4)
  {
    goto LABEL_11;
  }

  v5 = [v4 array];
  v6 = [v5 count];

  if (v6 < 4)
  {
    goto LABEL_11;
  }

  v7 = [v4 tag];
  if (!v7)
  {
    goto LABEL_5;
  }

  v8 = v7;
  v9 = [v4 tag];
  v10 = [v9 numeric];
  v11 = [v10 integerValue];

  if (v11 == 17)
  {
LABEL_5:
    v12 = [v4 array];
    v13 = [v12 objectAtIndexedSubscript:2];

    if ([v13 type] == 2 || objc_msgSend(v13, "type") == 11)
    {
      v14 = [v4 array];
      v15 = [v14 objectAtIndexedSubscript:3];

      if ([v15 type] == 2)
      {
        v22.receiver = self;
        v22.super_class = COSE_Mac0;
        v16 = [(COSE *)&v22 initWithCBOR:v4];
        v17 = v16;
        if (v16)
        {
          [(COSE *)v16 setType:?];
          v18 = [v15 data];
          mac = v17->_mac;
          v17->_mac = v18;
        }

        self = v17;
        v20 = self;
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
LABEL_11:
    v20 = 0;
  }

  return v20;
}

- (COSE_Mac0)initWithProtectedHeaders:(id)a3 unprotectedHeaders:(id)a4 payload:(id)a5 tag:(id)a6
{
  v18[1] = *MEMORY[0x277D85DE8];
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [CBOR cborWithData:a6];
  v18[0] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v15 = [(COSE *)self initWithProtectedHeaders:v12 unprotectedHeaders:v11 payload:v10 type:17 additionalCBORs:v14];

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (id)generateMessageForMACWithApplicationProtectedAttributes:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [CBOR cborWithUTF8String:@"MAC0"];
  [v5 addObject:v6];

  v7 = objc_opt_new();
  v8 = [(COSE *)self protectedHeaderParameters];
  if (!v8)
  {
    v8 = v7;
  }

  v9 = [CBOR cborWithData:v8];
  [v5 addObject:v9];

  if (v4)
  {
    v10 = [CBOR cborWithData:v4];
    [v5 addObject:v10];
  }

  else
  {
    [v5 addObject:v7];
  }

  v11 = [(COSE *)self content];
  v12 = [CBOR cborWithData:v11];
  [v5 addObject:v12];

  v13 = [CBOR cborWithArray:v5];
  v14 = [MEMORY[0x277CBEA90] dataWithCBOR:v13];

  return v14;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [(COSE *)self protectedHeadererDictionary];
  v5 = [(COSE_Mac0 *)self mac];
  v6 = [v3 initWithFormat:@"ProtectedHeaders: %@, mac: %@", v4, v5];

  return v6;
}

@end