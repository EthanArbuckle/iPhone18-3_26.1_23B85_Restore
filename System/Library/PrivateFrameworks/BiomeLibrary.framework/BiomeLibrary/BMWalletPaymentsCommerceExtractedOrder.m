@interface BMWalletPaymentsCommerceExtractedOrder
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMWalletPaymentsCommerceExtractedOrder)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMWalletPaymentsCommerceExtractedOrder)initWithOrderTypeIdentifier:(id)a3 orderIdentifier:(id)a4 orderNumber:(id)a5 orderEmails:(id)a6 orderDate:(id)a7 merchant:(id)a8 shippingFulfillments:(id)a9 customer:(id)a10 payment:(id)a11 isTrackedInWallet:(id)a12 orderUpdateDate:(id)a13 trackedOrderIdentifier:(id)a14;
- (BOOL)isEqual:(id)a3;
- (NSDate)orderUpdateDate;
- (NSString)description;
- (id)_orderEmailsJSONArray;
- (id)_shippingFulfillmentsJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMWalletPaymentsCommerceExtractedOrder

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMWalletPaymentsCommerceExtractedOrder *)self orderTypeIdentifier];
    v7 = [v5 orderTypeIdentifier];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMWalletPaymentsCommerceExtractedOrder *)self orderTypeIdentifier];
      v10 = [v5 orderTypeIdentifier];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_46;
      }
    }

    v13 = [(BMWalletPaymentsCommerceExtractedOrder *)self orderIdentifier];
    v14 = [v5 orderIdentifier];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMWalletPaymentsCommerceExtractedOrder *)self orderIdentifier];
      v17 = [v5 orderIdentifier];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_46;
      }
    }

    v19 = [(BMWalletPaymentsCommerceExtractedOrder *)self orderNumber];
    v20 = [v5 orderNumber];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMWalletPaymentsCommerceExtractedOrder *)self orderNumber];
      v23 = [v5 orderNumber];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_46;
      }
    }

    v25 = [(BMWalletPaymentsCommerceExtractedOrder *)self orderEmails];
    v26 = [v5 orderEmails];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(BMWalletPaymentsCommerceExtractedOrder *)self orderEmails];
      v29 = [v5 orderEmails];
      v30 = [v28 isEqual:v29];

      if (!v30)
      {
        goto LABEL_46;
      }
    }

    v31 = [(BMWalletPaymentsCommerceExtractedOrder *)self orderDate];
    v32 = [v5 orderDate];
    v33 = v32;
    if (v31 == v32)
    {
    }

    else
    {
      v34 = [(BMWalletPaymentsCommerceExtractedOrder *)self orderDate];
      v35 = [v5 orderDate];
      v36 = [v34 isEqual:v35];

      if (!v36)
      {
        goto LABEL_46;
      }
    }

    v37 = [(BMWalletPaymentsCommerceExtractedOrder *)self merchant];
    v38 = [v5 merchant];
    v39 = v38;
    if (v37 == v38)
    {
    }

    else
    {
      v40 = [(BMWalletPaymentsCommerceExtractedOrder *)self merchant];
      v41 = [v5 merchant];
      v42 = [v40 isEqual:v41];

      if (!v42)
      {
        goto LABEL_46;
      }
    }

    v43 = [(BMWalletPaymentsCommerceExtractedOrder *)self shippingFulfillments];
    v44 = [v5 shippingFulfillments];
    v45 = v44;
    if (v43 == v44)
    {
    }

    else
    {
      v46 = [(BMWalletPaymentsCommerceExtractedOrder *)self shippingFulfillments];
      v47 = [v5 shippingFulfillments];
      v48 = [v46 isEqual:v47];

      if (!v48)
      {
        goto LABEL_46;
      }
    }

    v49 = [(BMWalletPaymentsCommerceExtractedOrder *)self customer];
    v50 = [v5 customer];
    v51 = v50;
    if (v49 == v50)
    {
    }

    else
    {
      v52 = [(BMWalletPaymentsCommerceExtractedOrder *)self customer];
      v53 = [v5 customer];
      v54 = [v52 isEqual:v53];

      if (!v54)
      {
        goto LABEL_46;
      }
    }

    v55 = [(BMWalletPaymentsCommerceExtractedOrder *)self payment];
    v56 = [v5 payment];
    v57 = v56;
    if (v55 == v56)
    {
    }

    else
    {
      v58 = [(BMWalletPaymentsCommerceExtractedOrder *)self payment];
      v59 = [v5 payment];
      v60 = [v58 isEqual:v59];

      if (!v60)
      {
        goto LABEL_46;
      }
    }

    if (-[BMWalletPaymentsCommerceExtractedOrder hasIsTrackedInWallet](self, "hasIsTrackedInWallet") || [v5 hasIsTrackedInWallet])
    {
      if (![(BMWalletPaymentsCommerceExtractedOrder *)self hasIsTrackedInWallet])
      {
        goto LABEL_46;
      }

      if (![v5 hasIsTrackedInWallet])
      {
        goto LABEL_46;
      }

      v61 = [(BMWalletPaymentsCommerceExtractedOrder *)self isTrackedInWallet];
      if (v61 != [v5 isTrackedInWallet])
      {
        goto LABEL_46;
      }
    }

    v62 = [(BMWalletPaymentsCommerceExtractedOrder *)self orderUpdateDate];
    v63 = [v5 orderUpdateDate];
    v64 = v63;
    if (v62 == v63)
    {
    }

    else
    {
      v65 = [(BMWalletPaymentsCommerceExtractedOrder *)self orderUpdateDate];
      v66 = [v5 orderUpdateDate];
      v67 = [v65 isEqual:v66];

      if (!v67)
      {
LABEL_46:
        v12 = 0;
LABEL_47:

        goto LABEL_48;
      }
    }

    v69 = [(BMWalletPaymentsCommerceExtractedOrder *)self trackedOrderIdentifier];
    v70 = [v5 trackedOrderIdentifier];
    if (v69 == v70)
    {
      v12 = 1;
    }

    else
    {
      v71 = [(BMWalletPaymentsCommerceExtractedOrder *)self trackedOrderIdentifier];
      v72 = [v5 trackedOrderIdentifier];
      v12 = [v71 isEqual:v72];
    }

    goto LABEL_47;
  }

  v12 = 0;
