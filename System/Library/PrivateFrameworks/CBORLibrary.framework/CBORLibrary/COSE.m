@interface COSE
- (CBOR)tag;
- (COSE)initWithCBOR:(id)a3;
- (COSE)initWithData:(id)a3;
- (COSE)initWithData:(id)a3 type:(int64_t)a4;
- (NSData)content;
- (NSData)protectedHeaderParameters;
- (NSDictionary)unprotectedHeaderParameters;
- (id)_searchForHeaderLabel:(id)a1;
- (id)initWithProtectedHeaders:(void *)a3 unprotectedHeaders:(void *)a4 payload:(uint64_t)a5 type:(void *)a6 additionalCBORs:;
- (id)sourceObject;
- (void)_parseCommonHeaderParameters:(void *)a1;
- (void)setType:(uint64_t)a1;
@end

@implementation COSE

- (COSE)initWithData:(id)a3
{
  v4 = [CBOR decodeFromData:a3];
  v5 = [(COSE *)self initWithCBOR:v4];

  return v5;
}

- (COSE)initWithData:(id)a3 type:(int64_t)a4
{
  v6 = [CBOR decodeFromData:a3];
  v7 = [v6 tag];

  if (v7)
  {
    v8 = [v6 tag];
    v9 = [v8 numeric];
    if (v9)
    {
      v10 = v9;
      v11 = [v6 tag];
      v12 = [v11 numeric];
      v13 = [v12 integerValue];

      if (v13 != a4)
      {
        v14 = 0;
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
    v15->_type = a4;
  }

  self = v15;
  v14 = self;
LABEL_9:

  return v14;
}

- (COSE)initWithCBOR:(id)a3
{
  v5 = a3;
  v28.receiver = self;
  v28.super_class = COSE;
  v6 = [(COSE *)&v28 init];
  if (!v6)
  {
    goto LABEL_22;
  }

  if ([v5 type] == 4)
  {
    v7 = [v5 array];
    v8 = [v7 count];

    if (v8 >= 2)
    {
      objc_storeStrong(&v6->_cborObj, a3);
      v10 = [(CBOR *)v6->_cborObj tag];

      if (!v10)
      {
        goto LABEL_8;
      }

      v11 = [(CBOR *)v6->_cborObj tag];
      v12 = [v11 numeric];
      v6->_type = [v12 integerValue];

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

        v15 = [(CBOR *)v14 array];
        if ([v15 count] < 2)
        {
LABEL_20:

          goto LABEL_21;
        }

        v16 = [(CBOR *)v14 array];
        v17 = [v16 objectAtIndexedSubscript:0];

        if ([v17 type] == 2)
        {
          v18 = [v17 data];
          if (![v18 length])
          {
            v22 = 0;
LABEL_19:

            protectedHeadererDictionary = v6->_protectedHeadererDictionary;
            v6->_protectedHeadererDictionary = v22;

            [(COSE *)v6 _parseCommonHeaderParameters:?];
            v24 = [v15 objectAtIndexedSubscript:1];
            v25 = [v24 dictionary];

            [(COSE *)v6 _parseCommonHeaderParameters:v25];
            v26 = [v15 objectAtIndexedSubscript:2];
            [v26 type];

            goto LABEL_20;
          }

          v19 = [CBOR decodeFromData:v18];
          v20 = [v19 dictionary];

          v18 = v20;
        }

        else if ([v17 type] == 5)
        {
          v18 = [v17 dictionary];
        }

        else
        {
          v18 = 0;
        }

        v21 = MEMORY[0x277CBEC10];
        if (v18)
        {
          v21 = v18;
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

- (id)initWithProtectedHeaders:(void *)a3 unprotectedHeaders:(void *)a4 payload:(uint64_t)a5 type:(void *)a6 additionalCBORs:
{
  v11 = a2;
  v12 = a4;
  v13 = a6;
  if (a1)
  {
    v14 = MEMORY[0x277CBEB18];
    v15 = a3;
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

    v20 = [CBOR cborWithDictionary:v15];

    [v16 addObject:v20];
    if (v12)
    {
      [CBOR cborWithData:v12];
    }

    else
    {
      +[CBOR cborNil];
    }
    v21 = ;
    [v16 addObject:v21];

    if (v13)
    {
      [v16 addObjectsFromArray:v13];
    }

    v22 = [CBOR cborWithArray:v16];
    if (a5 != -1)
    {
      v23 = [CBOR cborWithInteger:a5];
      [v22 setTag:v23];
    }

    a1 = [a1 initWithCBOR:v22];
  }

  return a1;
}

- (NSData)protectedHeaderParameters
{
  v2 = [(CBOR *)self->_cborObj array];
  v3 = [v2 objectAtIndexedSubscript:0];
  v4 = [v3 data];

  return v4;
}

- (NSDictionary)unprotectedHeaderParameters
{
  v2 = [(CBOR *)self->_cborObj array];
  v3 = [v2 objectAtIndexedSubscript:1];
  v4 = [v3 dictionary];

  return v4;
}

- (NSData)content
{
  v2 = [(CBOR *)self->_cborObj array];
  v3 = [v2 objectAtIndexedSubscript:2];

  if ([v3 type] == 2)
  {
    v4 = [v3 data];
  }

  else
  {
    v4 = 0;
  }

  return v4;
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

- (void)_parseCommonHeaderParameters:(void *)a1
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
    v53 = a1;
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
        v10 = [v8 type];
        if (v10 < 2)
        {
          goto LABEL_9;
        }

        if (v10 != 3)
        {
          if (v10 != 13)
          {
            goto LABEL_67;
          }

LABEL_9:
          v11 = [v8 numeric];
          goto LABEL_11;
        }

        v11 = [v8 string];
LABEL_11:
        v12 = v11;
        v13 = [v11 integerValue];

        if (v13 > 3)
        {
          if (v13 == 4)
          {
            if ([v9 type] == 2)
            {
              v20 = [v9 data];
              v18 = a1[7];
              a1[7] = v20;
              goto LABEL_66;
            }
          }

          else if (v13 == 5)
          {
            if ([v9 type] == 2)
            {
              v33 = [v9 data];
              v18 = a1[8];
              a1[8] = v33;
              goto LABEL_66;
            }
          }

          else if (v13 == 6 && [v9 type] == 2)
          {
            v17 = [v9 data];
            v18 = a1[9];
            a1[9] = v17;
            goto LABEL_66;
          }

          goto LABEL_67;
        }

        if (v13 == 1)
        {
          if ([v9 type] == 3)
          {
            v19 = [v9 string];
          }

          else
          {
            if (![v9 isWholeNumber])
            {
              goto LABEL_67;
            }

            v19 = [v9 numeric];
          }

          v18 = v19;
          a1[4] = [v19 integerValue];
          goto LABEL_66;
        }

        if (v13 == 2)
        {
          if ([v9 type] != 4)
          {
            goto LABEL_67;
          }

          v18 = objc_opt_new();
          v56 = 0u;
          v57 = 0u;
          v58 = 0u;
          v59 = 0u;
          v21 = [v9 array];
          v22 = [v21 countByEnumeratingWithState:&v56 objects:v64 count:16];
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
                objc_enumerationMutation(v21);
              }

              v26 = *(*(&v56 + 1) + 8 * i);
              if ([v26 isWholeNumber])
              {
                v27 = [v26 numeric];
                [v18 addObject:v27];
              }

              else
              {
                v28 = [v26 string];

                if (!v28)
                {
                  continue;
                }

                v29 = MEMORY[0x277CCABB0];
                v27 = [v26 string];
                v30 = [v29 numberWithInteger:{objc_msgSend(v27, "integerValue")}];
                [v18 addObject:v30];
              }
            }

            v23 = [v21 countByEnumeratingWithState:&v56 objects:v64 count:16];
            if (!v23)
            {
LABEL_40:

              if ([v18 count])
              {
                v31 = [v18 copy];
                a1 = v53;
                v32 = v53[5];
                v53[5] = v31;
              }

              else
              {
                a1 = v53;
              }

              v3 = v52;
              v5 = v54;
LABEL_66:

              v6 = v55;
              goto LABEL_67;
            }
          }
        }

        if (v13 != 3)
        {
          goto LABEL_67;
        }

        if ([v9 type] == 3)
        {
          v14 = [v9 string];
          v15 = [v14 isEqualToString:@"application/cose; cose-type=cose-sign"];

          if (v15)
          {
            v16 = &unk_2835DCF48;
          }

          else
          {
            v36 = [v9 string];
            v37 = [v36 isEqualToString:@"application/cose; cose-type=cose-sign1"];

            if (v37)
            {
              v16 = &unk_2835DCF60;
            }

            else
            {
              v38 = [v9 string];
              v39 = [v38 isEqualToString:@"application/cose; cose-type=cose-encrypt"];

              if (v39)
              {
                v16 = &unk_2835DCF78;
              }

              else
              {
                v40 = [v9 string];
                v41 = [v40 isEqualToString:@"application/cose; cose-type=cose-encrypt0"];

                if (v41)
                {
                  v16 = &unk_2835DCF90;
                }

                else
                {
                  v42 = [v9 string];
                  v43 = [v42 isEqualToString:@"application/cose; cose-type=cose-mac"];

                  if (v43)
                  {
                    v16 = &unk_2835DCFA8;
                  }

                  else
                  {
                    v44 = [v9 string];
                    v45 = [v44 isEqualToString:@"application/cose; cose-type=cose-mac0"];

                    if (v45)
                    {
                      v16 = &unk_2835DCFC0;
                    }

                    else
                    {
                      v46 = [v9 string];
                      v47 = [v46 isEqualToString:@"application/cose-key"];

                      if (v47)
                      {
                        v16 = &unk_2835DCFD8;
                      }

                      else
                      {
                        v48 = [v9 string];
                        v49 = [v48 isEqualToString:@"application/cose-key-set"];

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

          v50 = [v16 stringValue];
          v18 = a1[6];
          a1[6] = v50;
          goto LABEL_66;
        }

        if ([v9 isWholeNumber])
        {
          v18 = [v9 numeric];
          v34 = [v18 stringValue];
          v35 = a1[6];
          a1[6] = v34;

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

- (id)_searchForHeaderLabel:(id)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
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
    v5 = *(a1 + 3);
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
      a1 = v20[5];
    }

    else
    {
      v7 = [*(a1 + 1) array];
      v8 = [v7 objectAtIndexedSubscript:1];
      v9 = [v8 dictionary];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __30__COSE__searchForHeaderLabel___block_invoke_2;
      v11[3] = &unk_2784B4488;
      v12 = v6;
      v13 = &v25;
      v14 = &v19;
      [v9 enumerateKeysAndObjectsUsingBlock:v11];

      a1 = v20[5];
    }

    _Block_object_dispose(&v19, 8);
    _Block_object_dispose(&v25, 8);
  }

  return a1;
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

- (void)setType:(uint64_t)a1
{
  if (a1)
  {
    v4 = [*(a1 + 8) tag];
    if (v4)
    {
      v5 = [*(a1 + 8) tag];
      [v5 numeric];
    }

    *(a1 + 16) = a2;
  }
}

- (id)sourceObject
{
  if (a1)
  {
    a1 = a1[1];
    v1 = vars8;
  }

  return a1;
}

@end