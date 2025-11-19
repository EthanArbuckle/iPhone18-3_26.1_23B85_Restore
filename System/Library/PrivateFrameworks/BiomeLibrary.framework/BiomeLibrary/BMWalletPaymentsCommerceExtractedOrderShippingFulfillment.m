@interface BMWalletPaymentsCommerceExtractedOrderShippingFulfillment
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMWalletPaymentsCommerceExtractedOrderShippingFulfillment)initWithFulfillmentIdentifier:(id)a3 status:(int)a4 trackingNumber:(id)a5 carrierName:(id)a6 carrierIdentifier:(id)a7 shippingMethod:(id)a8 shippingDate:(id)a9 shippingTime:(id)a10 estimatedDeliveryStartDate:(id)a11 estimatedDeliveryStartTime:(id)a12 estimatedDeliveryEndDate:(id)a13 estimatedDeliveryEndTime:(id)a14 deliveryDate:(id)a15 deliveryTime:(id)a16 shippingRecipient:(id)a17 fulfillmentCreationDate:(id)a18 shippingEmails:(id)a19;
- (BMWalletPaymentsCommerceExtractedOrderShippingFulfillment)initWithJSONDictionary:(id)a3 error:(id *)p_isa;
- (BOOL)isEqual:(id)a3;
- (NSDate)fulfillmentCreationDate;
- (NSString)description;
- (id)_shippingEmailsJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMWalletPaymentsCommerceExtractedOrderShippingFulfillment

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self fulfillmentIdentifier];
    v7 = [v5 fulfillmentIdentifier];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self fulfillmentIdentifier];
      v10 = [v5 fulfillmentIdentifier];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_62;
      }
    }

    v13 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self status];
    if (v13 == [v5 status])
    {
      v14 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self trackingNumber];
      v15 = [v5 trackingNumber];
      v16 = v15;
      if (v14 == v15)
      {
      }

      else
      {
        v17 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self trackingNumber];
        v18 = [v5 trackingNumber];
        v19 = [v17 isEqual:v18];

        if (!v19)
        {
          goto LABEL_62;
        }
      }

      v20 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self carrierName];
      v21 = [v5 carrierName];
      v22 = v21;
      if (v20 == v21)
      {
      }

      else
      {
        v23 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self carrierName];
        v24 = [v5 carrierName];
        v25 = [v23 isEqual:v24];

        if (!v25)
        {
          goto LABEL_62;
        }
      }

      v26 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self carrierIdentifier];
      v27 = [v5 carrierIdentifier];
      v28 = v27;
      if (v26 == v27)
      {
      }

      else
      {
        v29 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self carrierIdentifier];
        v30 = [v5 carrierIdentifier];
        v31 = [v29 isEqual:v30];

        if (!v31)
        {
          goto LABEL_62;
        }
      }

      v32 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self shippingMethod];
      v33 = [v5 shippingMethod];
      v34 = v33;
      if (v32 == v33)
      {
      }

      else
      {
        v35 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self shippingMethod];
        v36 = [v5 shippingMethod];
        v37 = [v35 isEqual:v36];

        if (!v37)
        {
          goto LABEL_62;
        }
      }

      v38 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self shippingDate];
      v39 = [v5 shippingDate];
      v40 = v39;
      if (v38 == v39)
      {
      }

      else
      {
        v41 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self shippingDate];
        v42 = [v5 shippingDate];
        v43 = [v41 isEqual:v42];

        if (!v43)
        {
          goto LABEL_62;
        }
      }

      v44 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self shippingTime];
      v45 = [v5 shippingTime];
      v46 = v45;
      if (v44 == v45)
      {
      }

      else
      {
        v47 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self shippingTime];
        v48 = [v5 shippingTime];
        v49 = [v47 isEqual:v48];

        if (!v49)
        {
          goto LABEL_62;
        }
      }

      v50 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self estimatedDeliveryStartDate];
      v51 = [v5 estimatedDeliveryStartDate];
      v52 = v51;
      if (v50 == v51)
      {
      }

      else
      {
        v53 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self estimatedDeliveryStartDate];
        v54 = [v5 estimatedDeliveryStartDate];
        v55 = [v53 isEqual:v54];

        if (!v55)
        {
          goto LABEL_62;
        }
      }

      v56 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self estimatedDeliveryStartTime];
      v57 = [v5 estimatedDeliveryStartTime];
      v58 = v57;
      if (v56 == v57)
      {
      }

      else
      {
        v59 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self estimatedDeliveryStartTime];
        v60 = [v5 estimatedDeliveryStartTime];
        v61 = [v59 isEqual:v60];

        if (!v61)
        {
          goto LABEL_62;
        }
      }

      v62 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self estimatedDeliveryEndDate];
      v63 = [v5 estimatedDeliveryEndDate];
      v64 = v63;
      if (v62 == v63)
      {
      }

      else
      {
        v65 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self estimatedDeliveryEndDate];
        v66 = [v5 estimatedDeliveryEndDate];
        v67 = [v65 isEqual:v66];

        if (!v67)
        {
          goto LABEL_62;
        }
      }

      v68 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self estimatedDeliveryEndTime];
      v69 = [v5 estimatedDeliveryEndTime];
      v70 = v69;
      if (v68 == v69)
      {
      }

      else
      {
        v71 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self estimatedDeliveryEndTime];
        v72 = [v5 estimatedDeliveryEndTime];
        v73 = [v71 isEqual:v72];

        if (!v73)
        {
          goto LABEL_62;
        }
      }

      v74 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self deliveryDate];
      v75 = [v5 deliveryDate];
      v76 = v75;
      if (v74 == v75)
      {
      }

      else
      {
        v77 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self deliveryDate];
        v78 = [v5 deliveryDate];
        v79 = [v77 isEqual:v78];

        if (!v79)
        {
          goto LABEL_62;
        }
      }

      v80 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self deliveryTime];
      v81 = [v5 deliveryTime];
      v82 = v81;
      if (v80 == v81)
      {
      }

      else
      {
        v83 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self deliveryTime];
        v84 = [v5 deliveryTime];
        v85 = [v83 isEqual:v84];

        if (!v85)
        {
          goto LABEL_62;
        }
      }

      v86 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self shippingRecipient];
      v87 = [v5 shippingRecipient];
      v88 = v87;
      if (v86 == v87)
      {
      }

      else
      {
        v89 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self shippingRecipient];
        v90 = [v5 shippingRecipient];
        v91 = [v89 isEqual:v90];

        if (!v91)
        {
          goto LABEL_62;
        }
      }

      v92 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self fulfillmentCreationDate];
      v93 = [v5 fulfillmentCreationDate];
      v94 = v93;
      if (v92 == v93)
      {
      }

      else
      {
        v95 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self fulfillmentCreationDate];
        v96 = [v5 fulfillmentCreationDate];
        v97 = [v95 isEqual:v96];

        if (!v97)
        {
          goto LABEL_62;
        }
      }

      v99 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self shippingEmails];
      v100 = [v5 shippingEmails];
      if (v99 == v100)
      {
        v12 = 1;
      }

      else
      {
        v101 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self shippingEmails];
        v102 = [v5 shippingEmails];
        v12 = [v101 isEqual:v102];
      }

      goto LABEL_63;
    }

