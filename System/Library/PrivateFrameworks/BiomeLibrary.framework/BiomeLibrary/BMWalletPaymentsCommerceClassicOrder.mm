@interface BMWalletPaymentsCommerceClassicOrder
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMWalletPaymentsCommerceClassicOrder)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMWalletPaymentsCommerceClassicOrder)initWithOrderTypeIdentifier:(id)a3 orderIdentifier:(id)a4 orderNumber:(id)a5 orderDate:(id)a6 merchant:(id)a7 shippingFulfillments:(id)a8 customer:(id)a9 payment:(id)a10;
- (BOOL)isEqual:(id)a3;
- (NSDate)orderDate;
- (NSString)description;
- (id)_shippingFulfillmentsJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMWalletPaymentsCommerceClassicOrder

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMWalletPaymentsCommerceClassicOrder *)self orderTypeIdentifier];
    v7 = [v5 orderTypeIdentifier];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMWalletPaymentsCommerceClassicOrder *)self orderTypeIdentifier];
      v10 = [v5 orderTypeIdentifier];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_29;
      }
    }

    v13 = [(BMWalletPaymentsCommerceClassicOrder *)self orderIdentifier];
    v14 = [v5 orderIdentifier];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMWalletPaymentsCommerceClassicOrder *)self orderIdentifier];
      v17 = [v5 orderIdentifier];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_29;
      }
    }

    v19 = [(BMWalletPaymentsCommerceClassicOrder *)self orderNumber];
    v20 = [v5 orderNumber];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMWalletPaymentsCommerceClassicOrder *)self orderNumber];
      v23 = [v5 orderNumber];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_29;
      }
    }

    v25 = [(BMWalletPaymentsCommerceClassicOrder *)self orderDate];
    v26 = [v5 orderDate];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(BMWalletPaymentsCommerceClassicOrder *)self orderDate];
      v29 = [v5 orderDate];
      v30 = [v28 isEqual:v29];

      if (!v30)
      {
        goto LABEL_29;
      }
    }

    v31 = [(BMWalletPaymentsCommerceClassicOrder *)self merchant];
    v32 = [v5 merchant];
    v33 = v32;
    if (v31 == v32)
    {
    }

    else
    {
      v34 = [(BMWalletPaymentsCommerceClassicOrder *)self merchant];
      v35 = [v5 merchant];
      v36 = [v34 isEqual:v35];

      if (!v36)
      {
        goto LABEL_29;
      }
    }

    v37 = [(BMWalletPaymentsCommerceClassicOrder *)self shippingFulfillments];
    v38 = [v5 shippingFulfillments];
    v39 = v38;
    if (v37 == v38)
    {
    }

    else
    {
      v40 = [(BMWalletPaymentsCommerceClassicOrder *)self shippingFulfillments];
      v41 = [v5 shippingFulfillments];
      v42 = [v40 isEqual:v41];

      if (!v42)
      {
        goto LABEL_29;
      }
    }

    v43 = [(BMWalletPaymentsCommerceClassicOrder *)self customer];
    v44 = [v5 customer];
    v45 = v44;
    if (v43 == v44)
    {
    }

    else
    {
      v46 = [(BMWalletPaymentsCommerceClassicOrder *)self customer];
      v47 = [v5 customer];
      v48 = [v46 isEqual:v47];

      if (!v48)
      {
LABEL_29:
        v12 = 0;
LABEL_30:

        goto LABEL_31;
      }
    }

    v50 = [(BMWalletPaymentsCommerceClassicOrder *)self payment];
    v51 = [v5 payment];
    if (v50 == v51)
    {
      v12 = 1;
    }

    else
    {
      v52 = [(BMWalletPaymentsCommerceClassicOrder *)self payment];
      v53 = [v5 payment];
      v12 = [v52 isEqual:v53];
    }

    goto LABEL_30;
  }

  v12 = 0;
LABEL_31:

  return v12;
}

