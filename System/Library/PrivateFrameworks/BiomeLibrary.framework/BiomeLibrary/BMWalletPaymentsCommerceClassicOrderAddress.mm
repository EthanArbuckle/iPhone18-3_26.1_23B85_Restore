@interface BMWalletPaymentsCommerceClassicOrderAddress
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMWalletPaymentsCommerceClassicOrderAddress)initWithAddressLines:(id)lines locality:(id)locality subLocality:(id)subLocality administrativeArea:(id)area subAdministrativeArea:(id)administrativeArea postalCode:(id)code countryCode:(id)countryCode;
- (BMWalletPaymentsCommerceClassicOrderAddress)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_addressLinesJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMWalletPaymentsCommerceClassicOrderAddress

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    addressLines = [(BMWalletPaymentsCommerceClassicOrderAddress *)self addressLines];
    addressLines2 = [v5 addressLines];
    v8 = addressLines2;
    if (addressLines == addressLines2)
    {
    }

    else
    {
      addressLines3 = [(BMWalletPaymentsCommerceClassicOrderAddress *)self addressLines];
      addressLines4 = [v5 addressLines];
      v11 = [addressLines3 isEqual:addressLines4];

      if (!v11)
      {
        goto LABEL_25;
      }
    }

    locality = [(BMWalletPaymentsCommerceClassicOrderAddress *)self locality];
    locality2 = [v5 locality];
    v15 = locality2;
    if (locality == locality2)
    {
    }

    else
    {
      locality3 = [(BMWalletPaymentsCommerceClassicOrderAddress *)self locality];
      locality4 = [v5 locality];
      v18 = [locality3 isEqual:locality4];

      if (!v18)
      {
        goto LABEL_25;
      }
    }

    subLocality = [(BMWalletPaymentsCommerceClassicOrderAddress *)self subLocality];
    subLocality2 = [v5 subLocality];
    v21 = subLocality2;
    if (subLocality == subLocality2)
    {
    }

    else
    {
      subLocality3 = [(BMWalletPaymentsCommerceClassicOrderAddress *)self subLocality];
      subLocality4 = [v5 subLocality];
      v24 = [subLocality3 isEqual:subLocality4];

      if (!v24)
      {
        goto LABEL_25;
      }
    }

    administrativeArea = [(BMWalletPaymentsCommerceClassicOrderAddress *)self administrativeArea];
    administrativeArea2 = [v5 administrativeArea];
    v27 = administrativeArea2;
    if (administrativeArea == administrativeArea2)
    {
    }

    else
    {
      administrativeArea3 = [(BMWalletPaymentsCommerceClassicOrderAddress *)self administrativeArea];
      administrativeArea4 = [v5 administrativeArea];
      v30 = [administrativeArea3 isEqual:administrativeArea4];

      if (!v30)
      {
        goto LABEL_25;
      }
    }

    subAdministrativeArea = [(BMWalletPaymentsCommerceClassicOrderAddress *)self subAdministrativeArea];
    subAdministrativeArea2 = [v5 subAdministrativeArea];
    v33 = subAdministrativeArea2;
    if (subAdministrativeArea == subAdministrativeArea2)
    {
    }

    else
    {
      subAdministrativeArea3 = [(BMWalletPaymentsCommerceClassicOrderAddress *)self subAdministrativeArea];
      subAdministrativeArea4 = [v5 subAdministrativeArea];
      v36 = [subAdministrativeArea3 isEqual:subAdministrativeArea4];

      if (!v36)
      {
        goto LABEL_25;
      }
    }

    postalCode = [(BMWalletPaymentsCommerceClassicOrderAddress *)self postalCode];
    postalCode2 = [v5 postalCode];
    v39 = postalCode2;
    if (postalCode == postalCode2)
    {
    }

    else
    {
      postalCode3 = [(BMWalletPaymentsCommerceClassicOrderAddress *)self postalCode];
      postalCode4 = [v5 postalCode];
      v42 = [postalCode3 isEqual:postalCode4];

      if (!v42)
      {
LABEL_25:
        v12 = 0;
LABEL_26:

        goto LABEL_27;
      }
    }

    countryCode = [(BMWalletPaymentsCommerceClassicOrderAddress *)self countryCode];
    countryCode2 = [v5 countryCode];
    if (countryCode == countryCode2)
    {
      v12 = 1;
    }

    else
    {
      countryCode3 = [(BMWalletPaymentsCommerceClassicOrderAddress *)self countryCode];
      countryCode4 = [v5 countryCode];
      v12 = [countryCode3 isEqual:countryCode4];
    }

    goto LABEL_26;
  }

  v12 = 0;