LABEL_62:
    v12 = 0;
LABEL_63:

    goto LABEL_64;
  }

  v12 = 0;
LABEL_64:

  return v12;
}

- (NSDate)fulfillmentCreationDate
{
  if (self->_hasRaw_fulfillmentCreationDate)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_fulfillmentCreationDate];
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
  v61[17] = *MEMORY[0x1E69E9840];
  v3 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self fulfillmentIdentifier];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMWalletPaymentsCommerceExtractedOrderShippingFulfillment status](self, "status")}];
  v5 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self trackingNumber];
  v6 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self carrierName];
  v7 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self carrierIdentifier];
  v59 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self shippingMethod];
  v58 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self shippingDate];
  v57 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self shippingTime];
  v56 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self estimatedDeliveryStartDate];
  v55 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self estimatedDeliveryStartTime];
  v54 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self estimatedDeliveryEndDate];
  v53 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self estimatedDeliveryEndTime];
  v52 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self deliveryDate];
  v51 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self deliveryTime];
  v8 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self shippingRecipient];
  v50 = [v8 jsonDictionary];

  v9 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self fulfillmentCreationDate];
  if (v9)
  {
    v10 = MEMORY[0x1E696AD98];
    v11 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self fulfillmentCreationDate];
    [v11 timeIntervalSinceReferenceDate];
    v49 = [v10 numberWithDouble:?];
  }

  else
  {
    v49 = 0;
  }

  v12 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self _shippingEmailsJSONArray];
  v60[0] = @"fulfillmentIdentifier";
  v13 = v3;
  if (!v3)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v43 = v13;
  v61[0] = v13;
  v60[1] = @"status";
  v14 = v4;
  if (!v4)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v42 = v14;
  v61[1] = v14;
  v60[2] = @"trackingNumber";
  v15 = v5;
  if (!v5)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v41 = v15;
  v61[2] = v15;
  v60[3] = @"carrierName";
  v16 = v6;
  if (!v6)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v40 = v16;
  v61[3] = v16;
  v60[4] = @"carrierIdentifier";
  v17 = v7;
  if (!v7)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v39 = v17;
  v61[4] = v17;
  v60[5] = @"shippingMethod";
  v18 = v59;
  if (!v59)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v61[5] = v18;
  v60[6] = @"shippingDate";
  v19 = v58;
  if (!v58)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v61[6] = v19;
  v60[7] = @"shippingTime";
  v20 = v57;
  if (!v57)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v61[7] = v20;
  v60[8] = @"estimatedDeliveryStartDate";
  v21 = v56;
  if (!v56)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v48 = v6;
  v61[8] = v21;
  v60[9] = @"estimatedDeliveryStartTime";
  v22 = v55;
  if (!v55)
  {
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  v46 = v21;
  v61[9] = v22;
  v60[10] = @"estimatedDeliveryEndDate";
  v23 = v54;
  if (!v54)
  {
    v23 = [MEMORY[0x1E695DFB0] null];
  }

  v34 = v23;
  v61[10] = v23;
  v60[11] = @"estimatedDeliveryEndTime";
  v24 = v53;
  if (!v53)
  {
    v24 = [MEMORY[0x1E695DFB0] null];
  }

  v36 = v20;
  v37 = v19;
  v47 = v3;
  v61[11] = v24;
  v60[12] = @"deliveryDate";
  v25 = v52;
  if (!v52)
  {
    v25 = [MEMORY[0x1E695DFB0] null];
  }

  v38 = v18;
  v45 = v7;
  v61[12] = v25;
  v60[13] = @"deliveryTime";
  v26 = v51;
  if (!v51)
  {
    v26 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = v4;
  v61[13] = v26;
  v60[14] = @"shippingRecipient";
  v28 = v50;
  if (!v50)
  {
    v28 = [MEMORY[0x1E695DFB0] null];
  }

  v29 = v22;
  v61[14] = v28;
  v60[15] = @"fulfillmentCreationDate";
  v30 = v49;
  if (!v49)
  {
    v30 = [MEMORY[0x1E695DFB0] null];
  }

  v61[15] = v30;
  v60[16] = @"shippingEmails";
  v31 = v12;
  if (!v12)
  {
    v31 = [MEMORY[0x1E695DFB0] null];
  }

  v61[16] = v31;
  v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:v60 count:{17, v34}];
  if (!v12)
  {
  }

  if (!v49)
  {
  }

  if (!v50)
  {
  }

  if (!v51)
  {
  }

  if (!v52)
  {
  }

  if (!v53)
  {
  }

  if (!v54)
  {
  }

  if (!v55)
  {
  }

  if (!v56)
  {
  }

  if (!v57)
  {
  }

  if (!v58)
  {
  }

  if (v59)
  {
    if (v45)
    {
      goto LABEL_62;
    }
  }

  else
  {

    if (v45)
    {
LABEL_62:
      if (v48)
      {
        goto LABEL_63;
      }

      goto LABEL_71;
    }
  }

  if (v48)
  {
LABEL_63:
    if (v5)
    {
      goto LABEL_64;
    }

    goto LABEL_72;
  }

LABEL_71:

  if (v5)
  {
LABEL_64:
    if (v27)
    {
      goto LABEL_65;
    }

LABEL_73:

    if (v47)
    {
      goto LABEL_66;
    }

    goto LABEL_74;
  }

LABEL_72:

  if (!v27)
  {
    goto LABEL_73;
  }

LABEL_65:
  if (v47)
  {
    goto LABEL_66;
  }

LABEL_74:

LABEL_66:
  v32 = *MEMORY[0x1E69E9840];

  return v44;
}

- (id)_shippingEmailsJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self shippingEmails];
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

