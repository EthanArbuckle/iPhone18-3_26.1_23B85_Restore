@interface BMWalletPaymentsCommerceClassicOrderPayment
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMWalletPaymentsCommerceClassicOrderPayment)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMWalletPaymentsCommerceClassicOrderPayment)initWithTotalAmount:(id)a3 totalCurrencyCode:(id)a4 paymentMethods:(id)a5 applePayTransactionIdentifiers:(id)a6 transactions:(id)a7;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_applePayTransactionIdentifiersJSONArray;
- (id)_paymentMethodsJSONArray;
- (id)_transactionsJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMWalletPaymentsCommerceClassicOrderPayment

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMWalletPaymentsCommerceClassicOrderPayment *)self totalAmount];
    v7 = [v5 totalAmount];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMWalletPaymentsCommerceClassicOrderPayment *)self totalAmount];
      v10 = [v5 totalAmount];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_17;
      }
    }

    v13 = [(BMWalletPaymentsCommerceClassicOrderPayment *)self totalCurrencyCode];
    v14 = [v5 totalCurrencyCode];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMWalletPaymentsCommerceClassicOrderPayment *)self totalCurrencyCode];
      v17 = [v5 totalCurrencyCode];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_17;
      }
    }

    v19 = [(BMWalletPaymentsCommerceClassicOrderPayment *)self paymentMethods];
    v20 = [v5 paymentMethods];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMWalletPaymentsCommerceClassicOrderPayment *)self paymentMethods];
      v23 = [v5 paymentMethods];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_17;
      }
    }

    v25 = [(BMWalletPaymentsCommerceClassicOrderPayment *)self applePayTransactionIdentifiers];
    v26 = [v5 applePayTransactionIdentifiers];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(BMWalletPaymentsCommerceClassicOrderPayment *)self applePayTransactionIdentifiers];
      v29 = [v5 applePayTransactionIdentifiers];
      v30 = [v28 isEqual:v29];

      if (!v30)
      {
LABEL_17:
        v12 = 0;
LABEL_23:

        goto LABEL_24;
      }
    }

    v31 = [(BMWalletPaymentsCommerceClassicOrderPayment *)self transactions];
    v32 = [v5 transactions];
    if (v31 == v32)
    {
      v12 = 1;
    }

    else
    {
      v33 = [(BMWalletPaymentsCommerceClassicOrderPayment *)self transactions];
      v34 = [v5 transactions];
      v12 = [v33 isEqual:v34];
    }

    goto LABEL_23;
  }

  v12 = 0;
LABEL_24:

  return v12;
}

- (id)jsonDictionary
{
  v23[5] = *MEMORY[0x1E69E9840];
  v3 = [(BMWalletPaymentsCommerceClassicOrderPayment *)self totalAmount];
  v4 = [(BMWalletPaymentsCommerceClassicOrderPayment *)self totalCurrencyCode];
  v5 = [(BMWalletPaymentsCommerceClassicOrderPayment *)self _paymentMethodsJSONArray];
  v6 = [(BMWalletPaymentsCommerceClassicOrderPayment *)self _applePayTransactionIdentifiersJSONArray];
  v7 = [(BMWalletPaymentsCommerceClassicOrderPayment *)self _transactionsJSONArray];
  v18 = @"totalAmount";
  v8 = v3;
  if (!v3)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v16 = v8;
  v23[0] = v8;
  v19 = @"totalCurrencyCode";
  v9 = v4;
  if (!v4)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v23[1] = v9;
  v20 = @"paymentMethods";
  v10 = v5;
  if (!v5)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v23[2] = v10;
  v21 = @"applePayTransactionIdentifiers";
  v11 = v6;
  if (!v6)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v23[3] = v11;
  v22 = @"transactions";
  v12 = v7;
  if (!v7)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v23[4] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v18 count:{5, v16}];
  if (v7)
  {
    if (v6)
    {
      goto LABEL_13;
    }
  }

  else
  {

    if (v6)
    {
LABEL_13:
      if (v5)
      {
        goto LABEL_14;
      }

      goto LABEL_21;
    }
  }

  if (v5)
  {
LABEL_14:
    if (v4)
    {
      goto LABEL_15;
    }

LABEL_22:

    if (v3)
    {
      goto LABEL_16;
    }

    goto LABEL_23;
  }

LABEL_21:

  if (!v4)
  {
    goto LABEL_22;
  }

LABEL_15:
  if (v3)
  {
    goto LABEL_16;
  }

LABEL_23:

LABEL_16:
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)_transactionsJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BMWalletPaymentsCommerceClassicOrderPayment *)self transactions];
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

- (id)_applePayTransactionIdentifiersJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(BMWalletPaymentsCommerceClassicOrderPayment *)self applePayTransactionIdentifiers];
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

- (id)_paymentMethodsJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(BMWalletPaymentsCommerceClassicOrderPayment *)self paymentMethods];
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

- (BMWalletPaymentsCommerceClassicOrderPayment)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v128[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"totalAmount"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v31 = objc_alloc(MEMORY[0x1E696ABC0]);
        v32 = *MEMORY[0x1E698F240];
        v127 = *MEMORY[0x1E696A578];
        v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"totalAmount"];
        v128[0] = v29;
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v128 forKeys:&v127 count:1];
        v33 = [v31 initWithDomain:v32 code:2 userInfo:v9];
        v7 = 0;
        v30 = 0;
        *a4 = v33;
        goto LABEL_95;
      }

      v7 = 0;
      v30 = 0;
      goto LABEL_96;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = [v5 objectForKeyedSubscript:@"totalCurrencyCode"];
  v87 = v6;
  v88 = v8;
  if (v8 && (v9 = v8, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v29 = a4;
      if (a4)
      {
        v34 = objc_alloc(MEMORY[0x1E696ABC0]);
        v35 = v7;
        v36 = *MEMORY[0x1E698F240];
        v125 = *MEMORY[0x1E696A578];
        v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"totalCurrencyCode"];
        v126 = v10;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v126 forKeys:&v125 count:1];
        v37 = v36;
        v7 = v35;
        v29 = 0;
        v30 = 0;
        *a4 = [v34 initWithDomain:v37 code:2 userInfo:v13];
        goto LABEL_93;
      }

      v30 = 0;
      goto LABEL_95;
    }

    v83 = v7;
    v85 = v9;
  }

  else
  {
    v83 = v7;
    v85 = 0;
  }

  v10 = [v5 objectForKeyedSubscript:@"paymentMethods"];
  v11 = [MEMORY[0x1E695DFB0] null];
  v12 = [v10 isEqual:v11];

  v84 = self;
  if (v12)
  {
    v86 = v5;

    v10 = 0;
  }

  else
  {
    if (v10)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v30 = 0;
          v7 = v83;
          v29 = v85;
          goto LABEL_94;
        }

        v45 = objc_alloc(MEMORY[0x1E696ABC0]);
        v46 = *MEMORY[0x1E698F240];
        v123 = *MEMORY[0x1E696A578];
        v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"paymentMethods"];
        v124 = v13;
        v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v124 forKeys:&v123 count:1];
        v30 = 0;
        *a4 = [v45 initWithDomain:v46 code:2 userInfo:v19];
        goto LABEL_53;
      }
    }

    v86 = v5;
  }

  v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v10, "count")}];
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v10 = v10;
  v14 = [v10 countByEnumeratingWithState:&v100 objects:v122 count:16];
  if (!v14)
  {
    goto LABEL_21;
  }

  v15 = v14;
  v16 = *v101;
  do
  {
    for (i = 0; i != v15; ++i)
    {
      if (*v101 != v16)
      {
        objc_enumerationMutation(v10);
      }

      v18 = *(*(&v100 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (a4)
        {
          v22 = objc_alloc(MEMORY[0x1E696ABC0]);
          v23 = *MEMORY[0x1E698F240];
          v120 = *MEMORY[0x1E696A578];
          v90 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"paymentMethods"];
          v121 = v90;
          v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v121 forKeys:&v120 count:1];
          v25 = v22;
          v26 = v23;
LABEL_31:
          v29 = v85;
          v5 = v86;
          v7 = v83;
          v30 = 0;
          *a4 = [v25 initWithDomain:v26 code:2 userInfo:v24];
          v19 = v10;
          goto LABEL_91;
        }

LABEL_34:
        v30 = 0;
        v19 = v10;
LABEL_35:
        v5 = v86;
LABEL_53:
        v7 = v83;
        v29 = v85;
        goto LABEL_92;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (a4)
        {
          v27 = objc_alloc(MEMORY[0x1E696ABC0]);
          v28 = *MEMORY[0x1E698F240];
          v118 = *MEMORY[0x1E696A578];
          v90 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"paymentMethods"];
          v119 = v90;
          v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v119 forKeys:&v118 count:1];
          v25 = v27;
          v26 = v28;
          goto LABEL_31;
        }

        goto LABEL_34;
      }

      [v13 addObject:v18];
    }

    v15 = [v10 countByEnumeratingWithState:&v100 objects:v122 count:16];
  }

  while (v15);
