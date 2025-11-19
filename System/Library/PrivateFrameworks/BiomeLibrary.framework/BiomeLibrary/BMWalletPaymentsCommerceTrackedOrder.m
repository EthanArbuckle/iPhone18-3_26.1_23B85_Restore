@interface BMWalletPaymentsCommerceTrackedOrder
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMWalletPaymentsCommerceTrackedOrder)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMWalletPaymentsCommerceTrackedOrder)initWithOrderNumber:(id)a3 orderDate:(id)a4 merchant:(id)a5 shippingFulfillments:(id)a6 customer:(id)a7 payment:(id)a8 isTrackedInWallet:(id)a9 orderUpdateDate:(id)a10 trackedOrderIdentifier:(id)a11 orderStatus:(int)a12 earliestEmailDateSent:(id)a13 orderStatusUpdateDate:(id)a14;
- (BOOL)isEqual:(id)a3;
- (NSDate)earliestEmailDateSent;
- (NSDate)orderStatusUpdateDate;
- (NSDate)orderUpdateDate;
- (NSString)description;
- (id)_shippingFulfillmentsJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMWalletPaymentsCommerceTrackedOrder

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMWalletPaymentsCommerceTrackedOrder *)self orderNumber];
    v7 = [v5 orderNumber];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMWalletPaymentsCommerceTrackedOrder *)self orderNumber];
      v10 = [v5 orderNumber];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_43;
      }
    }

    v13 = [(BMWalletPaymentsCommerceTrackedOrder *)self orderDate];
    v14 = [v5 orderDate];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMWalletPaymentsCommerceTrackedOrder *)self orderDate];
      v17 = [v5 orderDate];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_43;
      }
    }

    v19 = [(BMWalletPaymentsCommerceTrackedOrder *)self merchant];
    v20 = [v5 merchant];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMWalletPaymentsCommerceTrackedOrder *)self merchant];
      v23 = [v5 merchant];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_43;
      }
    }

    v25 = [(BMWalletPaymentsCommerceTrackedOrder *)self shippingFulfillments];
    v26 = [v5 shippingFulfillments];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(BMWalletPaymentsCommerceTrackedOrder *)self shippingFulfillments];
      v29 = [v5 shippingFulfillments];
      v30 = [v28 isEqual:v29];

      if (!v30)
      {
        goto LABEL_43;
      }
    }

    v31 = [(BMWalletPaymentsCommerceTrackedOrder *)self customer];
    v32 = [v5 customer];
    v33 = v32;
    if (v31 == v32)
    {
    }

    else
    {
      v34 = [(BMWalletPaymentsCommerceTrackedOrder *)self customer];
      v35 = [v5 customer];
      v36 = [v34 isEqual:v35];

      if (!v36)
      {
        goto LABEL_43;
      }
    }

    v37 = [(BMWalletPaymentsCommerceTrackedOrder *)self payment];
    v38 = [v5 payment];
    v39 = v38;
    if (v37 == v38)
    {
    }

    else
    {
      v40 = [(BMWalletPaymentsCommerceTrackedOrder *)self payment];
      v41 = [v5 payment];
      v42 = [v40 isEqual:v41];

      if (!v42)
      {
        goto LABEL_43;
      }
    }

    if (-[BMWalletPaymentsCommerceTrackedOrder hasIsTrackedInWallet](self, "hasIsTrackedInWallet") || [v5 hasIsTrackedInWallet])
    {
      if (![(BMWalletPaymentsCommerceTrackedOrder *)self hasIsTrackedInWallet])
      {
        goto LABEL_43;
      }

      if (![v5 hasIsTrackedInWallet])
      {
        goto LABEL_43;
      }

      v43 = [(BMWalletPaymentsCommerceTrackedOrder *)self isTrackedInWallet];
      if (v43 != [v5 isTrackedInWallet])
      {
        goto LABEL_43;
      }
    }

    v44 = [(BMWalletPaymentsCommerceTrackedOrder *)self orderUpdateDate];
    v45 = [v5 orderUpdateDate];
    v46 = v45;
    if (v44 == v45)
    {
    }

    else
    {
      v47 = [(BMWalletPaymentsCommerceTrackedOrder *)self orderUpdateDate];
      v48 = [v5 orderUpdateDate];
      v49 = [v47 isEqual:v48];

      if (!v49)
      {
        goto LABEL_43;
      }
    }

    v50 = [(BMWalletPaymentsCommerceTrackedOrder *)self trackedOrderIdentifier];
    v51 = [v5 trackedOrderIdentifier];
    v52 = v51;
    if (v50 == v51)
    {
    }

    else
    {
      v53 = [(BMWalletPaymentsCommerceTrackedOrder *)self trackedOrderIdentifier];
      v54 = [v5 trackedOrderIdentifier];
      v55 = [v53 isEqual:v54];

      if (!v55)
      {
        goto LABEL_43;
      }
    }

    v56 = [(BMWalletPaymentsCommerceTrackedOrder *)self orderStatus];
    if (v56 == [v5 orderStatus])
    {
      v57 = [(BMWalletPaymentsCommerceTrackedOrder *)self earliestEmailDateSent];
      v58 = [v5 earliestEmailDateSent];
      v59 = v58;
      if (v57 == v58)
      {
      }

      else
      {
        v60 = [(BMWalletPaymentsCommerceTrackedOrder *)self earliestEmailDateSent];
        v61 = [v5 earliestEmailDateSent];
        v62 = [v60 isEqual:v61];

        if (!v62)
        {
          goto LABEL_43;
        }
      }

      v64 = [(BMWalletPaymentsCommerceTrackedOrder *)self orderStatusUpdateDate];
      v65 = [v5 orderStatusUpdateDate];
      if (v64 == v65)
      {
        v12 = 1;
      }

      else
      {
        v66 = [(BMWalletPaymentsCommerceTrackedOrder *)self orderStatusUpdateDate];
        v67 = [v5 orderStatusUpdateDate];
        v12 = [v66 isEqual:v67];
      }

      goto LABEL_44;
    }