LABEL_48:

  return v12;
}

- (NSDate)orderUpdateDate
{
  if (self->_hasRaw_orderUpdateDate)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_orderUpdateDate];
    v4 = [v2 convertValue:v3 toType:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v47[12] = *MEMORY[0x1E69E9840];
  v3 = [(BMWalletPaymentsCommerceExtractedOrder *)self orderTypeIdentifier];
  v4 = [(BMWalletPaymentsCommerceExtractedOrder *)self orderIdentifier];
  v5 = [(BMWalletPaymentsCommerceExtractedOrder *)self orderNumber];
  v6 = [(BMWalletPaymentsCommerceExtractedOrder *)self _orderEmailsJSONArray];
  v7 = [(BMWalletPaymentsCommerceExtractedOrder *)self orderDate];
  v8 = [(BMWalletPaymentsCommerceExtractedOrder *)self merchant];
  v45 = [v8 jsonDictionary];

  v44 = [(BMWalletPaymentsCommerceExtractedOrder *)self _shippingFulfillmentsJSONArray];
  v9 = [(BMWalletPaymentsCommerceExtractedOrder *)self customer];
  v43 = [v9 jsonDictionary];

  v10 = [(BMWalletPaymentsCommerceExtractedOrder *)self payment];
  v42 = [v10 jsonDictionary];

  if ([(BMWalletPaymentsCommerceExtractedOrder *)self hasIsTrackedInWallet])
  {
    v41 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMWalletPaymentsCommerceExtractedOrder isTrackedInWallet](self, "isTrackedInWallet")}];
  }

  else
  {
    v41 = 0;
  }

  v11 = [(BMWalletPaymentsCommerceExtractedOrder *)self orderUpdateDate];
  if (v11)
  {
    v12 = MEMORY[0x1E696AD98];
    v13 = [(BMWalletPaymentsCommerceExtractedOrder *)self orderUpdateDate];
    [v13 timeIntervalSinceReferenceDate];
    v14 = [v12 numberWithDouble:?];
  }

  else
  {
    v14 = 0;
  }

  v15 = [(BMWalletPaymentsCommerceExtractedOrder *)self trackedOrderIdentifier];
  v46[0] = @"orderTypeIdentifier";
  v16 = v3;
  if (!v3)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v35 = v16;
  v47[0] = v16;
  v46[1] = @"orderIdentifier";
  v17 = v4;
  if (!v4)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v34 = v17;
  v47[1] = v17;
  v46[2] = @"orderNumber";
  v18 = v5;
  if (!v5)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v33 = v18;
  v47[2] = v18;
  v46[3] = @"orderEmails";
  v19 = v6;
  if (!v6)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v40 = v3;
  v32 = v19;
  v47[3] = v19;
  v46[4] = @"orderDate";
  v20 = v7;
  if (!v7)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v39 = v4;
  v31 = v20;
  v47[4] = v20;
  v46[5] = @"merchant";
  v21 = v45;
  if (!v45)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v38 = v5;
  v47[5] = v21;
  v46[6] = @"shippingFulfillments";
  v22 = v44;
  if (!v44)
  {
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  v37 = v6;
  v47[6] = v22;
  v46[7] = @"customer";
  v23 = v43;
  if (!v43)
  {
    v23 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = v7;
  v47[7] = v23;
  v46[8] = @"payment";
  v25 = v42;
  if (!v42)
  {
    v25 = [MEMORY[0x1E695DFB0] null];
  }

  v47[8] = v25;
  v46[9] = @"isTrackedInWallet";
  v26 = v41;
  if (!v41)
  {
    v26 = [MEMORY[0x1E695DFB0] null];
  }

  v47[9] = v26;
  v46[10] = @"orderUpdateDate";
  v27 = v14;
  if (!v14)
  {
    v27 = [MEMORY[0x1E695DFB0] null];
  }

  v47[10] = v27;
  v46[11] = @"trackedOrderIdentifier";
  v28 = v15;
  if (!v15)
  {
    v28 = [MEMORY[0x1E695DFB0] null];
  }

  v47[11] = v28;
  v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:v46 count:12];
  if (v15)
  {
    if (v14)
    {
      goto LABEL_33;
    }
  }

  else
  {

    if (v14)
    {
      goto LABEL_33;
    }
  }

LABEL_33:
  if (!v41)
  {
  }

  if (!v42)
  {
  }

  if (!v43)
  {
  }

  if (!v44)
  {
  }

  if (!v45)
  {
  }

  if (!v24)
  {
  }

  if (v37)
  {
    if (v38)
    {
      goto LABEL_47;
    }
  }

  else
  {

    if (v38)
    {
LABEL_47:
      if (v39)
      {
        goto LABEL_48;
      }

LABEL_56:

      if (v40)
      {
        goto LABEL_49;
      }

      goto LABEL_57;
    }
  }

  if (!v39)
  {
    goto LABEL_56;
  }

LABEL_48:
  if (v40)
  {
    goto LABEL_49;
  }

LABEL_57:

LABEL_49:
  v29 = *MEMORY[0x1E69E9840];

  return v36;
}