- (BMWalletPaymentsCommerceExtractedOrderShippingFulfillment)initWithJSONDictionary:(id)a3 error:(id *)p_isa
{
  v232[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"fulfillmentIdentifier"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v187 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v187 = v7;
LABEL_4:
    v8 = [v6 objectForKeyedSubscript:@"status"];
    v184 = p_isa;
    v185 = v8;
    if (!v8 || (v9 = v8, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v183 = 0;
      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v183 = v9;
      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v183 = [MEMORY[0x1E696AD98] numberWithInt:BMWalletPaymentsCommerceTrackedOrderShippingFulfillmentStatusFromString(v9)];
LABEL_7:
      v10 = [v6 objectForKeyedSubscript:@"trackingNumber"];
      v186 = v10;
      if (!v10 || (v11 = v10, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v181 = 0;
        goto LABEL_10;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v181 = v11;
LABEL_10:
        v12 = [v6 objectForKeyedSubscript:@"carrierName"];
        v182 = v12;
        if (!v12 || (v13 = v12, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v14 = v7;
          v15 = v187;
          v16 = self;
          v178 = 0;
          goto LABEL_13;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v7;
          v15 = v187;
          v16 = self;
          v178 = v13;
LABEL_13:
          v17 = [v6 objectForKeyedSubscript:@"carrierIdentifier"];
          v180 = v17;
          v187 = v15;
          if (!v17 || (v18 = v17, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v179 = 0;
LABEL_16:
            v19 = [v6 objectForKeyedSubscript:@"shippingMethod"];
            v177 = v19;
            if (!v19)
            {
              v176 = 0;
              self = v16;
              goto LABEL_34;
            }

            v20 = v19;
            objc_opt_class();
            self = v16;
            if (objc_opt_isKindOfClass())
            {
              v176 = 0;
LABEL_34:
              v30 = [v6 objectForKeyedSubscript:@"shippingDate"];
              v175 = v30;
              if (!v30)
              {
                v174 = 0;
                v7 = v14;
                goto LABEL_42;
              }

              v31 = v30;
              objc_opt_class();
              v7 = v14;
              if (objc_opt_isKindOfClass())
              {
                v174 = 0;
                goto LABEL_42;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v174 = v31;
LABEL_42:
                v32 = [v6 objectForKeyedSubscript:@"shippingTime"];
                if (!v32 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v173 = 0;
                  goto LABEL_45;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v173 = v32;
LABEL_45:
                  v33 = [v6 objectForKeyedSubscript:@"estimatedDeliveryStartDate"];
                  v172 = v33;
                  if (!v33 || (v34 = v33, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v171 = 0;
                    goto LABEL_48;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v171 = v34;
LABEL_48:
                    v35 = [v6 objectForKeyedSubscript:@"estimatedDeliveryStartTime"];
                    v165 = v35;
                    if (!v35 || (v36 = v35, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                    {
                      v166 = 0;
                      goto LABEL_51;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v166 = v36;
LABEL_51:
                      v37 = [v6 objectForKeyedSubscript:@"estimatedDeliveryEndDate"];
                      v160 = v37;
                      if (!v37 || (v38 = v37, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                      {
                        v161 = 0;
                        goto LABEL_54;
                      }

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v161 = v38;
LABEL_54:
                        v39 = [v6 objectForKeyedSubscript:@"estimatedDeliveryEndTime"];
                        v158 = v39;
                        if (!v39 || (v40 = v39, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                        {
                          v159 = 0;
                          goto LABEL_57;
                        }

                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v159 = v40;
LABEL_57:
                          v41 = [v6 objectForKeyedSubscript:@"deliveryDate"];
                          v156 = v41;
                          if (!v41 || (v42 = v41, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                          {
                            v157 = 0;
                            goto LABEL_60;
                          }

                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v157 = v42;
LABEL_60:
                            v43 = [v6 objectForKeyedSubscript:@"deliveryTime"];
                            v167 = v43;
                            if (!v43 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                            {
                              v155 = 0;
                              goto LABEL_63;
                            }

                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v155 = v43;
LABEL_63:
                              v44 = [v6 objectForKeyedSubscript:@"shippingRecipient"];
                              if (!v44 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                              {
                                v151 = v44;
                                v154 = 0;
                                goto LABEL_66;
                              }

                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v80 = v44;
                                v193 = 0;
                                v154 = [[BMWalletPaymentsCommerceTrackedOrderShippingRecipient alloc] initWithJSONDictionary:v80 error:&v193];
                                v81 = v193;
                                if (v81)
                                {
                                  if (v184)
                                  {
                                    v81 = v81;
                                    *v184 = v81;
                                  }

                                  p_isa = 0;
                                  v27 = v183;
                                  v52 = v181;
                                  goto LABEL_163;
                                }

                                v151 = v44;

LABEL_66:
                                v45 = [v6 objectForKeyedSubscript:@"fulfillmentCreationDate"];
                                v162 = v32;
                                v152 = v45;
                                if (v45 && (v46 = v45, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                {
                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    v88 = MEMORY[0x1E695DF00];
                                    v89 = v46;
                                    v90 = [v88 alloc];
                                    [v89 doubleValue];
                                    v92 = v91;

                                    v93 = [v90 initWithTimeIntervalSinceReferenceDate:v92];
                                  }

                                  else
                                  {
                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      v112 = objc_alloc_init(MEMORY[0x1E696AC80]);
                                      v153 = [v112 dateFromString:v46];

                                      goto LABEL_134;
                                    }

                                    objc_opt_class();
                                    if ((objc_opt_isKindOfClass() & 1) == 0)
                                    {
                                      if (!v184)
                                      {
                                        v153 = 0;
                                        p_isa = 0;
                                        v27 = v183;
                                        v52 = v181;
                                        v80 = v151;
                                        goto LABEL_162;
                                      }

                                      v142 = objc_alloc(MEMORY[0x1E696ABC0]);
                                      v143 = *MEMORY[0x1E698F240];
                                      v201 = *MEMORY[0x1E696A578];
                                      v113 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"fulfillmentCreationDate"];
                                      v202 = v113;
                                      v125 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v202 forKeys:&v201 count:1];
                                      v144 = v143;
                                      v43 = v167;
                                      v145 = [v142 initWithDomain:v144 code:2 userInfo:v125];
                                      v153 = 0;
                                      p_isa = 0;
                                      *v184 = v145;
                                      goto LABEL_196;
                                    }

                                    v93 = v46;
                                  }

                                  v153 = v93;
                                }

                                else
                                {
                                  v153 = 0;
                                }

LABEL_134:
                                v113 = [v6 objectForKeyedSubscript:@"shippingEmails"];
                                v114 = [MEMORY[0x1E695DFB0] null];
                                v115 = [v113 isEqual:v114];

                                v170 = self;
                                if (v115)
                                {
                                  v150 = v7;

                                  v113 = 0;
LABEL_139:
                                  v164 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v113, "count")}];
                                  v189 = 0u;
                                  v190 = 0u;
                                  v191 = 0u;
                                  v192 = 0u;
                                  v113 = v113;
                                  v116 = [v113 countByEnumeratingWithState:&v189 objects:v198 count:16];
                                  if (!v116)
                                  {
                                    goto LABEL_149;
                                  }

                                  v117 = v116;
                                  v118 = *v190;
LABEL_141:
                                  v119 = 0;
                                  while (1)
                                  {
                                    if (*v190 != v118)
                                    {
                                      objc_enumerationMutation(v113);
                                    }

                                    v120 = *(*(&v189 + 1) + 8 * v119);
                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      break;
                                    }

                                    objc_opt_class();
                                    if ((objc_opt_isKindOfClass() & 1) == 0)
                                    {
                                      self = v170;
                                      v7 = v150;
                                      v27 = v183;
                                      v126 = v184;
                                      v52 = v181;
                                      if (!v184)
                                      {
                                        goto LABEL_159;
                                      }

                                      v127 = objc_alloc(MEMORY[0x1E696ABC0]);
                                      v128 = *MEMORY[0x1E698F240];
                                      v194 = *MEMORY[0x1E696A578];
                                      v121 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"shippingEmails"];
                                      v195 = v121;
                                      v129 = MEMORY[0x1E695DF20];
                                      v130 = &v195;
                                      v131 = &v194;
                                      goto LABEL_154;
                                    }

                                    v121 = v120;
                                    v122 = [BMWalletPaymentsCommerceExtractedOrderExtractedEmail alloc];
                                    v188 = 0;
                                    v123 = [(BMWalletPaymentsCommerceExtractedOrderExtractedEmail *)v122 initWithJSONDictionary:v121 error:&v188];
                                    v124 = v188;
                                    if (v124)
                                    {
                                      v132 = v124;
                                      if (v184)
                                      {
                                        v134 = v124;
                                        *v184 = v132;
                                      }

                                      self = v170;
                                      v7 = v150;
                                      v27 = v183;
                                      v52 = v181;
LABEL_158:

                                      v43 = v167;
LABEL_159:

                                      p_isa = 0;
                                      v125 = v164;
                                      goto LABEL_160;
                                    }

                                    [v164 addObject:v123];

                                    ++v119;
                                    v43 = v167;
                                    if (v117 == v119)
                                    {
                                      v117 = [v113 countByEnumeratingWithState:&v189 objects:v198 count:16];
                                      if (v117)
                                      {
                                        goto LABEL_141;
                                      }

LABEL_149:

                                      v27 = v183;
                                      v125 = v164;
                                      v52 = v181;
                                      self = -[BMWalletPaymentsCommerceExtractedOrderShippingFulfillment initWithFulfillmentIdentifier:status:trackingNumber:carrierName:carrierIdentifier:shippingMethod:shippingDate:shippingTime:estimatedDeliveryStartDate:estimatedDeliveryStartTime:estimatedDeliveryEndDate:estimatedDeliveryEndTime:deliveryDate:deliveryTime:shippingRecipient:fulfillmentCreationDate:shippingEmails:](v170, "initWithFulfillmentIdentifier:status:trackingNumber:carrierName:carrierIdentifier:shippingMethod:shippingDate:shippingTime:estimatedDeliveryStartDate:estimatedDeliveryStartTime:estimatedDeliveryEndDate:estimatedDeliveryEndTime:deliveryDate:deliveryTime:shippingRecipient:fulfillmentCreationDate:shippingEmails:", v187, [v183 intValue], v181, v178, v179, v176, v174, v173, v171, v166, v161, v159, v157, v155, v154, v153, v164);
                                      p_isa = &self->super.super.isa;
                                      v7 = v150;
LABEL_160:

LABEL_161:
                                      v80 = v151;

LABEL_162:
                                      v32 = v162;
LABEL_163:
                                      v101 = v154;
LABEL_164:

                                      goto LABEL_165;
                                    }
                                  }

                                  self = v170;
                                  v7 = v150;
                                  v27 = v183;
                                  v126 = v184;
                                  v52 = v181;
                                  if (!v184)
                                  {
                                    goto LABEL_159;
                                  }

                                  v127 = objc_alloc(MEMORY[0x1E696ABC0]);
                                  v128 = *MEMORY[0x1E698F240];
                                  v196 = *MEMORY[0x1E696A578];
                                  v121 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"shippingEmails"];
                                  v197 = v121;
                                  v129 = MEMORY[0x1E695DF20];
                                  v130 = &v197;
                                  v131 = &v196;
LABEL_154:
                                  v132 = [v129 dictionaryWithObjects:v130 forKeys:v131 count:1];
                                  v133 = v128;
                                  self = v170;
                                  *v126 = [v127 initWithDomain:v133 code:2 userInfo:v132];
                                  goto LABEL_158;
                                }

                                if (!v113 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                {
                                  v150 = v7;
                                  goto LABEL_139;
                                }

                                if (!v184)
                                {
                                  p_isa = 0;
                                  v27 = v183;
                                  v52 = v181;
                                  goto LABEL_161;
                                }

                                v137 = objc_alloc(MEMORY[0x1E696ABC0]);
                                v138 = *MEMORY[0x1E698F240];
                                v199 = *MEMORY[0x1E696A578];
                                v139 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"shippingEmails"];
                                v200 = v139;
                                v140 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v200 forKeys:&v199 count:1];
                                v141 = v138;
                                v43 = v167;
                                *v184 = [v137 initWithDomain:v141 code:2 userInfo:v140];
                                v125 = v139;

                                p_isa = 0;
LABEL_196:
                                v27 = v183;
                                v52 = v181;
                                goto LABEL_160;
                              }

                              p_isa = v184;
                              if (v184)
                              {
                                v149 = v7;
                                v103 = objc_alloc(MEMORY[0x1E696ABC0]);
                                v104 = v32;
                                v105 = *MEMORY[0x1E698F240];
                                v203 = *MEMORY[0x1E696A578];
                                v106 = objc_alloc(MEMORY[0x1E696AEC0]);
                                v107 = v44;
                                v148 = objc_opt_class();
                                v108 = v106;
                                v43 = v167;
                                v109 = [v108 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v148, @"shippingRecipient"];
                                v204 = v109;
                                v110 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v204 forKeys:&v203 count:1];
                                v111 = v105;
                                v32 = v104;
                                *v184 = [v103 initWithDomain:v111 code:2 userInfo:v110];
                                v7 = v149;

                                v101 = v109;
                                p_isa = 0;
                                v80 = v107;
                                v27 = v183;
                                v52 = v181;
                                goto LABEL_164;
                              }

                              v27 = v183;
                              v52 = v181;
                              v80 = v44;
LABEL_165:

                              v50 = v178;
                              goto LABEL_166;
                            }

                            v169 = self;
                            if (v184)
                            {
                              v97 = objc_alloc(MEMORY[0x1E696ABC0]);
                              v98 = *MEMORY[0x1E698F240];
                              v205 = *MEMORY[0x1E696A578];
                              v99 = objc_alloc(MEMORY[0x1E696AEC0]);
                              v147 = objc_opt_class();
                              v100 = v99;
                              v43 = v167;
                              v80 = [v100 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v147, @"deliveryTime"];
                              v206 = v80;
                              v101 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v206 forKeys:&v205 count:1];
                              v102 = [v97 initWithDomain:v98 code:2 userInfo:v101];
                              v155 = 0;
                              p_isa = 0;
                              *v184 = v102;
                              v27 = v183;
                              v52 = v181;
                              self = v169;
                              goto LABEL_164;
                            }

                            v155 = 0;
                            p_isa = 0;
                            v27 = v183;
                            v52 = v181;
                            v50 = v178;
LABEL_166:

LABEL_167:
LABEL_168:

LABEL_169:
                            goto LABEL_170;
                          }

                          v163 = v32;
                          v73 = self;
                          if (v184)
                          {
                            v94 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v95 = *MEMORY[0x1E698F240];
                            v207 = *MEMORY[0x1E696A578];
                            v155 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"deliveryDate"];
                            v208 = v155;
                            v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v208 forKeys:&v207 count:1];
                            v96 = [v94 initWithDomain:v95 code:2 userInfo:v43];
                            v157 = 0;
                            p_isa = 0;
                            *v184 = v96;
                            v27 = v183;
                            v52 = v181;
                            v50 = v178;
                            self = v73;
                            v32 = v163;
                            goto LABEL_166;
                          }

                          v157 = 0;
                          p_isa = 0;
LABEL_187:
                          v27 = v183;
                          v52 = v181;
                          v50 = v178;
                          self = v73;
                          v32 = v163;
                          goto LABEL_167;
                        }

                        v163 = v32;
                        v73 = self;
                        if (v184)
                        {
                          v85 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v86 = *MEMORY[0x1E698F240];
                          v209 = *MEMORY[0x1E696A578];
                          v157 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"estimatedDeliveryEndTime"];
                          v210 = v157;
                          v156 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v210 forKeys:&v209 count:1];
                          v87 = [v85 initWithDomain:v86 code:2 userInfo:?];
                          v159 = 0;
                          p_isa = 0;
                          *v184 = v87;
                          goto LABEL_187;
                        }

                        v159 = 0;
                        p_isa = 0;
LABEL_185:
                        v27 = v183;
                        v52 = v181;
                        v50 = v178;
                        self = v73;
                        v32 = v163;
                        goto LABEL_168;
                      }

                      v163 = v32;
                      v73 = self;
                      if (v184)
                      {
                        v82 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v83 = *MEMORY[0x1E698F240];
                        v211 = *MEMORY[0x1E696A578];
                        v159 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"estimatedDeliveryEndDate"];
                        v212 = v159;
                        v158 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v212 forKeys:&v211 count:1];
                        v84 = [v82 initWithDomain:v83 code:2 userInfo:?];
                        v161 = 0;
                        p_isa = 0;
                        *v184 = v84;
                        goto LABEL_185;
                      }

                      v161 = 0;
                      p_isa = 0;
LABEL_181:
                      v27 = v183;
                      v52 = v181;
                      v50 = v178;
                      self = v73;
                      v32 = v163;
                      goto LABEL_169;
                    }

                    v163 = v32;
                    v73 = self;
                    if (v184)
                    {
                      v77 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v78 = *MEMORY[0x1E698F240];
                      v213 = *MEMORY[0x1E696A578];
                      v161 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"estimatedDeliveryStartTime"];
                      v214 = v161;
                      v160 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v214 forKeys:&v213 count:1];
                      v79 = [v77 initWithDomain:v78 code:2 userInfo:?];
                      v166 = 0;
                      p_isa = 0;
                      *v184 = v79;
                      goto LABEL_181;
                    }

                    v166 = 0;
                    p_isa = 0;
LABEL_131:
                    v27 = v183;
                    v52 = v181;
                    v50 = v178;
                    self = v73;
                    v32 = v163;
LABEL_170:

                    goto LABEL_171;
                  }

                  v163 = v32;
                  v73 = self;
                  if (v184)
                  {
                    v74 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v75 = *MEMORY[0x1E698F240];
                    v215 = *MEMORY[0x1E696A578];
                    v166 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"estimatedDeliveryStartDate"];
                    v216 = v166;
                    v165 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v216 forKeys:&v215 count:1];
                    v76 = [v74 initWithDomain:v75 code:2 userInfo:?];
                    v171 = 0;
                    p_isa = 0;
                    *v184 = v76;
                    goto LABEL_131;
                  }

                  v171 = 0;
                  p_isa = 0;
                  v27 = v183;
                  v52 = v181;
                  v50 = v178;
                  v32 = v163;