LABEL_43:
    v12 = 0;
LABEL_44:

    goto LABEL_45;
  }

  v12 = 0;
LABEL_45:

  return v12;
}

- (NSDate)orderStatusUpdateDate
{
  if (self->_hasRaw_orderStatusUpdateDate)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_orderStatusUpdateDate];
    v4 = [v2 convertValue:v3 toType:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)earliestEmailDateSent
{
  if (self->_hasRaw_earliestEmailDateSent)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_earliestEmailDateSent];
    v4 = [v2 convertValue:v3 toType:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
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
  v52[12] = *MEMORY[0x1E69E9840];
  v3 = [(BMWalletPaymentsCommerceTrackedOrder *)self orderNumber];
  v4 = [(BMWalletPaymentsCommerceTrackedOrder *)self orderDate];
  v5 = [(BMWalletPaymentsCommerceTrackedOrder *)self merchant];
  v6 = [v5 jsonDictionary];

  v7 = [(BMWalletPaymentsCommerceTrackedOrder *)self _shippingFulfillmentsJSONArray];
  v8 = [(BMWalletPaymentsCommerceTrackedOrder *)self customer];
  v50 = [v8 jsonDictionary];

  v9 = [(BMWalletPaymentsCommerceTrackedOrder *)self payment];
  v49 = [v9 jsonDictionary];

  if ([(BMWalletPaymentsCommerceTrackedOrder *)self hasIsTrackedInWallet])
  {
    v48 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMWalletPaymentsCommerceTrackedOrder isTrackedInWallet](self, "isTrackedInWallet")}];
  }

  else
  {
    v48 = 0;
  }

  v10 = [(BMWalletPaymentsCommerceTrackedOrder *)self orderUpdateDate];
  if (v10)
  {
    v11 = MEMORY[0x1E696AD98];
    v12 = [(BMWalletPaymentsCommerceTrackedOrder *)self orderUpdateDate];
    [v12 timeIntervalSinceReferenceDate];
    v47 = [v11 numberWithDouble:?];
  }

  else
  {
    v47 = 0;
  }

  v46 = [(BMWalletPaymentsCommerceTrackedOrder *)self trackedOrderIdentifier];
  v45 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMWalletPaymentsCommerceTrackedOrder orderStatus](self, "orderStatus")}];
  v13 = [(BMWalletPaymentsCommerceTrackedOrder *)self earliestEmailDateSent];
  if (v13)
  {
    v14 = MEMORY[0x1E696AD98];
    v15 = [(BMWalletPaymentsCommerceTrackedOrder *)self earliestEmailDateSent];
    [v15 timeIntervalSinceReferenceDate];
    v44 = [v14 numberWithDouble:?];
  }

  else
  {
    v44 = 0;
  }

  v16 = [(BMWalletPaymentsCommerceTrackedOrder *)self orderStatusUpdateDate];
  if (v16)
  {
    v17 = MEMORY[0x1E696AD98];
    v18 = [(BMWalletPaymentsCommerceTrackedOrder *)self orderStatusUpdateDate];
    [v18 timeIntervalSinceReferenceDate];
    v19 = [v17 numberWithDouble:?];
  }

  else
  {
    v19 = 0;
  }

  v51[0] = @"orderNumber";
  v20 = v3;
  if (!v3)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v40 = v20;
  v52[0] = v20;
  v51[1] = @"orderDate";
  v21 = v4;
  if (!v4)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v39 = v21;
  v52[1] = v21;
  v51[2] = @"merchant";
  v22 = v6;
  if (!v6)
  {
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  v38 = v22;
  v52[2] = v22;
  v51[3] = @"shippingFulfillments";
  v23 = v7;
  if (!v7)
  {
    v23 = [MEMORY[0x1E695DFB0] null];
  }

  v37 = v23;
  v52[3] = v23;
  v51[4] = @"customer";
  v24 = v50;
  if (!v50)
  {
    v24 = [MEMORY[0x1E695DFB0] null];
  }

  v43 = v3;
  v52[4] = v24;
  v51[5] = @"payment";
  v25 = v49;
  if (!v49)
  {
    v25 = [MEMORY[0x1E695DFB0] null];
  }

  v42 = v4;
  v52[5] = v25;
  v51[6] = @"isTrackedInWallet";
  v26 = v48;
  if (!v48)
  {
    v26 = [MEMORY[0x1E695DFB0] null];
  }

  v41 = v6;
  v52[6] = v26;
  v51[7] = @"orderUpdateDate";
  v27 = v47;
  if (!v47)
  {
    v27 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = v7;
  v52[7] = v27;
  v51[8] = @"trackedOrderIdentifier";
  v29 = v46;
  if (!v46)
  {
    v29 = [MEMORY[0x1E695DFB0] null];
  }

  v36 = v24;
  v52[8] = v29;
  v51[9] = @"orderStatus";
  v30 = v45;
  if (!v45)
  {
    v30 = [MEMORY[0x1E695DFB0] null];
  }

  v52[9] = v30;
  v51[10] = @"earliestEmailDateSent";
  v31 = v44;
  if (!v44)
  {
    v31 = [MEMORY[0x1E695DFB0] null];
  }

  v52[10] = v31;
  v51[11] = @"orderStatusUpdateDate";
  v32 = v19;
  if (!v19)
  {
    v32 = [MEMORY[0x1E695DFB0] null];
  }

  v52[11] = v32;
  v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:v51 count:12];
  if (!v19)
  {
  }

  if (!v44)
  {
  }

  if (!v45)
  {
  }

  if (!v46)
  {
  }

  if (!v47)
  {
  }

  if (!v48)
  {
  }

  if (!v49)
  {
  }

  if (v50)
  {
    if (v28)
    {
      goto LABEL_53;
    }
  }

  else
  {

    if (v28)
    {
LABEL_53:
      if (v41)
      {
        goto LABEL_54;
      }

      goto LABEL_61;
    }
  }

  if (v41)
  {
LABEL_54:
    if (v42)
    {
      goto LABEL_55;
    }

LABEL_62:

    if (v43)
    {
      goto LABEL_56;
    }

    goto LABEL_63;
  }

LABEL_61:

  if (!v42)
  {
    goto LABEL_62;
  }

LABEL_55:
  if (v43)
  {
    goto LABEL_56;
  }

LABEL_63:

LABEL_56:
  v34 = *MEMORY[0x1E69E9840];

  return v33;
}