- (NSDate)orderDate
{
  if (self->_hasRaw_orderDate)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_orderDate];
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
  v36[8] = *MEMORY[0x1E69E9840];
  v3 = [(BMWalletPaymentsCommerceClassicOrder *)self orderTypeIdentifier];
  v4 = [(BMWalletPaymentsCommerceClassicOrder *)self orderIdentifier];
  v5 = [(BMWalletPaymentsCommerceClassicOrder *)self orderNumber];
  v6 = [(BMWalletPaymentsCommerceClassicOrder *)self orderDate];
  if (v6)
  {
    v7 = MEMORY[0x1E696AD98];
    v8 = [(BMWalletPaymentsCommerceClassicOrder *)self orderDate];
    [v8 timeIntervalSinceReferenceDate];
    v9 = [v7 numberWithDouble:?];
  }

  else
  {
    v9 = 0;
  }

  v10 = [(BMWalletPaymentsCommerceClassicOrder *)self merchant];
  v34 = [v10 jsonDictionary];

  v11 = [(BMWalletPaymentsCommerceClassicOrder *)self _shippingFulfillmentsJSONArray];
  v12 = [(BMWalletPaymentsCommerceClassicOrder *)self customer];
  v13 = [v12 jsonDictionary];

  v14 = [(BMWalletPaymentsCommerceClassicOrder *)self payment];
  v15 = [v14 jsonDictionary];

  v35[0] = @"orderTypeIdentifier";
  v16 = v3;
  if (!v3)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v30 = v16;
  v36[0] = v16;
  v35[1] = @"orderIdentifier";
  v17 = v4;
  if (!v4)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v29 = v17;
  v36[1] = v17;
  v35[2] = @"orderNumber";
  v18 = v5;
  if (!v5)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v33 = v3;
  v28 = v18;
  v36[2] = v18;
  v35[3] = @"orderDate";
  v19 = v9;
  if (!v9)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = v4;
  v36[3] = v19;
  v35[4] = @"merchant";
  v20 = v34;
  if (!v34)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = v5;
  v36[4] = v20;
  v35[5] = @"shippingFulfillments";
  v21 = v11;
  if (!v11)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = v9;
  v36[5] = v21;
  v35[6] = @"customer";
  v23 = v13;
  if (!v13)
  {
    v23 = [MEMORY[0x1E695DFB0] null];
  }

  v36[6] = v23;
  v35[7] = @"payment";
  v24 = v15;
  if (!v15)
  {
    v24 = [MEMORY[0x1E695DFB0] null];
  }

  v36[7] = v24;
  v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:8];
  if (v15)
  {
    if (v13)
    {
      goto LABEL_22;
    }

LABEL_34:

    if (v11)
    {
      goto LABEL_23;
    }

    goto LABEL_35;
  }

  if (!v13)
  {
    goto LABEL_34;
  }

LABEL_22:
  if (v11)
  {
    goto LABEL_23;
  }

LABEL_35:

LABEL_23:
  if (!v34)
  {
  }

  if (!v22)
  {
  }

  if (v31)
  {
    if (v32)
    {
      goto LABEL_29;
    }

LABEL_37:

    if (v33)
    {
      goto LABEL_30;
    }

    goto LABEL_38;
  }

  if (!v32)
  {
    goto LABEL_37;
  }

LABEL_29:
  if (v33)
  {
    goto LABEL_30;
  }

LABEL_38:

LABEL_30:
  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

- (id)_shippingFulfillmentsJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BMWalletPaymentsCommerceClassicOrder *)self shippingFulfillments];
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