LABEL_171:

                  goto LABEL_172;
                }

                v168 = self;
                if (v184)
                {
                  v70 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v71 = *MEMORY[0x1E698F240];
                  v217 = *MEMORY[0x1E696A578];
                  v171 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"shippingTime"];
                  v218 = v171;
                  v172 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v218 forKeys:&v217 count:1];
                  v72 = [v70 initWithDomain:v71 code:2 userInfo:?];
                  v173 = 0;
                  p_isa = 0;
                  *v184 = v72;
                  v27 = v183;
                  v52 = v181;
                  v50 = v178;
                  self = v168;
                  goto LABEL_171;
                }

                v173 = 0;
                p_isa = 0;
LABEL_124:
                v27 = v183;
                v52 = v181;
                v50 = v178;
                self = v168;
LABEL_172:

                goto LABEL_173;
              }

              v168 = self;
              if (v184)
              {
                v67 = objc_alloc(MEMORY[0x1E696ABC0]);
                v68 = *MEMORY[0x1E698F240];
                v219 = *MEMORY[0x1E696A578];
                v173 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"shippingDate"];
                v220 = v173;
                v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v220 forKeys:&v219 count:1];
                v69 = [v67 initWithDomain:v68 code:2 userInfo:v32];
                v174 = 0;
                p_isa = 0;
                *v184 = v69;
                goto LABEL_124;
              }

              v174 = 0;
              p_isa = 0;