- (id)_shippingFulfillmentsJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BMWalletPaymentsCommerceTrackedOrder *)self shippingFulfillments];
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

- (BMWalletPaymentsCommerceTrackedOrder)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v213[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"orderNumber"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v22 = objc_alloc(MEMORY[0x1E696ABC0]);
        v23 = *MEMORY[0x1E698F240];
        v212 = *MEMORY[0x1E696A578];
        v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"orderNumber"];
        v213[0] = v10;
        v170 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v213 forKeys:&v212 count:1];
        v7 = 0;
        v20 = 0;
        *a4 = [v22 initWithDomain:v23 code:2 userInfo:?];
        goto LABEL_103;
      }

      v7 = 0;
      v20 = 0;
      goto LABEL_104;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = [v5 objectForKeyedSubscript:@"orderDate"];
  v170 = v8;
  if (v8 && (v9 = v8, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v24 = objc_alloc(MEMORY[0x1E696ABC0]);
        v25 = *MEMORY[0x1E698F240];
        v210 = *MEMORY[0x1E696A578];
        v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"orderDate"];
        v211 = v18;
        v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v211 forKeys:&v210 count:1];
        v10 = 0;
        v20 = 0;
        *a4 = [v24 initWithDomain:v25 code:2 userInfo:v21];
        goto LABEL_101;
      }

      v10 = 0;
      v20 = 0;
      goto LABEL_103;
    }

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = [v5 objectForKeyedSubscript:@"merchant"];
  v169 = v10;
  if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v26 = v11;
      if (a4)
      {
        v175 = objc_alloc(MEMORY[0x1E696ABC0]);
        v27 = *MEMORY[0x1E698F240];
        v208 = *MEMORY[0x1E696A578];
        v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"merchant"];
        v209 = v21;
        v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v209 forKeys:&v208 count:1];
        *a4 = [v175 initWithDomain:v27 code:2 userInfo:v28];

        v20 = 0;
        v18 = v26;
        goto LABEL_101;
      }

      v20 = 0;
      v18 = v26;
      goto LABEL_102;
    }

    v18 = v11;
    v184 = 0;
    v168 = [[BMWalletPaymentsCommerceTrackedOrderMerchant alloc] initWithJSONDictionary:v18 error:&v184];
    v19 = v184;
    if (v19)
    {
      if (a4)
      {
        v19 = v19;
        *a4 = v19;
      }

      v20 = 0;
      v21 = v168;
      goto LABEL_101;
    }

    v167 = v6;
  }

  else
  {
    v167 = v6;
    v168 = 0;
  }

  v12 = [v5 objectForKeyedSubscript:@"shippingFulfillments"];
  v13 = [MEMORY[0x1E695DFB0] null];
  v14 = [v12 isEqual:v13];

  v166 = v11;
  if (v14)
  {
    v15 = v12;
    v16 = a4;
    v160 = v5;
    v161 = v7;
  }

  else
  {
    if (v12)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (a4)
        {
          v47 = objc_alloc(MEMORY[0x1E696ABC0]);
          v48 = *MEMORY[0x1E698F240];
          v206 = *MEMORY[0x1E696A578];
          v176 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"shippingFulfillments"];
          v207 = v176;
          v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v207 forKeys:&v206 count:1];
          v20 = 0;
          *a4 = [v47 initWithDomain:v48 code:2 userInfo:v38];
          goto LABEL_58;
        }

        v20 = 0;
        v21 = v168;
        goto LABEL_100;
      }

      v17 = v12;
      v16 = a4;
      v160 = v5;
      v161 = v7;
      goto LABEL_32;
    }

    v16 = a4;
    v160 = v5;
    v161 = v7;
  }

  v17 = 0;
LABEL_32:
  v176 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v17, "count")}];
  v180 = 0u;
  v181 = 0u;
  v182 = 0u;
  v183 = 0u;
  obj = v17;
  v29 = [obj countByEnumeratingWithState:&v180 objects:v205 count:16];
  if (!v29)
  {
    goto LABEL_42;
  }

  v30 = v29;
  v31 = *v181;
  while (2)
  {
    for (i = 0; i != v30; ++i)
    {
      if (*v181 != v31)
      {
        objc_enumerationMutation(obj);
      }

      v33 = *(*(&v180 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (v16)
        {
          v40 = objc_alloc(MEMORY[0x1E696ABC0]);
          v41 = *MEMORY[0x1E698F240];
          v203 = *MEMORY[0x1E696A578];
          v34 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"shippingFulfillments"];
          v204 = v34;
          v42 = MEMORY[0x1E695DF20];
          v43 = &v204;
          v44 = &v203;
LABEL_49:
          v45 = [v42 dictionaryWithObjects:v43 forKeys:v44 count:1];
          v20 = 0;
          *v16 = [v40 initWithDomain:v41 code:2 userInfo:v45];
          v12 = obj;
          v38 = obj;
          v5 = v160;
          v7 = v161;
          goto LABEL_50;
        }

LABEL_56:
        v20 = 0;
        v12 = obj;
        v38 = obj;
        v5 = v160;
        v7 = v161;
        goto LABEL_57;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (v16)
        {
          v40 = objc_alloc(MEMORY[0x1E696ABC0]);
          v41 = *MEMORY[0x1E698F240];
          v201 = *MEMORY[0x1E696A578];
          v34 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"shippingFulfillments"];
          v202 = v34;
          v42 = MEMORY[0x1E695DF20];
          v43 = &v202;
          v44 = &v201;
          goto LABEL_49;
        }

        goto LABEL_56;
      }

      v34 = v33;
      v35 = [BMWalletPaymentsCommerceTrackedOrderShippingFulfillment alloc];
      v179 = 0;
      v36 = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)v35 initWithJSONDictionary:v34 error:&v179];
      v37 = v179;
      if (v37)
      {
        v45 = v37;
        v7 = v161;
        v21 = v168;
        v10 = v169;
        if (v16)
        {
          v46 = v37;
          *v16 = v45;
        }

        v20 = 0;
        v12 = obj;
        v38 = obj;
        v5 = v160;
LABEL_98:

        goto LABEL_99;
      }

      [v176 addObject:v36];
    }

    v30 = [obj countByEnumeratingWithState:&v180 objects:v205 count:16];
    v10 = v169;
    if (v30)
    {
      continue;
    }

    break;
  }

