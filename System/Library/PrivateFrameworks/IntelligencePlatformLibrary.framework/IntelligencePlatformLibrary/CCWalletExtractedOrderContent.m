@interface CCWalletExtractedOrderContent
+ (id)descriptionForTypeIdentifier:(unsigned __int16)a3;
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCWalletExtractedOrderContent)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCWalletExtractedOrderContent)initWithOrderTypeIdentifier:(id)a3 orderIdentifier:(id)a4 orderNumber:(id)a5 orderEmails:(id)a6 orderDate:(id)a7 merchant:(id)a8 shippingFulfillments:(id)a9 customer:(id)a10 payment:(id)a11 orderUpdateDate:(id)a12 trackedOrderIdentifier:(id)a13 orderStatus:(unsigned int)a14 earliestEmailDateSent:(id)a15 orderStatusUpdateDate:(id)a16 error:(id *)a17;
- (CCWalletPaymentsCommerceTrackedOrderCustomer)customer;
- (CCWalletPaymentsCommerceTrackedOrderMerchant)merchant;
- (CCWalletPaymentsCommerceTrackedOrderPayment)payment;
- (NSArray)orderEmails;
- (NSArray)shippingFulfillments;
- (NSDate)earliestEmailDateSent;
- (NSDate)orderStatusUpdateDate;
- (NSDate)orderUpdateDate;
- (NSString)orderDate;
- (NSString)orderIdentifier;
- (NSString)orderNumber;
- (NSString)orderTypeIdentifier;
- (NSString)trackedOrderIdentifier;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCWalletExtractedOrderContent

- (CCWalletExtractedOrderContent)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v123 = *MEMORY[0x1E69E9840];
  v6 = a3;
  objc_opt_class();
  v120 = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"orderTypeIdentifier"];
    v10 = [v6 objectForKeyedSubscript:@"orderIdentifier"];
    v11 = [v6 objectForKeyedSubscript:@"orderNumber"];
    v12 = [v6 objectForKeyedSubscript:@"orderEmails"];
    if (v12)
    {
      v13 = v12;
      v102 = v10;
      objc_opt_class();
      v119 = v8;
      v14 = CCValidateIsInstanceOfExpectedClass();
      v15 = v8;

      if ((v14 & 1) == 0)
      {
        CCSetError();
        v36 = 0;
        v16 = v13;
        v10 = v102;
LABEL_77:

        v8 = v15;
        goto LABEL_78;
      }

      v93 = v9;
      v96 = a4;
      v101 = v11;
      v16 = objc_opt_new();
      v115 = 0u;
      v116 = 0u;
      v117 = 0u;
      v118 = 0u;
      v17 = v13;
      v18 = [v17 countByEnumeratingWithState:&v115 objects:v122 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v116;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v116 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v115 + 1) + 8 * i);
            v23 = [CCWalletExtractedOrderContentExtractedEmail alloc];
            v114 = 0;
            v24 = [(CCWalletExtractedOrderContentExtractedEmail *)v23 initWithJSONDictionary:v22 error:&v114];
            v25 = v114;
            if (v24)
            {
              v26 = v25 == 0;
            }

            else
            {
              v26 = 0;
            }

            if (!v26)
            {
              v35 = v25;
              CCSetError();

              v36 = 0;
              v16 = v17;
              v9 = v93;
              v10 = v102;
              goto LABEL_76;
            }

            [v16 addObject:v24];
          }

          v19 = [v17 countByEnumeratingWithState:&v115 objects:v122 count:16];
        }

        while (v19);
      }

      v11 = v101;
      v9 = v93;
      a4 = v96;
      v10 = v102;
    }

    else
    {
      v16 = 0;
      v15 = v8;
    }

    v27 = [v6 objectForKeyedSubscript:@"orderDate"];
    v28 = [v6 objectForKeyedSubscript:@"merchant"];
    v101 = v11;
    if (v28)
    {
      v99 = self;
      v29 = v9;
      v30 = v27;
      v113 = 0;
      v31 = v28;
      v32 = [[CCWalletPaymentsCommerceTrackedOrderMerchant alloc] initWithJSONDictionary:v28 error:&v113];
      v33 = v113;
      v34 = v33;
      if (!v32 || v33)
      {
        CCSetError();

        v36 = 0;
        v58 = v31;
        v27 = v30;
        v9 = v29;
        self = v99;
        goto LABEL_75;
      }

      v92 = v32;
      v27 = v30;
      v9 = v29;
      self = v99;
    }

    else
    {
      v92 = 0;
    }

    v37 = [v6 objectForKeyedSubscript:@"shippingFulfillments"];
    if (v37)
    {
      v38 = v37;
      v103 = v10;
      objc_opt_class();
      v112 = v15;
      v39 = CCValidateIsInstanceOfExpectedClass();
      v40 = v15;

      if ((v39 & 1) == 0)
      {
        CCSetError();
        v36 = 0;
        v15 = v40;
        v34 = v38;
        v10 = v103;
        v58 = v92;
        goto LABEL_75;
      }

      v89 = v27;
      v91 = v40;
      v94 = v9;
      v97 = a4;
      v34 = objc_opt_new();
      v108 = 0u;
      v109 = 0u;
      v110 = 0u;
      v111 = 0u;
      v41 = v38;
      v42 = [v41 countByEnumeratingWithState:&v108 objects:v121 count:16];
      if (v42)
      {
        v43 = v42;
        v44 = *v109;
        do
        {
          for (j = 0; j != v43; ++j)
          {
            if (*v109 != v44)
            {
              objc_enumerationMutation(v41);
            }

            v46 = *(*(&v108 + 1) + 8 * j);
            v47 = [CCWalletExtractedOrderContentShippingFulfillment alloc];
            v107 = 0;
            v48 = [(CCWalletExtractedOrderContentShippingFulfillment *)v47 initWithJSONDictionary:v46 error:&v107];
            v49 = v107;
            if (v48)
            {
              v50 = v49 == 0;
            }

            else
            {
              v50 = 0;
            }

            if (!v50)
            {
              v57 = v49;
              CCSetError();

              v36 = 0;
              v34 = v41;
              v27 = v89;
              v15 = v91;
              v58 = v92;
              v9 = v94;
              v10 = v103;
              goto LABEL_75;
            }

            [v34 addObject:v48];
          }

          v43 = [v41 countByEnumeratingWithState:&v108 objects:v121 count:16];
        }

        while (v43);
      }

      a4 = v97;
      v9 = v94;
      v10 = v103;
    }

    else
    {
      v34 = 0;
      v91 = v15;
    }

    v51 = [v6 objectForKeyedSubscript:@"customer"];
    v58 = v92;
    v90 = v27;
    if (v51)
    {
      v106 = 0;
      v52 = [[CCWalletPaymentsCommerceTrackedOrderCustomer alloc] initWithJSONDictionary:v51 error:&v106];
      v53 = v106;
      v104 = v52;
      if (!v52 || v53)
      {
        v95 = v51;
        v100 = v53;
        CCSetError();
        v36 = 0;
        v27 = v90;
        v15 = v91;
        goto LABEL_74;
      }

      v51 = v52;
      v27 = v90;
    }

    v54 = [v6 objectForKeyedSubscript:@"payment"];
    v95 = v51;
    if (v54)
    {
      v105 = 0;
      v100 = v54;
      v55 = [[CCWalletPaymentsCommerceTrackedOrderPayment alloc] initWithJSONDictionary:v54 error:&v105];
      v56 = v105;
      if (!v55 || v56)
      {
        v104 = v56;
        CCSetError();

        v36 = 0;
        v15 = v91;
        v58 = v92;
        goto LABEL_74;
      }

      v98 = a4;

      v100 = v55;
    }

    else
    {
      v98 = a4;
      v100 = 0;
    }

    v59 = [v6 objectForKeyedSubscript:@"orderUpdateDate"];
    if (!v59)
    {
      v104 = 0;
LABEL_58:
      v87 = [v6 objectForKeyedSubscript:@"trackedOrderIdentifier"];
      v66 = [v6 objectForKeyedSubscript:@"orderStatus"];
      v67 = v66;
      if (v66)
      {
        v81 = [v66 unsignedIntegerValue];
      }

      else
      {
        v81 = 0;
      }

      v68 = [v6 objectForKeyedSubscript:@"earliestEmailDateSent"];
      v83 = v67;
      if (v68)
      {
        objc_opt_class();
        v88 = v68;
        v69 = CCValidateIsInstanceOfExpectedClass();
        v84 = v91;

        if ((v69 & 1) == 0)
        {
          v15 = v84;
          CCSetError();
          v36 = 0;
          v58 = v92;
LABEL_73:

          goto LABEL_74;
        }

        v70 = objc_alloc(MEMORY[0x1E695DF00]);
        [v88 doubleValue];
        v68 = [v70 initWithTimeIntervalSinceReferenceDate:?];

        v91 = v84;
      }

      v71 = [v6 objectForKeyedSubscript:@"orderStatusUpdateDate"];
      v88 = v68;
      if (v71)
      {
        v72 = v71;
        objc_opt_class();
        v85 = CCValidateIsInstanceOfExpectedClass();
        v73 = v91;

        if ((v85 & 1) == 0)
        {
          v15 = v73;
          CCSetError();
          v82 = v72;
          v36 = 0;
          v58 = v92;
          goto LABEL_72;
        }

        v86 = v73;
        v74 = objc_alloc(MEMORY[0x1E695DF00]);
        [v72 doubleValue];
        v75 = [v74 initWithTimeIntervalSinceReferenceDate:?];

        v82 = v75;
        v76 = v98;
        v68 = v88;
      }

      else
      {
        v82 = 0;
        v86 = v91;
        v76 = v98;
      }

      v80 = v68;
      LODWORD(v79) = v81;
      v58 = v92;
      v36 = [[CCWalletExtractedOrderContent alloc] initWithOrderTypeIdentifier:v9 orderIdentifier:v10 orderNumber:v101 orderEmails:v16 orderDate:v27 merchant:v92 shippingFulfillments:v34 customer:v51 payment:v100 orderUpdateDate:v104 trackedOrderIdentifier:v87 orderStatus:v79 earliestEmailDateSent:v80 orderStatusUpdateDate:v82 error:v76];
      v15 = v86;
LABEL_72:

      goto LABEL_73;
    }

    v60 = v59;
    v61 = v10;
    objc_opt_class();
    v62 = CCValidateIsInstanceOfExpectedClass();
    v63 = v91;

    if (v62)
    {
      v64 = objc_alloc(MEMORY[0x1E695DF00]);
      [v60 doubleValue];
      v65 = [v64 initWithTimeIntervalSinceReferenceDate:?];

      v104 = v65;
      v91 = v63;
      v10 = v61;
      v27 = v90;
      goto LABEL_58;
    }

    v104 = v60;
    CCSetError();
    v36 = 0;
    v15 = v63;
    v10 = v61;
    v27 = v90;
    v58 = v92;