- (BMWalletPaymentsCommerceClassicOrder)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v143[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"orderTypeIdentifier"];
  v113 = self;
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v21 = objc_alloc(MEMORY[0x1E696ABC0]);
        v22 = *MEMORY[0x1E698F240];
        v142 = *MEMORY[0x1E696A578];
        v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"orderTypeIdentifier"];
        v143[0] = v23;
        v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v143 forKeys:&v142 count:1];
        v25 = v22;
        v9 = v24;
        v8 = 0;
        v26 = 0;
        *a4 = [v21 initWithDomain:v25 code:2 userInfo:v24];
        goto LABEL_110;
      }

      v8 = 0;
      v26 = 0;
      goto LABEL_111;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [v6 objectForKeyedSubscript:@"orderIdentifier"];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v27 = objc_alloc(MEMORY[0x1E696ABC0]);
        v28 = v9;
        v29 = *MEMORY[0x1E698F240];
        v140 = *MEMORY[0x1E696A578];
        v30 = a4;
        a4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"orderIdentifier"];
        v141 = a4;
        v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v141 forKeys:&v140 count:1];
        v32 = v27;
        v10 = v31;
        v33 = v29;
        v9 = v28;
        v23 = 0;
        v26 = 0;
        *v30 = [v32 initWithDomain:v33 code:2 userInfo:v31];
        goto LABEL_109;
      }

      v23 = 0;
      v26 = 0;
      goto LABEL_110;
    }

    v112 = v9;
  }

  else
  {
    v112 = 0;
  }

  v10 = [v6 objectForKeyedSubscript:@"orderNumber"];
  v111 = a4;
  if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v34 = objc_alloc(MEMORY[0x1E696ABC0]);
        v35 = v9;
        v36 = *MEMORY[0x1E698F240];
        v138 = *MEMORY[0x1E696A578];
        v37 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"orderNumber"];
        v139 = v37;
        v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v139 forKeys:&v138 count:1];
        v39 = v36;
        v9 = v35;
        v40 = [v34 initWithDomain:v39 code:2 userInfo:v38];
        a4 = 0;
        v26 = 0;
        v23 = v112;
        *v111 = v40;
        goto LABEL_108;
      }

      v26 = 0;
      v23 = v112;
      goto LABEL_109;
    }

    a4 = v10;
  }

  else
  {
    a4 = 0;
  }

  v11 = [v6 objectForKeyedSubscript:@"orderDate"];
  v108 = v11;
  v109 = a4;
  if (v11 && (v12 = v11, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = MEMORY[0x1E695DF00];
      v14 = v12;
      v15 = v10;
      v16 = v14;
      v17 = [v13 alloc];
      [v16 doubleValue];
      v19 = v18;

      v10 = v15;
      v20 = [v17 initWithTimeIntervalSinceReferenceDate:v19];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v41 = objc_alloc_init(MEMORY[0x1E696AC80]);
        v110 = [v41 dateFromString:v12];

        goto LABEL_30;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (v111)
        {
          v80 = v10;
          v81 = objc_alloc(MEMORY[0x1E696ABC0]);
          v107 = v9;
          v82 = *MEMORY[0x1E698F240];
          v136 = *MEMORY[0x1E696A578];
          v38 = v108;
          v56 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"orderDate"];
          v137 = v56;
          v83 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v137 forKeys:&v136 count:1];
          v84 = v81;
          v10 = v80;
          v42 = v83;
          v85 = v82;
          v9 = v107;
          v110 = 0;
          v26 = 0;
          *v111 = [v84 initWithDomain:v85 code:2 userInfo:v83];
          v23 = v112;
          goto LABEL_106;
        }

        v37 = 0;
        v26 = 0;
        v23 = v112;
        v38 = v108;
        goto LABEL_108;
      }

      v20 = v12;
    }

    v110 = v20;
  }

  else
  {
    v110 = 0;
  }