LABEL_21:

  v19 = [v86 objectForKeyedSubscript:@"applePayTransactionIdentifiers"];
  v20 = [MEMORY[0x1E695DFB0] null];
  v21 = [v19 isEqual:v20];

  if (!v21)
  {
    if (!v19)
    {
      goto LABEL_40;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_40;
    }

    if (a4)
    {
      v63 = objc_alloc(MEMORY[0x1E696ABC0]);
      v64 = *MEMORY[0x1E698F240];
      v116 = *MEMORY[0x1E696A578];
      v90 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"applePayTransactionIdentifiers"];
      v117 = v90;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v117 forKeys:&v116 count:1];
      v30 = 0;
      *a4 = [v63 initWithDomain:v64 code:2 userInfo:v24];
      goto LABEL_78;
    }

    v30 = 0;
    goto LABEL_35;
  }

  v19 = 0;
LABEL_40:
  v90 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v19, "count")}];
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v19 = v19;
  v38 = [v19 countByEnumeratingWithState:&v96 objects:v115 count:16];
  if (!v38)
  {
    goto LABEL_49;
  }

  v39 = v38;
  v40 = *v97;
  do
  {
    for (j = 0; j != v39; ++j)
    {
      if (*v97 != v40)
      {
        objc_enumerationMutation(v19);
      }

      v42 = *(*(&v96 + 1) + 8 * j);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (a4)
        {
          v47 = objc_alloc(MEMORY[0x1E696ABC0]);
          v48 = *MEMORY[0x1E698F240];
          v113 = *MEMORY[0x1E696A578];
          v81 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"applePayTransactionIdentifiers"];
          v114 = v81;
          v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v114 forKeys:&v113 count:1];
          v50 = v47;
          v51 = v48;
LABEL_58:
          v29 = v85;
          v5 = v86;
          *a4 = [v50 initWithDomain:v51 code:2 userInfo:v49];

          v30 = 0;
          v24 = v19;
          v7 = v83;
          goto LABEL_90;
        }

LABEL_61:
        v30 = 0;
        v24 = v19;
LABEL_78:
        v29 = v85;
        v5 = v86;
        v7 = v83;
        goto LABEL_91;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (a4)
        {
          v52 = objc_alloc(MEMORY[0x1E696ABC0]);
          v53 = *MEMORY[0x1E698F240];
          v111 = *MEMORY[0x1E696A578];
          v81 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"applePayTransactionIdentifiers"];
          v112 = v81;
          v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v112 forKeys:&v111 count:1];
          v50 = v52;
          v51 = v53;
          goto LABEL_58;
        }

        goto LABEL_61;
      }

      [v90 addObject:v42];
    }

    v39 = [v19 countByEnumeratingWithState:&v96 objects:v115 count:16];
  }

  while (v39);