LABEL_27:

  return v12;
}

- (id)jsonDictionary
{
  v26[7] = *MEMORY[0x1E69E9840];
  _addressLinesJSONArray = [(BMWalletPaymentsCommerceClassicOrderAddress *)self _addressLinesJSONArray];
  locality = [(BMWalletPaymentsCommerceClassicOrderAddress *)self locality];
  subLocality = [(BMWalletPaymentsCommerceClassicOrderAddress *)self subLocality];
  administrativeArea = [(BMWalletPaymentsCommerceClassicOrderAddress *)self administrativeArea];
  subAdministrativeArea = [(BMWalletPaymentsCommerceClassicOrderAddress *)self subAdministrativeArea];
  postalCode = [(BMWalletPaymentsCommerceClassicOrderAddress *)self postalCode];
  countryCode = [(BMWalletPaymentsCommerceClassicOrderAddress *)self countryCode];
  v25[0] = @"addressLines";
  null = _addressLinesJSONArray;
  if (!_addressLinesJSONArray)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v22 = null;
  v26[0] = null;
  v25[1] = @"locality";
  null2 = locality;
  if (!locality)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = _addressLinesJSONArray;
  v21 = null2;
  v26[1] = null2;
  v25[2] = @"subLocality";
  null3 = subLocality;
  if (!subLocality)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = locality;
  v20 = null3;
  v26[2] = null3;
  v25[3] = @"administrativeArea";
  null4 = administrativeArea;
  if (!administrativeArea)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v26[3] = null4;
  v25[4] = @"subAdministrativeArea";
  null5 = subAdministrativeArea;
  if (!subAdministrativeArea)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v26[4] = null5;
  v25[5] = @"postalCode";
  null6 = postalCode;
  if (!postalCode)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v26[5] = null6;
  v25[6] = @"countryCode";
  null7 = countryCode;
  if (!countryCode)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v26[6] = null7;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:7];
  if (countryCode)
  {
    if (postalCode)
    {
      goto LABEL_17;
    }
  }

  else
  {

    if (postalCode)
    {
LABEL_17:
      if (subAdministrativeArea)
      {
        goto LABEL_18;
      }

LABEL_28:

      if (administrativeArea)
      {
        goto LABEL_19;
      }

      goto LABEL_29;
    }
  }

  if (!subAdministrativeArea)
  {
    goto LABEL_28;
  }

LABEL_18:
  if (administrativeArea)
  {
    goto LABEL_19;
  }

LABEL_29:

LABEL_19:
  if (!subLocality)
  {
  }

  if (v23)
  {
    if (v24)
    {
      goto LABEL_23;
    }
  }

  else
  {

    if (v24)
    {
      goto LABEL_23;
    }
  }

LABEL_23:
  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)_addressLinesJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  addressLines = [(BMWalletPaymentsCommerceClassicOrderAddress *)self addressLines];
  v5 = [addressLines countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(addressLines);
        }

        [v3 addObject:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [addressLines countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMWalletPaymentsCommerceClassicOrderAddress)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v90[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"addressLines"];
  null = [MEMORY[0x1E695DFB0] null];
  v9 = [v7 isEqual:null];

  v67 = dictionaryCopy;
  if (v9)
  {
    selfCopy2 = self;

    v7 = 0;
LABEL_6:
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v7, "count")}];
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v7 = v7;
    v11 = [v7 countByEnumeratingWithState:&v68 objects:v88 count:16];
    if (!v11)
    {
      goto LABEL_15;
    }

    v12 = v11;
    v13 = *v69;