LABEL_74:

LABEL_75:
LABEL_76:
    v11 = v101;
    goto LABEL_77;
  }

  CCSetError();
  v36 = 0;
LABEL_78:

  v77 = *MEMORY[0x1E69E9840];
  return v36;
}

- (id)jsonDictionary
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  if (self->_orderTypeIdentifier)
  {
    v4 = [(CCWalletExtractedOrderContent *)self orderTypeIdentifier];
    [v3 setObject:v4 forKeyedSubscript:@"orderTypeIdentifier"];
  }

  if (self->_orderIdentifier)
  {
    v5 = [(CCWalletExtractedOrderContent *)self orderIdentifier];
    [v3 setObject:v5 forKeyedSubscript:@"orderIdentifier"];
  }

  if (self->_orderNumber)
  {
    v6 = [(CCWalletExtractedOrderContent *)self orderNumber];
    [v3 setObject:v6 forKeyedSubscript:@"orderNumber"];
  }

  if (self->_orderEmails)
  {
    v7 = objc_opt_new();
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v8 = [(CCWalletExtractedOrderContent *)self orderEmails];
    v9 = [v8 countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v41;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v41 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v40 + 1) + 8 * i) jsonDictionary];
          [v7 addObject:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v10);
    }

    [v3 setObject:v7 forKeyedSubscript:@"orderEmails"];
  }

  if (self->_orderDate)
  {
    v14 = [(CCWalletExtractedOrderContent *)self orderDate];
    [v3 setObject:v14 forKeyedSubscript:@"orderDate"];
  }

  if (self->_merchant)
  {
    v15 = [(CCWalletExtractedOrderContent *)self merchant];
    v16 = [v15 jsonDictionary];
    [v3 setObject:v16 forKeyedSubscript:@"merchant"];
  }

  if (self->_shippingFulfillments)
  {
    v17 = objc_opt_new();
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v18 = [(CCWalletExtractedOrderContent *)self shippingFulfillments];
    v19 = [v18 countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v37;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v37 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [*(*(&v36 + 1) + 8 * j) jsonDictionary];
          [v17 addObject:v23];
        }

        v20 = [v18 countByEnumeratingWithState:&v36 objects:v44 count:16];
      }

      while (v20);
    }

    [v3 setObject:v17 forKeyedSubscript:@"shippingFulfillments"];
  }

  if (self->_customer)
  {
    v24 = [(CCWalletExtractedOrderContent *)self customer];
    v25 = [v24 jsonDictionary];
    [v3 setObject:v25 forKeyedSubscript:@"customer"];
  }

  if (self->_payment)
  {
    v26 = [(CCWalletExtractedOrderContent *)self payment];
    v27 = [v26 jsonDictionary];
    [v3 setObject:v27 forKeyedSubscript:@"payment"];
  }

  if (self->_hasRaw_orderUpdateDate)
  {
    v28 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_orderUpdateDate];
    [v3 setObject:v28 forKeyedSubscript:@"orderUpdateDate"];
  }

  if (self->_trackedOrderIdentifier)
  {
    v29 = [(CCWalletExtractedOrderContent *)self trackedOrderIdentifier];
    [v3 setObject:v29 forKeyedSubscript:@"trackedOrderIdentifier"];
  }

  v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCWalletExtractedOrderContent orderStatus](self, "orderStatus")}];
  [v3 setObject:v30 forKeyedSubscript:@"orderStatus"];

  if (self->_hasRaw_earliestEmailDateSent)
  {
    v31 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_earliestEmailDateSent];
    [v3 setObject:v31 forKeyedSubscript:@"earliestEmailDateSent"];
  }

  if (self->_hasRaw_orderStatusUpdateDate)
  {
    v32 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_orderStatusUpdateDate];
    [v3 setObject:v32 forKeyedSubscript:@"orderStatusUpdateDate"];
  }

  v33 = [v3 copy];

  v34 = *MEMORY[0x1E69E9840];

  return v33;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v19 = a3;
  if (self->_orderTypeIdentifier)
  {
    v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7953 stringValue:self->_orderTypeIdentifier];
    v19[2](v19, v5);
  }

  if (self->_orderIdentifier)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7954 stringValue:self->_orderIdentifier];
    v19[2](v19, v6);
  }

  if (self->_orderNumber)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7955 stringValue:self->_orderNumber];
    v19[2](v19, v7);
  }

  if (self->_orderEmails)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7956 repeatedSubMessageValue:self->_orderEmails];
    v19[2](v19, v8);
  }

  if (self->_orderDate)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7969 stringValue:self->_orderDate];
    v19[2](v19, v9);
  }

  if (self->_merchant)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7970 subMessageValue:self->_merchant];
    v19[2](v19, v10);
  }

  if (self->_shippingFulfillments)
  {
    v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7973 repeatedSubMessageValue:self->_shippingFulfillments];
    v19[2](v19, v11);
  }

  if (self->_customer)
  {
    v12 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7996 subMessageValue:self->_customer];
    v19[2](v19, v12);
  }

  if (self->_payment)
  {
    v13 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:8006 subMessageValue:self->_payment];
    v19[2](v19, v13);
  }

  if (self->_hasRaw_orderUpdateDate)
  {
    v14 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:8017 doubleValue:self->_raw_orderUpdateDate];
    v19[2](v19, v14);
  }

  if (self->_trackedOrderIdentifier)
  {
    v15 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:8018 stringValue:self->_trackedOrderIdentifier];
    v19[2](v19, v15);
  }

  v16 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:8031 enumValue:self->_orderStatus];
  v19[2](v19, v16);

  if (self->_hasRaw_earliestEmailDateSent)
  {
    v17 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:8034 doubleValue:self->_raw_earliestEmailDateSent];
    v19[2](v19, v17);
  }

  if (self->_hasRaw_orderStatusUpdateDate)
  {
    v18 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:8036 doubleValue:self->_raw_orderStatusUpdateDate];
    v19[2](v19, v18);
  }
}