- (id)_shippingFulfillmentsJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BMWalletPaymentsCommerceExtractedOrder *)self shippingFulfillments];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)_orderEmailsJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BMWalletPaymentsCommerceExtractedOrder *)self orderEmails];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMWalletPaymentsCommerceExtractedOrder)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v212[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"orderTypeIdentifier"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
LABEL_4:
    v8 = [v5 objectForKeyedSubscript:@"orderIdentifier"];
    v162 = v8;
    if (!v8 || (v9 = v8, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v161 = 0;
      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v161 = v9;
LABEL_7:
      v10 = [v5 objectForKeyedSubscript:@"orderNumber"];
      v159 = v6;
      v160 = self;
      if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v157 = 0;
LABEL_10:
        v11 = [v5 objectForKeyedSubscript:@"orderEmails"];
        v12 = [MEMORY[0x1E695DFB0] null];
        v13 = [v11 isEqual:v12];

        v156 = v5;
        v158 = v10;
        if (v13)
        {

          v11 = 0;
          goto LABEL_16;
        }

        if (!v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
LABEL_16:
          v164 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v11, "count")}];
          v175 = 0u;
          v176 = 0u;
          v177 = 0u;
          v178 = 0u;
          v11 = v11;
          v14 = [v11 countByEnumeratingWithState:&v175 objects:v204 count:16];
          v155 = v7;
          if (v14)
          {
            v15 = v14;
            v16 = *v176;
            do
            {
              for (i = 0; i != v15; ++i)
              {
                if (*v176 != v16)
                {
                  objc_enumerationMutation(v11);
                }

                v18 = *(*(&v175 + 1) + 8 * i);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v44 = a4;
                  if (a4)
                  {
                    v45 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v46 = *MEMORY[0x1E698F240];
                    v202 = *MEMORY[0x1E696A578];
                    v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"orderEmails"];
                    v203 = v19;
                    v47 = MEMORY[0x1E695DF20];
                    v48 = &v203;
                    v49 = &v202;
                    goto LABEL_48;
                  }

LABEL_55:
                  v31 = 0;
                  v56 = v11;
                  v7 = v155;
                  v30 = v161;
                  v10 = v158;
LABEL_121:

                  v37 = v157;
                  goto LABEL_123;
                }

                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v44 = a4;
                  if (!a4)
                  {
                    goto LABEL_55;
                  }

                  v45 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v46 = *MEMORY[0x1E698F240];
                  v200 = *MEMORY[0x1E696A578];
                  v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"orderEmails"];
                  v201 = v19;
                  v47 = MEMORY[0x1E695DF20];
                  v48 = &v201;
                  v49 = &v200;
LABEL_48:
                  v23 = [v47 dictionaryWithObjects:v48 forKeys:v49 count:1];
                  v50 = [v45 initWithDomain:v46 code:2 userInfo:v23];
                  v31 = 0;
                  *v44 = v50;
LABEL_52:
                  v153 = v11;
                  v7 = v155;
                  v30 = v161;
                  v10 = v158;
                  goto LABEL_119;
                }

                v19 = v18;
                v20 = [BMWalletPaymentsCommerceExtractedOrderExtractedEmail alloc];
                v174 = 0;
                v21 = [(BMWalletPaymentsCommerceExtractedOrderExtractedEmail *)v20 initWithJSONDictionary:v19 error:&v174];
                v22 = v174;
                if (v22)
                {
                  v23 = v22;
                  if (a4)
                  {
                    v51 = v22;
                    *a4 = v23;
                  }

                  v31 = 0;
                  goto LABEL_52;
                }

                [v164 addObject:v21];
              }

              v15 = [v11 countByEnumeratingWithState:&v175 objects:v204 count:16];
              v7 = v155;
            }

            while (v15);
          }

          v19 = [v5 objectForKeyedSubscript:@"orderDate"];
          if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (a4)
              {
                v77 = objc_alloc(MEMORY[0x1E696ABC0]);
                v78 = *MEMORY[0x1E698F240];
                v198 = *MEMORY[0x1E696A578];
                v74 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"orderDate"];
                v199 = v74;
                v79 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v199 forKeys:&v198 count:1];
                v80 = [v77 initWithDomain:v78 code:2 userInfo:v79];
                v153 = 0;
                v31 = 0;
                *a4 = v80;
                v30 = v161;
                goto LABEL_118;
              }

              v56 = 0;
              v31 = 0;
              v30 = v161;
              goto LABEL_120;
            }

            v153 = v19;
          }

          else
          {
            v153 = 0;
          }

          v23 = [v5 objectForKeyedSubscript:@"merchant"];
          if (!v23 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v151 = 0;
LABEL_32:
            v24 = [v5 objectForKeyedSubscript:@"shippingFulfillments"];
            v25 = [MEMORY[0x1E695DFB0] null];
            v26 = [v24 isEqual:v25];

            if (v26)
            {

              v24 = 0;
            }

            else if (v24)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                obj = v24;
                if (a4)
                {
                  v94 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v95 = *MEMORY[0x1E698F240];
                  v194 = *MEMORY[0x1E696A578];
                  v154 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"shippingFulfillments"];
                  v195 = v154;
                  v96 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v195 forKeys:&v194 count:1];
                  v97 = v94;
                  v66 = v96;
                  v31 = 0;
                  *a4 = [v97 initWithDomain:v95 code:2 userInfo:v96];
                  v30 = v161;
                  goto LABEL_115;
                }

                v31 = 0;
                v30 = v161;
                goto LABEL_116;
              }
            }

            v154 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v24, "count")}];
            v169 = 0u;
            v170 = 0u;
            v171 = 0u;
            v172 = 0u;
            obj = v24;
            v57 = [obj countByEnumeratingWithState:&v169 objects:v193 count:16];
            if (!v57)
            {
              goto LABEL_68;
            }

            v58 = v57;
            v59 = *v170;