LABEL_49:

  v24 = [v86 objectForKeyedSubscript:@"transactions"];
  v43 = [MEMORY[0x1E695DFB0] null];
  v44 = [v24 isEqual:v43];

  if (v44)
  {

    v24 = 0;
  }

  else if (v24)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = v83;
      if (a4)
      {
        v77 = objc_alloc(MEMORY[0x1E696ABC0]);
        v78 = *MEMORY[0x1E698F240];
        v109 = *MEMORY[0x1E696A578];
        v82 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"transactions"];
        v110 = v82;
        v79 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v110 forKeys:&v109 count:1];
        *a4 = [v77 initWithDomain:v78 code:2 userInfo:v79];

        v30 = 0;
        v29 = v85;
        v5 = v86;
      }

      else
      {
        v30 = 0;
        v29 = v85;
        v5 = v86;
      }

      goto LABEL_91;
    }
  }

  v81 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v24, "count")}];
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v24 = v24;
  v54 = [v24 countByEnumeratingWithState:&v92 objects:v108 count:16];
  if (!v54)
  {
    goto LABEL_75;
  }

  v55 = v54;
  v56 = *v93;
  obj = v24;
  while (2)
  {
    v57 = 0;
    while (2)
    {
      if (*v93 != v56)
      {
        objc_enumerationMutation(obj);
      }

      v58 = *(*(&v92 + 1) + 8 * v57);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v29 = v85;
        v5 = v86;
        v7 = v83;
        v65 = a4;
        if (a4)
        {
          v66 = objc_alloc(MEMORY[0x1E696ABC0]);
          v67 = v86;
          v68 = *MEMORY[0x1E698F240];
          v106 = *MEMORY[0x1E696A578];
          v59 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"transactions"];
          v107 = v59;
          v69 = MEMORY[0x1E695DF20];
          v70 = &v107;
          v71 = &v106;
LABEL_84:
          v72 = [v69 dictionaryWithObjects:v70 forKeys:v71 count:1];
          v73 = v68;
          v5 = v67;
          v29 = v85;
          *v65 = [v66 initWithDomain:v73 code:2 userInfo:v72];
LABEL_88:
        }

LABEL_89:
        v24 = obj;

        v30 = 0;
        goto LABEL_90;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v29 = v85;
        v5 = v86;
        v7 = v83;
        v65 = a4;
        if (a4)
        {
          v66 = objc_alloc(MEMORY[0x1E696ABC0]);
          v67 = v86;
          v68 = *MEMORY[0x1E698F240];
          v104 = *MEMORY[0x1E696A578];
          v59 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"transactions"];
          v105 = v59;
          v69 = MEMORY[0x1E695DF20];
          v70 = &v105;
          v71 = &v104;
          goto LABEL_84;
        }

        goto LABEL_89;
      }

      v59 = v58;
      v60 = [BMWalletPaymentsCommerceClassicOrderTransaction alloc];
      v91 = 0;
      v61 = [(BMWalletPaymentsCommerceClassicOrderTransaction *)v60 initWithJSONDictionary:v59 error:&v91];
      v62 = v91;
      if (v62)
      {
        v72 = v62;
        if (a4)
        {
          v74 = v62;
          *a4 = v72;
        }

        v29 = v85;
        v5 = v86;
        v7 = v83;
        goto LABEL_88;
      }

      [v81 addObject:v61];

      if (v55 != ++v57)
      {
        continue;
      }

      break;
    }

    v24 = obj;
    v55 = [obj countByEnumeratingWithState:&v92 objects:v108 count:16];
    if (v55)
    {
      continue;
    }

    break;
  }

LABEL_75:

  v7 = v83;
  v29 = v85;
  v30 = [(BMWalletPaymentsCommerceClassicOrderPayment *)v84 initWithTotalAmount:v83 totalCurrencyCode:v85 paymentMethods:v13 applePayTransactionIdentifiers:v90 transactions:v81];
  v84 = v30;
  v5 = v86;
LABEL_90:

LABEL_91:
LABEL_92:

  self = v84;
LABEL_93:

  v6 = v87;
LABEL_94:

  v9 = v88;
LABEL_95:

