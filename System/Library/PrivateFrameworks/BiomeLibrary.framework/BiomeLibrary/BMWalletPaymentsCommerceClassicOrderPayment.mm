@interface BMWalletPaymentsCommerceClassicOrderPayment
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMWalletPaymentsCommerceClassicOrderPayment)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMWalletPaymentsCommerceClassicOrderPayment)initWithTotalAmount:(id)amount totalCurrencyCode:(id)code paymentMethods:(id)methods applePayTransactionIdentifiers:(id)identifiers transactions:(id)transactions;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_applePayTransactionIdentifiersJSONArray;
- (id)_paymentMethodsJSONArray;
- (id)_transactionsJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMWalletPaymentsCommerceClassicOrderPayment

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    totalAmount = [(BMWalletPaymentsCommerceClassicOrderPayment *)self totalAmount];
    totalAmount2 = [v5 totalAmount];
    v8 = totalAmount2;
    if (totalAmount == totalAmount2)
    {
    }

    else
    {
      totalAmount3 = [(BMWalletPaymentsCommerceClassicOrderPayment *)self totalAmount];
      totalAmount4 = [v5 totalAmount];
      v11 = [totalAmount3 isEqual:totalAmount4];

      if (!v11)
      {
        goto LABEL_17;
      }
    }

    totalCurrencyCode = [(BMWalletPaymentsCommerceClassicOrderPayment *)self totalCurrencyCode];
    totalCurrencyCode2 = [v5 totalCurrencyCode];
    v15 = totalCurrencyCode2;
    if (totalCurrencyCode == totalCurrencyCode2)
    {
    }

    else
    {
      totalCurrencyCode3 = [(BMWalletPaymentsCommerceClassicOrderPayment *)self totalCurrencyCode];
      totalCurrencyCode4 = [v5 totalCurrencyCode];
      v18 = [totalCurrencyCode3 isEqual:totalCurrencyCode4];

      if (!v18)
      {
        goto LABEL_17;
      }
    }

    paymentMethods = [(BMWalletPaymentsCommerceClassicOrderPayment *)self paymentMethods];
    paymentMethods2 = [v5 paymentMethods];
    v21 = paymentMethods2;
    if (paymentMethods == paymentMethods2)
    {
    }

    else
    {
      paymentMethods3 = [(BMWalletPaymentsCommerceClassicOrderPayment *)self paymentMethods];
      paymentMethods4 = [v5 paymentMethods];
      v24 = [paymentMethods3 isEqual:paymentMethods4];

      if (!v24)
      {
        goto LABEL_17;
      }
    }

    applePayTransactionIdentifiers = [(BMWalletPaymentsCommerceClassicOrderPayment *)self applePayTransactionIdentifiers];
    applePayTransactionIdentifiers2 = [v5 applePayTransactionIdentifiers];
    v27 = applePayTransactionIdentifiers2;
    if (applePayTransactionIdentifiers == applePayTransactionIdentifiers2)
    {
    }

    else
    {
      applePayTransactionIdentifiers3 = [(BMWalletPaymentsCommerceClassicOrderPayment *)self applePayTransactionIdentifiers];
      applePayTransactionIdentifiers4 = [v5 applePayTransactionIdentifiers];
      v30 = [applePayTransactionIdentifiers3 isEqual:applePayTransactionIdentifiers4];

      if (!v30)
      {
LABEL_17:
        v12 = 0;
LABEL_23:

        goto LABEL_24;
      }
    }

    transactions = [(BMWalletPaymentsCommerceClassicOrderPayment *)self transactions];
    transactions2 = [v5 transactions];
    if (transactions == transactions2)
    {
      v12 = 1;
    }

    else
    {
      transactions3 = [(BMWalletPaymentsCommerceClassicOrderPayment *)self transactions];
      transactions4 = [v5 transactions];
      v12 = [transactions3 isEqual:transactions4];
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
  totalAmount = [(BMWalletPaymentsCommerceClassicOrderPayment *)self totalAmount];
  totalCurrencyCode = [(BMWalletPaymentsCommerceClassicOrderPayment *)self totalCurrencyCode];
  _paymentMethodsJSONArray = [(BMWalletPaymentsCommerceClassicOrderPayment *)self _paymentMethodsJSONArray];
  _applePayTransactionIdentifiersJSONArray = [(BMWalletPaymentsCommerceClassicOrderPayment *)self _applePayTransactionIdentifiersJSONArray];
  _transactionsJSONArray = [(BMWalletPaymentsCommerceClassicOrderPayment *)self _transactionsJSONArray];
  v18 = @"totalAmount";
  null = totalAmount;
  if (!totalAmount)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v16 = null;
  v23[0] = null;
  v19 = @"totalCurrencyCode";
  null2 = totalCurrencyCode;
  if (!totalCurrencyCode)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v23[1] = null2;
  v20 = @"paymentMethods";
  null3 = _paymentMethodsJSONArray;
  if (!_paymentMethodsJSONArray)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v23[2] = null3;
  v21 = @"applePayTransactionIdentifiers";
  null4 = _applePayTransactionIdentifiersJSONArray;
  if (!_applePayTransactionIdentifiersJSONArray)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v23[3] = null4;
  v22 = @"transactions";
  null5 = _transactionsJSONArray;
  if (!_transactionsJSONArray)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v23[4] = null5;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v18 count:{5, v16}];
  if (_transactionsJSONArray)
  {
    if (_applePayTransactionIdentifiersJSONArray)
    {
      goto LABEL_13;
    }
  }

  else
  {

    if (_applePayTransactionIdentifiersJSONArray)
    {
LABEL_13:
      if (_paymentMethodsJSONArray)
      {
        goto LABEL_14;
      }

      goto LABEL_21;
    }
  }

  if (_paymentMethodsJSONArray)
  {
LABEL_14:
    if (totalCurrencyCode)
    {
      goto LABEL_15;
    }

LABEL_22:

    if (totalAmount)
    {
      goto LABEL_16;
    }

    goto LABEL_23;
  }