- (NSDate)orderStatusUpdateDate
{
  if (self->_hasRaw_orderStatusUpdateDate)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:self->_raw_orderStatusUpdateDate];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSDate)earliestEmailDateSent
{
  if (self->_hasRaw_earliestEmailDateSent)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:self->_raw_earliestEmailDateSent];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)trackedOrderIdentifier
{
  v2 = [(NSString *)self->_trackedOrderIdentifier copy];

  return v2;
}

- (NSDate)orderUpdateDate
{
  if (self->_hasRaw_orderUpdateDate)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:self->_raw_orderUpdateDate];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (CCWalletPaymentsCommerceTrackedOrderPayment)payment
{
  v2 = [(CCWalletPaymentsCommerceTrackedOrderPayment *)self->_payment copy];

  return v2;
}

- (CCWalletPaymentsCommerceTrackedOrderCustomer)customer
{
  v2 = [(CCWalletPaymentsCommerceTrackedOrderCustomer *)self->_customer copy];

  return v2;
}

- (NSArray)shippingFulfillments
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_shippingFulfillments copyItems:1];

  return v2;
}

- (CCWalletPaymentsCommerceTrackedOrderMerchant)merchant
{
  v2 = [(CCWalletPaymentsCommerceTrackedOrderMerchant *)self->_merchant copy];

  return v2;
}

