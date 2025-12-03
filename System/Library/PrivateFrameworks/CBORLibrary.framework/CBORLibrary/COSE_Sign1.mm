@interface COSE_Sign1
- (COSE_Sign1)initWithCBOR:(id)r;
- (COSE_Sign1)initWithProtectedHeaders:(id)headers unprotectedHeaders:(id)unprotectedHeaders payload:(id)payload signature:(id)signature includeCBORTag:(BOOL)tag;
- (NSArray)x509bag;
- (NSArray)x509chain;
- (NSData)signature;
- (NSData)x509hashValue;
- (NSString)x509hashAlgorithmIdentifier;
- (NSString)x509uri;
- (id)description;
@end

@implementation COSE_Sign1

- (COSE_Sign1)initWithProtectedHeaders:(id)headers unprotectedHeaders:(id)unprotectedHeaders payload:(id)payload signature:(id)signature includeCBORTag:(BOOL)tag
{
  v20[1] = *MEMORY[0x277D85DE8];
  if (tag)
  {
    v11 = 18;
  }

  else
  {
    v11 = -1;
  }

  payloadCopy = payload;
  unprotectedHeadersCopy = unprotectedHeaders;
  headersCopy = headers;
  v15 = [CBOR cborWithData:signature];
  v20[0] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  v17 = [(COSE *)self initWithProtectedHeaders:headersCopy unprotectedHeaders:unprotectedHeadersCopy payload:payloadCopy type:v11 additionalCBORs:v16];

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (COSE_Sign1)initWithCBOR:(id)r
{
  rCopy = r;
  if ([rCopy type] != 4)
  {
    goto LABEL_9;
  }

  array = [rCopy array];
  v6 = [array count];

  if (v6 < 4)
  {
    goto LABEL_9;
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

  if (integerValue == 18)
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
        v19.receiver = self;
        v19.super_class = COSE_Sign1;
        v16 = [(COSE *)&v19 initWithCBOR:rCopy];
        [(COSE *)v16 setType:?];
        self = v16;
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
LABEL_9:
    selfCopy = 0;
  }

  return selfCopy;
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
      array = [MEMORY[0x277CBEB18] array];
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      array2 = [v3 array];
      v6 = [array2 countByEnumeratingWithState:&v15 objects:v20 count:16];
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
              objc_enumerationMutation(array2);
            }

            data = [*(*(&v15 + 1) + 8 * i) data];
            if (data)
            {
              [array addObject:data];
            }
          }

          v7 = [array2 countByEnumeratingWithState:&v15 objects:v20 count:16];
        }

        while (v7);
      }

      v11 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:array copyItems:0];
      goto LABEL_15;
    }

    if ([v3 type] == 2)
    {
      array = [v3 data];
      v19 = array;
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
  stringValue = [&unk_2835DD008 stringValue];
  v4 = [(COSE *)self _searchForHeaderLabel:stringValue];

  if (v4)
  {
    if ([v4 type] == 4)
    {
      data2 = objc_opt_new();
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      array = [v4 array];
      v7 = [array countByEnumeratingWithState:&v16 objects:v21 count:16];
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
              objc_enumerationMutation(array);
            }

            data = [*(*(&v16 + 1) + 8 * i) data];
            if (data)
            {
              [data2 addObject:data];
            }
          }

          v8 = [array countByEnumeratingWithState:&v16 objects:v21 count:16];
        }

        while (v8);
      }

      v12 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:data2 copyItems:0];
      goto LABEL_15;
    }

    if ([v4 type] == 2)
    {
      data2 = [v4 data];
      v20 = data2;
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
    string = [v4 string];
    goto LABEL_7;
  }

LABEL_6:
  string = 0;
LABEL_7:

  return string;
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
    array = [v4 array];
    v6 = [array count];

    if (v6 == 2)
    {
      array2 = [v4 array];
      v8 = [array2 objectAtIndexedSubscript:0];

      if ([v8 isWholeNumber])
      {
        numeric = [v8 numeric];
        stringValue = [numeric stringValue];
      }

      else if ([v8 type] == 3)
      {
        stringValue = [v8 string];
      }

      else
      {
        stringValue = 0;
      }

      goto LABEL_13;
    }
  }

LABEL_8:
  stringValue = 0;
LABEL_13:

  return stringValue;
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
    array = [v4 array];
    v6 = [array count];

    if (v6 == 2)
    {
      array2 = [v4 array];
      v8 = [array2 objectAtIndexedSubscript:1];

      if ([v8 type] == 2)
      {
        data = [v8 data];
      }

      else
      {
        data = 0;
      }

      goto LABEL_11;
    }
  }

LABEL_8:
  data = 0;
LABEL_11:

  return data;
}

- (NSData)signature
{
  sourceObject = [(COSE *)&self->super.super.isa sourceObject];
  array = [sourceObject array];
  v4 = [array objectAtIndex:3];

  if (v4 && [v4 type] == 2)
  {
    data = [v4 data];
  }

  else
  {
    data = 0;
  }

  return data;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  protectedHeadererDictionary = [(COSE *)self protectedHeadererDictionary];
  unprotectedHeaderParameters = [(COSE *)self unprotectedHeaderParameters];
  signature = [(COSE_Sign1 *)self signature];
  v7 = [(COSE *)self tag];
  v8 = [v3 stringWithFormat:@"ProtectedHeaders: %@, UnprotectedHeaders: %@, signature: %@, tag: %@", protectedHeadererDictionary, unprotectedHeaderParameters, signature, v7];

  return v8;
}

@end