LABEL_8:
    v14 = 0;
    while (1)
    {
      if (*v69 != v13)
      {
        objc_enumerationMutation(v7);
      }

      v15 = *(*(&v68 + 1) + 8 * v14);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v23 = objc_alloc(MEMORY[0x1E696ABC0]);
          v24 = *MEMORY[0x1E698F240];
          v84 = *MEMORY[0x1E696A578];
          v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"addressLines"];
          v85 = v16;
          v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
          v21 = v23;
          v22 = v24;
          goto LABEL_25;
        }

        goto LABEL_26;
      }

      [v10 addObject:v15];
      if (v12 == ++v14)
      {
        v12 = [v7 countByEnumeratingWithState:&v68 objects:v88 count:16];
        if (v12)
        {
          goto LABEL_8;
        }

LABEL_15:

        v16 = [v67 objectForKeyedSubscript:@"locality"];
        if (!v16 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v17 = 0;
          goto LABEL_18;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = v16;
LABEL_18:
          v18 = [v67 objectForKeyedSubscript:@"subLocality"];
          v64 = v18;
          if (v18)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v18 = 0;
              goto LABEL_33;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v18 = v18;
              goto LABEL_33;
            }

            if (error)
            {
              v39 = objc_alloc(MEMORY[0x1E696ABC0]);
              v40 = *MEMORY[0x1E698F240];
              v80 = *MEMORY[0x1E696A578];
              v41 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"subLocality"];
              v81 = v41;
              v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
              v42 = [v39 initWithDomain:v40 code:2 userInfo:v29];
              v18 = 0;
              v25 = 0;
              *error = v42;
              error = v41;
              goto LABEL_72;
            }

            v18 = 0;
            v25 = 0;
LABEL_73:

LABEL_74:
            goto LABEL_75;
          }

LABEL_33:
          v29 = [v67 objectForKeyedSubscript:@"administrativeArea"];
          if (!v29 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v57 = v18;
            v58 = 0;
LABEL_36:
            v30 = [v67 objectForKeyedSubscript:@"subAdministrativeArea"];
            v59 = v30;
            if (v30)
            {
              v31 = v30;
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v63 = v31;
                  goto LABEL_39;
                }

                if (error)
                {
                  v45 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v46 = *MEMORY[0x1E698F240];
                  v76 = *MEMORY[0x1E696A578];
                  v60 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"subAdministrativeArea"];
                  v77 = v60;
                  v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
                  v63 = 0;
                  v25 = 0;
                  *error = [v45 initWithDomain:v46 code:2 userInfo:?];
                  v18 = v57;
                  error = v58;
                  goto LABEL_70;
                }

                v63 = 0;
                v25 = 0;
                error = v58;
                v44 = v59;
                v18 = v57;
                goto LABEL_71;
              }
            }

            v63 = 0;
LABEL_39:
            v32 = [v67 objectForKeyedSubscript:@"postalCode"];
            v18 = v57;
            v56 = v32;
            if (v32 && (v33 = v32, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              v55 = v29;
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v60 = v33;
                goto LABEL_42;
              }

              if (!error)
              {
                v60 = 0;
                v25 = 0;
                error = v58;
                goto LABEL_70;
              }

              v62 = objc_alloc(MEMORY[0x1E696ABC0]);
              v47 = *MEMORY[0x1E698F240];
              v74 = *MEMORY[0x1E696A578];
              v35 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"postalCode"];
              v75 = v35;
              v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
              v48 = [v62 initWithDomain:v47 code:2 userInfo:v34];
              v60 = 0;
              v25 = 0;
              *error = v48;
            }

            else
            {
              v60 = 0;
LABEL_42:
              v34 = [v67 objectForKeyedSubscript:@"countryCode"];
              if (!v34 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v35 = 0;
                goto LABEL_45;
              }

              v55 = v29;
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v35 = v34;
LABEL_45:
                error = v58;
                v25 = [(BMWalletPaymentsCommerceClassicOrderAddress *)selfCopy2 initWithAddressLines:v10 locality:v17 subLocality:v57 administrativeArea:v58 subAdministrativeArea:v63 postalCode:v60 countryCode:v35];
                selfCopy2 = v25;
LABEL_69:

LABEL_70:
                v44 = v59;
LABEL_71:

LABEL_72:
                goto LABEL_73;
              }

              if (error)
              {
                v54 = objc_alloc(MEMORY[0x1E696ABC0]);
                v53 = *MEMORY[0x1E698F240];
                v72 = *MEMORY[0x1E696A578];
                v49 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"countryCode"];
                v73 = v49;
                v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
                *error = [v54 initWithDomain:v53 code:2 userInfo:v50];
              }

              v35 = 0;
              v25 = 0;
            }

            v29 = v55;
            error = v58;
            goto LABEL_69;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v57 = v18;
            v58 = v29;
            goto LABEL_36;
          }

          if (error)
          {
            v61 = objc_alloc(MEMORY[0x1E696ABC0]);
            v43 = *MEMORY[0x1E698F240];
            v78 = *MEMORY[0x1E696A578];
            v63 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"administrativeArea"];
            v79 = v63;
            v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
            v25 = 0;
            *error = [v61 initWithDomain:v43 code:2 userInfo:v44];
            error = 0;
            goto LABEL_71;
          }

          v25 = 0;
          goto LABEL_72;
        }

        if (error)
        {
          v36 = objc_alloc(MEMORY[0x1E696ABC0]);
          v37 = *MEMORY[0x1E698F240];
          v82 = *MEMORY[0x1E696A578];
          v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"locality"];
          v83 = v18;
          v65 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
          v38 = [v36 initWithDomain:v37 code:2 userInfo:?];
          v17 = 0;
          v25 = 0;
          *error = v38;

          goto LABEL_74;
        }

        v17 = 0;
        v25 = 0;