LABEL_30:
  v42 = [v6 objectForKeyedSubscript:@"merchant"];
  if (v42)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v101 = v10;
      v103 = v42;
      v105 = v9;
      v42 = 0;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (v111)
        {
          v102 = v10;
          v58 = objc_alloc(MEMORY[0x1E696ABC0]);
          v106 = v9;
          v59 = *MEMORY[0x1E698F240];
          v134 = *MEMORY[0x1E696A578];
          v104 = v42;
          v42 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"merchant"];
          v135 = v42;
          v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v135 forKeys:&v134 count:1];
          v61 = v58;
          v10 = v102;
          v62 = v59;
          v9 = v106;
          *v111 = [v61 initWithDomain:v62 code:2 userInfo:v60];

          v26 = 0;
          v56 = v104;
          v23 = v112;
          v38 = v108;
          goto LABEL_106;
        }

        v26 = 0;
        v23 = v112;
        v38 = v108;
        v56 = v42;
        goto LABEL_107;
      }

      v56 = v42;
      v122 = 0;
      v97 = [[BMWalletPaymentsCommerceClassicOrderMerchant alloc] initWithJSONDictionary:v56 error:&v122];
      v57 = v122;
      if (v57)
      {
        v23 = v112;
        if (v111)
        {
          v57 = v57;
          *v111 = v57;
        }

        v26 = 0;
        v38 = v108;
        v42 = v97;
        goto LABEL_106;
      }

      v101 = v10;
      v103 = v42;
      v105 = v9;

      v42 = v97;
    }
  }

  else
  {
    v101 = v10;
    v103 = 0;
    v105 = v9;
  }

  v43 = [v6 objectForKeyedSubscript:@"shippingFulfillments"];
  v44 = [MEMORY[0x1E695DFB0] null];
  v45 = [v43 isEqual:v44];

  v95 = v7;
  v100 = v8;
  if (v45)
  {
    v96 = v42;
    v94 = v6;

    v43 = 0;
  }

  else
  {
    if (v43)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!v111)
        {
          v26 = 0;
          v9 = v105;
          v38 = v108;
          v23 = v112;
          v56 = v103;
          goto LABEL_105;
        }

        v72 = objc_alloc(MEMORY[0x1E696ABC0]);
        v73 = *MEMORY[0x1E698F240];
        v132 = *MEMORY[0x1E696A578];
        v114 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"shippingFulfillments"];
        v133 = v114;
        v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v133 forKeys:&v132 count:1];
        v74 = [v72 initWithDomain:v73 code:2 userInfo:v55];
        v26 = 0;
        *v111 = v74;
        goto LABEL_70;
      }
    }

    v96 = v42;
    v94 = v6;
  }

  v114 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v43, "count")}];
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  v43 = v43;
  v46 = [v43 countByEnumeratingWithState:&v118 objects:v131 count:16];
  if (!v46)
  {
    goto LABEL_49;
  }

  v47 = v46;
  v48 = *v119;
  while (2)
  {
    for (i = 0; i != v47; ++i)
    {
      if (*v119 != v48)
      {
        objc_enumerationMutation(v43);
      }

      v50 = *(*(&v118 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v63 = v111;
        if (v111)
        {
          v64 = objc_alloc(MEMORY[0x1E696ABC0]);
          v65 = *MEMORY[0x1E698F240];
          v129 = *MEMORY[0x1E696A578];
          v51 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"shippingFulfillments"];
          v130 = v51;
          v66 = MEMORY[0x1E695DF20];
          v67 = &v130;
          v68 = &v129;
LABEL_63:
          v69 = [v66 dictionaryWithObjects:v67 forKeys:v68 count:1];
          v70 = [v64 initWithDomain:v65 code:2 userInfo:v69];
          v26 = 0;
          *v63 = v70;
          v55 = v43;
          v6 = v94;
          v23 = v112;
          v38 = v108;
          v56 = v103;
LABEL_67:
          v42 = v96;
          goto LABEL_103;
        }

LABEL_72:
        v26 = 0;
        v55 = v43;
        v6 = v94;
        v23 = v112;
        v38 = v108;
        v56 = v103;
        v42 = v96;
        goto LABEL_104;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v63 = v111;
        if (v111)
        {
          v64 = objc_alloc(MEMORY[0x1E696ABC0]);
          v65 = *MEMORY[0x1E698F240];
          v127 = *MEMORY[0x1E696A578];
          v51 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"shippingFulfillments"];
          v128 = v51;
          v66 = MEMORY[0x1E695DF20];
          v67 = &v128;
          v68 = &v127;
          goto LABEL_63;
        }

        goto LABEL_72;
      }

      v51 = v50;
      v52 = [BMWalletPaymentsCommerceClassicOrderShippingFulfillment alloc];
      v117 = 0;
      v53 = [(BMWalletPaymentsCommerceClassicOrderShippingFulfillment *)v52 initWithJSONDictionary:v51 error:&v117];
      v54 = v117;
      if (v54)
      {
        v69 = v54;
        v56 = v103;
        if (v111)
        {
          v71 = v54;
          *v111 = v69;
        }

        v26 = 0;
        v55 = v43;
        v6 = v94;
        v23 = v112;
        v38 = v108;
        goto LABEL_67;
      }

      [v114 addObject:v53];
    }

    v47 = [v43 countByEnumeratingWithState:&v118 objects:v131 count:16];
    if (v47)
    {
      continue;
    }

    break;
  }