LABEL_60:
            v60 = 0;
            while (1)
            {
              if (*v170 != v59)
              {
                objc_enumerationMutation(obj);
              }

              v61 = *(*(&v169 + 1) + 8 * v60);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                break;
              }

              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v84 = a4;
                if (a4)
                {
                  v85 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v86 = *MEMORY[0x1E698F240];
                  v189 = *MEMORY[0x1E696A578];
                  v62 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"shippingFulfillments"];
                  v190 = v62;
                  v87 = MEMORY[0x1E695DF20];
                  v88 = &v190;
                  v89 = &v189;
                  goto LABEL_108;
                }

                goto LABEL_129;
              }

              v62 = v61;
              v63 = [BMWalletPaymentsCommerceExtractedOrderShippingFulfillment alloc];
              v168 = 0;
              v64 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)v63 initWithJSONDictionary:v62 error:&v168];
              v65 = v168;
              if (v65)
              {
                v67 = v65;
                v10 = v158;
                if (a4)
                {
                  v91 = v65;
                  *a4 = v67;
                }

                v31 = 0;
                v66 = obj;
                v5 = v156;
LABEL_113:
                v30 = v161;
                goto LABEL_114;
              }

              [v154 addObject:v64];

              if (v58 == ++v60)
              {
                v58 = [obj countByEnumeratingWithState:&v169 objects:v193 count:16];
                v10 = v158;
                if (v58)
                {
                  goto LABEL_60;
                }

LABEL_68:

                v5 = v156;
                v66 = [v156 objectForKeyedSubscript:@"customer"];
                if (!v66 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v62 = 0;
LABEL_71:
                  v67 = [v156 objectForKeyedSubscript:@"payment"];
                  if (!v67 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v150 = 0;
LABEL_74:
                    v68 = [v156 objectForKeyedSubscript:@"isTrackedInWallet"];
                    v143 = v68;
                    if (v68)
                    {
                      v69 = v68;
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v147 = v69;
                          goto LABEL_77;
                        }

                        if (a4)
                        {
                          v117 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v149 = *MEMORY[0x1E698F240];
                          v183 = *MEMORY[0x1E696A578];
                          v118 = v66;
                          v119 = objc_alloc(MEMORY[0x1E696AEC0]);
                          v135 = objc_opt_class();
                          v120 = v119;
                          v66 = v118;
                          v144 = [v120 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v135, @"isTrackedInWallet"];
                          v184 = v144;
                          v142 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v184 forKeys:&v183 count:1];
                          v121 = [v117 initWithDomain:v149 code:2 userInfo:?];
                          v147 = 0;
                          v31 = 0;
                          *a4 = v121;
                          v30 = v161;
                          goto LABEL_86;
                        }

                        v147 = 0;
                        v31 = 0;
                        v30 = v161;
                        goto LABEL_87;
                      }
                    }

                    v147 = 0;
LABEL_77:
                    v70 = [v156 objectForKeyedSubscript:@"orderUpdateDate"];
                    v142 = v70;
                    if (!v70 || (v71 = v70, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                    {
                      v144 = 0;
                      goto LABEL_80;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v141 = v66;
                      v106 = MEMORY[0x1E695DF00];
                      v107 = v71;
                      v108 = [v106 alloc];
                      [v107 doubleValue];
                      v110 = v109;

                      v111 = v108;
                      v66 = v141;
                      v144 = [v111 initWithTimeIntervalSinceReferenceDate:v110];
                      goto LABEL_80;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v122 = v66;
                      v123 = objc_alloc_init(MEMORY[0x1E696AC80]);
                      v144 = [v123 dateFromString:v71];

                      v66 = v122;
LABEL_169:
                      v10 = v158;
LABEL_80:
                      v72 = [v156 objectForKeyedSubscript:@"trackedOrderIdentifier"];
                      v140 = v72;
                      if (!v72)
                      {
LABEL_83:
                        v30 = v161;
                        goto LABEL_84;
                      }

                      v73 = v72;
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v72 = 0;
                        goto LABEL_83;
                      }

                      objc_opt_class();
                      v30 = v161;
                      if (objc_opt_isKindOfClass())
                      {
                        v72 = v73;
                        v10 = v158;
LABEL_84:
                        v138 = v72;
                        v31 = [(BMWalletPaymentsCommerceExtractedOrder *)v160 initWithOrderTypeIdentifier:v155 orderIdentifier:v30 orderNumber:v157 orderEmails:v164 orderDate:v153 merchant:v151 shippingFulfillments:v154 customer:v62 payment:v150 isTrackedInWallet:v147 orderUpdateDate:v144 trackedOrderIdentifier:v72];
                        v160 = v31;
LABEL_85:

LABEL_86:
LABEL_87:

LABEL_88:
LABEL_114:

LABEL_115:
LABEL_116:

                        v74 = v23;
LABEL_117:
                        v79 = v151;
LABEL_118:

                        v23 = v74;
                        v7 = v155;
                        goto LABEL_119;
                      }

                      if (a4)
                      {
                        v139 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v137 = *MEMORY[0x1E698F240];
                        v179 = *MEMORY[0x1E696A578];
                        v124 = v66;
                        v125 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"trackedOrderIdentifier"];
                        v180 = v125;
                        v126 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v180 forKeys:&v179 count:1];
                        *a4 = [v139 initWithDomain:v137 code:2 userInfo:v126];

                        v66 = v124;
                      }

                      v138 = 0;
                      v31 = 0;
                    }

                    else
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v144 = v71;
                        goto LABEL_169;
                      }

                      if (!a4)
                      {
                        v144 = 0;
                        v31 = 0;
                        v30 = v161;
                        v10 = v158;
                        goto LABEL_86;
                      }

                      v127 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v146 = *MEMORY[0x1E698F240];
                      v181 = *MEMORY[0x1E696A578];
                      v128 = v66;
                      v129 = objc_alloc(MEMORY[0x1E696AEC0]);
                      v136 = objc_opt_class();
                      v130 = v129;
                      v66 = v128;
                      v138 = [v130 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", v136, @"orderUpdateDate"];
                      v182 = v138;
                      v140 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v182 forKeys:&v181 count:1];
                      v131 = [v127 initWithDomain:v146 code:2 userInfo:?];
                      v144 = 0;
                      v31 = 0;
                      *a4 = v131;
                      v30 = v161;
                    }

                    v10 = v158;
                    goto LABEL_85;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v100 = v67;
                    v101 = [BMWalletPaymentsCommerceTrackedOrderPayment alloc];
                    v166 = 0;
                    v150 = [(BMWalletPaymentsCommerceTrackedOrderPayment *)v101 initWithJSONDictionary:v100 error:&v166];
                    v102 = v166;
                    if (!v102)
                    {

                      v10 = v158;
                      goto LABEL_74;
                    }

                    v147 = v100;
                    v10 = v158;
                    if (a4)
                    {
                      v102 = v102;
                      *a4 = v102;
                    }

                    v31 = 0;
                    v30 = v161;
                    goto LABEL_88;
                  }

                  if (a4)
                  {
                    v148 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v145 = *MEMORY[0x1E698F240];
                    v185 = *MEMORY[0x1E696A578];
                    v112 = v66;
                    v113 = objc_alloc(MEMORY[0x1E696AEC0]);
                    v134 = objc_opt_class();
                    v114 = v113;
                    v66 = v112;
                    v150 = [v114 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v134, @"payment"];
                    v186 = v150;
                    v115 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v186 forKeys:&v185 count:1];
                    v116 = v148;
                    v147 = v115;
                    v31 = 0;
                    *a4 = [v116 initWithDomain:v145 code:2 userInfo:?];
                    v30 = v161;
                    v10 = v158;
                    goto LABEL_88;
                  }

                  v31 = 0;