LABEL_120:
              v27 = v183;
              v52 = v181;
              v50 = v178;
              self = v168;
LABEL_173:

              goto LABEL_174;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v176 = v20;
              goto LABEL_34;
            }

            v168 = v16;
            v7 = v14;
            if (v184)
            {
              v60 = objc_alloc(MEMORY[0x1E696ABC0]);
              v61 = *MEMORY[0x1E698F240];
              v221 = *MEMORY[0x1E696A578];
              v174 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"shippingMethod"];
              v222 = v174;
              v175 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v222 forKeys:&v221 count:1];
              v62 = [v60 initWithDomain:v61 code:2 userInfo:?];
              v176 = 0;
              p_isa = 0;
              *v184 = v62;
              goto LABEL_120;
            }

            v176 = 0;
            p_isa = 0;
            v27 = v183;
            v52 = v181;
            v50 = v178;
            self = v16;
LABEL_174:

            goto LABEL_175;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v179 = v18;
            goto LABEL_16;
          }

          p_isa = v184;
          if (v184)
          {
            v57 = objc_alloc(MEMORY[0x1E696ABC0]);
            v58 = *MEMORY[0x1E698F240];
            v223 = *MEMORY[0x1E696A578];
            v176 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"carrierIdentifier"];
            v224 = v176;
            v177 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v224 forKeys:&v223 count:1];
            v59 = [v57 initWithDomain:v58 code:2 userInfo:?];
            v179 = 0;
            p_isa = 0;
            *v184 = v59;
            v27 = v183;
            v52 = v181;
            v50 = v178;
            self = v16;
            v7 = v14;
            goto LABEL_174;
          }

          v179 = 0;
          v27 = v183;
          v52 = v181;
          v50 = v178;
          self = v16;
          v7 = v14;