LABEL_42:

  v5 = v160;
  v38 = [v160 objectForKeyedSubscript:@"customer"];
  if (!v38)
  {
    v34 = 0;
    v7 = v161;
    v39 = v16;
    goto LABEL_60;
  }

  objc_opt_class();
  v7 = v161;
  v39 = v16;
  if (objc_opt_isKindOfClass())
  {
    v34 = 0;
    goto LABEL_60;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v45 = v38;
    v178 = 0;
    v34 = [[BMWalletPaymentsCommerceTrackedOrderCustomer alloc] initWithJSONDictionary:v45 error:&v178];
    v49 = v178;
    v12 = obj;
    if (v49)
    {
      v21 = v168;
      v10 = v169;
      if (v39)
      {
        v49 = v49;
        *v39 = v49;
      }

      v20 = 0;
      v38 = v45;
      goto LABEL_98;
    }

    v10 = v169;
LABEL_60:
    v45 = [v160 objectForKeyedSubscript:@"payment"];
    if (!v45)
    {
      v159 = 0;
      v12 = obj;
      goto LABEL_71;
    }

    objc_opt_class();
    v12 = obj;
    if (objc_opt_isKindOfClass())
    {
      v159 = 0;
LABEL_71:
      v50 = [v160 objectForKeyedSubscript:@"isTrackedInWallet"];
      v155 = v50;
      v149 = v39;
      if (v50 && (v51 = v50, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v158 = v51;
          goto LABEL_74;
        }

        if (!v39)
        {
          v158 = 0;
          v20 = 0;
          v21 = v168;
          v64 = v155;
          goto LABEL_96;
        }

        v104 = objc_alloc(MEMORY[0x1E696ABC0]);
        v105 = v7;
        v64 = v155;
        v106 = *MEMORY[0x1E698F240];
        v195 = *MEMORY[0x1E696A578];
        v107 = v38;
        v108 = objc_alloc(MEMORY[0x1E696AEC0]);
        v142 = objc_opt_class();
        v109 = v108;
        v38 = v107;
        v157 = [v109 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v142, @"isTrackedInWallet"];
        v196 = v157;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:&v196 forKeys:&v195 count:1];
        v7 = v105;
        v152 = v10 = v169;
        v110 = [v104 initWithDomain:v106 code:2 userInfo:?];
        v158 = 0;
        v20 = 0;
        v149->super.super.isa = v110;
      }

      else
      {
        v158 = 0;
LABEL_74:
        v52 = [v160 objectForKeyedSubscript:@"orderUpdateDate"];
        v152 = v52;
        if (!v52 || (v53 = v52, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v157 = 0;
LABEL_77:
          v54 = [v160 objectForKeyedSubscript:@"trackedOrderIdentifier"];
          v151 = v54;
          if (v54 && (v55 = v54, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v156 = v55;
              v10 = v169;
              goto LABEL_80;
            }

            if (v149)
            {
              v164 = objc_alloc(MEMORY[0x1E696ABC0]);
              v113 = *MEMORY[0x1E698F240];
              v191 = *MEMORY[0x1E696A578];
              v114 = v38;
              v115 = objc_alloc(MEMORY[0x1E696AEC0]);
              v143 = objc_opt_class();
              v116 = v115;
              v38 = v114;
              v154 = [v116 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v143, @"trackedOrderIdentifier"];
              v192 = v154;
              v117 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v192 forKeys:&v191 count:1];
              v118 = v113;
              v64 = v155;
              v150 = v117;
              v156 = 0;
              v20 = 0;
              v149->super.super.isa = [v164 initWithDomain:v118 code:2 userInfo:?];
              v12 = obj;
              v21 = v168;
              v10 = v169;
              goto LABEL_93;
            }

            v156 = 0;
            v20 = 0;
            v21 = v168;
            v10 = v169;
            v64 = v155;
          }

          else
          {
            v156 = 0;
LABEL_80:
            v56 = [v160 objectForKeyedSubscript:@"orderStatus"];
            v150 = v56;
            if (v56 && (v57 = v56, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v154 = v57;
                v10 = v169;
                goto LABEL_83;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v154 = [MEMORY[0x1E696AD98] numberWithInt:BMWalletPaymentsCommerceTrackedOrderOrderStatusFromString(v57)];
                v10 = v169;
                goto LABEL_83;
              }

              if (v149)
              {
                obja = objc_alloc(MEMORY[0x1E696ABC0]);
                v123 = *MEMORY[0x1E698F240];
                v189 = *MEMORY[0x1E696A578];
                v153 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"orderStatus"];
                v190 = v153;
                v124 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v190 forKeys:&v189 count:1];
                v125 = v123;
                v64 = v155;
                v148 = v124;
                v154 = 0;
                v20 = 0;
                v149->super.super.isa = [obja initWithDomain:v125 code:2 userInfo:?];
                v21 = v168;
                v10 = v169;
                goto LABEL_92;
              }

              v154 = 0;
              v20 = 0;
              v21 = v168;
              v10 = v169;
              v64 = v155;
            }

            else
            {
              v154 = 0;
LABEL_83:
              v58 = [v160 objectForKeyedSubscript:@"earliestEmailDateSent"];
              v148 = v58;
              if (!v58 || (v59 = v58, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v153 = 0;
LABEL_86:
                v60 = [v160 objectForKeyedSubscript:@"orderStatusUpdateDate"];
                v162 = v60;
                if (!v60 || (v61 = v60, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v62 = v7;
                  v63 = 0;
                  goto LABEL_89;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v96 = v61;
                  v62 = v7;
                  v97 = v38;
                  v98 = MEMORY[0x1E695DF00];
                  v99 = v96;
                  v100 = [v98 alloc];
                  [v99 doubleValue];
                  v102 = v101;

                  v103 = v100;
                  v38 = v97;
                  v63 = [v103 initWithTimeIntervalSinceReferenceDate:v102];
                  goto LABEL_89;
                }

                v147 = v38;
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v121 = v61;
                  v62 = v7;
                  v122 = objc_alloc_init(MEMORY[0x1E696AC80]);
                  v63 = [v122 dateFromString:v121];

LABEL_158:
                  v10 = v169;
                  v38 = v147;
LABEL_89:
                  LODWORD(v145) = [v154 intValue];
                  v20 = [(BMWalletPaymentsCommerceTrackedOrder *)self initWithOrderNumber:v62 orderDate:v10 merchant:v168 shippingFulfillments:v176 customer:v34 payment:v159 isTrackedInWallet:v158 orderUpdateDate:v157 trackedOrderIdentifier:v156 orderStatus:v145 earliestEmailDateSent:v153 orderStatusUpdateDate:v63];
                  self = v20;
                }

                else
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v126 = v61;
                    v62 = v7;
                    v63 = v126;
                    goto LABEL_158;
                  }

                  v62 = v7;
                  if (v149)
                  {
                    v137 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v138 = *MEMORY[0x1E698F240];
                    v185 = *MEMORY[0x1E696A578];
                    v139 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"orderStatusUpdateDate"];
                    v186 = v139;
                    v140 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v186 forKeys:&v185 count:1];
                    v149->super.super.isa = [v137 initWithDomain:v138 code:2 userInfo:v140];
                    v12 = obj;
                  }

                  v63 = 0;
                  v20 = 0;
                  v10 = v169;
                  v38 = v147;
                }

LABEL_90:

                v7 = v62;
                goto LABEL_91;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v146 = v38;
                v90 = MEMORY[0x1E695DF00];
                v91 = v59;
                v92 = [v90 alloc];
                [v91 doubleValue];
                v94 = v93;

                v95 = v92;
                v38 = v146;
                v153 = [v95 initWithTimeIntervalSinceReferenceDate:v94];
                goto LABEL_86;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v119 = v38;
                v120 = objc_alloc_init(MEMORY[0x1E696AC80]);
                v153 = [v120 dateFromString:v59];

                v38 = v119;
LABEL_154:
                v10 = v169;
                goto LABEL_86;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v153 = v59;
                goto LABEL_154;
              }

              if (v149)
              {
                v62 = v7;
                objb = objc_alloc(MEMORY[0x1E696ABC0]);
                v133 = v38;
                v134 = *MEMORY[0x1E698F240];
                v187 = *MEMORY[0x1E696A578];
                v63 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"earliestEmailDateSent"];
                v188 = v63;
                v135 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v188 forKeys:&v187 count:1];
                v136 = v134;
                v38 = v133;
                v162 = v135;
                v153 = 0;
                v20 = 0;
                v149->super.super.isa = [objb initWithDomain:v136 code:2 userInfo:?];
                v10 = v169;
                goto LABEL_90;
              }

              v153 = 0;
              v20 = 0;
              v10 = v169;