LABEL_21:

  if (!totalCurrencyCode)
  {
    goto LABEL_22;
  }

LABEL_15:
  if (totalAmount)
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
  transactions = [(BMWalletPaymentsCommerceClassicOrderPayment *)self transactions];
  v5 = [transactions countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(transactions);
        }

        jsonDictionary = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [transactions countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  applePayTransactionIdentifiers = [(BMWalletPaymentsCommerceClassicOrderPayment *)self applePayTransactionIdentifiers];
  v5 = [applePayTransactionIdentifiers countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(applePayTransactionIdentifiers);
        }

        [v3 addObject:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [applePayTransactionIdentifiers countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  paymentMethods = [(BMWalletPaymentsCommerceClassicOrderPayment *)self paymentMethods];
  v5 = [paymentMethods countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(paymentMethods);
        }

        [v3 addObject:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [paymentMethods countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMWalletPaymentsCommerceClassicOrderPayment)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v128[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"totalAmount"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v31 = objc_alloc(MEMORY[0x1E696ABC0]);
        v32 = *MEMORY[0x1E698F240];
        v127 = *MEMORY[0x1E696A578];
        errorCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"totalAmount"];
        v128[0] = errorCopy;
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v128 forKeys:&v127 count:1];
        v33 = [v31 initWithDomain:v32 code:2 userInfo:v9];
        v7 = 0;
        v30 = 0;
        *error = v33;
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

  v8 = [dictionaryCopy objectForKeyedSubscript:@"totalCurrencyCode"];
  v87 = v6;
  v88 = v8;
  if (v8 && (v9 = v8, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      errorCopy = error;
      if (error)
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
        errorCopy = 0;
        v30 = 0;
        *error = [v34 initWithDomain:v37 code:2 userInfo:v13];
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

  v10 = [dictionaryCopy objectForKeyedSubscript:@"paymentMethods"];
  null = [MEMORY[0x1E695DFB0] null];
  v12 = [v10 isEqual:null];

  selfCopy = self;
  if (v12)
  {
    v86 = dictionaryCopy;

    v10 = 0;
  }

  else
  {
    if (v10)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v30 = 0;
          v7 = v83;
          errorCopy = v85;
          goto LABEL_94;
        }

        v45 = objc_alloc(MEMORY[0x1E696ABC0]);
        v46 = *MEMORY[0x1E698F240];
        v123 = *MEMORY[0x1E696A578];
        v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"paymentMethods"];
        v124 = v13;
        v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v124 forKeys:&v123 count:1];
        v30 = 0;
        *error = [v45 initWithDomain:v46 code:2 userInfo:v19];
        goto LABEL_53;
      }
    }

    v86 = dictionaryCopy;
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
        if (error)
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
          errorCopy = v85;
          dictionaryCopy = v86;
          v7 = v83;
          v30 = 0;
          *error = [v25 initWithDomain:v26 code:2 userInfo:v24];
          v19 = v10;
          goto LABEL_91;
        }

LABEL_34:
        v30 = 0;
        v19 = v10;
LABEL_35:
        dictionaryCopy = v86;
LABEL_53:
        v7 = v83;
        errorCopy = v85;
        goto LABEL_92;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
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
  null2 = [MEMORY[0x1E695DFB0] null];
  v21 = [v19 isEqual:null2];

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

    if (error)
    {
      v63 = objc_alloc(MEMORY[0x1E696ABC0]);
      v64 = *MEMORY[0x1E698F240];
      v116 = *MEMORY[0x1E696A578];
      v90 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"applePayTransactionIdentifiers"];
      v117 = v90;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v117 forKeys:&v116 count:1];
      v30 = 0;
      *error = [v63 initWithDomain:v64 code:2 userInfo:v24];
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
        if (error)
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
          errorCopy = v85;
          dictionaryCopy = v86;
          *error = [v50 initWithDomain:v51 code:2 userInfo:v49];

          v30 = 0;
          v24 = v19;
          v7 = v83;
          goto LABEL_90;
        }