LABEL_75:

LABEL_76:
        self = selfCopy2;
LABEL_77:

        goto LABEL_78;
      }
    }

    if (error)
    {
      v19 = objc_alloc(MEMORY[0x1E696ABC0]);
      v20 = *MEMORY[0x1E698F240];
      v86 = *MEMORY[0x1E696A578];
      v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"addressLines"];
      v87 = v16;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v87 forKeys:&v86 count:1];
      v21 = v19;
      v22 = v20;
LABEL_25:
      v25 = 0;
      *error = [v21 initWithDomain:v22 code:2 userInfo:v18];
      v17 = v7;
      goto LABEL_74;
    }

LABEL_26:
    v25 = 0;
    v17 = v7;
    goto LABEL_76;
  }

  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    selfCopy2 = self;
    goto LABEL_6;
  }

  if (error)
  {
    v26 = objc_alloc(MEMORY[0x1E696ABC0]);
    v27 = *MEMORY[0x1E698F240];
    v89 = *MEMORY[0x1E696A578];
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"addressLines"];
    v90[0] = v10;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v90 forKeys:&v89 count:1];
    v28 = [v26 initWithDomain:v27 code:2 userInfo:v17];
    v25 = 0;
    *error = v28;
    goto LABEL_77;
  }

  v25 = 0;