LABEL_91:
              v21 = v168;
              v64 = v155;
LABEL_92:
            }

LABEL_93:
          }

LABEL_94:

LABEL_95:
LABEL_96:

          v65 = v158;
LABEL_97:

          goto LABEL_98;
        }

        objc_opt_class();
        v64 = v155;
        if (objc_opt_isKindOfClass())
        {
          v75 = v38;
          v76 = MEMORY[0x1E695DF00];
          v77 = v53;
          v78 = [v76 alloc];
          [v77 doubleValue];
          v80 = v79;

          v81 = v78;
          v38 = v75;
          v157 = [v81 initWithTimeIntervalSinceReferenceDate:v80];
          goto LABEL_77;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v111 = v38;
          v112 = objc_alloc_init(MEMORY[0x1E696AC80]);
          v157 = [v112 dateFromString:v53];

          v38 = v111;
LABEL_148:
          v10 = v169;
          goto LABEL_77;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v157 = v53;
          goto LABEL_148;
        }

        v20 = v149;
        if (v149)
        {
          v165 = objc_alloc(MEMORY[0x1E696ABC0]);
          v127 = *MEMORY[0x1E698F240];
          v193 = *MEMORY[0x1E696A578];
          v128 = v38;
          v129 = objc_alloc(MEMORY[0x1E696AEC0]);
          v144 = objc_opt_class();
          v130 = v129;
          v38 = v128;
          v156 = [v130 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", v144, @"orderUpdateDate"];
          v194 = v156;
          v131 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v194 forKeys:&v193 count:1];
          v132 = v127;
          v64 = v155;
          v151 = v131;
          v157 = 0;
          v20 = 0;
          v149->super.super.isa = [v165 initWithDomain:v132 code:2 userInfo:?];
          v12 = obj;
          v21 = v168;
          v10 = v169;
          goto LABEL_94;
        }

        v157 = 0;
        v10 = v169;
      }

      v21 = v168;
      goto LABEL_95;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v68 = v39;
      v65 = v45;
      v177 = 0;
      v159 = [[BMWalletPaymentsCommerceTrackedOrderPayment alloc] initWithJSONDictionary:v65 error:&v177];
      v69 = v177;
      if (!v69)
      {

        v10 = v169;
        v39 = v68;
        goto LABEL_71;
      }

      v21 = v168;
      v10 = v169;
      if (v68)
      {
        v69 = v69;
        *v68 = v69;
      }

      v20 = 0;
      goto LABEL_97;
    }

    if (v39)
    {
      v163 = objc_alloc(MEMORY[0x1E696ABC0]);
      v82 = v7;
      v83 = v39;
      v84 = *MEMORY[0x1E698F240];
      v197 = *MEMORY[0x1E696A578];
      v85 = v38;
      v86 = objc_alloc(MEMORY[0x1E696AEC0]);
      v141 = objc_opt_class();
      v87 = v86;
      v38 = v85;
      v159 = [v87 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v141, @"payment"];
      v198 = v159;
      v88 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v198 forKeys:&v197 count:1];
      v89 = v84;
      v65 = v88;
      v7 = v82;
      v20 = 0;
      *v83 = [v163 initWithDomain:v89 code:2 userInfo:v88];
      v12 = obj;
      v21 = v168;
      v10 = v169;
      goto LABEL_97;
    }

    v20 = 0;