LABEL_61:
        v30 = 0;
        v24 = v19;
LABEL_78:
        errorCopy = v85;
        dictionaryCopy = v86;
        v7 = v83;
        goto LABEL_91;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
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
  null3 = [MEMORY[0x1E695DFB0] null];
  v44 = [v24 isEqual:null3];

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
      if (error)
      {
        v77 = objc_alloc(MEMORY[0x1E696ABC0]);
        v78 = *MEMORY[0x1E698F240];
        v109 = *MEMORY[0x1E696A578];
        v82 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"transactions"];
        v110 = v82;
        v79 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v110 forKeys:&v109 count:1];
        *error = [v77 initWithDomain:v78 code:2 userInfo:v79];

        v30 = 0;
        errorCopy = v85;
        dictionaryCopy = v86;
      }

      else
      {
        v30 = 0;
        errorCopy = v85;
        dictionaryCopy = v86;
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
        errorCopy = v85;
        dictionaryCopy = v86;
        v7 = v83;
        errorCopy3 = error;
        if (error)
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
          dictionaryCopy = v67;
          errorCopy = v85;
          *errorCopy3 = [v66 initWithDomain:v73 code:2 userInfo:v72];
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
        errorCopy = v85;
        dictionaryCopy = v86;
        v7 = v83;
        errorCopy3 = error;
        if (error)
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
        if (error)
        {
          v74 = v62;
          *error = v72;
        }

        errorCopy = v85;
        dictionaryCopy = v86;
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
  errorCopy = v85;
  v30 = [(BMWalletPaymentsCommerceClassicOrderPayment *)selfCopy initWithTotalAmount:v83 totalCurrencyCode:v85 paymentMethods:v13 applePayTransactionIdentifiers:v90 transactions:v81];
  selfCopy = v30;
  dictionaryCopy = v86;
LABEL_90:

LABEL_91:
LABEL_92:

  self = selfCopy;
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
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v39 = *MEMORY[0x1E69E9840];
  toCopy = to;
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
        [v22 writeTo:toCopy];
        PBDataWriterRecallMark();
      }

      v19 = [(NSArray *)v17 countByEnumeratingWithState:&v24 objects:v36 count:16];
    }

    while (v19);
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
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
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    do
    {
      if ([fromCopy hasError])
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v38[0]) = 0;
        v13 = [fromCopy position] + 1;
        if (v13 >= [fromCopy position] && (v14 = objc_msgSend(fromCopy, "position") + 1, v14 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:v38 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
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

      v17 = [fromCopy hasError] ? 0 : v12;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v17 & 7) == 4)
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
            if (!PBReaderPlaceMark() || (v19 = [[BMWalletPaymentsCommerceClassicOrderTransaction alloc] initByReadFrom:fromCopy]) == 0)
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
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
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

  hasError = [fromCopy hasError];
  if (hasError)
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
  totalAmount = [(BMWalletPaymentsCommerceClassicOrderPayment *)self totalAmount];
  totalCurrencyCode = [(BMWalletPaymentsCommerceClassicOrderPayment *)self totalCurrencyCode];
  paymentMethods = [(BMWalletPaymentsCommerceClassicOrderPayment *)self paymentMethods];
  applePayTransactionIdentifiers = [(BMWalletPaymentsCommerceClassicOrderPayment *)self applePayTransactionIdentifiers];
  transactions = [(BMWalletPaymentsCommerceClassicOrderPayment *)self transactions];
  v9 = [v3 initWithFormat:@"BMWalletPaymentsCommerceClassicOrderPayment with totalAmount: %@, totalCurrencyCode: %@, paymentMethods: %@, applePayTransactionIdentifiers: %@, transactions: %@", totalAmount, totalCurrencyCode, paymentMethods, applePayTransactionIdentifiers, transactions];

  return v9;
}

- (BMWalletPaymentsCommerceClassicOrderPayment)initWithTotalAmount:(id)amount totalCurrencyCode:(id)code paymentMethods:(id)methods applePayTransactionIdentifiers:(id)identifiers transactions:(id)transactions
{
  amountCopy = amount;
  codeCopy = code;
  methodsCopy = methods;
  identifiersCopy = identifiers;
  transactionsCopy = transactions;
  v20.receiver = self;
  v20.super_class = BMWalletPaymentsCommerceClassicOrderPayment;
  v17 = [(BMEventBase *)&v20 init];
  if (v17)
  {
    v17->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v17->_totalAmount, amount);
    objc_storeStrong(&v17->_totalCurrencyCode, code);
    objc_storeStrong(&v17->_paymentMethods, methods);
    objc_storeStrong(&v17->_applePayTransactionIdentifiers, identifiers);
    objc_storeStrong(&v17->_transactions, transactions);
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