LABEL_49:

  v6 = v94;
  v55 = [v94 objectForKeyedSubscript:@"customer"];
  if (!v55)
  {
    v51 = 0;
    v42 = v96;
    goto LABEL_74;
  }

  objc_opt_class();
  v42 = v96;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v69 = v55;
      v116 = 0;
      v51 = [[BMWalletPaymentsCommerceClassicOrderCustomer alloc] initWithJSONDictionary:v69 error:&v116];
      v77 = v116;
      if (!v77)
      {

        goto LABEL_74;
      }

      if (v111)
      {
        v77 = v77;
        *v111 = v77;
      }

      v26 = 0;
      v55 = v69;
      goto LABEL_101;
    }

    if (v111)
    {
      v86 = objc_alloc(MEMORY[0x1E696ABC0]);
      v87 = *MEMORY[0x1E698F240];
      v125 = *MEMORY[0x1E696A578];
      v51 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"customer"];
      v126 = v51;
      v69 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v126 forKeys:&v125 count:1];
      v88 = [v86 initWithDomain:v87 code:2 userInfo:v69];
      v26 = 0;
      *v111 = v88;
LABEL_101:
      v23 = v112;
      goto LABEL_102;
    }

    v26 = 0;
LABEL_70:
    v23 = v112;
    v38 = v108;
    v56 = v103;
    goto LABEL_104;
  }

  v51 = 0;
LABEL_74:
  v69 = [v94 objectForKeyedSubscript:@"payment"];
  v38 = v108;
  if (!v69 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v75 = 0;
    v23 = v112;
    goto LABEL_77;
  }

  objc_opt_class();
  v23 = v112;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (v111)
    {
      v99 = objc_alloc(MEMORY[0x1E696ABC0]);
      v93 = *MEMORY[0x1E698F240];
      v123 = *MEMORY[0x1E696A578];
      v91 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"payment"];
      v124 = v91;
      v92 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v124 forKeys:&v123 count:1];
      *v111 = [v99 initWithDomain:v93 code:2 userInfo:v92];

      v76 = v91;
      v26 = 0;
      v38 = v108;
LABEL_78:
      v56 = v103;
      goto LABEL_79;
    }

    v26 = 0;
LABEL_102:
    v38 = v108;
    v56 = v103;
    goto LABEL_103;
  }

  v78 = v69;
  v115 = 0;
  v98 = [[BMWalletPaymentsCommerceClassicOrderPayment alloc] initWithJSONDictionary:v78 error:&v115];
  v79 = v115;
  if (!v79)
  {

    v38 = v108;
    v75 = v98;
LABEL_77:
    v26 = [(BMWalletPaymentsCommerceClassicOrder *)v113 initWithOrderTypeIdentifier:v100 orderIdentifier:v23 orderNumber:v109 orderDate:v110 merchant:v42 shippingFulfillments:v114 customer:v51 payment:v75];
    v113 = v26;
    v76 = v75;
    goto LABEL_78;
  }

  if (v111)
  {
    v79 = v79;
    *v111 = v79;
  }

  v26 = 0;
  v38 = v108;
  v56 = v103;
  v76 = v98;
LABEL_79:

LABEL_103:
LABEL_104:

  v7 = v95;
  v8 = v100;
  v9 = v105;
LABEL_105:

  v10 = v101;
LABEL_106:

LABEL_107:
  a4 = v109;
  v37 = v110;
LABEL_108:

LABEL_109:
LABEL_110:

