@interface BMWalletPaymentsCommerceClassicOrderAddress
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMWalletPaymentsCommerceClassicOrderAddress)initWithAddressLines:(id)a3 locality:(id)a4 subLocality:(id)a5 administrativeArea:(id)a6 subAdministrativeArea:(id)a7 postalCode:(id)a8 countryCode:(id)a9;
- (BMWalletPaymentsCommerceClassicOrderAddress)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_addressLinesJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMWalletPaymentsCommerceClassicOrderAddress

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMWalletPaymentsCommerceClassicOrderAddress *)self addressLines];
    v7 = [v5 addressLines];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMWalletPaymentsCommerceClassicOrderAddress *)self addressLines];
      v10 = [v5 addressLines];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_25;
      }
    }

    v13 = [(BMWalletPaymentsCommerceClassicOrderAddress *)self locality];
    v14 = [v5 locality];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMWalletPaymentsCommerceClassicOrderAddress *)self locality];
      v17 = [v5 locality];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_25;
      }
    }

    v19 = [(BMWalletPaymentsCommerceClassicOrderAddress *)self subLocality];
    v20 = [v5 subLocality];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMWalletPaymentsCommerceClassicOrderAddress *)self subLocality];
      v23 = [v5 subLocality];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_25;
      }
    }

    v25 = [(BMWalletPaymentsCommerceClassicOrderAddress *)self administrativeArea];
    v26 = [v5 administrativeArea];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(BMWalletPaymentsCommerceClassicOrderAddress *)self administrativeArea];
      v29 = [v5 administrativeArea];
      v30 = [v28 isEqual:v29];

      if (!v30)
      {
        goto LABEL_25;
      }
    }

    v31 = [(BMWalletPaymentsCommerceClassicOrderAddress *)self subAdministrativeArea];
    v32 = [v5 subAdministrativeArea];
    v33 = v32;
    if (v31 == v32)
    {
    }

    else
    {
      v34 = [(BMWalletPaymentsCommerceClassicOrderAddress *)self subAdministrativeArea];
      v35 = [v5 subAdministrativeArea];
      v36 = [v34 isEqual:v35];

      if (!v36)
      {
        goto LABEL_25;
      }
    }

    v37 = [(BMWalletPaymentsCommerceClassicOrderAddress *)self postalCode];
    v38 = [v5 postalCode];
    v39 = v38;
    if (v37 == v38)
    {
    }

    else
    {
      v40 = [(BMWalletPaymentsCommerceClassicOrderAddress *)self postalCode];
      v41 = [v5 postalCode];
      v42 = [v40 isEqual:v41];

      if (!v42)
      {
LABEL_25:
        v12 = 0;
LABEL_26:

        goto LABEL_27;
      }
    }

    v44 = [(BMWalletPaymentsCommerceClassicOrderAddress *)self countryCode];
    v45 = [v5 countryCode];
    if (v44 == v45)
    {
      v12 = 1;
    }

    else
    {
      v46 = [(BMWalletPaymentsCommerceClassicOrderAddress *)self countryCode];
      v47 = [v5 countryCode];
      v12 = [v46 isEqual:v47];
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
  v3 = [(BMWalletPaymentsCommerceClassicOrderAddress *)self _addressLinesJSONArray];
  v4 = [(BMWalletPaymentsCommerceClassicOrderAddress *)self locality];
  v5 = [(BMWalletPaymentsCommerceClassicOrderAddress *)self subLocality];
  v6 = [(BMWalletPaymentsCommerceClassicOrderAddress *)self administrativeArea];
  v7 = [(BMWalletPaymentsCommerceClassicOrderAddress *)self subAdministrativeArea];
  v8 = [(BMWalletPaymentsCommerceClassicOrderAddress *)self postalCode];
  v9 = [(BMWalletPaymentsCommerceClassicOrderAddress *)self countryCode];
  v25[0] = @"addressLines";
  v10 = v3;
  if (!v3)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = v10;
  v26[0] = v10;
  v25[1] = @"locality";
  v11 = v4;
  if (!v4)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = v3;
  v21 = v11;
  v26[1] = v11;
  v25[2] = @"subLocality";
  v12 = v5;
  if (!v5)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = v4;
  v20 = v12;
  v26[2] = v12;
  v25[3] = @"administrativeArea";
  v13 = v6;
  if (!v6)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v26[3] = v13;
  v25[4] = @"subAdministrativeArea";
  v14 = v7;
  if (!v7)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v26[4] = v14;
  v25[5] = @"postalCode";
  v15 = v8;
  if (!v8)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v26[5] = v15;
  v25[6] = @"countryCode";
  v16 = v9;
  if (!v9)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v26[6] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:7];
  if (v9)
  {
    if (v8)
    {
      goto LABEL_17;
    }
  }

  else
  {

    if (v8)
    {
LABEL_17:
      if (v7)
      {
        goto LABEL_18;
      }

LABEL_28:

      if (v6)
      {
        goto LABEL_19;
      }

      goto LABEL_29;
    }
  }

  if (!v7)
  {
    goto LABEL_28;
  }

