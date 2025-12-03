@interface COSEKey
- (COSEKey)initWithCBOR:(id)r;
- (COSEKey)initWithData:(id)data;
- (NSData)ecCurveD;
- (NSData)ecCurveX;
- (NSData)ecCurveY;
- (NSData)okpCurveD;
- (NSData)okpCurveX;
- (NSNumber)ecCurveIdentifier;
- (NSNumber)okpCurveIdentifier;
- (id)initEC2WithAlgorithm:(int64_t)algorithm curveIdentifier:(int64_t)identifier x:(id)x signBit:(BOOL)bit d:(id)d keyOperations:(id)operations keyIdentifier:(id)keyIdentifier;
- (id)initEC2WithAlgorithm:(int64_t)algorithm curveIdentifier:(int64_t)identifier x:(id)x y:(id)y d:(id)d keyOperations:(id)operations keyIdentifier:(id)keyIdentifier;
- (id)initOKPWithAlgorithm:(int64_t)algorithm curveIdentifier:(int64_t)identifier x:(id)x d:(id)d keyOperations:(id)operations keyIdentifier:(id)keyIdentifier;
- (uint64_t)_initCBORWithMemberParams;
@end

@implementation COSEKey

- (COSEKey)initWithData:(id)data
{
  v4 = [CBOR decodeFromData:data];
  v5 = [(COSEKey *)self initWithCBOR:v4];

  return v5;
}