LABEL_175:

          goto LABEL_176;
        }

        v53 = self;
        if (v184)
        {
          v54 = objc_alloc(MEMORY[0x1E696ABC0]);
          v55 = *MEMORY[0x1E698F240];
          v225 = *MEMORY[0x1E696A578];
          v179 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"carrierName"];
          v226 = v179;
          v180 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v226 forKeys:&v225 count:1];
          v56 = [v54 initWithDomain:v55 code:2 userInfo:?];
          v50 = 0;
          p_isa = 0;
          *v184 = v56;
          v27 = v183;
          v52 = v181;
          self = v53;
          goto LABEL_175;
        }

        v50 = 0;
        p_isa = 0;
        v27 = v183;
        v52 = v181;
LABEL_176:

        goto LABEL_177;
      }

      v47 = self;
      if (v184)
      {
        v48 = objc_alloc(MEMORY[0x1E696ABC0]);
        v49 = *MEMORY[0x1E698F240];
        v227 = *MEMORY[0x1E696A578];
        v50 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"trackingNumber"];
        v228 = v50;
        v182 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v228 forKeys:&v227 count:1];
        v51 = [v48 initWithDomain:v49 code:2 userInfo:?];
        v52 = 0;
        p_isa = 0;
        *v184 = v51;
        v27 = v183;
        self = v47;
        goto LABEL_176;
      }

      v52 = 0;
      p_isa = 0;
      v27 = v183;
LABEL_177:

      v9 = v185;
      goto LABEL_178;
    }

    if (p_isa)
    {
      v63 = p_isa;
      v64 = objc_alloc(MEMORY[0x1E696ABC0]);
      v65 = *MEMORY[0x1E698F240];
      v229 = *MEMORY[0x1E696A578];
      v52 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"status"];
      v230 = v52;
      v186 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v230 forKeys:&v229 count:1];
      v66 = [v64 initWithDomain:v65 code:2 userInfo:?];
      v27 = 0;
      p_isa = 0;
      *v63 = v66;
      goto LABEL_177;
    }

    v27 = 0;
LABEL_178:

    goto LABEL_179;
  }

  if (p_isa)
  {
    v21 = p_isa;
    v22 = objc_alloc(MEMORY[0x1E696ABC0]);
    v23 = *MEMORY[0x1E698F240];
    v231 = *MEMORY[0x1E696A578];
    v24 = v7;
    v25 = objc_alloc(MEMORY[0x1E696AEC0]);
    v146 = objc_opt_class();
    v26 = v25;
    v7 = v24;
    v27 = [v26 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v146, @"fulfillmentIdentifier"];
    v232[0] = v27;
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v232 forKeys:&v231 count:1];
    v29 = [v22 initWithDomain:v23 code:2 userInfo:v28];
    v187 = 0;
    p_isa = 0;
    *v21 = v29;
    v9 = v28;
    goto LABEL_178;
  }

  v187 = 0;