LABEL_109:
                  v30 = v161;
                  v10 = v158;
                  goto LABEL_114;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v67 = v66;
                  v98 = [BMWalletPaymentsCommerceTrackedOrderCustomer alloc];
                  v167 = 0;
                  v62 = [(BMWalletPaymentsCommerceTrackedOrderCustomer *)v98 initWithJSONDictionary:v67 error:&v167];
                  v99 = v167;
                  if (!v99)
                  {

                    v10 = v158;
                    goto LABEL_71;
                  }

                  v10 = v158;
                  if (a4)
                  {
                    v99 = v99;
                    *a4 = v99;
                  }

                  v31 = 0;
                  v66 = v67;
                  goto LABEL_113;
                }

                if (a4)
                {
                  v103 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v104 = *MEMORY[0x1E698F240];
                  v187 = *MEMORY[0x1E696A578];
                  v62 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"customer"];
                  v188 = v62;
                  v67 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v188 forKeys:&v187 count:1];
                  v105 = [v103 initWithDomain:v104 code:2 userInfo:v67];
                  v31 = 0;
                  *a4 = v105;
                  goto LABEL_109;
                }

                v31 = 0;
LABEL_130:
                v30 = v161;
                v10 = v158;
                goto LABEL_115;
              }
            }

            v84 = a4;
            if (a4)
            {
              v85 = objc_alloc(MEMORY[0x1E696ABC0]);
              v86 = *MEMORY[0x1E698F240];
              v191 = *MEMORY[0x1E696A578];
              v62 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"shippingFulfillments"];
              v192 = v62;
              v87 = MEMORY[0x1E695DF20];
              v88 = &v192;
              v89 = &v191;
LABEL_108:
              v67 = [v87 dictionaryWithObjects:v88 forKeys:v89 count:1];
              v90 = [v85 initWithDomain:v86 code:2 userInfo:v67];
              v31 = 0;
              *v84 = v90;
              v66 = obj;
              v5 = v156;
              goto LABEL_109;
            }

LABEL_129:
            v31 = 0;
            v66 = obj;
            v5 = v156;
            goto LABEL_130;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v74 = v23;
            v75 = [BMWalletPaymentsCommerceTrackedOrderMerchant alloc];
            v173 = 0;
            v151 = [(BMWalletPaymentsCommerceTrackedOrderMerchant *)v75 initWithJSONDictionary:v74 error:&v173];
            v76 = v173;
            if (v76)
            {
              v30 = v161;
              if (a4)
              {
                v76 = v76;
                *a4 = v76;
              }

              v31 = 0;
              goto LABEL_117;
            }

            goto LABEL_32;
          }

          if (a4)
          {
            v81 = objc_alloc(MEMORY[0x1E696ABC0]);
            v82 = *MEMORY[0x1E698F240];
            v196 = *MEMORY[0x1E696A578];
            v79 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"merchant"];
            v197 = v79;
            v83 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v197 forKeys:&v196 count:1];
            *a4 = [v81 initWithDomain:v82 code:2 userInfo:v83];

            v31 = 0;
            v74 = v23;
            v30 = v161;
            goto LABEL_118;
          }

          v31 = 0;
          v7 = v155;
          v30 = v161;
LABEL_119:

          v56 = v153;
LABEL_120:

          goto LABEL_121;
        }

        if (a4)
        {
          v52 = objc_alloc(MEMORY[0x1E696ABC0]);
          v53 = *MEMORY[0x1E698F240];
          v205 = *MEMORY[0x1E696A578];
          v164 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"orderEmails"];
          v206 = v164;
          v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v206 forKeys:&v205 count:1];
          v55 = v53;
          v56 = v54;
          v31 = 0;
          *a4 = [v52 initWithDomain:v55 code:2 userInfo:v54];
          v30 = v161;
          goto LABEL_121;
        }

        v31 = 0;
        v30 = v161;
        v37 = v157;