- (COSEKey)initWithCBOR:(id)r
{
  v99 = *MEMORY[0x277D85DE8];
  rCopy = r;
  v97.receiver = self;
  v97.super_class = COSEKey;
  v6 = [(COSEKey *)&v97 init];
  if (!v6)
  {
LABEL_110:
    v43 = v6;
    goto LABEL_111;
  }

  if ([rCopy type] == 5)
  {
    objc_storeStrong(&v6->_cborObj, r);
    dictionary = [rCopy dictionary];
    v8 = [CBOR cborWithInteger:1];
    v9 = [dictionary objectForKey:v8];

    if (!v9 || [v9 type] != 3 && !objc_msgSend(v9, "isWholeNumber"))
    {
      goto LABEL_46;
    }

    string = [v9 string];
    if ([v9 type] == 3)
    {
      if ([string isEqualToString:@"OKP"])
      {
        v6->_type = 1;
LABEL_13:
        v12 = string;
        v13 = [CBOR cborWithInteger:-1];
        v14 = [dictionary objectForKey:v13];

        if (v14)
        {
          numeric = [v14 numeric];
          curveID = v6->_curveID;
          v6->_curveID = numeric;
        }

        v17 = [CBOR cborWithInteger:-2];
        v18 = [dictionary objectForKey:v17];

        if (v18 && [v18 type] == 2)
        {
          data = [v18 data];
          paramX = v6->_paramX;
          v6->_paramX = data;
        }

        v21 = [CBOR cborWithInteger:-4];
        v22 = [dictionary objectForKey:v21];

        if (v22 && [v22 type] == 2)
        {
          data2 = [v22 data];
          paramD = v6->_paramD;
          v6->_paramD = data2;
        }

        string = v12;
        goto LABEL_56;
      }

      if ([string isEqualToString:@"EC2"])
      {
        v6->_type = 2;
        goto LABEL_24;
      }

      if ([string isEqualToString:@"Symmetric"])
      {
        v6->_type = 4;
LABEL_37:
        v37 = [CBOR cborWithInteger:-1];
        v38 = [dictionary objectForKey:v37];

        if (v38 && [v38 type] == 2)
        {
          data3 = [v38 data];
          symmetricKey = v6->_symmetricKey;
          v6->_symmetricKey = data3;
        }

        goto LABEL_56;
      }

      if ([string isEqualToString:@"RSA"])
      {
        v6->_type = 3;
        goto LABEL_45;
      }

      v6->_type = 0;
    }

    else
    {
      unsignedLongLongValue = [v9 unsignedLongLongValue];
      v6->_type = unsignedLongLongValue;
      if (unsignedLongLongValue > 2)
      {
        if (unsignedLongLongValue == 3)
        {
LABEL_45:

LABEL_46:
          goto LABEL_47;
        }

        if (unsignedLongLongValue == 4)
        {
          goto LABEL_37;
        }
      }

      else
      {
        if (unsignedLongLongValue == 1)
        {
          goto LABEL_13;
        }

        if (unsignedLongLongValue == 2)
        {
LABEL_24:
          v89 = string;
          v25 = [CBOR cborWithInteger:-1];
          v26 = [dictionary objectForKey:v25];

          if (v26)
          {
            numeric2 = [v26 numeric];
            v28 = v6->_curveID;
            v6->_curveID = numeric2;
          }

          v29 = [CBOR cborWithInteger:-2];
          v30 = [dictionary objectForKey:v29];

          if (v30 && [v30 type] == 2)
          {
            data4 = [v30 data];
            v32 = v6->_paramX;
            v6->_paramX = data4;
          }

          v33 = v9;
          v34 = [CBOR cborWithInteger:-3];
          v35 = [dictionary objectForKey:v34];

          if (!v35)
          {
            goto LABEL_52;
          }

          if ([v35 type] == 2)
          {
            data5 = [v35 data];
          }

          else
          {
            if ([v35 type] == 10)
            {
              v41 = objc_alloc(MEMORY[0x277CBEA90]);
              v42 = &COMPRESSED_EC2_Y_ONE;
            }

            else
            {
              if ([v35 type] != 9)
              {
                goto LABEL_52;
              }

              v41 = objc_alloc(MEMORY[0x277CBEA90]);
              v42 = &COMPRESSED_EC2_Y_ZERO;
            }

            data5 = [v41 initWithBytes:v42 length:1];
          }

          paramY = v6->_paramY;
          v6->_paramY = data5;

LABEL_52:
          v45 = [CBOR cborWithInteger:-4];
          v46 = [dictionary objectForKey:v45];

          if (v46 && [v46 type] == 2)
          {
            data6 = [v46 data];
            v48 = v6->_paramD;
            v6->_paramD = data6;
          }

          v9 = v33;
          string = v89;
        }
      }
    }

LABEL_56:
    v49 = [CBOR cborWithInteger:2];
    v50 = [dictionary objectForKey:v49];

    if (v50 && [v50 type] == 2)
    {
      data7 = [v50 data];
      identifier = v6->_identifier;
      v6->_identifier = data7;
    }

    v53 = [CBOR cborWithInteger:3];
    v54 = [dictionary objectForKey:v53];

    if (!v54 || [v54 type] != 3 && !objc_msgSend(v54, "isWholeNumber"))
    {
      goto LABEL_78;
    }

    if ([v54 type] != 3)
    {
      v6->_algorithm = 0;
      goto LABEL_78;
    }

    string2 = [v54 string];
    if ([string2 isEqualToString:@"ES256"])
    {
      v56 = -7;
LABEL_77:
      v6->_algorithm = v56;

LABEL_78:
      v91 = v54;
      v92 = v50;
      v57 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v58 = [CBOR cborWithInteger:4];
      v59 = [dictionary objectForKey:v58];

      if (v59 && [v59 type] == 4)
      {
        v90 = string;
        v87 = v9;
        v88 = dictionary;
        v95 = 0u;
        v96 = 0u;
        v93 = 0u;
        v94 = 0u;
        array = [v59 array];
        v61 = [array countByEnumeratingWithState:&v93 objects:v98 count:16];
        if (!v61)
        {
          goto LABEL_103;
        }

        v62 = v61;
        v63 = *v94;
        while (1)
        {
          for (i = 0; i != v62; ++i)
          {
            if (*v94 != v63)
            {
              objc_enumerationMutation(array);
            }

            v65 = *(*(&v93 + 1) + 8 * i);
            if ([v65 isWholeNumber])
            {
              numeric3 = [v59 numeric];
              v67 = v57;
              v68 = numeric3;
LABEL_99:
              [v67 addObject:v68];
              goto LABEL_100;
            }

            if ([v65 type] != 3)
            {
              continue;
            }

            numeric3 = [v65 string];
            v69 = [numeric3 isEqualToString:@"sign"];
            v68 = &unk_2835DD020;
            if (v69)
            {
              goto LABEL_98;
            }

            v70 = [numeric3 isEqualToString:@"verify"];
            v68 = &unk_2835DD038;
            if (v70)
            {
              goto LABEL_98;
            }

            v71 = [numeric3 isEqualToString:@"encrypt"];
            v68 = &unk_2835DD050;
            if (v71)
            {
              goto LABEL_98;
            }

            v72 = [numeric3 isEqualToString:@"decrypt"];
            v68 = &unk_2835DD068;
            if (v72)
            {
              goto LABEL_98;
            }

            v73 = [numeric3 isEqualToString:@"wrapKey"];
            v68 = &unk_2835DD080;
            if (v73)
            {
              goto LABEL_98;
            }

            v74 = [numeric3 isEqualToString:@"unwrapKey"];
            v68 = &unk_2835DD098;
            if (v74)
            {
              goto LABEL_98;
            }

            v75 = [numeric3 isEqualToString:@"deriveKey"];
            v68 = &unk_2835DD0B0;
            if (v75 & 1) != 0 || (v76 = [numeric3 isEqualToString:@"deriveBits"], v68 = &unk_2835DD0C8, (v76) || (v77 = objc_msgSend(numeric3, "isEqualToString:", @"MACCreate"), v68 = &unk_2835DD0E0, (v77) || (v78 = objc_msgSend(numeric3, "isEqualToString:", @"MACVerify"), v68 = &unk_2835DD0F8, v78))
            {
LABEL_98:
              v67 = v57;
              goto LABEL_99;
            }

LABEL_100:
          }

          v62 = [array countByEnumeratingWithState:&v93 objects:v98 count:16];
          if (!v62)
          {
LABEL_103:

            v9 = v87;
            dictionary = v88;
            string = v90;
            break;
          }
        }
      }

      if ([v57 count])
      {
        v79 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v57 copyItems:0];
        operations = v6->_operations;
        v6->_operations = v79;
      }

      v81 = [CBOR cborWithInteger:5];
      v82 = [dictionary objectForKey:v81];

      if (v82 && [v82 type] == 2)
      {
        data8 = [v82 data];
        baseInitializationVector = v6->_baseInitializationVector;
        v6->_baseInitializationVector = data8;
      }

      goto LABEL_110;
    }

    if ([string2 isEqualToString:@"ES384"])
    {
      v56 = -35;
      goto LABEL_77;
    }

    if ([string2 isEqualToString:@"ES512"])
    {
      v56 = -36;
      goto LABEL_77;
    }

    if ([string2 isEqualToString:@"A128GCM"])
    {
      v56 = 1;
      goto LABEL_77;
    }

    if ([string2 isEqualToString:@"A192GCM"])
    {
      v56 = 2;
      goto LABEL_77;
    }

    if ([string2 isEqualToString:@"A256GCM"])
    {
      v56 = 3;
      goto LABEL_77;
    }

    goto LABEL_45;
  }

LABEL_47:
  v43 = 0;
LABEL_111:

  v85 = *MEMORY[0x277D85DE8];
  return v43;
}