LABEL_179:

  v135 = *MEMORY[0x1E69E9840];
  return p_isa;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_fulfillmentIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  status = self->_status;
  PBDataWriterWriteUint32Field();
  if (self->_trackingNumber)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_carrierName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_carrierIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_shippingMethod)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_shippingDate)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_shippingTime)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_estimatedDeliveryStartDate)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_estimatedDeliveryStartTime)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_estimatedDeliveryEndDate)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_estimatedDeliveryEndTime)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_deliveryDate)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_deliveryTime)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_shippingRecipient)
  {
    v18 = 0;
    PBDataWriterPlaceMark();
    [(BMWalletPaymentsCommerceTrackedOrderShippingRecipient *)self->_shippingRecipient writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_hasRaw_fulfillmentCreationDate)
  {
    raw_fulfillmentCreationDate = self->_raw_fulfillmentCreationDate;
    PBDataWriterWriteDoubleField();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = self->_shippingEmails;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        v18 = 0;
        PBDataWriterPlaceMark();
        [v12 writeTo:{v4, v14}];
        PBDataWriterRecallMark();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v39.receiver = self;
  v39.super_class = BMWalletPaymentsCommerceExtractedOrderShippingFulfillment;
  v5 = [(BMEventBase *)&v39 init];
  if (!v5)
  {
    goto LABEL_63;
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
        LOBYTE(v40) = 0;
        v11 = [v4 position] + 1;
        if (v11 >= [v4 position] && (v12 = objc_msgSend(v4, "position") + 1, v12 <= objc_msgSend(v4, "length")))
        {
          v13 = [v4 data];
          [v13 getBytes:&v40 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v10 |= (LOBYTE(v40) & 0x7F) << v8;
        if ((LOBYTE(v40) & 0x80) == 0)
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

      switch((v15 >> 3))
      {
        case 1u:
          v16 = PBReaderReadString();
          v17 = 136;
          goto LABEL_52;
        case 2u:
          v24 = 0;
          v25 = 0;
          v26 = 0;
          break;
        case 3u:
          v16 = PBReaderReadString();
          v17 = 40;
          goto LABEL_52;
        case 4u:
          v16 = PBReaderReadString();
          v17 = 48;
          goto LABEL_52;
        case 5u:
          v16 = PBReaderReadString();
          v17 = 144;
          goto LABEL_52;
        case 6u:
          v16 = PBReaderReadString();
          v17 = 56;
          goto LABEL_52;
        case 7u:
          v16 = PBReaderReadString();
          v17 = 64;
          goto LABEL_52;
        case 8u:
          v16 = PBReaderReadString();
          v17 = 72;
          goto LABEL_52;
        case 9u:
          v16 = PBReaderReadString();
          v17 = 80;
          goto LABEL_52;
        case 0xAu:
          v16 = PBReaderReadString();
          v17 = 88;
          goto LABEL_52;
        case 0xBu:
          v16 = PBReaderReadString();
          v17 = 96;
          goto LABEL_52;
        case 0xCu:
          v16 = PBReaderReadString();
          v17 = 104;
          goto LABEL_52;
        case 0xDu:
          v16 = PBReaderReadString();
          v17 = 112;
          goto LABEL_52;
        case 0xEu:
          v16 = PBReaderReadString();
          v17 = 120;
LABEL_52:
          v31 = *(&v5->super.super.isa + v17);
          *(&v5->super.super.isa + v17) = v16;

          goto LABEL_53;
        case 0xFu:
          v40 = 0.0;
          v41 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_65;
          }

          v20 = [[BMWalletPaymentsCommerceTrackedOrderShippingRecipient alloc] initByReadFrom:v4];
          if (!v20)
          {
            goto LABEL_65;
          }

          shippingRecipient = v5->_shippingRecipient;
          v5->_shippingRecipient = v20;

          PBReaderRecallMark();
          goto LABEL_53;
        case 0x10u:
          v5->_hasRaw_fulfillmentCreationDate = 1;
          v40 = 0.0;
          v22 = [v4 position] + 8;
          if (v22 >= [v4 position] && (v23 = objc_msgSend(v4, "position") + 8, v23 <= objc_msgSend(v4, "length")))
          {
            v33 = [v4 data];
            [v33 getBytes:&v40 range:{objc_msgSend(v4, "position"), 8}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
          }

          else
          {
            [v4 _setError];
          }

          v5->_raw_fulfillmentCreationDate = v40;
          goto LABEL_53;
        case 0x11u:
          v40 = 0.0;
          v41 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_65;
          }

          v18 = [[BMWalletPaymentsCommerceExtractedOrderExtractedEmail alloc] initByReadFrom:v4];
          if (!v18)
          {
            goto LABEL_65;
          }

          v19 = v18;
          [v6 addObject:v18];
          PBReaderRecallMark();

          goto LABEL_53;
        default:
          if (PBReaderSkipValueWithTag())
          {
            goto LABEL_53;
          }

LABEL_65:

          goto LABEL_62;
      }

      while (1)
      {
        LOBYTE(v40) = 0;
        v27 = [v4 position] + 1;
        if (v27 >= [v4 position] && (v28 = objc_msgSend(v4, "position") + 1, v28 <= objc_msgSend(v4, "length")))
        {
          v29 = [v4 data];
          [v29 getBytes:&v40 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v26 |= (LOBYTE(v40) & 0x7F) << v24;
        if ((LOBYTE(v40) & 0x80) == 0)
        {
          break;
        }

        v24 += 7;
        if (v25++ > 8)
        {
          goto LABEL_57;
        }
      }

      if (([v4 hasError] & 1) != 0 || v26 > 9)
      {
LABEL_57:
        LODWORD(v26) = 0;
      }

      v5->_status = v26;
LABEL_53:
      v32 = [v4 position];
    }

    while (v32 < [v4 length]);
  }

  v34 = [v6 copy];
  shippingEmails = v5->_shippingEmails;
  v5->_shippingEmails = v34;

  v36 = [v4 hasError];
  if (v36)
  {
LABEL_62:
    v37 = 0;
  }

  else
  {
LABEL_63:
    v37 = v5;
  }

  return v37;
}

- (NSString)description
{
  v16 = objc_alloc(MEMORY[0x1E696AEC0]);
  v15 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self fulfillmentIdentifier];
  v22 = BMWalletPaymentsCommerceTrackedOrderShippingFulfillmentStatusAsString([(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self status]);
  v14 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self trackingNumber];
  v21 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self carrierName];
  v20 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self carrierIdentifier];
  v19 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self shippingMethod];
  v18 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self shippingDate];
  v13 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self shippingTime];
  v12 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self estimatedDeliveryStartDate];
  v3 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self estimatedDeliveryStartTime];
  v4 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self estimatedDeliveryEndDate];
  v5 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self estimatedDeliveryEndTime];
  v6 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self deliveryDate];
  v7 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self deliveryTime];
  v8 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self shippingRecipient];
  v9 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self fulfillmentCreationDate];
  v10 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self shippingEmails];
  v17 = [v16 initWithFormat:@"BMWalletPaymentsCommerceExtractedOrderShippingFulfillment with fulfillmentIdentifier: %@, status: %@, trackingNumber: %@, carrierName: %@, carrierIdentifier: %@, shippingMethod: %@, shippingDate: %@, shippingTime: %@, estimatedDeliveryStartDate: %@, estimatedDeliveryStartTime: %@, estimatedDeliveryEndDate: %@, estimatedDeliveryEndTime: %@, deliveryDate: %@, deliveryTime: %@, shippingRecipient: %@, fulfillmentCreationDate: %@, shippingEmails: %@", v15, v22, v14, v21, v20, v19, v18, v13, v12, v3, v4, v5, v6, v7, v8, v9, v10];

  return v17;
}