LABEL_18:
  if (v6)
  {
    goto LABEL_19;
  }

LABEL_29:

LABEL_19:
  if (!v5)
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
  v4 = [(BMWalletPaymentsCommerceClassicOrderAddress *)self addressLines];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        [v3 addObject:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMWalletPaymentsCommerceClassicOrderAddress)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v90[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"addressLines"];
  v8 = [MEMORY[0x1E695DFB0] null];
  v9 = [v7 isEqual:v8];

  v67 = v6;
  if (v9)
  {
    v66 = self;

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
        if (a4)
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

            if (a4)
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
              *a4 = v42;
              a4 = v41;
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

                if (a4)
                {
                  v45 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v46 = *MEMORY[0x1E698F240];
                  v76 = *MEMORY[0x1E696A578];
                  v60 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"subAdministrativeArea"];
                  v77 = v60;
                  v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
                  v63 = 0;
                  v25 = 0;
                  *a4 = [v45 initWithDomain:v46 code:2 userInfo:?];
                  v18 = v57;
                  a4 = v58;
                  goto LABEL_70;
                }

                v63 = 0;
                v25 = 0;
                a4 = v58;
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

              if (!a4)
              {
                v60 = 0;
                v25 = 0;
                a4 = v58;
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
              *a4 = v48;
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
                a4 = v58;
                v25 = [(BMWalletPaymentsCommerceClassicOrderAddress *)v66 initWithAddressLines:v10 locality:v17 subLocality:v57 administrativeArea:v58 subAdministrativeArea:v63 postalCode:v60 countryCode:v35];
                v66 = v25;
LABEL_69:

LABEL_70:
                v44 = v59;
LABEL_71:

LABEL_72:
                goto LABEL_73;
              }

              if (a4)
              {
                v54 = objc_alloc(MEMORY[0x1E696ABC0]);
                v53 = *MEMORY[0x1E698F240];
                v72 = *MEMORY[0x1E696A578];
                v49 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"countryCode"];
                v73 = v49;
                v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
                *a4 = [v54 initWithDomain:v53 code:2 userInfo:v50];
              }

              v35 = 0;
              v25 = 0;
            }

            v29 = v55;
            a4 = v58;
            goto LABEL_69;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v57 = v18;
            v58 = v29;
            goto LABEL_36;
          }

          if (a4)
          {
            v61 = objc_alloc(MEMORY[0x1E696ABC0]);
            v43 = *MEMORY[0x1E698F240];
            v78 = *MEMORY[0x1E696A578];
            v63 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"administrativeArea"];
            v79 = v63;
            v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
            v25 = 0;
            *a4 = [v61 initWithDomain:v43 code:2 userInfo:v44];
            a4 = 0;
            goto LABEL_71;
          }

          v25 = 0;
          goto LABEL_72;
        }

        if (a4)
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
          *a4 = v38;

          goto LABEL_74;
        }

        v17 = 0;
        v25 = 0;
