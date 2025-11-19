@interface COSE_Sign1
- (COSE_Sign1)initWithCBOR:(id)a3;
- (COSE_Sign1)initWithProtectedHeaders:(id)a3 unprotectedHeaders:(id)a4 payload:(id)a5 signature:(id)a6 includeCBORTag:(BOOL)a7;
- (NSArray)x509bag;
- (NSArray)x509chain;
- (NSData)signature;
- (NSData)x509hashValue;
- (NSString)x509hashAlgorithmIdentifier;
- (NSString)x509uri;
- (id)description;
@end

@implementation COSE_Sign1

- (COSE_Sign1)initWithProtectedHeaders:(id)a3 unprotectedHeaders:(id)a4 payload:(id)a5 signature:(id)a6 includeCBORTag:(BOOL)a7
{
  v20[1] = *MEMORY[0x277D85DE8];
  if (a7)
  {
    v11 = 18;
  }

  else
  {
    v11 = -1;
  }

  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [CBOR cborWithData:a6];
  v20[0] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  v17 = [(COSE *)self initWithProtectedHeaders:v14 unprotectedHeaders:v13 payload:v12 type:v11 additionalCBORs:v16];

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (COSE_Sign1)initWithCBOR:(id)a3
{
  v4 = a3;
  if ([v4 type] != 4)
  {
    goto LABEL_9;
  }

  v5 = [v4 array];
  v6 = [v5 count];

  if (v6 < 4)
  {
    goto LABEL_9;
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

  if (v11 == 18)
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
        v19.receiver = self;
        v19.super_class = COSE_Sign1;
        v16 = [(COSE *)&v19 initWithCBOR:v4];
        [(COSE *)v16 setType:?];
        self = v16;
        v17 = self;
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
LABEL_9:
    v17 = 0;
  }

  return v17;
}

- (NSArray)x509bag
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [(COSE *)self _searchForHeaderLabel:?];
  v3 = v2;
  if (v2)
  {
    if ([v2 type] == 4)
    {
      v4 = [MEMORY[0x277CBEB18] array];
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v5 = [v3 array];
      v6 = [v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v16;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v16 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = [*(*(&v15 + 1) + 8 * i) data];
            if (v10)
            {
              [v4 addObject:v10];
            }
          }

          v7 = [v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
        }

        while (v7);
      }

      v11 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v4 copyItems:0];
      goto LABEL_15;
    }

    if ([v3 type] == 2)
    {
      v4 = [v3 data];
      v19 = v4;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
LABEL_15:
      v12 = v11;

      goto LABEL_17;
    }
  }

  v12 = 0;
LABEL_17:

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (NSArray)x509chain
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [&unk_2835DD008 stringValue];
  v4 = [(COSE *)self _searchForHeaderLabel:v3];

  if (v4)
  {
    if ([v4 type] == 4)
    {
      v5 = objc_opt_new();
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v6 = [v4 array];
      v7 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v17;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v17 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = [*(*(&v16 + 1) + 8 * i) data];
            if (v11)
            {
              [v5 addObject:v11];
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
        }

        while (v8);
      }

      v12 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v5 copyItems:0];
      goto LABEL_15;
    }

    if ([v4 type] == 2)
    {
      v5 = [v4 data];
      v20 = v5;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
LABEL_15:
      v13 = v12;

      goto LABEL_17;
    }
  }

  v13 = 0;
LABEL_17:

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (NSString)x509uri
{
  v3 = [(COSE *)self _searchForHeaderLabel:?];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = [(COSE *)self _searchForHeaderLabel:?];
    if (!v4)
    {
      goto LABEL_6;
    }
  }

  if ([v4 type] == 3)
  {
    v5 = [v4 string];
    goto LABEL_7;
  }

LABEL_6:
  v5 = 0;
LABEL_7:

  return v5;
}

- (NSString)x509hashAlgorithmIdentifier
{
  v3 = [(COSE *)self _searchForHeaderLabel:?];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = [(COSE *)self _searchForHeaderLabel:?];
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  if ([v4 type] == 4)
  {
    v5 = [v4 array];
    v6 = [v5 count];

    if (v6 == 2)
    {
      v7 = [v4 array];
      v8 = [v7 objectAtIndexedSubscript:0];

      if ([v8 isWholeNumber])
      {
        v9 = [v8 numeric];
        v10 = [v9 stringValue];
      }

      else if ([v8 type] == 3)
      {
        v10 = [v8 string];
      }

      else
      {
        v10 = 0;
      }

      goto LABEL_13;
    }
  }

LABEL_8:
  v10 = 0;
LABEL_13:

  return v10;
}

- (NSData)x509hashValue
{
  v3 = [(COSE *)self _searchForHeaderLabel:?];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = [(COSE *)self _searchForHeaderLabel:?];
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  if ([v4 type] == 4)
  {
    v5 = [v4 array];
    v6 = [v5 count];

    if (v6 == 2)
    {
      v7 = [v4 array];
      v8 = [v7 objectAtIndexedSubscript:1];

      if ([v8 type] == 2)
      {
        v9 = [v8 data];
      }

      else
      {
        v9 = 0;
      }

      goto LABEL_11;
    }
  }

LABEL_8:
  v9 = 0;
LABEL_11:

  return v9;
}

- (NSData)signature
{
  v2 = [(COSE *)&self->super.super.isa sourceObject];
  v3 = [v2 array];
  v4 = [v3 objectAtIndex:3];

  if (v4 && [v4 type] == 2)
  {
    v5 = [v4 data];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(COSE *)self protectedHeadererDictionary];
  v5 = [(COSE *)self unprotectedHeaderParameters];
  v6 = [(COSE_Sign1 *)self signature];
  v7 = [(COSE *)self tag];
  v8 = [v3 stringWithFormat:@"ProtectedHeaders: %@, UnprotectedHeaders: %@, signature: %@, tag: %@", v4, v5, v6, v7];

  return v8;
}

@end