LABEL_96:
  v75 = *MEMORY[0x1E69E9840];
  return v30;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMWalletPaymentsCommerceClassicOrderPayment *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_totalAmount)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_totalCurrencyCode)
  {
    PBDataWriterWriteStringField();
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = self->_paymentMethods;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v33;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v32 + 1) + 8 * i);
        PBDataWriterWriteStringField();
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v7);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = self->_applePayTransactionIdentifiers;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v29;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v28 + 1) + 8 * j);
        PBDataWriterWriteStringField();
      }

      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v13);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v17 = self->_transactions;
  v18 = [(NSArray *)v17 countByEnumeratingWithState:&v24 objects:v36 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v25;
    do
    {
      for (k = 0; k != v19; ++k)
      {
        if (*v25 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v24 + 1) + 8 * k);
        PBDataWriterPlaceMark();
        [v22 writeTo:v4];
        PBDataWriterRecallMark();
      }

      v19 = [(NSArray *)v17 countByEnumeratingWithState:&v24 objects:v36 count:16];
    }

    while (v19);
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v37.receiver = self;
  v37.super_class = BMWalletPaymentsCommerceClassicOrderPayment;
  v5 = [(BMEventBase *)&v37 init];
  if (!v5)
  {
    goto LABEL_40;
  }

  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v9 = [v4 position];
  if (v9 < [v4 length])
  {
    do
    {
      if ([v4 hasError])
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v38[0]) = 0;
        v13 = [v4 position] + 1;
        if (v13 >= [v4 position] && (v14 = objc_msgSend(v4, "position") + 1, v14 <= objc_msgSend(v4, "length")))
        {
          v15 = [v4 data];
          [v15 getBytes:v38 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v12 |= (v38[0] & 0x7F) << v10;
        if ((v38[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v17 = 0;
          goto LABEL_16;
        }
      }

      v17 = [v4 hasError] ? 0 : v12;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v17 & 7) == 4)
      {
        break;
      }

      v18 = v17 >> 3;
      if ((v17 >> 3) <= 2)
      {
        if (v18 == 1)
        {
          v21 = PBReaderReadString();
          v22 = 24;
          goto LABEL_35;
        }

        if (v18 == 2)
        {
          v21 = PBReaderReadString();
          v22 = 32;
LABEL_35:
          v26 = *(&v5->super.super.isa + v22);
          *(&v5->super.super.isa + v22) = v21;

          goto LABEL_37;
        }
      }

      else
      {
        switch(v18)
        {
          case 3:
            v23 = PBReaderReadString();
            if (!v23)
            {
              goto LABEL_42;
            }

            v20 = v23;
            v24 = v6;
LABEL_32:
            [v24 addObject:v20];
LABEL_33:

            goto LABEL_37;
          case 4:
            v25 = PBReaderReadString();
            if (!v25)
            {
              goto LABEL_42;
            }

            v20 = v25;
            v24 = v7;
            goto LABEL_32;
          case 5:
            v38[0] = 0;
            v38[1] = 0;
            if (!PBReaderPlaceMark() || (v19 = [[BMWalletPaymentsCommerceClassicOrderTransaction alloc] initByReadFrom:v4]) == 0)
            {
LABEL_42:

              goto LABEL_39;
            }

            v20 = v19;
            [v8 addObject:v19];
            PBReaderRecallMark();
            goto LABEL_33;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_42;
      }

LABEL_37:
      v27 = [v4 position];
    }

    while (v27 < [v4 length]);
  }

  v28 = [v6 copy];
  paymentMethods = v5->_paymentMethods;
  v5->_paymentMethods = v28;

  v30 = [v7 copy];
  applePayTransactionIdentifiers = v5->_applePayTransactionIdentifiers;
  v5->_applePayTransactionIdentifiers = v30;

  v32 = [v8 copy];
  transactions = v5->_transactions;
  v5->_transactions = v32;

  v34 = [v4 hasError];
  if (v34)
  {
LABEL_39:
    v35 = 0;
  }

  else
  {
LABEL_40:
    v35 = v5;
  }

  return v35;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMWalletPaymentsCommerceClassicOrderPayment *)self totalAmount];
  v5 = [(BMWalletPaymentsCommerceClassicOrderPayment *)self totalCurrencyCode];
  v6 = [(BMWalletPaymentsCommerceClassicOrderPayment *)self paymentMethods];
  v7 = [(BMWalletPaymentsCommerceClassicOrderPayment *)self applePayTransactionIdentifiers];
  v8 = [(BMWalletPaymentsCommerceClassicOrderPayment *)self transactions];
  v9 = [v3 initWithFormat:@"BMWalletPaymentsCommerceClassicOrderPayment with totalAmount: %@, totalCurrencyCode: %@, paymentMethods: %@, applePayTransactionIdentifiers: %@, transactions: %@", v4, v5, v6, v7, v8];

  return v9;
}

- (BMWalletPaymentsCommerceClassicOrderPayment)initWithTotalAmount:(id)a3 totalCurrencyCode:(id)a4 paymentMethods:(id)a5 applePayTransactionIdentifiers:(id)a6 transactions:(id)a7
{
  v19 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = BMWalletPaymentsCommerceClassicOrderPayment;
  v17 = [(BMEventBase *)&v20 init];
  if (v17)
  {
    v17->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v17->_totalAmount, a3);
    objc_storeStrong(&v17->_totalCurrencyCode, a4);
    objc_storeStrong(&v17->_paymentMethods, a5);
    objc_storeStrong(&v17->_applePayTransactionIdentifiers, a6);
    objc_storeStrong(&v17->_transactions, a7);
  }

  return v17;
}

+ (id)protoFields
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"totalAmount" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"totalCurrencyCode" number:2 type:13 subMessageClass:{0, v2}];
  v10[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"paymentMethods" number:3 type:13 subMessageClass:0];
  v10[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"applePayTransactionIdentifiers" number:4 type:13 subMessageClass:0];
  v10[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"transactions" number:5 type:14 subMessageClass:objc_opt_class()];
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)columns
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"totalAmount" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"totalCurrencyCode" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"paymentMethods_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_424_91787];
  v5 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"applePayTransactionIdentifiers_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_426_91788];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"transactions_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_428_91789];
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

id __54__BMWalletPaymentsCommerceClassicOrderPayment_columns__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _transactionsJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __54__BMWalletPaymentsCommerceClassicOrderPayment_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _applePayTransactionIdentifiersJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __54__BMWalletPaymentsCommerceClassicOrderPayment_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _paymentMethodsJSONArray];
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

    v8 = [[BMWalletPaymentsCommerceClassicOrderPayment alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end