- (uint64_t)_initCBORWithMemberParams
{
  v47[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CBEB38]);
  v3 = [CBOR cborWithInteger:1];
  v46 = v3;
  v4 = [CBOR cborWithInteger:*(self + 48)];
  v47[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:&v46 count:1];
  v6 = [v2 initWithDictionary:v5];

  if (*(self + 64))
  {
    v7 = [CBOR cborWithData:?];
    v8 = [CBOR cborWithInteger:2];
    [v6 setObject:v7 forKeyedSubscript:v8];
  }

  if (*(self + 56))
  {
    v9 = [CBOR cborWithInteger:?];
    v10 = [CBOR cborWithInteger:3];
    [v6 setObject:v9 forKeyedSubscript:v10];
  }

  v11 = 0;
  v12 = *(self + 48);
  if (v12 <= 1)
  {
    if (!v12)
    {
      goto LABEL_35;
    }

    if (v12 != 1)
    {
      goto LABEL_23;
    }

    v19 = +[CBOR cborWithInteger:](CBOR, "cborWithInteger:", [*(self + 16) integerValue]);
    v20 = [CBOR cborWithInteger:-1];
    [v6 setObject:v19 forKeyedSubscript:v20];

    if (![*(self + 24) length])
    {
LABEL_18:
      v22 = (self + 40);
      if ([*(self + 40) length])
      {
        v23 = -4;
LABEL_22:
        v24 = [CBOR cborWithData:*v22];
        v25 = [CBOR cborWithInteger:v23];
        [v6 setObject:v24 forKeyedSubscript:v25];

        goto LABEL_23;
      }

      goto LABEL_23;
    }

    v17 = [CBOR cborWithData:*(self + 24)];
    v18 = -2;
LABEL_17:
    v21 = [CBOR cborWithInteger:v18];
    [v6 setObject:v17 forKeyedSubscript:v21];

    goto LABEL_18;
  }

  if (v12 != 4)
  {
    if (v12 == 3)
    {
      goto LABEL_35;
    }

    if (v12 != 2)
    {
      goto LABEL_23;
    }

    v13 = +[CBOR cborWithInteger:](CBOR, "cborWithInteger:", [*(self + 16) integerValue]);
    v14 = [CBOR cborWithInteger:-1];
    [v6 setObject:v13 forKeyedSubscript:v14];

    if ([*(self + 24) length])
    {
      v15 = [CBOR cborWithData:*(self + 24)];
      v16 = [CBOR cborWithInteger:-2];
      [v6 setObject:v15 forKeyedSubscript:v16];
    }

    if (![*(self + 32) length])
    {
      goto LABEL_18;
    }

    v17 = [CBOR cborWithData:*(self + 32)];
    v18 = -3;
    goto LABEL_17;
  }

  v22 = (self + 88);
  if ([*(self + 88) length])
  {
    v23 = -1;
    goto LABEL_22;
  }