LABEL_123:

        v6 = v159;
        self = v160;
        goto LABEL_124;
      }

      v27 = v10;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v157 = v10;
        goto LABEL_10;
      }

      if (a4)
      {
        v38 = objc_alloc(MEMORY[0x1E696ABC0]);
        v39 = *MEMORY[0x1E698F240];
        v207 = *MEMORY[0x1E696A578];
        v40 = v7;
        v41 = objc_alloc(MEMORY[0x1E696AEC0]);
        v133 = objc_opt_class();
        v42 = v41;
        v7 = v40;
        v10 = v27;
        v11 = [v42 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v133, @"orderNumber"];
        v208 = v11;
        v165 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v208 forKeys:&v207 count:1];
        v43 = [v38 initWithDomain:v39 code:2 userInfo:?];
        v37 = 0;
        v31 = 0;
        *a4 = v43;
        v30 = v161;

        goto LABEL_123;
      }

      v37 = 0;
      v31 = 0;
      v30 = v161;
LABEL_124:

      goto LABEL_125;
    }

    v30 = a4;
    if (a4)
    {
      v32 = objc_alloc(MEMORY[0x1E696ABC0]);
      v33 = *MEMORY[0x1E698F240];
      v209 = *MEMORY[0x1E696A578];
      v34 = v7;
      v35 = objc_alloc(MEMORY[0x1E696AEC0]);
      v132 = objc_opt_class();
      v36 = v35;
      v7 = v34;
      v37 = [v36 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v132, @"orderIdentifier"];
      v210 = v37;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v210 forKeys:&v209 count:1];
      v30 = 0;
      v31 = 0;
      *a4 = [v32 initWithDomain:v33 code:2 userInfo:v10];
      goto LABEL_124;
    }

    v31 = 0;
LABEL_125:

    goto LABEL_126;
  }

  if (a4)
  {
    v28 = objc_alloc(MEMORY[0x1E696ABC0]);
    v29 = *MEMORY[0x1E698F240];
    v211 = *MEMORY[0x1E696A578];
    v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"orderTypeIdentifier"];
    v212[0] = v30;
    v162 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v212 forKeys:&v211 count:1];
    v7 = 0;
    v31 = 0;
    *a4 = [v28 initWithDomain:v29 code:2 userInfo:?];
    goto LABEL_125;
  }

  v7 = 0;
  v31 = 0;