- (BMWalletPaymentsCommerceExtractedOrderShippingFulfillment)initWithFulfillmentIdentifier:(id)a3 status:(int)a4 trackingNumber:(id)a5 carrierName:(id)a6 carrierIdentifier:(id)a7 shippingMethod:(id)a8 shippingDate:(id)a9 shippingTime:(id)a10 estimatedDeliveryStartDate:(id)a11 estimatedDeliveryStartTime:(id)a12 estimatedDeliveryEndDate:(id)a13 estimatedDeliveryEndTime:(id)a14 deliveryDate:(id)a15 deliveryTime:(id)a16 shippingRecipient:(id)a17 fulfillmentCreationDate:(id)a18 shippingEmails:(id)a19
{
  v46 = a3;
  v33 = a5;
  v45 = a5;
  v44 = a6;
  v43 = a7;
  v34 = a8;
  v42 = a8;
  v41 = a9;
  v40 = a10;
  v39 = a11;
  v38 = a12;
  v37 = a13;
  v36 = a14;
  v23 = a15;
  v24 = a16;
  v25 = a17;
  v26 = a18;
  v27 = a19;
  v47.receiver = self;
  v47.super_class = BMWalletPaymentsCommerceExtractedOrderShippingFulfillment;
  v28 = [(BMEventBase *)&v47 init];
  if (v28)
  {
    v28->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v28->_fulfillmentIdentifier, a3);
    v28->_status = a4;
    objc_storeStrong(&v28->_trackingNumber, v33);
    objc_storeStrong(&v28->_carrierName, a6);
    objc_storeStrong(&v28->_carrierIdentifier, a7);
    objc_storeStrong(&v28->_shippingMethod, v34);
    objc_storeStrong(&v28->_shippingDate, a9);
    objc_storeStrong(&v28->_shippingTime, a10);
    objc_storeStrong(&v28->_estimatedDeliveryStartDate, a11);
    objc_storeStrong(&v28->_estimatedDeliveryStartTime, a12);
    objc_storeStrong(&v28->_estimatedDeliveryEndDate, a13);
    objc_storeStrong(&v28->_estimatedDeliveryEndTime, a14);
    objc_storeStrong(&v28->_deliveryDate, a15);
    objc_storeStrong(&v28->_deliveryTime, a16);
    objc_storeStrong(&v28->_shippingRecipient, a17);
    if (v26)
    {
      v28->_hasRaw_fulfillmentCreationDate = 1;
      [v26 timeIntervalSinceReferenceDate];
    }

    else
    {
      v28->_hasRaw_fulfillmentCreationDate = 0;
      v29 = -1.0;
    }

    v28->_raw_fulfillmentCreationDate = v29;
    objc_storeStrong(&v28->_shippingEmails, a19);
  }

  return v28;
}

+ (id)protoFields
{
  v22[17] = *MEMORY[0x1E69E9840];
  v21 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"fulfillmentIdentifier" number:1 type:13 subMessageClass:0];
  v22[0] = v21;
  v20 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"status" number:2 type:4 subMessageClass:0];
  v22[1] = v20;
  v19 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"trackingNumber" number:3 type:13 subMessageClass:0];
  v22[2] = v19;
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"carrierName" number:4 type:13 subMessageClass:0];
  v22[3] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"carrierIdentifier" number:5 type:13 subMessageClass:0];
  v22[4] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shippingMethod" number:6 type:13 subMessageClass:0];
  v22[5] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shippingDate" number:7 type:13 subMessageClass:0];
  v22[6] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shippingTime" number:8 type:13 subMessageClass:0];
  v22[7] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"estimatedDeliveryStartDate" number:9 type:13 subMessageClass:0];
  v22[8] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"estimatedDeliveryStartTime" number:10 type:13 subMessageClass:0];
  v22[9] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"estimatedDeliveryEndDate" number:11 type:13 subMessageClass:0];
  v22[10] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"estimatedDeliveryEndTime" number:12 type:13 subMessageClass:0];
  v22[11] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deliveryDate" number:13 type:13 subMessageClass:0];
  v22[12] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deliveryTime" number:14 type:13 subMessageClass:0];
  v22[13] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shippingRecipient" number:15 type:14 subMessageClass:objc_opt_class()];
  v22[14] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"fulfillmentCreationDate" number:16 type:0 subMessageClass:0];
  v22[15] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shippingEmails" number:17 type:14 subMessageClass:objc_opt_class()];
  v22[16] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:17];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)columns
{
  v22[17] = *MEMORY[0x1E69E9840];
  v21 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"fulfillmentIdentifier" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v20 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"status" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v19 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"trackingNumber" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"carrierName" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"carrierIdentifier" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"shippingMethod" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"shippingDate" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"shippingTime" dataType:2 requestOnly:0 fieldNumber:8 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"estimatedDeliveryStartDate" dataType:2 requestOnly:0 fieldNumber:9 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"estimatedDeliveryStartTime" dataType:2 requestOnly:0 fieldNumber:10 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"estimatedDeliveryEndDate" dataType:2 requestOnly:0 fieldNumber:11 protoDataType:13 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"estimatedDeliveryEndTime" dataType:2 requestOnly:0 fieldNumber:12 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"deliveryDate" dataType:2 requestOnly:0 fieldNumber:13 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"deliveryTime" dataType:2 requestOnly:0 fieldNumber:14 protoDataType:13 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"shippingRecipient_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_210];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"fulfillmentCreationDate" dataType:3 requestOnly:0 fieldNumber:16 protoDataType:0 convertedType:1];
  v9 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"shippingEmails_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_212];
  v22[0] = v21;
  v22[1] = v20;
  v22[2] = v19;
  v22[3] = v18;
  v22[4] = v17;
  v22[5] = v16;
  v22[6] = v15;
  v22[7] = v2;
  v22[8] = v3;
  v22[9] = v4;
  v22[10] = v5;
  v22[11] = v14;
  v22[12] = v6;
  v22[13] = v7;
  v22[14] = v13;
  v22[15] = v8;
  v22[16] = v9;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:17];

  v10 = *MEMORY[0x1E69E9840];

  return v12;
}

id __68__BMWalletPaymentsCommerceExtractedOrderShippingFulfillment_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _shippingEmailsJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __68__BMWalletPaymentsCommerceExtractedOrderShippingFulfillment_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 shippingRecipient];
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

    v8 = [[BMWalletPaymentsCommerceExtractedOrderShippingFulfillment alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[8] = 0;
    }
  }

  return v4;
}

@end