LABEL_50:
    v21 = v168;
    v10 = v169;
    goto LABEL_98;
  }

  v12 = obj;
  if (v39)
  {
    v70 = v38;
    v71 = objc_alloc(MEMORY[0x1E696ABC0]);
    v72 = *MEMORY[0x1E698F240];
    v199 = *MEMORY[0x1E696A578];
    v34 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"customer"];
    v200 = v34;
    v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v200 forKeys:&v199 count:1];
    v73 = v71;
    v38 = v70;
    v74 = [v73 initWithDomain:v72 code:2 userInfo:v45];
    v20 = 0;
    *v39 = v74;
    goto LABEL_50;
  }

  v20 = 0;
LABEL_57:
  v10 = v169;
LABEL_58:
  v21 = v168;
LABEL_99:

LABEL_100:
  v18 = v166;
  v6 = v167;
LABEL_101:

LABEL_102:
LABEL_103:

LABEL_104:
  v66 = *MEMORY[0x1E69E9840];
  return v20;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMWalletPaymentsCommerceTrackedOrder *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_orderNumber)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_orderDate)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_merchant)
  {
    v21 = 0;
    PBDataWriterPlaceMark();
    [(BMWalletPaymentsCommerceTrackedOrderMerchant *)self->_merchant writeTo:v4];
    PBDataWriterRecallMark();
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_shippingFulfillments;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      v9 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * v9);
        v21 = 0;
        PBDataWriterPlaceMark();
        [v10 writeTo:{v4, v17}];
        PBDataWriterRecallMark();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v7);
  }

  if (self->_customer)
  {
    v21 = 0;
    PBDataWriterPlaceMark();
    [(BMWalletPaymentsCommerceTrackedOrderCustomer *)self->_customer writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_payment)
  {
    v21 = 0;
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

  orderStatus = self->_orderStatus;
  PBDataWriterWriteUint32Field();
  if (self->_hasRaw_earliestEmailDateSent)
  {
    raw_earliestEmailDateSent = self->_raw_earliestEmailDateSent;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasRaw_orderStatusUpdateDate)
  {
    raw_orderStatusUpdateDate = self->_raw_orderStatusUpdateDate;
    PBDataWriterWriteDoubleField();
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v56.receiver = self;
  v56.super_class = BMWalletPaymentsCommerceTrackedOrder;
  v5 = [(BMEventBase *)&v56 init];
  if (!v5)
  {
    goto LABEL_95;
  }

  v6 = objc_opt_new();
  v7 = [v4 position];
  if (v7 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_93;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v57) = 0;
        v11 = [v4 position] + 1;
        if (v11 >= [v4 position] && (v12 = objc_msgSend(v4, "position") + 1, v12 <= objc_msgSend(v4, "length")))
        {
          v13 = [v4 data];
          [v13 getBytes:&v57 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v10 |= (v57 & 0x7F) << v8;
        if ((v57 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        v14 = v9++ >= 9;
        if (v14)
        {
          v15 = 0;
          goto LABEL_16;
        }
      }

      v15 = [v4 hasError] ? 0 : v10;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v15 & 7) == 4)
      {
        goto LABEL_93;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) > 6)
      {
        if (v16 > 9)
        {
          switch(v16)
          {
            case 0xC:
              v5->_hasRaw_orderStatusUpdateDate = 1;
              v57 = 0;
              v37 = [v4 position] + 8;
              if (v37 >= [v4 position] && (v38 = objc_msgSend(v4, "position") + 8, v38 <= objc_msgSend(v4, "length")))
              {
                v45 = [v4 data];
                [v45 getBytes:&v57 range:{objc_msgSend(v4, "position"), 8}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
              }

              else
              {
                [v4 _setError];
              }

              v46 = v57;
              v47 = 56;
              goto LABEL_91;
            case 0xB:
              v5->_hasRaw_earliestEmailDateSent = 1;
              v57 = 0;
              v43 = [v4 position] + 8;
              if (v43 >= [v4 position] && (v44 = objc_msgSend(v4, "position") + 8, v44 <= objc_msgSend(v4, "length")))
              {
                v49 = [v4 data];
                [v49 getBytes:&v57 range:{objc_msgSend(v4, "position"), 8}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
              }

              else
              {
                [v4 _setError];
              }

              v46 = v57;
              v47 = 40;
              goto LABEL_91;
            case 0xA:
              v21 = 0;
              v22 = 0;
              v23 = 0;
              while (1)
              {
                LOBYTE(v57) = 0;
                v24 = [v4 position] + 1;
                if (v24 >= [v4 position] && (v25 = objc_msgSend(v4, "position") + 1, v25 <= objc_msgSend(v4, "length")))
                {
                  v26 = [v4 data];
                  [v26 getBytes:&v57 range:{objc_msgSend(v4, "position"), 1}];

                  [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
                }

                else
                {
                  [v4 _setError];
                }

                v23 |= (v57 & 0x7F) << v21;
                if ((v57 & 0x80) == 0)
                {
                  break;
                }

                v21 += 7;
                if (v22++ > 8)
                {
                  goto LABEL_81;
                }
              }

              if (([v4 hasError] & 1) != 0 || v23 > 4)
              {
LABEL_81:
                LODWORD(v23) = 0;
              }

              v5->_orderStatus = v23;
              goto LABEL_92;
          }
        }

        else
        {
          switch(v16)
          {
            case 7:
              v28 = 0;
              v29 = 0;
              v30 = 0;
              v5->_hasIsTrackedInWallet = 1;
              while (1)
              {
                LOBYTE(v57) = 0;
                v31 = [v4 position] + 1;
                if (v31 >= [v4 position] && (v32 = objc_msgSend(v4, "position") + 1, v32 <= objc_msgSend(v4, "length")))
                {
                  v33 = [v4 data];
                  [v33 getBytes:&v57 range:{objc_msgSend(v4, "position"), 1}];

                  [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
                }

                else
                {
                  [v4 _setError];
                }

                v30 |= (v57 & 0x7F) << v28;
                if ((v57 & 0x80) == 0)
                {
                  break;
                }

                v28 += 7;
                v14 = v29++ >= 9;
                if (v14)
                {
                  LOBYTE(v34) = 0;
                  goto LABEL_84;
                }
              }

              v34 = (v30 != 0) & ~[v4 hasError];
LABEL_84:
              v5->_isTrackedInWallet = v34;
              goto LABEL_92;
            case 8:
              v5->_hasRaw_orderUpdateDate = 1;
              v57 = 0;
              v40 = [v4 position] + 8;
              if (v40 >= [v4 position] && (v41 = objc_msgSend(v4, "position") + 8, v41 <= objc_msgSend(v4, "length")))
              {
                v48 = [v4 data];
                [v48 getBytes:&v57 range:{objc_msgSend(v4, "position"), 8}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
              }

              else
              {
                [v4 _setError];
              }

              v46 = v57;
              v47 = 24;
LABEL_91:
              *(&v5->super.super.isa + v47) = v46;
              goto LABEL_92;
            case 9:
              v19 = PBReaderReadString();
              v20 = 128;
LABEL_66:
              v39 = *(&v5->super.super.isa + v20);
              *(&v5->super.super.isa + v20) = v19;

              goto LABEL_92;
          }
        }

        goto LABEL_77;
      }

      if (v16 <= 3)
      {
        break;
      }

      if (v16 != 4)
      {
        if (v16 == 5)
        {
          v57 = 0;
          v58 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_97;
          }

          v17 = [[BMWalletPaymentsCommerceTrackedOrderCustomer alloc] initByReadFrom:v4];
          if (!v17)
          {
            goto LABEL_97;
          }

          v18 = 112;
          goto LABEL_73;
        }

        if (v16 == 6)
        {
          v57 = 0;
          v58 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_97;
          }

          v17 = [[BMWalletPaymentsCommerceTrackedOrderPayment alloc] initByReadFrom:v4];
          if (!v17)
          {
            goto LABEL_97;
          }

          v18 = 120;
          goto LABEL_73;
        }

LABEL_77:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_97;
        }

        goto LABEL_92;
      }

      v57 = 0;
      v58 = 0;
      if (!PBReaderPlaceMark() || (v35 = [[BMWalletPaymentsCommerceTrackedOrderShippingFulfillment alloc] initByReadFrom:v4]) == 0)
      {
LABEL_97:

        goto LABEL_94;
      }

      v36 = v35;
      [v6 addObject:v35];
      PBReaderRecallMark();

LABEL_92:
      v50 = [v4 position];
      if (v50 >= [v4 length])
      {
        goto LABEL_93;
      }
    }

    switch(v16)
    {
      case 1:
        v19 = PBReaderReadString();
        v20 = 80;
        goto LABEL_66;
      case 2:
        v19 = PBReaderReadString();
        v20 = 88;
        goto LABEL_66;
      case 3:
        v57 = 0;
        v58 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_97;
        }

        v17 = [[BMWalletPaymentsCommerceTrackedOrderMerchant alloc] initByReadFrom:v4];
        if (!v17)
        {
          goto LABEL_97;
        }

        v18 = 96;
LABEL_73:
        v42 = *(&v5->super.super.isa + v18);
        *(&v5->super.super.isa + v18) = v17;

        PBReaderRecallMark();
        goto LABEL_92;
    }

    goto LABEL_77;
  }

LABEL_93:
  v51 = [v6 copy];
  shippingFulfillments = v5->_shippingFulfillments;
  v5->_shippingFulfillments = v51;

  v53 = [v4 hasError];
  if (v53)
  {
LABEL_94:
    v54 = 0;
  }

  else
  {
LABEL_95:
    v54 = v5;
  }

  return v54;
}

- (NSString)description
{
  v14 = objc_alloc(MEMORY[0x1E696AEC0]);
  v17 = [(BMWalletPaymentsCommerceTrackedOrder *)self orderNumber];
  v16 = [(BMWalletPaymentsCommerceTrackedOrder *)self orderDate];
  v3 = [(BMWalletPaymentsCommerceTrackedOrder *)self merchant];
  v4 = [(BMWalletPaymentsCommerceTrackedOrder *)self shippingFulfillments];
  v5 = [(BMWalletPaymentsCommerceTrackedOrder *)self customer];
  v6 = [(BMWalletPaymentsCommerceTrackedOrder *)self payment];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMWalletPaymentsCommerceTrackedOrder isTrackedInWallet](self, "isTrackedInWallet")}];
  v8 = [(BMWalletPaymentsCommerceTrackedOrder *)self orderUpdateDate];
  v9 = [(BMWalletPaymentsCommerceTrackedOrder *)self trackedOrderIdentifier];
  v10 = BMWalletPaymentsCommerceTrackedOrderOrderStatusAsString([(BMWalletPaymentsCommerceTrackedOrder *)self orderStatus]);
  v11 = [(BMWalletPaymentsCommerceTrackedOrder *)self earliestEmailDateSent];
  v12 = [(BMWalletPaymentsCommerceTrackedOrder *)self orderStatusUpdateDate];
  v15 = [v14 initWithFormat:@"BMWalletPaymentsCommerceTrackedOrder with orderNumber: %@, orderDate: %@, merchant: %@, shippingFulfillments: %@, customer: %@, payment: %@, isTrackedInWallet: %@, orderUpdateDate: %@, trackedOrderIdentifier: %@, orderStatus: %@, earliestEmailDateSent: %@, orderStatusUpdateDate: %@", v17, v16, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12];

  return v15;
}