LABEL_111:
  v89 = *MEMORY[0x1E69E9840];
  return v26;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMWalletPaymentsCommerceClassicOrder *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
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

  if (self->_hasRaw_orderDate)
  {
    raw_orderDate = self->_raw_orderDate;
    PBDataWriterWriteDoubleField();
  }

  if (self->_merchant)
  {
    v17 = 0;
    PBDataWriterPlaceMark();
    [(BMWalletPaymentsCommerceClassicOrderMerchant *)self->_merchant writeTo:v4];
    PBDataWriterRecallMark();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_shippingFulfillments;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        v17 = 0;
        PBDataWriterPlaceMark();
        [v11 writeTo:{v4, v13}];
        PBDataWriterRecallMark();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v8);
  }

  if (self->_customer)
  {
    v17 = 0;
    PBDataWriterPlaceMark();
    [(BMWalletPaymentsCommerceClassicOrderCustomer *)self->_customer writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_payment)
  {
    v17 = 0;
    PBDataWriterPlaceMark();
    [(BMWalletPaymentsCommerceClassicOrderPayment *)self->_payment writeTo:v4];
    PBDataWriterRecallMark();
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v34.receiver = self;
  v34.super_class = BMWalletPaymentsCommerceClassicOrder;
  v5 = [(BMEventBase *)&v34 init];
  if (!v5)
  {
    goto LABEL_55;
  }

  v6 = objc_opt_new();
  v7 = [v4 position];
  if (v7 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_54;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v35) = 0;
        v11 = [v4 position] + 1;
        if (v11 >= [v4 position] && (v12 = objc_msgSend(v4, "position") + 1, v12 <= objc_msgSend(v4, "length")))
        {
          v13 = [v4 data];
          [v13 getBytes:&v35 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v10 |= (LOBYTE(v35) & 0x7F) << v8;
        if ((LOBYTE(v35) & 0x80) == 0)
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
        goto LABEL_54;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) <= 4)
      {
        break;
      }

      if (v16 > 6)
      {
        if (v16 == 7)
        {
          v35 = 0.0;
          v36 = 0;
          if (!PBReaderPlaceMark() || (v23 = [[BMWalletPaymentsCommerceClassicOrderCustomer alloc] initByReadFrom:v4]) == 0)
          {
LABEL_56:

            goto LABEL_57;
          }

          v24 = 88;
          goto LABEL_48;
        }

        if (v16 == 8)
        {
          v35 = 0.0;
          v36 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_56;
          }

          v23 = [[BMWalletPaymentsCommerceClassicOrderPayment alloc] initByReadFrom:v4];
          if (!v23)
          {
            goto LABEL_56;
          }

          v24 = 80;
          goto LABEL_48;
        }

LABEL_49:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_56;
        }

        goto LABEL_53;
      }

      if (v16 == 5)
      {
        v35 = 0.0;
        v36 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_56;
        }

        v23 = [[BMWalletPaymentsCommerceClassicOrderMerchant alloc] initByReadFrom:v4];
        if (!v23)
        {
          goto LABEL_56;
        }

        v24 = 64;
LABEL_48:
        v26 = *(&v5->super.super.isa + v24);
        *(&v5->super.super.isa + v24) = v23;

        PBReaderRecallMark();
        goto LABEL_53;
      }

      if (v16 != 6)
      {
        goto LABEL_49;
      }

      v35 = 0.0;
      v36 = 0;
      if (!PBReaderPlaceMark())
      {
        goto LABEL_56;
      }

      v19 = [[BMWalletPaymentsCommerceClassicOrderShippingFulfillment alloc] initByReadFrom:v4];
      if (!v19)
      {
        goto LABEL_56;
      }

      v20 = v19;
      [v6 addObject:v19];
      PBReaderRecallMark();

LABEL_53:
      v28 = [v4 position];
      if (v28 >= [v4 length])
      {
        goto LABEL_54;
      }
    }

    if (v16 > 2)
    {
      if (v16 == 3)
      {
        v17 = PBReaderReadString();
        v18 = 56;
        goto LABEL_44;
      }

      if (v16 == 4)
      {
        v5->_hasRaw_orderDate = 1;
        v35 = 0.0;
        v21 = [v4 position] + 8;
        if (v21 >= [v4 position] && (v22 = objc_msgSend(v4, "position") + 8, v22 <= objc_msgSend(v4, "length")))
        {
          v27 = [v4 data];
          [v27 getBytes:&v35 range:{objc_msgSend(v4, "position"), 8}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
        }

        else
        {
          [v4 _setError];
        }

        v5->_raw_orderDate = v35;
        goto LABEL_53;
      }
    }

    else
    {
      if (v16 == 1)
      {
        v17 = PBReaderReadString();
        v18 = 40;
        goto LABEL_44;
      }

      if (v16 == 2)
      {
        v17 = PBReaderReadString();
        v18 = 48;
LABEL_44:
        v25 = *(&v5->super.super.isa + v18);
        *(&v5->super.super.isa + v18) = v17;

        goto LABEL_53;
      }
    }

    goto LABEL_49;
  }