LABEL_126:

  v92 = *MEMORY[0x1E69E9840];
  return v31;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMWalletPaymentsCommerceExtractedOrder *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_orderTypeIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_orderIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_orderNumber)
  {
    PBDataWriterWriteStringField();
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = self->_orderEmails;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      v9 = 0;
      do
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v25 + 1) + 8 * v9);
        v24 = 0;
        PBDataWriterPlaceMark();
        [v10 writeTo:v4];
        PBDataWriterRecallMark();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v7);
  }

  if (self->_orderDate)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_merchant)
  {
    v24 = 0;
    PBDataWriterPlaceMark();
    [(BMWalletPaymentsCommerceTrackedOrderMerchant *)self->_merchant writeTo:v4];
    PBDataWriterRecallMark();
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = self->_shippingFulfillments;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v20 objects:v29 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      v15 = 0;
      do
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v20 + 1) + 8 * v15);
        v24 = 0;
        PBDataWriterPlaceMark();
        [v16 writeTo:{v4, v20}];
        PBDataWriterRecallMark();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v20 objects:v29 count:16];
    }

    while (v13);
  }

  if (self->_customer)
  {
    v24 = 0;
    PBDataWriterPlaceMark();
    [(BMWalletPaymentsCommerceTrackedOrderCustomer *)self->_customer writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_payment)
  {
    v24 = 0;
    PBDataWriterPlaceMark();
    [(BMWalletPaymentsCommerceTrackedOrderPayment *)self->_payment writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_hasIsTrackedInWallet)
  {
    isTrackedInWallet = self->_isTrackedInWallet;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasRaw_orderUpdateDate)
  {
    raw_orderUpdateDate = self->_raw_orderUpdateDate;
    PBDataWriterWriteDoubleField();
  }

  if (self->_trackedOrderIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v46.receiver = self;
  v46.super_class = BMWalletPaymentsCommerceExtractedOrder;
  v5 = [(BMEventBase *)&v46 init];
  if (!v5)
  {
    goto LABEL_78;
  }

  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = [v4 position];
  if (v8 < [v4 length])
  {
    do
    {
      if ([v4 hasError])
      {
        break;
      }

      v9 = 0;
      v10 = 0;
      v11 = 0;
      while (1)
      {
        LOBYTE(v47) = 0;
        v12 = [v4 position] + 1;
        if (v12 >= [v4 position] && (v13 = objc_msgSend(v4, "position") + 1, v13 <= objc_msgSend(v4, "length")))
        {
          v14 = [v4 data];
          [v14 getBytes:&v47 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v11 |= (LOBYTE(v47) & 0x7F) << v9;
        if ((LOBYTE(v47) & 0x80) == 0)
        {
          break;
        }

        v9 += 7;
        v15 = v10++ >= 9;
        if (v15)
        {
          v16 = 0;
          goto LABEL_16;
        }
      }

      v16 = [v4 hasError] ? 0 : v11;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v16 & 7) == 4)
      {
        break;
      }

      v17 = v16 >> 3;
      if ((v16 >> 3) > 6)
      {
        if (v17 > 9)
        {
          switch(v17)
          {
            case 0xA:
              v26 = 0;
              v27 = 0;
              v28 = 0;
              v5->_hasIsTrackedInWallet = 1;
              while (1)
              {
                LOBYTE(v47) = 0;
                v29 = [v4 position] + 1;
                if (v29 >= [v4 position] && (v30 = objc_msgSend(v4, "position") + 1, v30 <= objc_msgSend(v4, "length")))
                {
                  v31 = [v4 data];
                  [v31 getBytes:&v47 range:{objc_msgSend(v4, "position"), 1}];

                  [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
                }

                else
                {
                  [v4 _setError];
                }

                v28 |= (LOBYTE(v47) & 0x7F) << v26;
                if ((LOBYTE(v47) & 0x80) == 0)
                {
                  break;
                }

                v26 += 7;
                v15 = v27++ >= 9;
                if (v15)
                {
                  LOBYTE(v32) = 0;
                  goto LABEL_73;
                }
              }

              v32 = (v28 != 0) & ~[v4 hasError];
LABEL_73:
              v5->_isTrackedInWallet = v32;
              goto LABEL_65;
            case 0xB:
              v5->_hasRaw_orderUpdateDate = 1;
              v47 = 0.0;
              v36 = [v4 position] + 8;
              if (v36 >= [v4 position] && (v37 = objc_msgSend(v4, "position") + 8, v37 <= objc_msgSend(v4, "length")))
              {
                v38 = [v4 data];
                [v38 getBytes:&v47 range:{objc_msgSend(v4, "position"), 8}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
              }

              else
              {
                [v4 _setError];
              }

              v5->_raw_orderUpdateDate = v47;
              goto LABEL_65;
            case 0xC:
              v18 = PBReaderReadString();
              v19 = 112;
              goto LABEL_64;
          }
        }

        else
        {
          switch(v17)
          {
            case 7:
              v47 = 0.0;
              v48 = 0;
              if (!PBReaderPlaceMark() || (v22 = [[BMWalletPaymentsCommerceExtractedOrderShippingFulfillment alloc] initByReadFrom:v4]) == 0)
              {
LABEL_80:

                goto LABEL_77;
              }

              v23 = v22;
              v24 = v7;
              goto LABEL_48;
            case 8:
              v47 = 0.0;
              v48 = 0;
              if (!PBReaderPlaceMark())
              {
                goto LABEL_80;
              }

              v20 = [[BMWalletPaymentsCommerceTrackedOrderCustomer alloc] initByReadFrom:v4];
              if (!v20)
              {
                goto LABEL_80;
              }

              v21 = 96;
              goto LABEL_62;
            case 9:
              v47 = 0.0;
              v48 = 0;
              if (!PBReaderPlaceMark())
              {
                goto LABEL_80;
              }

              v20 = [[BMWalletPaymentsCommerceTrackedOrderPayment alloc] initByReadFrom:v4];
              if (!v20)
              {
                goto LABEL_80;
              }

              v21 = 104;
              goto LABEL_62;
          }
        }
      }

      else if (v17 > 3)
      {
        switch(v17)
        {
          case 4:
            v47 = 0.0;
            v48 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_80;
            }

            v25 = [[BMWalletPaymentsCommerceExtractedOrderExtractedEmail alloc] initByReadFrom:v4];
            if (!v25)
            {
              goto LABEL_80;
            }

            v23 = v25;
            v24 = v6;
LABEL_48:
            [v24 addObject:v23];
            PBReaderRecallMark();

            goto LABEL_65;
          case 5:
            v18 = PBReaderReadString();
            v19 = 72;
            goto LABEL_64;
          case 6:
            v47 = 0.0;
            v48 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_80;
            }

            v20 = [[BMWalletPaymentsCommerceTrackedOrderMerchant alloc] initByReadFrom:v4];
            if (!v20)
            {
              goto LABEL_80;
            }

            v21 = 80;
LABEL_62:
            v33 = *(&v5->super.super.isa + v21);
            *(&v5->super.super.isa + v21) = v20;

            PBReaderRecallMark();
            goto LABEL_65;
        }
      }

      else
      {
        switch(v17)
        {
          case 1:
            v18 = PBReaderReadString();
            v19 = 40;
            goto LABEL_64;
          case 2:
            v18 = PBReaderReadString();
            v19 = 48;
            goto LABEL_64;
          case 3:
            v18 = PBReaderReadString();
            v19 = 56;
LABEL_64:
            v34 = *(&v5->super.super.isa + v19);
            *(&v5->super.super.isa + v19) = v18;

            goto LABEL_65;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_80;
      }

LABEL_65:
      v35 = [v4 position];
    }

    while (v35 < [v4 length]);
  }

  v39 = [v6 copy];
  orderEmails = v5->_orderEmails;
  v5->_orderEmails = v39;

  v41 = [v7 copy];
  shippingFulfillments = v5->_shippingFulfillments;
  v5->_shippingFulfillments = v41;

  v43 = [v4 hasError];
  if (v43)
  {
LABEL_77:
    v44 = 0;
  }

  else
  {
LABEL_78:
    v44 = v5;
  }

  return v44;
}

- (NSString)description
{
  v14 = objc_alloc(MEMORY[0x1E696AEC0]);
  v17 = [(BMWalletPaymentsCommerceExtractedOrder *)self orderTypeIdentifier];
  v16 = [(BMWalletPaymentsCommerceExtractedOrder *)self orderIdentifier];
  v3 = [(BMWalletPaymentsCommerceExtractedOrder *)self orderNumber];
  v4 = [(BMWalletPaymentsCommerceExtractedOrder *)self orderEmails];
  v5 = [(BMWalletPaymentsCommerceExtractedOrder *)self orderDate];
  v6 = [(BMWalletPaymentsCommerceExtractedOrder *)self merchant];
  v7 = [(BMWalletPaymentsCommerceExtractedOrder *)self shippingFulfillments];
  v8 = [(BMWalletPaymentsCommerceExtractedOrder *)self customer];
  v9 = [(BMWalletPaymentsCommerceExtractedOrder *)self payment];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMWalletPaymentsCommerceExtractedOrder isTrackedInWallet](self, "isTrackedInWallet")}];
  v11 = [(BMWalletPaymentsCommerceExtractedOrder *)self orderUpdateDate];
  v12 = [(BMWalletPaymentsCommerceExtractedOrder *)self trackedOrderIdentifier];
  v15 = [v14 initWithFormat:@"BMWalletPaymentsCommerceExtractedOrder with orderTypeIdentifier: %@, orderIdentifier: %@, orderNumber: %@, orderEmails: %@, orderDate: %@, merchant: %@, shippingFulfillments: %@, customer: %@, payment: %@, isTrackedInWallet: %@, orderUpdateDate: %@, trackedOrderIdentifier: %@", v17, v16, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12];

  return v15;
}