LABEL_23:
  if ([*(self + 72) count])
  {
    v26 = objc_opt_new();
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v27 = *(self + 72);
    v28 = [v27 countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v42;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v42 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = +[CBOR cborWithInteger:](CBOR, "cborWithInteger:", [*(*(&v41 + 1) + 8 * i) integerValue]);
          [v26 addObject:v32];
        }

        v29 = [v27 countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v29);
    }

    v33 = [CBOR cborWithArray:v26];
    v34 = [CBOR cborWithInteger:4];
    [v6 setObject:v33 forKeyedSubscript:v34];
  }

  if ([*(self + 80) length])
  {
    v35 = [CBOR cborWithData:*(self + 80)];
    v36 = [CBOR cborWithInteger:5];
    [v6 setObject:v35 forKeyedSubscript:v36];
  }

  v37 = [CBOR cborWithDictionary:v6];
  v38 = *(self + 8);
  *(self + 8) = v37;

  v11 = 1;
LABEL_35:

  v39 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)initEC2WithAlgorithm:(int64_t)algorithm curveIdentifier:(int64_t)identifier x:(id)x signBit:(BOOL)bit d:(id)d keyOperations:(id)operations keyIdentifier:(id)keyIdentifier
{
  bitCopy = bit;
  xCopy = x;
  dCopy = d;
  operationsCopy = operations;
  keyIdentifierCopy = keyIdentifier;
  v30.receiver = self;
  v30.super_class = COSEKey;
  v18 = [(COSEKey *)&v30 init];
  v19 = v18;
  if (!v18)
  {
    goto LABEL_6;
  }

  v18->_type = 2;
  v18->_algorithm = algorithm;
  v20 = [MEMORY[0x277CCABB0] numberWithInteger:identifier];
  v21 = *(v19 + 16);
  *(v19 + 16) = v20;

  objc_storeStrong((v19 + 24), x);
  v22 = bitCopy ? 3 : 2;
  v29 = v22;
  v23 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&v29 length:1];
  v24 = *(v19 + 32);
  *(v19 + 32) = v23;

  objc_storeStrong((v19 + 40), d);
  objc_storeStrong((v19 + 72), operations);
  objc_storeStrong((v19 + 64), keyIdentifier);
  if (![(COSEKey *)v19 _initCBORWithMemberParams])
  {
    v25 = 0;
  }

  else
  {
LABEL_6:
    v25 = v19;
  }

  return v25;
}