- (BMWalletPaymentsCommerceTrackedOrder)initWithOrderNumber:(id)a3 orderDate:(id)a4 merchant:(id)a5 shippingFulfillments:(id)a6 customer:(id)a7 payment:(id)a8 isTrackedInWallet:(id)a9 orderUpdateDate:(id)a10 trackedOrderIdentifier:(id)a11 orderStatus:(int)a12 earliestEmailDateSent:(id)a13 orderStatusUpdateDate:(id)a14
{
  v37 = a3;
  v29 = a4;
  v36 = a4;
  v35 = a5;
  v34 = a6;
  v33 = a7;
  v32 = a8;
  v19 = a9;
  v20 = a10;
  v31 = a11;
  v21 = a13;
  v22 = a14;
  v38.receiver = self;
  v38.super_class = BMWalletPaymentsCommerceTrackedOrder;
  v23 = [(BMEventBase *)&v38 init];
  if (v23)
  {
    v23->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v23->_orderNumber, a3);
    objc_storeStrong(&v23->_orderDate, v29);
    objc_storeStrong(&v23->_merchant, a5);
    objc_storeStrong(&v23->_shippingFulfillments, a6);
    objc_storeStrong(&v23->_customer, a7);
    objc_storeStrong(&v23->_payment, a8);
    if (v19)
    {
      v23->_hasIsTrackedInWallet = 1;
      v23->_isTrackedInWallet = [v19 BOOLValue];
    }

    else
    {
      v23->_hasIsTrackedInWallet = 0;
      v23->_isTrackedInWallet = 0;
    }

    if (v20)
    {
      v23->_hasRaw_orderUpdateDate = 1;
      [v20 timeIntervalSinceReferenceDate];
    }

    else
    {
      v23->_hasRaw_orderUpdateDate = 0;
      v24 = -1.0;
    }

    v23->_raw_orderUpdateDate = v24;
    objc_storeStrong(&v23->_trackedOrderIdentifier, a11);
    v23->_orderStatus = a12;
    if (v21)
    {
      v23->_hasRaw_earliestEmailDateSent = 1;
      [v21 timeIntervalSinceReferenceDate];
    }

    else
    {
      v23->_hasRaw_earliestEmailDateSent = 0;
      v25 = -1.0;
    }

    v23->_raw_earliestEmailDateSent = v25;
    if (v22)
    {
      v23->_hasRaw_orderStatusUpdateDate = 1;
      [v22 timeIntervalSinceReferenceDate];
    }

    else
    {
      v23->_hasRaw_orderStatusUpdateDate = 0;
      v26 = -1.0;
    }

    v23->_raw_orderStatusUpdateDate = v26;
  }

  return v23;
}