LABEL_75:

LABEL_76:
        self = v66;
LABEL_77:

        goto LABEL_78;
      }
    }

    if (a4)
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
      *a4 = [v21 initWithDomain:v22 code:2 userInfo:v18];
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
    v66 = self;
    goto LABEL_6;
  }

  if (a4)
  {
    v26 = objc_alloc(MEMORY[0x1E696ABC0]);
    v27 = *MEMORY[0x1E698F240];
    v89 = *MEMORY[0x1E696A578];
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"addressLines"];
    v90[0] = v10;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v90 forKeys:&v89 count:1];
    v28 = [v26 initWithDomain:v27 code:2 userInfo:v17];
    v25 = 0;
    *a4 = v28;
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
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = BMWalletPaymentsCommerceClassicOrderAddress;
  v5 = [(BMEventBase *)&v27 init];
  if (!v5)
  {
    goto LABEL_42;
  }

  v6 = objc_opt_new();
  v7 = [v4 position];
  if (v7 < [v4 length])
  {
    do
    {
      if ([v4 hasError])
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        v28 = 0;
        v11 = [v4 position] + 1;
        if (v11 >= [v4 position] && (v12 = objc_msgSend(v4, "position") + 1, v12 <= objc_msgSend(v4, "length")))
        {
          v13 = [v4 data];
          [v13 getBytes:&v28 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
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

      v15 = [v4 hasError] ? 0 : v10;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v15 & 7) == 4)
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
      v21 = [v4 position];
    }

    while (v21 < [v4 length]);
  }

  v22 = [v6 copy];
  addressLines = v5->_addressLines;
  v5->_addressLines = v22;

  v24 = [v4 hasError];
  if (v24)
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
  v4 = [(BMWalletPaymentsCommerceClassicOrderAddress *)self addressLines];
  v5 = [(BMWalletPaymentsCommerceClassicOrderAddress *)self locality];
  v6 = [(BMWalletPaymentsCommerceClassicOrderAddress *)self subLocality];
  v7 = [(BMWalletPaymentsCommerceClassicOrderAddress *)self administrativeArea];
  v8 = [(BMWalletPaymentsCommerceClassicOrderAddress *)self subAdministrativeArea];
  v9 = [(BMWalletPaymentsCommerceClassicOrderAddress *)self postalCode];
  v10 = [(BMWalletPaymentsCommerceClassicOrderAddress *)self countryCode];
  v11 = [v3 initWithFormat:@"BMWalletPaymentsCommerceClassicOrderAddress with addressLines: %@, locality: %@, subLocality: %@, administrativeArea: %@, subAdministrativeArea: %@, postalCode: %@, countryCode: %@", v4, v5, v6, v7, v8, v9, v10];

  return v11;
}

- (BMWalletPaymentsCommerceClassicOrderAddress)initWithAddressLines:(id)a3 locality:(id)a4 subLocality:(id)a5 administrativeArea:(id)a6 subAdministrativeArea:(id)a7 postalCode:(id)a8 countryCode:(id)a9
{
  v24 = a3;
  v23 = a4;
  v22 = a5;
  v21 = a6;
  v20 = a7;
  v16 = a8;
  v17 = a9;
  v25.receiver = self;
  v25.super_class = BMWalletPaymentsCommerceClassicOrderAddress;
  v18 = [(BMEventBase *)&v25 init];
  if (v18)
  {
    v18->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v18->_addressLines, a3);
    objc_storeStrong(&v18->_locality, a4);
    objc_storeStrong(&v18->_subLocality, a5);
    objc_storeStrong(&v18->_administrativeArea, a6);
    objc_storeStrong(&v18->_subAdministrativeArea, a7);
    objc_storeStrong(&v18->_postalCode, a8);
    objc_storeStrong(&v18->_countryCode, a9);
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

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    v6 = a3;
    v7 = [[v5 alloc] initWithData:v6];

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