- (id)initEC2WithAlgorithm:(int64_t)algorithm curveIdentifier:(int64_t)identifier x:(id)x y:(id)y d:(id)d keyOperations:(id)operations keyIdentifier:(id)keyIdentifier
{
  xCopy = x;
  yCopy = y;
  dCopy = d;
  operationsCopy = operations;
  keyIdentifierCopy = keyIdentifier;
  v27.receiver = self;
  v27.super_class = COSEKey;
  v18 = [(COSEKey *)&v27 init];
  v19 = v18;
  if (!v18)
  {
    goto LABEL_3;
  }

  v18->_type = 2;
  v18->_algorithm = algorithm;
  v20 = [MEMORY[0x277CCABB0] numberWithInteger:identifier];
  v21 = *(v19 + 16);
  *(v19 + 16) = v20;

  objc_storeStrong((v19 + 24), x);
  objc_storeStrong((v19 + 32), y);
  objc_storeStrong((v19 + 40), d);
  objc_storeStrong((v19 + 72), operations);
  objc_storeStrong((v19 + 64), keyIdentifier);
  if (![(COSEKey *)v19 _initCBORWithMemberParams])
  {
    v22 = 0;
  }

  else
  {
LABEL_3:
    v22 = v19;
  }

  return v22;
}

- (id)initOKPWithAlgorithm:(int64_t)algorithm curveIdentifier:(int64_t)identifier x:(id)x d:(id)d keyOperations:(id)operations keyIdentifier:(id)keyIdentifier
{
  xCopy = x;
  dCopy = d;
  operationsCopy = operations;
  keyIdentifierCopy = keyIdentifier;
  v24.receiver = self;
  v24.super_class = COSEKey;
  v18 = [(COSEKey *)&v24 init];
  v19 = v18;
  if (!v18)
  {
    goto LABEL_3;
  }

  v18->_type = 1;
  v20 = [MEMORY[0x277CCABB0] numberWithInteger:identifier];
  v21 = *(v19 + 16);
  *(v19 + 16) = v20;

  objc_storeStrong((v19 + 24), x);
  objc_storeStrong((v19 + 40), d);
  objc_storeStrong((v19 + 72), operations);
  objc_storeStrong((v19 + 64), keyIdentifier);
  if (![(COSEKey *)v19 _initCBORWithMemberParams])
  {
    v22 = 0;
  }

  else
  {
LABEL_3:
    v22 = v19;
  }

  return v22;
}

- (NSNumber)ecCurveIdentifier
{
  if (self->_type == 2)
  {
    v3 = self->_curveID;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSData)ecCurveX
{
  if (self->_type == 2)
  {
    v3 = self->_paramX;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSData)ecCurveY
{
  if (self->_type == 2)
  {
    v3 = self->_paramY;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSData)ecCurveD
{
  if (self->_type == 2)
  {
    v3 = self->_paramD;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSNumber)okpCurveIdentifier
{
  if (self->_type == 1)
  {
    v3 = self->_curveID;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSData)okpCurveX
{
  if (self->_type == 1)
  {
    v3 = self->_paramX;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSData)okpCurveD
{
  if (self->_type == 1)
  {
    v3 = self->_paramD;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end