- (NSString)orderDate
{
  v2 = [(NSString *)self->_orderDate copy];

  return v2;
}

- (NSArray)orderEmails
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_orderEmails copyItems:1];

  return v2;
}

- (NSString)orderNumber
{
  v2 = [(NSString *)self->_orderNumber copy];

  return v2;
}

- (NSString)orderIdentifier
{
  v2 = [(NSString *)self->_orderIdentifier copy];

  return v2;
}

- (NSString)orderTypeIdentifier
{
  v2 = [(NSString *)self->_orderTypeIdentifier copy];

  return v2;
}

- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4
{
  v69 = a4;
  v70 = a3;
  v5 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:v70];
  v6 = MEMORY[0x1E6993AB8];
  v7 = MEMORY[0x1E6993AB0];
  if (*&v5[*MEMORY[0x1E6993AB8]] >= *&v5[*MEMORY[0x1E6993AB0]])
  {
    v9 = 0;
    v71 = 0;
LABEL_78:
    v8 = 0;
  }

  else
  {
    v8 = 0;
    v71 = 0;
    v9 = 0;
    v10 = MEMORY[0x1E6993AA8];
    v11 = MEMORY[0x1E6993AA0];
    do
    {
      if (*&v5[*v10])
      {
        v12 = 0;
      }

      else
      {
        v12 = v8 == 0;
      }

      if (!v12)
      {
        break;
      }

      v13 = 0;
      v14 = 0;
      v15 = 0;
      while (1)
      {
        v16 = *v6;
        v17 = *&v5[v16];
        v18 = v17 + 1;
        if (v17 == -1 || v18 > *&v5[*v7])
        {
          break;
        }

        v19 = *(*&v5[*v11] + v17);
        *&v5[v16] = v18;
        v15 |= (v19 & 0x7F) << v13;
        if ((v19 & 0x80) == 0)
        {
          goto LABEL_17;
        }

        v13 += 7;
        v20 = v14++ >= 9;
        if (v20)
        {
          v21 = 0;
          v22 = *v10;
          if (*&v5[v22])
          {
            goto LABEL_78;
          }

          goto LABEL_21;
        }
      }

      *&v5[*v10] = 1;
LABEL_17:
      v22 = *v10;
      v23 = *&v5[v22];
      if (v23)
      {
        v21 = 0;
      }

      else
      {
        v21 = v15;
      }

      if (v23)
      {
        goto LABEL_78;
      }

LABEL_21:
      switch((v21 >> 3))
      {
        case 1u:
          v24 = CCPBReaderReadStringNoCopy();
          v25 = 72;
          goto LABEL_46;
        case 2u:
          v24 = CCPBReaderReadStringNoCopy();
          v25 = 80;
          goto LABEL_46;
        case 3u:
          v24 = CCPBReaderReadStringNoCopy();
          v25 = 88;
          goto LABEL_46;
        case 4u:
          v33 = CCPBReaderReadDataNoCopy();
          if (!v71)
          {
            v71 = objc_opt_new();
          }

          v43 = [CCWalletExtractedOrderContentExtractedEmail alloc];
          v76 = 0;
          v44 = [(CCItemMessage *)v43 initWithData:v33 error:&v76];
          v8 = v76;
          if (v8 || !v44)
          {
            goto LABEL_54;
          }

          v45 = v71;
          goto LABEL_53;
        case 5u:
          v24 = CCPBReaderReadStringNoCopy();
          v25 = 104;
          goto LABEL_46;
        case 6u:
          v32 = [CCWalletPaymentsCommerceTrackedOrderMerchant alloc];
          v33 = CCPBReaderReadDataNoCopy();
          v75 = 0;
          v34 = [(CCItemMessage *)v32 initWithData:v33 error:&v75];
          v8 = v75;
          v35 = 112;
          goto LABEL_60;
        case 7u:
          v33 = CCPBReaderReadDataNoCopy();
          if (!v9)
          {
            v9 = objc_opt_new();
          }

          v47 = [CCWalletExtractedOrderContentShippingFulfillment alloc];
          v74 = 0;
          v44 = [(CCItemMessage *)v47 initWithData:v33 error:&v74];
          v8 = v74;
          if (v8 || !v44)
          {
            goto LABEL_54;
          }

          v45 = v9;
LABEL_53:
          [v45 addObject:{v44, v69}];
LABEL_54:

          goto LABEL_61;
        case 8u:
          v48 = [CCWalletPaymentsCommerceTrackedOrderCustomer alloc];
          v33 = CCPBReaderReadDataNoCopy();
          v73 = 0;
          v34 = [(CCItemMessage *)v48 initWithData:v33 error:&v73];
          v8 = v73;
          v35 = 128;
          goto LABEL_60;
        case 9u:
          v52 = [CCWalletPaymentsCommerceTrackedOrderPayment alloc];
          v33 = CCPBReaderReadDataNoCopy();
          v72 = 0;
          v34 = [(CCItemMessage *)v52 initWithData:v33 error:&v72];
          v8 = v72;
          v35 = 136;
LABEL_60:
          v53 = *(&self->super.super.isa + v35);
          *(&self->super.super.isa + v35) = v34;

          goto LABEL_61;
        case 0xBu:
          v49 = *v6;
          v50 = *&v5[v49];
          if (v50 <= 0xFFFFFFFFFFFFFFF7 && v50 + 8 <= *&v5[*v7])
          {
            v51 = *(*&v5[*v11] + v50);
            *&v5[v49] = v50 + 8;
          }

          else
          {
            *&v5[v22] = 1;
            v51 = 0.0;
          }

          v8 = 0;
          self->_raw_orderUpdateDate = v51;
          v56 = 16;
          goto LABEL_74;
        case 0xCu:
          v24 = CCPBReaderReadStringNoCopy();
          v25 = 144;
LABEL_46:
          v46 = *(&self->super.super.isa + v25);
          *(&self->super.super.isa + v25) = v24;

          goto LABEL_47;
        case 0xDu:
          v36 = 0;
          v37 = 0;
          v38 = 0;
          break;
        case 0xEu:
          v29 = *v6;
          v30 = *&v5[v29];
          if (v30 <= 0xFFFFFFFFFFFFFFF7 && v30 + 8 <= *&v5[*v7])
          {
            v31 = *(*&v5[*v11] + v30);
            *&v5[v29] = v30 + 8;
          }

          else
          {
            *&v5[v22] = 1;
            v31 = 0.0;
          }

          v8 = 0;
          self->_raw_earliestEmailDateSent = v31;
          v56 = 32;
          goto LABEL_74;
        case 0xFu:
          v26 = *v6;
          v27 = *&v5[v26];
          if (v27 <= 0xFFFFFFFFFFFFFFF7 && v27 + 8 <= *&v5[*v7])
          {
            v28 = *(*&v5[*v11] + v27);
            *&v5[v26] = v27 + 8;
          }

          else
          {
            *&v5[v22] = 1;
            v28 = 0.0;
          }

          v8 = 0;
          self->_raw_orderStatusUpdateDate = v28;
          v56 = 48;
LABEL_74:
          *(&self->super.super.isa + v56) = 1;
          continue;
        default:
          if (CCPBReaderSkipValueWithTag())
          {
LABEL_47:
            v8 = 0;
          }

          else
          {
            v54 = objc_opt_class();
            v33 = NSStringFromClass(v54);
            v55 = *&v5[*v10];
            v8 = CCSkipFieldErrorForMessage();
LABEL_61:
          }

          continue;
      }

      while (1)
      {
        v39 = *v6;
        v40 = *&v5[v39];
        v41 = v40 + 1;
        if (v40 == -1 || v41 > *&v5[*v7])
        {
          break;
        }

        v42 = *(*&v5[*v11] + v40);
        *&v5[v39] = v41;
        v38 |= (v42 & 0x7F) << v36;
        if ((v42 & 0x80) == 0)
        {
          goto LABEL_65;
        }

        v36 += 7;
        v20 = v37++ >= 9;
        if (v20)
        {
          LODWORD(v38) = 0;
          goto LABEL_67;
        }
      }

      *&v5[*v10] = 1;
LABEL_65:
      if (*&v5[*v10])
      {
        LODWORD(v38) = 0;
      }

LABEL_67:
      v8 = 0;
      self->_orderStatus = v38;
    }

    while (*&v5[*v6] < *&v5[*v7]);
  }

  v57 = [v71 copy];
  orderEmails = self->_orderEmails;
  self->_orderEmails = v57;

  v59 = [v9 copy];
  shippingFulfillments = self->_shippingFulfillments;
  self->_shippingFulfillments = v59;

  if (v8)
  {
    CCSetError();
    v61 = 0;
    v62 = v70;
  }

  else
  {
    v63 = MEMORY[0x1E6993AA8];
    v62 = v70;
    if (*&v5[*MEMORY[0x1E6993AA8]])
    {
      v64 = objc_opt_class();
      v65 = NSStringFromClass(v64);
      v66 = *&v5[*v63];
      v67 = CCInvalidBufferErrorForMessage();
      CCSetError();

      v61 = 0;
    }

    else
    {
      v61 = 1;
    }
  }

  return v61;
}

