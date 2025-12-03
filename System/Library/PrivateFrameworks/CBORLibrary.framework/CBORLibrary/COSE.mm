@interface COSE
- (CBOR)tag;
- (COSE)initWithCBOR:(id)r;
- (COSE)initWithData:(id)data;
- (COSE)initWithData:(id)data type:(int64_t)type;
- (NSData)content;
- (NSData)protectedHeaderParameters;
- (NSDictionary)unprotectedHeaderParameters;
- (id)_searchForHeaderLabel:(id)label;
- (id)initWithProtectedHeaders:(void *)headers unprotectedHeaders:(void *)unprotectedHeaders payload:(uint64_t)payload type:(void *)type additionalCBORs:;
- (id)sourceObject;
- (void)_parseCommonHeaderParameters:(void *)parameters;
- (void)setType:(uint64_t)type;
@end

@implementation COSE

- (COSE)initWithData:(id)data
{
  v4 = [CBOR decodeFromData:data];
  v5 = [(COSE *)self initWithCBOR:v4];

  return v5;
}

- (COSE)initWithData:(id)data type:(int64_t)type
{
  v6 = [CBOR decodeFromData:data];
  v7 = [v6 tag];

  if (v7)
  {
    v8 = [v6 tag];
    numeric = [v8 numeric];
    if (numeric)
    {
      v10 = numeric;
      v11 = [v6 tag];
      numeric2 = [v11 numeric];
      integerValue = [numeric2 integerValue];

      if (integerValue != type)
      {
        selfCopy = 0;
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  v15 = [(COSE *)self initWithCBOR:v6];
  if (v15)
  {
    v15->_type = type;
  }

  self = v15;
  selfCopy = self;
LABEL_9:

  return selfCopy;
}

- (COSE)initWithCBOR:(id)r
{
  rCopy = r;
  v28.receiver = self;
  v28.super_class = COSE;
  v6 = [(COSE *)&v28 init];
  if (!v6)
  {
    goto LABEL_22;
  }

  if ([rCopy type] == 4)
  {
    array = [rCopy array];
    v8 = [array count];

    if (v8 >= 2)
    {
      objc_storeStrong(&v6->_cborObj, r);
      v10 = [(CBOR *)v6->_cborObj tag];

      if (!v10)
      {
        goto LABEL_8;
      }

      v11 = [(CBOR *)v6->_cborObj tag];
      numeric = [v11 numeric];
      v6->_type = [numeric integerValue];

      type = v6->_type;
      if ((type - 96) < 3 || (type - 16) <= 2)
      {
LABEL_8:
        v14 = v6->_cborObj;
        if ([(CBOR *)v14 type]!= 4)
        {
LABEL_21:

LABEL_22:
          v9 = v6;
          goto LABEL_23;
        }

        array2 = [(CBOR *)v14 array];
        if ([array2 count] < 2)
        {
LABEL_20:

          goto LABEL_21;
        }

        array3 = [(CBOR *)v14 array];
        v17 = [array3 objectAtIndexedSubscript:0];

        if ([v17 type] == 2)
        {
          data = [v17 data];
          if (![data length])
          {
            v22 = 0;
LABEL_19:

            protectedHeadererDictionary = v6->_protectedHeadererDictionary;
            v6->_protectedHeadererDictionary = v22;

            [(COSE *)v6 _parseCommonHeaderParameters:?];
            v24 = [array2 objectAtIndexedSubscript:1];
            dictionary = [v24 dictionary];

            [(COSE *)v6 _parseCommonHeaderParameters:dictionary];
            v26 = [array2 objectAtIndexedSubscript:2];
            [v26 type];

            goto LABEL_20;
          }

          v19 = [CBOR decodeFromData:data];
          dictionary2 = [v19 dictionary];

          data = dictionary2;
        }

        else if ([v17 type] == 5)
        {
          data = [v17 dictionary];
        }

        else
        {
          data = 0;
        }

        v21 = MEMORY[0x277CBEC10];
        if (data)
        {
          v21 = data;
        }

        v22 = v21;
        goto LABEL_19;
      }
    }
  }

  v9 = 0;
LABEL_23:

  return v9;
}

- (id)initWithProtectedHeaders:(void *)headers unprotectedHeaders:(void *)unprotectedHeaders payload:(uint64_t)payload type:(void *)type additionalCBORs:
{
  v11 = a2;
  unprotectedHeadersCopy = unprotectedHeaders;
  typeCopy = type;
  if (self)
  {
    v14 = MEMORY[0x277CBEB18];
    headersCopy = headers;
    v16 = objc_alloc_init(v14);
    if ([v11 count])
    {
      v17 = [CBOR cborWithDictionary:v11];
      v18 = [MEMORY[0x277CBEA90] dataWithCBOR:v17];
    }

    else
    {
      v18 = objc_alloc_init(MEMORY[0x277CBEA90]);
    }

    v19 = [CBOR cborWithData:v18];
    [v16 addObject:v19];

    v20 = [CBOR cborWithDictionary:headersCopy];

    [v16 addObject:v20];
    if (unprotectedHeadersCopy)
    {
      [CBOR cborWithData:unprotectedHeadersCopy];
    }

    else
    {
      +[CBOR cborNil];
    }
    v21 = ;
    [v16 addObject:v21];

    if (typeCopy)
    {
      [v16 addObjectsFromArray:typeCopy];
    }

    v22 = [CBOR cborWithArray:v16];
    if (payload != -1)
    {
      v23 = [CBOR cborWithInteger:payload];
      [v22 setTag:v23];
    }

    self = [self initWithCBOR:v22];
  }

  return self;
}

- (NSData)protectedHeaderParameters
{
  array = [(CBOR *)self->_cborObj array];
  v3 = [array objectAtIndexedSubscript:0];
  data = [v3 data];

  return data;
}

- (NSDictionary)unprotectedHeaderParameters
{
  array = [(CBOR *)self->_cborObj array];
  v3 = [array objectAtIndexedSubscript:1];
  dictionary = [v3 dictionary];

  return dictionary;
}

- (NSData)content
{
  array = [(CBOR *)self->_cborObj array];
  v3 = [array objectAtIndexedSubscript:2];

  if ([v3 type] == 2)
  {
    data = [v3 data];
  }

  else
  {
    data = 0;
  }

  return data;
}

- (CBOR)tag
{
  cborObj = self->_cborObj;
  if (cborObj)
  {
    cborObj = [cborObj tag];
    v2 = vars8;
  }

  return cborObj;
}

- (void)_parseCommonHeaderParameters:(void *)parameters
{
  v66 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v60 objects:v65 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v61;
    v55 = *v61;
    v52 = v3;
    parametersCopy = parameters;
    do
    {
      v7 = 0;
      v54 = v5;
      do
      {
        if (*v61 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v60 + 1) + 8 * v7);
        v9 = [v3 objectForKeyedSubscript:{v8, v52}];
        type = [v8 type];
        if (type < 2)
        {
          goto LABEL_9;
        }

        if (type != 3)
        {
          if (type != 13)
          {
            goto LABEL_67;
          }

LABEL_9:
          numeric = [v8 numeric];
          goto LABEL_11;
        }

        numeric = [v8 string];
LABEL_11:
        v12 = numeric;
        integerValue = [numeric integerValue];

        if (integerValue > 3)
        {
          if (integerValue == 4)
          {
            if ([v9 type] == 2)
            {
              data = [v9 data];
              numeric3 = parameters[7];
              parameters[7] = data;
              goto LABEL_66;
            }
          }

          else if (integerValue == 5)
          {
            if ([v9 type] == 2)
            {
              data2 = [v9 data];
              numeric3 = parameters[8];
              parameters[8] = data2;
              goto LABEL_66;
            }
          }

          else if (integerValue == 6 && [v9 type] == 2)
          {
            data3 = [v9 data];
            numeric3 = parameters[9];
            parameters[9] = data3;
            goto LABEL_66;
          }

          goto LABEL_67;
        }

        if (integerValue == 1)
        {
          if ([v9 type] == 3)
          {
            string = [v9 string];
          }

          else
          {
            if (![v9 isWholeNumber])
            {
              goto LABEL_67;
            }

            string = [v9 numeric];
          }

          numeric3 = string;
          parameters[4] = [string integerValue];
          goto LABEL_66;
        }

        if (integerValue == 2)
        {
          if ([v9 type] != 4)
          {
            goto LABEL_67;
          }

          numeric3 = objc_opt_new();
          v56 = 0u;
          v57 = 0u;
          v58 = 0u;
          v59 = 0u;
          array = [v9 array];
          v22 = [array countByEnumeratingWithState:&v56 objects:v64 count:16];
          if (!v22)
          {
            goto LABEL_40;
          }

          v23 = v22;
          v24 = *v57;
          while (1)
          {
            for (i = 0; i != v23; ++i)
            {
              if (*v57 != v24)
              {
                objc_enumerationMutation(array);
              }

              v26 = *(*(&v56 + 1) + 8 * i);
              if ([v26 isWholeNumber])
              {
                numeric2 = [v26 numeric];
                [numeric3 addObject:numeric2];
              }

              else
              {
                string2 = [v26 string];

                if (!string2)
                {
                  continue;
                }

                v29 = MEMORY[0x277CCABB0];
                numeric2 = [v26 string];
                v30 = [v29 numberWithInteger:{objc_msgSend(numeric2, "integerValue")}];
                [numeric3 addObject:v30];
              }
            }

            v23 = [array countByEnumeratingWithState:&v56 objects:v64 count:16];
            if (!v23)
            {
LABEL_40:

              if ([numeric3 count])
              {
                v31 = [numeric3 copy];
                parameters = parametersCopy;
                v32 = parametersCopy[5];
                parametersCopy[5] = v31;
              }

              else
              {
                parameters = parametersCopy;
              }

              v3 = v52;
              v5 = v54;
LABEL_66:

              v6 = v55;
              goto LABEL_67;
            }
          }
        }

        if (integerValue != 3)
        {
          goto LABEL_67;
        }

        if ([v9 type] == 3)
        {
          string3 = [v9 string];
          v15 = [string3 isEqualToString:@"application/cose; cose-type=cose-sign"];

          if (v15)
          {
            v16 = &unk_2835DCF48;
          }

          else
          {
            string4 = [v9 string];
            v37 = [string4 isEqualToString:@"application/cose; cose-type=cose-sign1"];

            if (v37)
            {
              v16 = &unk_2835DCF60;
            }

            else
            {
              string5 = [v9 string];
              v39 = [string5 isEqualToString:@"application/cose; cose-type=cose-encrypt"];

              if (v39)
              {
                v16 = &unk_2835DCF78;
              }

              else
              {
                string6 = [v9 string];
                v41 = [string6 isEqualToString:@"application/cose; cose-type=cose-encrypt0"];

                if (v41)
                {
                  v16 = &unk_2835DCF90;
                }

                else
                {
                  string7 = [v9 string];
                  v43 = [string7 isEqualToString:@"application/cose; cose-type=cose-mac"];

                  if (v43)
                  {
                    v16 = &unk_2835DCFA8;
                  }

                  else
                  {
                    string8 = [v9 string];
                    v45 = [string8 isEqualToString:@"application/cose; cose-type=cose-mac0"];

                    if (v45)
                    {
                      v16 = &unk_2835DCFC0;
                    }

                    else
                    {
                      string9 = [v9 string];
                      v47 = [string9 isEqualToString:@"application/cose-key"];

                      if (v47)
                      {
                        v16 = &unk_2835DCFD8;
                      }

                      else
                      {
                        string10 = [v9 string];
                        v49 = [string10 isEqualToString:@"application/cose-key-set"];

                        if (!v49)
                        {
                          goto LABEL_67;
                        }

                        v16 = &unk_2835DCFF0;
                      }
                    }
                  }
                }
              }
            }
          }

          stringValue = [v16 stringValue];
          numeric3 = parameters[6];
          parameters[6] = stringValue;
          goto LABEL_66;
        }

        if ([v9 isWholeNumber])
        {
          numeric3 = [v9 numeric];
          stringValue2 = [numeric3 stringValue];
          v35 = parameters[6];
          parameters[6] = stringValue2;

          goto LABEL_66;
        }

LABEL_67:

        ++v7;
      }

      while (v7 != v5);
      v5 = [v3 countByEnumeratingWithState:&v60 objects:v65 count:16];
    }

    while (v5);
  }

  v51 = *MEMORY[0x277D85DE8];
}

- (id)_searchForHeaderLabel:(id)label
{
  v3 = a2;
  v4 = v3;
  if (label)
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 0;
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy_;
    v23 = __Block_byref_object_dispose_;
    v24 = 0;
    v5 = *(label + 3);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __30__COSE__searchForHeaderLabel___block_invoke;
    v15[3] = &unk_2784B4488;
    v6 = v3;
    v16 = v6;
    v17 = &v25;
    v18 = &v19;
    [v5 enumerateKeysAndObjectsUsingBlock:v15];
    if (*(v26 + 24) == 1)
    {
      label = v20[5];
    }

    else
    {
      array = [*(label + 1) array];
      v8 = [array objectAtIndexedSubscript:1];
      dictionary = [v8 dictionary];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __30__COSE__searchForHeaderLabel___block_invoke_2;
      v11[3] = &unk_2784B4488;
      v12 = v6;
      v13 = &v25;
      v14 = &v19;
      [dictionary enumerateKeysAndObjectsUsingBlock:v11];

      label = v20[5];
    }

    _Block_object_dispose(&v19, 8);
    _Block_object_dispose(&v25, 8);
  }

  return label;
}