- (BMWalletPaymentsCommerceExtractedOrder)initWithOrderTypeIdentifier:(id)a3 orderIdentifier:(id)a4 orderNumber:(id)a5 orderEmails:(id)a6 orderDate:(id)a7 merchant:(id)a8 shippingFulfillments:(id)a9 customer:(id)a10 payment:(id)a11 isTrackedInWallet:(id)a12 orderUpdateDate:(id)a13 trackedOrderIdentifier:(id)a14
{
  v37 = a3;
  v26 = a4;
  v36 = a4;
  v27 = a5;
  v35 = a5;
  v34 = a6;
  v33 = a7;
  v32 = a8;
  v31 = a9;
  v30 = a10;
  v29 = a11;
  v19 = a12;
  v20 = a13;
  v21 = a14;
  v38.receiver = self;
  v38.super_class = BMWalletPaymentsCommerceExtractedOrder;
  v22 = [(BMEventBase *)&v38 init];
  if (v22)
  {
    v22->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v22->_orderTypeIdentifier, a3);
    objc_storeStrong(&v22->_orderIdentifier, v26);
    objc_storeStrong(&v22->_orderNumber, v27);
    objc_storeStrong(&v22->_orderEmails, a6);
    objc_storeStrong(&v22->_orderDate, a7);
    objc_storeStrong(&v22->_merchant, a8);
    objc_storeStrong(&v22->_shippingFulfillments, a9);
    objc_storeStrong(&v22->_customer, a10);
    objc_storeStrong(&v22->_payment, a11);
    if (v19)
    {
      v22->_hasIsTrackedInWallet = 1;
      v22->_isTrackedInWallet = [v19 BOOLValue];
    }

    else
    {
      v22->_hasIsTrackedInWallet = 0;
      v22->_isTrackedInWallet = 0;
    }

    if (v20)
    {
      v22->_hasRaw_orderUpdateDate = 1;
      [v20 timeIntervalSinceReferenceDate];
    }

    else
    {
      v22->_hasRaw_orderUpdateDate = 0;
      v23 = -1.0;
    }

    v22->_raw_orderUpdateDate = v23;
    objc_storeStrong(&v22->_trackedOrderIdentifier, a14);
  }

  return v22;
}

+ (id)protoFields
{
  v17[12] = *MEMORY[0x1E69E9840];
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"orderTypeIdentifier" number:1 type:13 subMessageClass:0];
  v17[0] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"orderIdentifier" number:2 type:13 subMessageClass:0];
  v17[1] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"orderNumber" number:3 type:13 subMessageClass:0];
  v17[2] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"orderEmails" number:4 type:14 subMessageClass:objc_opt_class()];
  v17[3] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"orderDate" number:5 type:13 subMessageClass:0];
  v17[4] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"merchant" number:6 type:14 subMessageClass:objc_opt_class()];
  v17[5] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shippingFulfillments" number:7 type:14 subMessageClass:objc_opt_class()];
  v17[6] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"customer" number:8 type:14 subMessageClass:objc_opt_class()];
  v17[7] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"payment" number:9 type:14 subMessageClass:objc_opt_class()];
  v17[8] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isTrackedInWallet" number:10 type:12 subMessageClass:0];
  v17[9] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"orderUpdateDate" number:11 type:0 subMessageClass:0];
  v17[10] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"trackedOrderIdentifier" number:12 type:13 subMessageClass:0];
  v17[11] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:12];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)columns
{
  v17[12] = *MEMORY[0x1E69E9840];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"orderTypeIdentifier" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"orderIdentifier" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"orderNumber" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"orderEmails_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_360];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"orderDate" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"merchant_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_362];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"shippingFulfillments_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_364];
  v14 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"customer_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_366_98414];
  v7 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"payment_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_368_98415];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isTrackedInWallet" dataType:0 requestOnly:0 fieldNumber:10 protoDataType:12 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"orderUpdateDate" dataType:3 requestOnly:0 fieldNumber:11 protoDataType:0 convertedType:1];
  v10 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"trackedOrderIdentifier" dataType:2 requestOnly:0 fieldNumber:12 protoDataType:13 convertedType:0];
  v17[0] = v16;
  v17[1] = v15;
  v17[2] = v2;
  v17[3] = v3;
  v17[4] = v4;
  v17[5] = v5;
  v17[6] = v6;
  v17[7] = v14;
  v17[8] = v7;
  v17[9] = v8;
  v17[10] = v9;
  v17[11] = v10;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:12];

  v11 = *MEMORY[0x1E69E9840];

  return v13;
}

id __49__BMWalletPaymentsCommerceExtractedOrder_columns__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 payment];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __49__BMWalletPaymentsCommerceExtractedOrder_columns__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 customer];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __49__BMWalletPaymentsCommerceExtractedOrder_columns__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _shippingFulfillmentsJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __49__BMWalletPaymentsCommerceExtractedOrder_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 merchant];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __49__BMWalletPaymentsCommerceExtractedOrder_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _orderEmailsJSONArray];
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

    v8 = [[BMWalletPaymentsCommerceExtractedOrder alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[9] = 0;
    }
  }

  return v4;
}

@end