+ (id)protoFields
{
  v17[12] = *MEMORY[0x1E69E9840];
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"orderNumber" number:1 type:13 subMessageClass:0];
  v17[0] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"orderDate" number:2 type:13 subMessageClass:0];
  v17[1] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"merchant" number:3 type:14 subMessageClass:objc_opt_class()];
  v17[2] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shippingFulfillments" number:4 type:14 subMessageClass:objc_opt_class()];
  v17[3] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"customer" number:5 type:14 subMessageClass:objc_opt_class()];
  v17[4] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"payment" number:6 type:14 subMessageClass:objc_opt_class()];
  v17[5] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isTrackedInWallet" number:7 type:12 subMessageClass:0];
  v17[6] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"orderUpdateDate" number:8 type:0 subMessageClass:0];
  v17[7] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"trackedOrderIdentifier" number:9 type:13 subMessageClass:0];
  v17[8] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"orderStatus" number:10 type:4 subMessageClass:0];
  v17[9] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"earliestEmailDateSent" number:11 type:0 subMessageClass:0];
  v17[10] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"orderStatusUpdateDate" number:12 type:0 subMessageClass:0];
  v17[11] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:12];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)columns
{
  v17[12] = *MEMORY[0x1E69E9840];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"orderNumber" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"orderDate" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"merchant_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_678];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"shippingFulfillments_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_680];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"customer_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_682];
  v5 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"payment_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_684];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isTrackedInWallet" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:12 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"orderUpdateDate" dataType:3 requestOnly:0 fieldNumber:8 protoDataType:0 convertedType:1];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"trackedOrderIdentifier" dataType:2 requestOnly:0 fieldNumber:9 protoDataType:13 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"orderStatus" dataType:0 requestOnly:0 fieldNumber:10 protoDataType:4 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"earliestEmailDateSent" dataType:3 requestOnly:0 fieldNumber:11 protoDataType:0 convertedType:1];
  v10 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"orderStatusUpdateDate" dataType:3 requestOnly:0 fieldNumber:12 protoDataType:0 convertedType:1];
  v17[0] = v16;
  v17[1] = v15;
  v17[2] = v2;
  v17[3] = v3;
  v17[4] = v4;
  v17[5] = v5;
  v17[6] = v6;
  v17[7] = v7;
  v17[8] = v8;
  v17[9] = v14;
  v17[10] = v9;
  v17[11] = v10;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:12];

  v11 = *MEMORY[0x1E69E9840];

  return v13;
}

id __47__BMWalletPaymentsCommerceTrackedOrder_columns__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 payment];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __47__BMWalletPaymentsCommerceTrackedOrder_columns__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 customer];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __47__BMWalletPaymentsCommerceTrackedOrder_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _shippingFulfillmentsJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __47__BMWalletPaymentsCommerceTrackedOrder_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 merchant];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
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

    v8 = [[BMWalletPaymentsCommerceTrackedOrder alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[17] = 0;
    }
  }

  return v4;
}

@end