void __30__COSE__searchForHeaderLabel___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = [v11 type];
  if (v8 < 2)
  {
LABEL_4:
    v9 = [v11 numeric];
    v10 = [v9 stringValue];

    goto LABEL_6;
  }

  if (v8 != 3)
  {
    if (v8 != 13)
    {
      v10 = 0;
      goto LABEL_9;
    }

    goto LABEL_4;
  }

  v10 = [v11 string];
LABEL_6:
  if (![*(a1 + 32) compare:v10])
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  }

LABEL_9:
}

void __30__COSE__searchForHeaderLabel___block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = [v11 type];
  if (v8 < 2)
  {
LABEL_4:
    v9 = [v11 numeric];
    v10 = [v9 stringValue];

    goto LABEL_6;
  }

  if (v8 != 3)
  {
    if (v8 != 13)
    {
      v10 = 0;
      goto LABEL_9;
    }

    goto LABEL_4;
  }

  v10 = [v11 string];
LABEL_6:
  if (![*(a1 + 32) compare:v10])
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  }

LABEL_9:
}

- (void)setType:(uint64_t)type
{
  if (type)
  {
    v4 = [*(type + 8) tag];
    if (v4)
    {
      v5 = [*(type + 8) tag];
      [v5 numeric];
    }

    *(type + 16) = a2;
  }
}

- (id)sourceObject
{
  if (self)
  {
    self = self[1];
    v1 = vars8;
  }

  return self;
}

@end