LABEL_78:

  v51 = *MEMORY[0x1E69E9840];
  return v25;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMWalletPaymentsCommerceClassicOrderAddress *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_addressLines;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  if (self->_locality)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_subLocality)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_administrativeArea)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_subAdministrativeArea)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_postalCode)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_countryCode)
  {
    PBDataWriterWriteStringField();
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v27.receiver = self;
  v27.super_class = BMWalletPaymentsCommerceClassicOrderAddress;
  v5 = [(BMEventBase *)&v27 init];
  if (!v5)
  {
    goto LABEL_42;
  }

  v6 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    do
    {
      if ([fromCopy hasError])
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        v28 = 0;
        v11 = [fromCopy position] + 1;
        if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v28 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v10 |= (v28 & 0x7F) << v8;
        if ((v28 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        if (v9++ >= 9)
        {
          v15 = 0;
          goto LABEL_16;
        }
      }

      v15 = [fromCopy hasError] ? 0 : v10;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v15 & 7) == 4)
      {
        break;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) <= 3)
      {
        switch(v16)
        {
          case 1:
            v19 = PBReaderReadString();
            if (!v19)
            {
              goto LABEL_44;
            }

            v20 = v19;
            [v6 addObject:v19];
            goto LABEL_38;
          case 2:
            v17 = PBReaderReadString();
            v18 = 32;
LABEL_37:
            v20 = *(&v5->super.super.isa + v18);
            *(&v5->super.super.isa + v18) = v17;
LABEL_38:

            goto LABEL_39;
          case 3:
            v17 = PBReaderReadString();
            v18 = 40;
            goto LABEL_37;
        }
      }

      else if (v16 > 5)
      {
        if (v16 == 6)
        {
          v17 = PBReaderReadString();
          v18 = 64;
          goto LABEL_37;
        }

        if (v16 == 7)
        {
          v17 = PBReaderReadString();
          v18 = 72;
          goto LABEL_37;
        }
      }

      else
      {
        if (v16 == 4)
        {
          v17 = PBReaderReadString();
          v18 = 48;
          goto LABEL_37;
        }

        if (v16 == 5)
        {
          v17 = PBReaderReadString();
          v18 = 56;
          goto LABEL_37;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
LABEL_44:

        goto LABEL_41;
      }

LABEL_39:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  v22 = [v6 copy];
  addressLines = v5->_addressLines;
  v5->_addressLines = v22;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_41:
    v25 = 0;
  }

  else
  {
LABEL_42:
    v25 = v5;
  }

  return v25;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  addressLines = [(BMWalletPaymentsCommerceClassicOrderAddress *)self addressLines];
  locality = [(BMWalletPaymentsCommerceClassicOrderAddress *)self locality];
  subLocality = [(BMWalletPaymentsCommerceClassicOrderAddress *)self subLocality];
  administrativeArea = [(BMWalletPaymentsCommerceClassicOrderAddress *)self administrativeArea];
  subAdministrativeArea = [(BMWalletPaymentsCommerceClassicOrderAddress *)self subAdministrativeArea];
  postalCode = [(BMWalletPaymentsCommerceClassicOrderAddress *)self postalCode];
  countryCode = [(BMWalletPaymentsCommerceClassicOrderAddress *)self countryCode];
  v11 = [v3 initWithFormat:@"BMWalletPaymentsCommerceClassicOrderAddress with addressLines: %@, locality: %@, subLocality: %@, administrativeArea: %@, subAdministrativeArea: %@, postalCode: %@, countryCode: %@", addressLines, locality, subLocality, administrativeArea, subAdministrativeArea, postalCode, countryCode];

  return v11;
}

- (BMWalletPaymentsCommerceClassicOrderAddress)initWithAddressLines:(id)lines locality:(id)locality subLocality:(id)subLocality administrativeArea:(id)area subAdministrativeArea:(id)administrativeArea postalCode:(id)code countryCode:(id)countryCode
{
  linesCopy = lines;
  localityCopy = locality;
  subLocalityCopy = subLocality;
  areaCopy = area;
  administrativeAreaCopy = administrativeArea;
  codeCopy = code;
  countryCodeCopy = countryCode;
  v25.receiver = self;
  v25.super_class = BMWalletPaymentsCommerceClassicOrderAddress;
  v18 = [(BMEventBase *)&v25 init];
  if (v18)
  {
    v18->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v18->_addressLines, lines);
    objc_storeStrong(&v18->_locality, locality);
    objc_storeStrong(&v18->_subLocality, subLocality);
    objc_storeStrong(&v18->_administrativeArea, area);
    objc_storeStrong(&v18->_subAdministrativeArea, administrativeArea);
    objc_storeStrong(&v18->_postalCode, code);
    objc_storeStrong(&v18->_countryCode, countryCode);
  }

  return v18;
}

+ (id)protoFields
{
  v12[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"addressLines" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"locality" number:2 type:13 subMessageClass:{0, v2}];
  v12[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"subLocality" number:3 type:13 subMessageClass:0];
  v12[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"administrativeArea" number:4 type:13 subMessageClass:0];
  v12[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"subAdministrativeArea" number:5 type:13 subMessageClass:0];
  v12[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"postalCode" number:6 type:13 subMessageClass:0];
  v12[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"countryCode" number:7 type:13 subMessageClass:0];
  v12[6] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:7];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)columns
{
  v12[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"addressLines_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_353_91654];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"locality" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"subLocality" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"administrativeArea" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"subAdministrativeArea" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"postalCode" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"countryCode" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
  v12[0] = v2;
  v12[1] = v3;
  v12[2] = v4;
  v12[3] = v5;
  v12[4] = v6;
  v12[5] = v7;
  v12[6] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:7];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id __54__BMWalletPaymentsCommerceClassicOrderAddress_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _addressLinesJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v7 = [[v5 alloc] initWithData:dataCopy];

    v8 = [[BMWalletPaymentsCommerceClassicOrderAddress alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end