LABEL_54:
  v29 = [v6 copy];
  shippingFulfillments = v5->_shippingFulfillments;
  v5->_shippingFulfillments = v29;

  v31 = [v4 hasError];
  if (v31)
  {
LABEL_57:
    v32 = 0;
  }

  else
  {
LABEL_55:
    v32 = v5;
  }

  return v32;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMWalletPaymentsCommerceClassicOrder *)self orderTypeIdentifier];
  v5 = [(BMWalletPaymentsCommerceClassicOrder *)self orderIdentifier];
  v6 = [(BMWalletPaymentsCommerceClassicOrder *)self orderNumber];
  v7 = [(BMWalletPaymentsCommerceClassicOrder *)self orderDate];
  v8 = [(BMWalletPaymentsCommerceClassicOrder *)self merchant];
  v9 = [(BMWalletPaymentsCommerceClassicOrder *)self shippingFulfillments];
  v10 = [(BMWalletPaymentsCommerceClassicOrder *)self customer];
  v11 = [(BMWalletPaymentsCommerceClassicOrder *)self payment];
  v12 = [v3 initWithFormat:@"BMWalletPaymentsCommerceClassicOrder with orderTypeIdentifier: %@, orderIdentifier: %@, orderNumber: %@, orderDate: %@, merchant: %@, shippingFulfillments: %@, customer: %@, payment: %@", v4, v5, v6, v7, v8, v9, v10, v11];

  return v12;
}

- (BMWalletPaymentsCommerceClassicOrder)initWithOrderTypeIdentifier:(id)a3 orderIdentifier:(id)a4 orderNumber:(id)a5 orderDate:(id)a6 merchant:(id)a7 shippingFulfillments:(id)a8 customer:(id)a9 payment:(id)a10
{
  v27 = a3;
  v26 = a4;
  v25 = a5;
  v17 = a6;
  v24 = a7;
  v23 = a8;
  v22 = a9;
  v21 = a10;
  v28.receiver = self;
  v28.super_class = BMWalletPaymentsCommerceClassicOrder;
  v18 = [(BMEventBase *)&v28 init];
  if (v18)
  {
    v18->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v18->_orderTypeIdentifier, a3);
    objc_storeStrong(&v18->_orderIdentifier, a4);
    objc_storeStrong(&v18->_orderNumber, a5);
    if (v17)
    {
      v18->_hasRaw_orderDate = 1;
      [v17 timeIntervalSinceReferenceDate];
    }

    else
    {
      v18->_hasRaw_orderDate = 0;
      v19 = -1.0;
    }

    v18->_raw_orderDate = v19;
    objc_storeStrong(&v18->_merchant, a7);
    objc_storeStrong(&v18->_shippingFulfillments, a8);
    objc_storeStrong(&v18->_customer, a9);
    objc_storeStrong(&v18->_payment, a10);
  }

  return v18;
}

+ (id)protoFields
{
  v13[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"orderTypeIdentifier" number:1 type:13 subMessageClass:0];
  v13[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"orderIdentifier" number:2 type:13 subMessageClass:0];
  v13[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"orderNumber" number:3 type:13 subMessageClass:0];
  v13[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"orderDate" number:4 type:0 subMessageClass:0];
  v13[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"merchant" number:5 type:14 subMessageClass:objc_opt_class()];
  v13[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shippingFulfillments" number:6 type:14 subMessageClass:objc_opt_class()];
  v13[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"customer" number:7 type:14 subMessageClass:objc_opt_class()];
  v13[6] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"payment" number:8 type:14 subMessageClass:objc_opt_class()];
  v13[7] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)columns
{
  v13[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"orderTypeIdentifier" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"orderIdentifier" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"orderNumber" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"orderDate" dataType:3 requestOnly:0 fieldNumber:4 protoDataType:0 convertedType:1];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"merchant_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_573];
  v7 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"shippingFulfillments_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_575];
  v8 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"customer_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_577];
  v9 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"payment_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_579];
  v13[0] = v2;
  v13[1] = v3;
  v13[2] = v4;
  v13[3] = v5;
  v13[4] = v6;
  v13[5] = v7;
  v13[6] = v8;
  v13[7] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

id __47__BMWalletPaymentsCommerceClassicOrder_columns__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 payment];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __47__BMWalletPaymentsCommerceClassicOrder_columns__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 customer];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __47__BMWalletPaymentsCommerceClassicOrder_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _shippingFulfillmentsJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __47__BMWalletPaymentsCommerceClassicOrder_columns__block_invoke(uint64_t a1, void *a2)
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

    v8 = [[BMWalletPaymentsCommerceClassicOrder alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[8] = 0;
    }
  }

  return v4;
}

@end