- (CCWalletExtractedOrderContent)initWithOrderTypeIdentifier:(id)a3 orderIdentifier:(id)a4 orderNumber:(id)a5 orderEmails:(id)a6 orderDate:(id)a7 merchant:(id)a8 shippingFulfillments:(id)a9 customer:(id)a10 payment:(id)a11 orderUpdateDate:(id)a12 trackedOrderIdentifier:(id)a13 orderStatus:(unsigned int)a14 earliestEmailDateSent:(id)a15 orderStatusUpdateDate:(id)a16 error:(id *)a17
{
  v98 = *MEMORY[0x1E69E9840];
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v80 = a7;
  v79 = a8;
  v26 = a9;
  v78 = a10;
  v77 = a11;
  v76 = a12;
  v75 = a13;
  v74 = a15;
  v73 = a16;
  v27 = objc_opt_new();
  v28 = 0x1E696A000uLL;
  if (v22)
  {
    objc_opt_class();
    v95 = 0;
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v30 = 0;
    if (!IsInstanceOfExpectedClass)
    {
      CCSetError();
      v40 = 0;
      v41 = self;
      goto LABEL_70;
    }

    CCPBDataWriterWriteStringField();
  }

  else
  {
    v30 = 0;
  }

  v71 = v26;
  if (!v23)
  {
    v32 = v30;
    if (!v24)
    {
      goto LABEL_8;
    }

LABEL_20:
    objc_opt_class();
    v93 = v32;
    v42 = CCValidateIsInstanceOfExpectedClass();
    v30 = v32;

    if (!v42)
    {
      goto LABEL_67;
    }

    CCPBDataWriterWriteStringField();
    if (v25)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

  objc_opt_class();
  v94 = v30;
  v31 = CCValidateIsInstanceOfExpectedClass();
  v32 = v30;

  if (!v31)
  {
    goto LABEL_62;
  }

  CCPBDataWriterWriteStringField();
  if (v24)
  {
    goto LABEL_20;
  }

LABEL_8:
  v30 = v32;
  if (v25)
  {
LABEL_9:
    objc_opt_class();
    v92 = v30;
    v33 = CCValidateArrayValues();
    v32 = v30;

    if (!v33)
    {
      goto LABEL_62;
    }

    v69 = v22;
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v34 = v25;
    v35 = [v34 countByEnumeratingWithState:&v88 objects:v97 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v89;
      do
      {
        for (i = 0; i != v36; ++i)
        {
          if (*v89 != v37)
          {
            objc_enumerationMutation(v34);
          }

          v39 = [*(*(&v88 + 1) + 8 * i) data];
          CCPBDataWriterWriteDataField();
        }

        v36 = [v34 countByEnumeratingWithState:&v88 objects:v97 count:16];
      }

      while (v36);
    }

    v22 = v69;
    v28 = 0x1E696A000;
    goto LABEL_23;
  }

LABEL_22:
  v32 = v30;
LABEL_23:
  if (v80)
  {
    v43 = *(v28 + 3776);
    objc_opt_class();
    v87 = v32;
    v44 = CCValidateIsInstanceOfExpectedClass();
    v30 = v32;

    if (!v44)
    {
      goto LABEL_67;
    }

    CCPBDataWriterWriteStringField();
  }

  else
  {
    v30 = v32;
  }

  if (v79)
  {
    objc_opt_class();
    v86 = v30;
    v45 = CCValidateIsInstanceOfExpectedClass();
    v32 = v30;

    if (!v45)
    {
      goto LABEL_62;
    }

    v68 = v25;
    v46 = [v79 data];
    CCPBDataWriterWriteDataField();
  }

  else
  {
    v68 = v25;
    v32 = v30;
  }

  if (!v71)
  {
    v30 = v32;
    v25 = v68;
LABEL_42:
    if (v78)
    {
      objc_opt_class();
      v54 = CCValidateIsInstanceOfExpectedClass();
      v32 = v30;

      if (!v54)
      {
        goto LABEL_62;
      }

      v55 = [v78 data];
      CCPBDataWriterWriteDataField();
    }

    else
    {
      v32 = v30;
    }

    if (v77)
    {
      objc_opt_class();
      v56 = CCValidateIsInstanceOfExpectedClass();
      v30 = v32;

      if (!v56)
      {
        goto LABEL_67;
      }

      v57 = [v77 data];
      CCPBDataWriterWriteDataField();
    }

    else
    {
      v30 = v32;
    }

    if (v76)
    {
      objc_opt_class();
      v58 = CCValidateIsInstanceOfExpectedClass();
      v32 = v30;

      if (!v58)
      {
        goto LABEL_62;
      }

      [v76 timeIntervalSinceReferenceDate];
      CCPBDataWriterWriteDoubleField();
    }

    else
    {
      v32 = v30;
    }

    if (v75)
    {
      v59 = *(v28 + 3776);
      objc_opt_class();
      v60 = CCValidateIsInstanceOfExpectedClass();
      v30 = v32;

      if (!v60)
      {
        goto LABEL_67;
      }

      CCPBDataWriterWriteStringField();
    }

    else
    {
      v30 = v32;
    }

    if (!a14)
    {
      v32 = v30;
      goto LABEL_64;
    }

    v61 = CCValidateEnumField();
    v32 = v30;

    if (v61)
    {
      CCPBDataWriterWriteUint32Field();
LABEL_64:
      if (!v74)
      {
        v30 = v32;
        goto LABEL_72;
      }

      objc_opt_class();
      v62 = CCValidateIsInstanceOfExpectedClass();
      v30 = v32;

      if (v62)
      {
        [v74 timeIntervalSinceReferenceDate];
        CCPBDataWriterWriteDoubleField();
LABEL_72:
        if (!v73)
        {
LABEL_75:
          v67 = [v27 immutableData];
          v41 = [(CCItemMessage *)self initWithData:v67 error:a17];

          v40 = v41;
          goto LABEL_69;
        }

        objc_opt_class();
        v65 = CCValidateIsInstanceOfExpectedClass();
        v66 = v30;

        if (v65)
        {
          [v73 timeIntervalSinceReferenceDate];
          CCPBDataWriterWriteDoubleField();
          v30 = v66;
          goto LABEL_75;
        }

        CCSetError();
        v40 = 0;
        v30 = v66;
LABEL_68:
        v41 = self;
LABEL_69:
        v26 = v71;
        goto LABEL_70;
      }

LABEL_67:
      CCSetError();
      v40 = 0;
      goto LABEL_68;
    }

LABEL_62:
    CCSetError();
    v40 = 0;
    v30 = v32;
    goto LABEL_68;
  }

  objc_opt_class();
  v85 = v32;
  v47 = CCValidateArrayValues();
  v30 = v32;

  if (v47)
  {
    v70 = v22;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v48 = v71;
    v49 = [v48 countByEnumeratingWithState:&v81 objects:v96 count:16];
    v25 = v68;
    if (v49)
    {
      v50 = v49;
      v51 = *v82;
      do
      {
        for (j = 0; j != v50; ++j)
        {
          if (*v82 != v51)
          {
            objc_enumerationMutation(v48);
          }

          v53 = [*(*(&v81 + 1) + 8 * j) data];
          CCPBDataWriterWriteDataField();
        }

        v50 = [v48 countByEnumeratingWithState:&v81 objects:v96 count:16];
      }

      while (v50);
    }

    v22 = v70;
    v28 = 0x1E696A000;
    goto LABEL_42;
  }

  CCSetError();
  v40 = 0;
  v41 = self;
  v26 = v71;
  v25 = v68;
LABEL_70:

  v63 = *MEMORY[0x1E69E9840];
  return v40;
}

+ (id)descriptionForTypeIdentifier:(unsigned __int16)a3
{
  if ((a3 - 7952) > 0x55)
  {
    return 0;
  }

  else
  {
    return off_1E73E8638[(a3 - 7952)];
  }
}

@end