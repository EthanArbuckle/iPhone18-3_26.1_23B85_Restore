@interface BMWalletPaymentsCommerceTrackedOrderShippingFulfillment
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMWalletPaymentsCommerceTrackedOrderShippingFulfillment)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMWalletPaymentsCommerceTrackedOrderShippingFulfillment)initWithStatus:(int)a3 trackingNumber:(id)a4 carrierName:(id)a5 shippingMethod:(id)a6 shippingDate:(id)a7 shippingTime:(id)a8 estimatedDeliveryStartDate:(id)a9 estimatedDeliveryStartTime:(id)a10 estimatedDeliveryEndDate:(id)a11 estimatedDeliveryEndTime:(id)a12 deliveryDate:(id)a13 deliveryTime:(id)a14 shippingRecipient:(id)a15 fulfillmentCreationDate:(id)a16 fulfillmentUpdateDate:(id)a17;
- (BOOL)isEqual:(id)a3;
- (NSDate)fulfillmentCreationDate;
- (NSDate)fulfillmentUpdateDate;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMWalletPaymentsCommerceTrackedOrderShippingFulfillment

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self status];
    if (v6 == [v5 status])
    {
      v7 = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self trackingNumber];
      v8 = [v5 trackingNumber];
      v9 = v8;
      if (v7 == v8)
      {
      }

      else
      {
        v10 = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self trackingNumber];
        v11 = [v5 trackingNumber];
        v12 = [v10 isEqual:v11];

        if (!v12)
        {
          goto LABEL_54;
        }
      }

      v14 = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self carrierName];
      v15 = [v5 carrierName];
      v16 = v15;
      if (v14 == v15)
      {
      }

      else
      {
        v17 = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self carrierName];
        v18 = [v5 carrierName];
        v19 = [v17 isEqual:v18];

        if (!v19)
        {
          goto LABEL_54;
        }
      }

      v20 = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self shippingMethod];
      v21 = [v5 shippingMethod];
      v22 = v21;
      if (v20 == v21)
      {
      }

      else
      {
        v23 = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self shippingMethod];
        v24 = [v5 shippingMethod];
        v25 = [v23 isEqual:v24];

        if (!v25)
        {
          goto LABEL_54;
        }
      }

      v26 = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self shippingDate];
      v27 = [v5 shippingDate];
      v28 = v27;
      if (v26 == v27)
      {
      }

      else
      {
        v29 = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self shippingDate];
        v30 = [v5 shippingDate];
        v31 = [v29 isEqual:v30];

        if (!v31)
        {
          goto LABEL_54;
        }
      }

      v32 = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self shippingTime];
      v33 = [v5 shippingTime];
      v34 = v33;
      if (v32 == v33)
      {
      }

      else
      {
        v35 = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self shippingTime];
        v36 = [v5 shippingTime];
        v37 = [v35 isEqual:v36];

        if (!v37)
        {
          goto LABEL_54;
        }
      }

      v38 = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self estimatedDeliveryStartDate];
      v39 = [v5 estimatedDeliveryStartDate];
      v40 = v39;
      if (v38 == v39)
      {
      }

      else
      {
        v41 = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self estimatedDeliveryStartDate];
        v42 = [v5 estimatedDeliveryStartDate];
        v43 = [v41 isEqual:v42];

        if (!v43)
        {
          goto LABEL_54;
        }
      }

      v44 = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self estimatedDeliveryStartTime];
      v45 = [v5 estimatedDeliveryStartTime];
      v46 = v45;
      if (v44 == v45)
      {
      }

      else
      {
        v47 = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self estimatedDeliveryStartTime];
        v48 = [v5 estimatedDeliveryStartTime];
        v49 = [v47 isEqual:v48];

        if (!v49)
        {
          goto LABEL_54;
        }
      }

      v50 = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self estimatedDeliveryEndDate];
      v51 = [v5 estimatedDeliveryEndDate];
      v52 = v51;
      if (v50 == v51)
      {
      }

      else
      {
        v53 = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self estimatedDeliveryEndDate];
        v54 = [v5 estimatedDeliveryEndDate];
        v55 = [v53 isEqual:v54];

        if (!v55)
        {
          goto LABEL_54;
        }
      }

      v56 = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self estimatedDeliveryEndTime];
      v57 = [v5 estimatedDeliveryEndTime];
      v58 = v57;
      if (v56 == v57)
      {
      }

      else
      {
        v59 = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self estimatedDeliveryEndTime];
        v60 = [v5 estimatedDeliveryEndTime];
        v61 = [v59 isEqual:v60];

        if (!v61)
        {
          goto LABEL_54;
        }
      }

      v62 = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self deliveryDate];
      v63 = [v5 deliveryDate];
      v64 = v63;
      if (v62 == v63)
      {
      }

      else
      {
        v65 = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self deliveryDate];
        v66 = [v5 deliveryDate];
        v67 = [v65 isEqual:v66];

        if (!v67)
        {
          goto LABEL_54;
        }
      }

      v68 = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self deliveryTime];
      v69 = [v5 deliveryTime];
      v70 = v69;
      if (v68 == v69)
      {
      }

      else
      {
        v71 = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self deliveryTime];
        v72 = [v5 deliveryTime];
        v73 = [v71 isEqual:v72];

        if (!v73)
        {
          goto LABEL_54;
        }
      }

      v74 = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self shippingRecipient];
      v75 = [v5 shippingRecipient];
      v76 = v75;
      if (v74 == v75)
      {
      }

      else
      {
        v77 = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self shippingRecipient];
        v78 = [v5 shippingRecipient];
        v79 = [v77 isEqual:v78];

        if (!v79)
        {
          goto LABEL_54;
        }
      }

      v80 = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self fulfillmentCreationDate];
      v81 = [v5 fulfillmentCreationDate];
      v82 = v81;
      if (v80 == v81)
      {
      }

      else
      {
        v83 = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self fulfillmentCreationDate];
        v84 = [v5 fulfillmentCreationDate];
        v85 = [v83 isEqual:v84];

        if (!v85)
        {
          goto LABEL_54;
        }
      }

      v87 = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self fulfillmentUpdateDate];
      v88 = [v5 fulfillmentUpdateDate];
      if (v87 == v88)
      {
        v13 = 1;
      }

      else
      {
        v89 = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self fulfillmentUpdateDate];
        v90 = [v5 fulfillmentUpdateDate];
        v13 = [v89 isEqual:v90];
      }

      goto LABEL_55;
    }

LABEL_54:
    v13 = 0;
LABEL_55:

    goto LABEL_56;
  }

  v13 = 0;
LABEL_56:

  return v13;
}

- (NSDate)fulfillmentUpdateDate
{
  if (self->_hasRaw_fulfillmentUpdateDate)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_fulfillmentUpdateDate];
    v4 = [v2 convertValue:v3 toType:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
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
  v55[15] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMWalletPaymentsCommerceTrackedOrderShippingFulfillment status](self, "status")}];
  v4 = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self trackingNumber];
  v5 = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self carrierName];
  v6 = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self shippingMethod];
  v53 = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self shippingDate];
  v52 = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self shippingTime];
  v51 = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self estimatedDeliveryStartDate];
  v50 = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self estimatedDeliveryStartTime];
  v49 = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self estimatedDeliveryEndDate];
  v48 = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self estimatedDeliveryEndTime];
  v47 = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self deliveryDate];
  v46 = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self deliveryTime];
  v7 = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self shippingRecipient];
  v45 = [v7 jsonDictionary];

  v8 = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self fulfillmentCreationDate];
  if (v8)
  {
    v9 = MEMORY[0x1E696AD98];
    v10 = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self fulfillmentCreationDate];
    [v10 timeIntervalSinceReferenceDate];
    v44 = [v9 numberWithDouble:?];
  }

  else
  {
    v44 = 0;
  }

  v11 = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self fulfillmentUpdateDate];
  if (v11)
  {
    v12 = MEMORY[0x1E696AD98];
    v13 = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self fulfillmentUpdateDate];
    [v13 timeIntervalSinceReferenceDate];
    v14 = [v12 numberWithDouble:?];
  }

  else
  {
    v14 = 0;
  }

  v54[0] = @"status";
  v15 = v3;
  if (!v3)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v39 = v15;
  v55[0] = v15;
  v54[1] = @"trackingNumber";
  v16 = v4;
  if (!v4)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v38 = v16;
  v55[1] = v16;
  v54[2] = @"carrierName";
  v17 = v5;
  if (!v5)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v37 = v17;
  v55[2] = v17;
  v54[3] = @"shippingMethod";
  v18 = v6;
  if (!v6)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v36 = v18;
  v55[3] = v18;
  v54[4] = @"shippingDate";
  v19 = v53;
  if (!v53)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v43 = v3;
  v55[4] = v19;
  v54[5] = @"shippingTime";
  v20 = v52;
  if (!v52)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v42 = v5;
  v55[5] = v20;
  v54[6] = @"estimatedDeliveryStartDate";
  v21 = v51;
  if (!v51)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v41 = v6;
  v55[6] = v21;
  v54[7] = @"estimatedDeliveryStartTime";
  v22 = v50;
  if (!v50)
  {
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  v35 = v19;
  v55[7] = v22;
  v54[8] = @"estimatedDeliveryEndDate";
  v23 = v49;
  if (!v49)
  {
    v23 = [MEMORY[0x1E695DFB0] null];
  }

  v34 = v20;
  v55[8] = v23;
  v54[9] = @"estimatedDeliveryEndTime";
  v24 = v48;
  if (!v48)
  {
    v24 = [MEMORY[0x1E695DFB0] null];
  }

  v25 = v4;
  v55[9] = v24;
  v54[10] = @"deliveryDate";
  v26 = v47;
  if (!v47)
  {
    v26 = [MEMORY[0x1E695DFB0] null];
  }

  v33 = v21;
  v55[10] = v26;
  v54[11] = @"deliveryTime";
  v27 = v46;
  if (!v46)
  {
    v27 = [MEMORY[0x1E695DFB0] null];
  }

  v55[11] = v27;
  v54[12] = @"shippingRecipient";
  v28 = v45;
  if (!v45)
  {
    v28 = [MEMORY[0x1E695DFB0] null];
  }

  v55[12] = v28;
  v54[13] = @"fulfillmentCreationDate";
  v29 = v44;
  if (!v44)
  {
    v29 = [MEMORY[0x1E695DFB0] null];
  }

  v55[13] = v29;
  v54[14] = @"fulfillmentUpdateDate";
  v30 = v14;
  if (!v14)
  {
    v30 = [MEMORY[0x1E695DFB0] null];
  }

  v55[14] = v30;
  v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:v54 count:15];
  if (!v14)
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

  if (!v50)
  {
  }

  if (!v51)
  {
  }

  if (!v52)
  {
  }

  if (v53)
  {
    if (v41)
    {
      goto LABEL_59;
    }
  }

  else
  {

    if (v41)
    {
LABEL_59:
      if (v42)
      {
        goto LABEL_60;
      }

      goto LABEL_67;
    }
  }

  if (v42)
  {
LABEL_60:
    if (v25)
    {
      goto LABEL_61;
    }

LABEL_68:

    if (v43)
    {
      goto LABEL_62;
    }

    goto LABEL_69;
  }

LABEL_67:

  if (!v25)
  {
    goto LABEL_68;
  }

LABEL_61:
  if (v43)
  {
    goto LABEL_62;
  }

LABEL_69:

LABEL_62:
  v31 = *MEMORY[0x1E69E9840];

  return v40;
}

- (BMWalletPaymentsCommerceTrackedOrderShippingFulfillment)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v212[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v181 = [v6 objectForKeyedSubscript:@"status"];
  if (!v181 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v179 = 0;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v181;
LABEL_8:
    v179 = v7;
LABEL_9:
    v8 = [v6 objectForKeyedSubscript:@"trackingNumber"];
    if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v178 = 0;
      goto LABEL_12;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v178 = v8;
LABEL_12:
      v9 = [v6 objectForKeyedSubscript:@"carrierName"];
      if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v174 = a4;
        v176 = 0;
        goto LABEL_15;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v174 = a4;
        v176 = v9;
LABEL_15:
        v180 = [v6 objectForKeyedSubscript:@"shippingMethod"];
        if (!v180 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v175 = 0;
          goto LABEL_18;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v175 = v180;
LABEL_18:
          v177 = [v6 objectForKeyedSubscript:@"shippingDate"];
          if (!v177 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v173 = 0;
            goto LABEL_21;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v173 = v177;
LABEL_21:
            v10 = [v6 objectForKeyedSubscript:@"shippingTime"];
            if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v171 = 0;
              goto LABEL_24;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v171 = v10;
LABEL_24:
              v11 = [v6 objectForKeyedSubscript:@"estimatedDeliveryStartDate"];
              v172 = v11;
              if (!v11 || (v12 = v11, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v167 = 0;
                goto LABEL_27;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v167 = v12;
LABEL_27:
                v13 = [v6 objectForKeyedSubscript:@"estimatedDeliveryStartTime"];
                v168 = v13;
                if (!v13 || (v14 = v13, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v170 = 0;
                  goto LABEL_30;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v170 = v14;
LABEL_30:
                  v15 = [v6 objectForKeyedSubscript:@"estimatedDeliveryEndDate"];
                  v164 = v15;
                  if (!v15 || (v16 = v15, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v169 = 0;
                    goto LABEL_33;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v169 = v16;
LABEL_33:
                    v17 = [v6 objectForKeyedSubscript:@"estimatedDeliveryEndTime"];
                    v161 = v17;
                    if (!v17 || (v18 = v17, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                    {
                      v166 = 0;
                      goto LABEL_36;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v166 = v18;
LABEL_36:
                      v19 = [v6 objectForKeyedSubscript:@"deliveryDate"];
                      v156 = v19;
                      if (!v19 || (v20 = v19, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                      {
                        v165 = 0;
LABEL_39:
                        v21 = [v6 objectForKeyedSubscript:@"deliveryTime"];
                        v162 = self;
                        v158 = v8;
                        v154 = v9;
                        v155 = v21;
                        if (!v21)
                        {
LABEL_79:
                          v73 = [v6 objectForKeyedSubscript:@"shippingRecipient"];
                          v157 = v21;
                          if (v73 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                          {
                            objc_opt_class();
                            if ((objc_opt_isKindOfClass() & 1) == 0)
                            {
                              if (!v174)
                              {
                                v27 = 0;
                                v46 = v173;
                                v50 = v171;
                                v61 = v167;
                                goto LABEL_129;
                              }

                              v122 = objc_alloc(MEMORY[0x1E696ABC0]);
                              v123 = *MEMORY[0x1E698F240];
                              v187 = *MEMORY[0x1E696A578];
                              v153 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"shippingRecipient"];
                              v188 = v153;
                              v124 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v188 forKeys:&v187 count:1];
                              *v174 = [v122 initWithDomain:v123 code:2 userInfo:v124];

                              v27 = 0;
                              v87 = v73;
                              v46 = v173;
                              goto LABEL_127;
                            }

                            v87 = v73;
                            v182 = 0;
                            v74 = [[BMWalletPaymentsCommerceTrackedOrderShippingRecipient alloc] initWithJSONDictionary:v87 error:&v182];
                            v88 = v182;
                            if (v88)
                            {
                              v153 = v74;
                              v50 = v171;
                              v61 = v167;
                              if (v174)
                              {
                                v88 = v88;
                                *v174 = v88;
                              }

                              v27 = 0;
                              v46 = v173;
                              goto LABEL_128;
                            }
                          }

                          else
                          {
                            v74 = 0;
                          }

                          v75 = [v6 objectForKeyedSubscript:@"fulfillmentCreationDate"];
                          v152 = v75;
                          v153 = v74;
                          v150 = v73;
                          if (v75 && (v76 = v75, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                          {
                            objc_opt_class();
                            v105 = v76;
                            v78 = v166;
                            if (objc_opt_isKindOfClass())
                            {
                              v106 = MEMORY[0x1E695DF00];
                              v107 = v105;
                              v108 = [v106 alloc];
                              [v107 doubleValue];
                              v110 = v109;

                              v111 = [v108 initWithTimeIntervalSinceReferenceDate:v110];
                            }

                            else
                            {
                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v125 = objc_alloc_init(MEMORY[0x1E696AC80]);
                                v77 = [v125 dateFromString:v105];

                                goto LABEL_114;
                              }

                              objc_opt_class();
                              if ((objc_opt_isKindOfClass() & 1) == 0)
                              {
                                if (!v174)
                                {
                                  v137 = 0;
                                  v27 = 0;
                                  v46 = v173;
                                  goto LABEL_126;
                                }

                                v140 = objc_alloc(MEMORY[0x1E696ABC0]);
                                v141 = *MEMORY[0x1E698F240];
                                v185 = *MEMORY[0x1E696A578];
                                v126 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"fulfillmentCreationDate"];
                                v186 = v126;
                                v151 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v186 forKeys:&v185 count:1];
                                v149 = 0;
                                v27 = 0;
                                *v174 = [v140 initWithDomain:v141 code:2 userInfo:?];
                                v46 = v173;
                                v135 = v166;
                                v136 = v169;
                                goto LABEL_159;
                              }

                              v111 = v76;
                            }

                            v77 = v111;
                          }

                          else
                          {
                            v77 = 0;
                            v78 = v166;
                          }

LABEL_114:
                          v126 = [v6 objectForKeyedSubscript:@"fulfillmentUpdateDate"];
                          v149 = v77;
                          v151 = v126;
                          if (!v126)
                          {
LABEL_124:
                            v148 = v74;
                            v134 = v165;
                            v147 = v78;
                            v135 = v78;
                            v136 = v169;
                            v46 = v173;
                            v27 = -[BMWalletPaymentsCommerceTrackedOrderShippingFulfillment initWithStatus:trackingNumber:carrierName:shippingMethod:shippingDate:shippingTime:estimatedDeliveryStartDate:estimatedDeliveryStartTime:estimatedDeliveryEndDate:estimatedDeliveryEndTime:deliveryDate:deliveryTime:shippingRecipient:fulfillmentCreationDate:fulfillmentUpdateDate:](v162, "initWithStatus:trackingNumber:carrierName:shippingMethod:shippingDate:shippingTime:estimatedDeliveryStartDate:estimatedDeliveryStartTime:estimatedDeliveryEndDate:estimatedDeliveryEndTime:deliveryDate:deliveryTime:shippingRecipient:fulfillmentCreationDate:fulfillmentUpdateDate:", [v179 intValue], v178, v176, v175, v173, v171, v167, v170, v169, v147, v165, v157, v148, v77, v126);
                            v162 = v27;
LABEL_125:
                            v165 = v134;
                            v166 = v135;
                            v169 = v136;

                            v137 = v149;
                            v73 = v150;
LABEL_126:

                            v87 = v73;
                            goto LABEL_127;
                          }

                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v126 = 0;
                            goto LABEL_124;
                          }

                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v127 = MEMORY[0x1E695DF00];
                            v128 = v126;
                            v129 = [v127 alloc];
                            [v128 doubleValue];
                            v131 = v130;

                            v132 = [v129 initWithTimeIntervalSinceReferenceDate:v131];
LABEL_119:
                            v126 = v132;
                            goto LABEL_124;
                          }

                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v133 = objc_alloc_init(MEMORY[0x1E696AC80]);
                            v126 = [v133 dateFromString:v126];

                            goto LABEL_124;
                          }

                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v132 = v126;
                            goto LABEL_119;
                          }

                          if (v174)
                          {
                            v142 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v143 = *MEMORY[0x1E698F240];
                            v183 = *MEMORY[0x1E696A578];
                            v144 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"fulfillmentUpdateDate"];
                            v184 = v144;
                            v145 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v184 forKeys:&v183 count:1];
                            *v174 = [v142 initWithDomain:v143 code:2 userInfo:v145];
                          }

                          v126 = 0;
                          v27 = 0;
                          v46 = v173;
                          v136 = v169;
                          v135 = v166;
LABEL_159:
                          v134 = v165;
                          goto LABEL_125;
                        }

                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v21 = 0;
                          goto LABEL_79;
                        }

                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v21 = v21;
                          goto LABEL_79;
                        }

                        if (v174)
                        {
                          v120 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v121 = *MEMORY[0x1E698F240];
                          v189 = *MEMORY[0x1E696A578];
                          v87 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"deliveryTime"];
                          v190 = v87;
                          v153 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v190 forKeys:&v189 count:1];
                          v157 = 0;
                          v27 = 0;
                          *v174 = [v120 initWithDomain:v121 code:2 userInfo:?];
                          v46 = v173;
LABEL_127:
                          v50 = v171;
                          v61 = v167;
LABEL_128:

                          v73 = v87;
                          v9 = v154;
                          v8 = v158;
LABEL_129:

                          self = v162;
LABEL_130:

LABEL_131:
LABEL_132:

                          goto LABEL_133;
                        }

                        v157 = 0;
                        v27 = 0;
LABEL_147:
                        v46 = v173;
                        v50 = v171;
                        v61 = v167;
                        goto LABEL_130;
                      }

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v165 = v20;
                        goto LABEL_39;
                      }

                      if (v174)
                      {
                        v112 = self;
                        v113 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v114 = v8;
                        v115 = v9;
                        v116 = *MEMORY[0x1E698F240];
                        v191 = *MEMORY[0x1E696A578];
                        v157 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"deliveryDate"];
                        v192 = v157;
                        v117 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v192 forKeys:&v191 count:1];
                        v118 = v113;
                        self = v112;
                        v119 = v116;
                        v9 = v115;
                        v8 = v114;
                        v155 = v117;
                        v165 = 0;
                        v27 = 0;
                        *v174 = [v118 initWithDomain:v119 code:2 userInfo:?];
                        goto LABEL_147;
                      }

                      v165 = 0;
                      v27 = 0;
LABEL_145:
                      v46 = v173;
                      v50 = v171;
                      v61 = v167;
                      goto LABEL_131;
                    }

                    if (v174)
                    {
                      v97 = self;
                      v98 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v99 = v8;
                      v100 = v9;
                      v101 = *MEMORY[0x1E698F240];
                      v193 = *MEMORY[0x1E696A578];
                      v165 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"estimatedDeliveryEndTime"];
                      v194 = v165;
                      v102 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v194 forKeys:&v193 count:1];
                      v103 = v98;
                      self = v97;
                      v104 = v101;
                      v9 = v100;
                      v8 = v99;
                      v156 = v102;
                      v166 = 0;
                      v27 = 0;
                      *v174 = [v103 initWithDomain:v104 code:2 userInfo:?];
                      goto LABEL_145;
                    }

                    v166 = 0;
                    v27 = 0;
LABEL_143:
                    v46 = v173;
                    v50 = v171;
                    v61 = v167;
                    goto LABEL_132;
                  }

                  if (v174)
                  {
                    v89 = self;
                    v90 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v91 = v8;
                    v92 = v9;
                    v93 = *MEMORY[0x1E698F240];
                    v195 = *MEMORY[0x1E696A578];
                    v166 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"estimatedDeliveryEndDate"];
                    v196 = v166;
                    v94 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v196 forKeys:&v195 count:1];
                    v95 = v90;
                    self = v89;
                    v96 = v93;
                    v9 = v92;
                    v8 = v91;
                    v161 = v94;
                    v169 = 0;
                    v27 = 0;
                    *v174 = [v95 initWithDomain:v96 code:2 userInfo:?];
                    goto LABEL_143;
                  }

                  v169 = 0;
                  v27 = 0;
LABEL_121:
                  v46 = v173;
                  v50 = v171;
                  v61 = v167;
LABEL_133:

                  goto LABEL_134;
                }

                if (v174)
                {
                  v79 = self;
                  v80 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v81 = v8;
                  v82 = v9;
                  v83 = *MEMORY[0x1E698F240];
                  v197 = *MEMORY[0x1E696A578];
                  v169 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"estimatedDeliveryStartTime"];
                  v198 = v169;
                  v84 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v198 forKeys:&v197 count:1];
                  v85 = v80;
                  self = v79;
                  v86 = v83;
                  v9 = v82;
                  v8 = v81;
                  v164 = v84;
                  v170 = 0;
                  v27 = 0;
                  *v174 = [v85 initWithDomain:v86 code:2 userInfo:?];
                  goto LABEL_121;
                }

                v170 = 0;
                v27 = 0;
                v46 = v173;
                v50 = v171;
                v61 = v167;
LABEL_134:

                goto LABEL_135;
              }

              if (v174)
              {
                v65 = self;
                v66 = objc_alloc(MEMORY[0x1E696ABC0]);
                v67 = v8;
                v68 = v9;
                v69 = *MEMORY[0x1E698F240];
                v199 = *MEMORY[0x1E696A578];
                v170 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"estimatedDeliveryStartDate"];
                v200 = v170;
                v70 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v200 forKeys:&v199 count:1];
                v71 = v66;
                self = v65;
                v72 = v69;
                v9 = v68;
                v8 = v67;
                v168 = v70;
                v61 = 0;
                v27 = 0;
                *v174 = [v71 initWithDomain:v72 code:2 userInfo:?];
                v46 = v173;
                v50 = v171;
                goto LABEL_134;
              }

              v61 = 0;
              v27 = 0;
              v46 = v173;
              v50 = v171;
LABEL_135:

              goto LABEL_136;
            }

            if (v174)
            {
              v57 = self;
              v58 = objc_alloc(MEMORY[0x1E696ABC0]);
              v160 = v8;
              v59 = v9;
              v60 = *MEMORY[0x1E698F240];
              v201 = *MEMORY[0x1E696A578];
              v61 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"shippingTime"];
              v202 = v61;
              v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v202 forKeys:&v201 count:1];
              v63 = v58;
              self = v57;
              v64 = v60;
              v9 = v59;
              v8 = v160;
              v172 = v62;
              v50 = 0;
              v27 = 0;
              *v174 = [v63 initWithDomain:v64 code:2 userInfo:?];
              v46 = v173;
              goto LABEL_135;
            }

            v50 = 0;
            v27 = 0;
            v46 = v173;
LABEL_136:

            goto LABEL_137;
          }

          v46 = v174;
          if (v174)
          {
            v163 = self;
            v47 = objc_alloc(MEMORY[0x1E696ABC0]);
            v159 = v8;
            v48 = v9;
            v49 = *MEMORY[0x1E698F240];
            v203 = *MEMORY[0x1E696A578];
            v50 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"shippingDate"];
            v204 = v50;
            v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v204 forKeys:&v203 count:1];
            v51 = v47;
            self = v163;
            v52 = v49;
            v9 = v48;
            v8 = v159;
            v27 = 0;
            *v174 = [v51 initWithDomain:v52 code:2 userInfo:v10];
            v46 = 0;
            goto LABEL_136;
          }

          v27 = 0;
LABEL_137:

          goto LABEL_138;
        }

        if (v174)
        {
          v37 = self;
          v38 = objc_alloc(MEMORY[0x1E696ABC0]);
          v39 = v8;
          v40 = v9;
          v41 = *MEMORY[0x1E698F240];
          v205 = *MEMORY[0x1E696A578];
          v42 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"shippingMethod"];
          v206 = v42;
          v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v206 forKeys:&v205 count:1];
          v44 = v38;
          self = v37;
          v45 = v41;
          v9 = v40;
          v8 = v39;
          v177 = v43;
          v175 = 0;
          v27 = 0;
          *v174 = [v44 initWithDomain:v45 code:2 userInfo:v43];
          v46 = v42;
          goto LABEL_137;
        }

        v175 = 0;
        v27 = 0;
LABEL_138:

        goto LABEL_139;
      }

      if (a4)
      {
        v28 = objc_alloc(MEMORY[0x1E696ABC0]);
        v29 = a4;
        v30 = self;
        v31 = *MEMORY[0x1E698F240];
        v207 = *MEMORY[0x1E696A578];
        v32 = v8;
        v33 = objc_alloc(MEMORY[0x1E696AEC0]);
        v146 = objc_opt_class();
        v34 = v33;
        v8 = v32;
        v175 = [v34 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v146, @"carrierName"];
        v208 = v175;
        v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v208 forKeys:&v207 count:1];
        v36 = v31;
        self = v30;
        v180 = v35;
        v176 = 0;
        v27 = 0;
        *v29 = [v28 initWithDomain:v36 code:2 userInfo:v35];
        goto LABEL_138;
      }

      v176 = 0;
      v27 = 0;
LABEL_139:

      goto LABEL_140;
    }

    if (a4)
    {
      v22 = objc_alloc(MEMORY[0x1E696ABC0]);
      v23 = self;
      v24 = *MEMORY[0x1E698F240];
      v209 = *MEMORY[0x1E696A578];
      v176 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"trackingNumber"];
      v210 = v176;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v210 forKeys:&v209 count:1];
      v26 = v24;
      self = v23;
      v9 = v25;
      v178 = 0;
      v27 = 0;
      *a4 = [v22 initWithDomain:v26 code:2 userInfo:v25];
      goto LABEL_139;
    }

    v178 = 0;
    v27 = 0;
LABEL_140:

    goto LABEL_141;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInt:BMWalletPaymentsCommerceTrackedOrderShippingFulfillmentStatusFromString(v181)];
    goto LABEL_8;
  }

  if (a4)
  {
    v53 = objc_alloc(MEMORY[0x1E696ABC0]);
    v54 = self;
    v55 = *MEMORY[0x1E698F240];
    v211 = *MEMORY[0x1E696A578];
    v178 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"status"];
    v212[0] = v178;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v212 forKeys:&v211 count:1];
    v56 = v55;
    self = v54;
    v179 = 0;
    v27 = 0;
    *a4 = [v53 initWithDomain:v56 code:2 userInfo:v8];
    goto LABEL_140;
  }

  v179 = 0;
  v27 = 0;
LABEL_141:

  v138 = *MEMORY[0x1E69E9840];
  return v27;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
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
    PBDataWriterPlaceMark();
    [(BMWalletPaymentsCommerceTrackedOrderShippingRecipient *)self->_shippingRecipient writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_hasRaw_fulfillmentCreationDate)
  {
    raw_fulfillmentCreationDate = self->_raw_fulfillmentCreationDate;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasRaw_fulfillmentUpdateDate)
  {
    raw_fulfillmentUpdateDate = self->_raw_fulfillmentUpdateDate;
    PBDataWriterWriteDoubleField();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v38.receiver = self;
  v38.super_class = BMWalletPaymentsCommerceTrackedOrderShippingFulfillment;
  v5 = [(BMEventBase *)&v38 init];
  if (!v5)
  {
    goto LABEL_64;
  }

  v6 = [v4 position];
  if (v6 < [v4 length])
  {
    do
    {
      if ([v4 hasError])
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v39[0]) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:v39 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v39[0] & 0x7F) << v7;
        if ((v39[0] & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        if (v8++ >= 9)
        {
          v14 = 0;
          goto LABEL_16;
        }
      }

      v14 = [v4 hasError] ? 0 : v9;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        break;
      }

      switch((v14 >> 3))
      {
        case 1u:
          v15 = 0;
          v16 = 0;
          v17 = 0;
          break;
        case 2u:
          v24 = PBReaderReadString();
          v25 = 56;
          goto LABEL_50;
        case 3u:
          v24 = PBReaderReadString();
          v25 = 64;
          goto LABEL_50;
        case 4u:
          v24 = PBReaderReadString();
          v25 = 72;
          goto LABEL_50;
        case 5u:
          v24 = PBReaderReadString();
          v25 = 80;
          goto LABEL_50;
        case 6u:
          v24 = PBReaderReadString();
          v25 = 88;
          goto LABEL_50;
        case 7u:
          v24 = PBReaderReadString();
          v25 = 96;
          goto LABEL_50;
        case 8u:
          v24 = PBReaderReadString();
          v25 = 104;
          goto LABEL_50;
        case 9u:
          v24 = PBReaderReadString();
          v25 = 112;
          goto LABEL_50;
        case 0xAu:
          v24 = PBReaderReadString();
          v25 = 120;
          goto LABEL_50;
        case 0xBu:
          v24 = PBReaderReadString();
          v25 = 128;
          goto LABEL_50;
        case 0xCu:
          v24 = PBReaderReadString();
          v25 = 136;
LABEL_50:
          v30 = *(&v5->super.super.isa + v25);
          *(&v5->super.super.isa + v25) = v24;

          goto LABEL_51;
        case 0xDu:
          v39[0] = 0;
          v39[1] = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_63;
          }

          v26 = [[BMWalletPaymentsCommerceTrackedOrderShippingRecipient alloc] initByReadFrom:v4];
          if (!v26)
          {
            goto LABEL_63;
          }

          shippingRecipient = v5->_shippingRecipient;
          v5->_shippingRecipient = v26;

          PBReaderRecallMark();
          goto LABEL_51;
        case 0xEu:
          v5->_hasRaw_fulfillmentCreationDate = 1;
          v39[0] = 0;
          v28 = [v4 position] + 8;
          if (v28 >= [v4 position] && (v29 = objc_msgSend(v4, "position") + 8, v29 <= objc_msgSend(v4, "length")))
          {
            v35 = [v4 data];
            [v35 getBytes:v39 range:{objc_msgSend(v4, "position"), 8}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
          }

          else
          {
            [v4 _setError];
          }

          v33 = v39[0];
          v34 = 24;
          goto LABEL_61;
        case 0xFu:
          v5->_hasRaw_fulfillmentUpdateDate = 1;
          v39[0] = 0;
          v22 = [v4 position] + 8;
          if (v22 >= [v4 position] && (v23 = objc_msgSend(v4, "position") + 8, v23 <= objc_msgSend(v4, "length")))
          {
            v32 = [v4 data];
            [v32 getBytes:v39 range:{objc_msgSend(v4, "position"), 8}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
          }

          else
          {
            [v4 _setError];
          }

          v33 = v39[0];
          v34 = 40;
LABEL_61:
          *(&v5->super.super.isa + v34) = v33;
          goto LABEL_51;
        default:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_63;
          }

          goto LABEL_51;
      }

      while (1)
      {
        LOBYTE(v39[0]) = 0;
        v18 = [v4 position] + 1;
        if (v18 >= [v4 position] && (v19 = objc_msgSend(v4, "position") + 1, v19 <= objc_msgSend(v4, "length")))
        {
          v20 = [v4 data];
          [v20 getBytes:v39 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v17 |= (v39[0] & 0x7F) << v15;
        if ((v39[0] & 0x80) == 0)
        {
          break;
        }

        v15 += 7;
        if (v16++ > 8)
        {
          goto LABEL_55;
        }
      }

      if (([v4 hasError] & 1) != 0 || v17 > 9)
      {
LABEL_55:
        LODWORD(v17) = 0;
      }

      v5->_status = v17;
LABEL_51:
      v31 = [v4 position];
    }

    while (v31 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_63:
    v36 = 0;
  }

  else
  {
LABEL_64:
    v36 = v5;
  }

  return v36;
}

- (NSString)description
{
  v15 = objc_alloc(MEMORY[0x1E696AEC0]);
  v14 = BMWalletPaymentsCommerceTrackedOrderShippingFulfillmentStatusAsString([(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self status]);
  v13 = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self trackingNumber];
  v20 = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self carrierName];
  v19 = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self shippingMethod];
  v18 = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self shippingDate];
  v17 = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self shippingTime];
  v3 = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self estimatedDeliveryStartDate];
  v4 = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self estimatedDeliveryStartTime];
  v5 = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self estimatedDeliveryEndDate];
  v6 = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self estimatedDeliveryEndTime];
  v12 = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self deliveryDate];
  v7 = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self deliveryTime];
  v8 = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self shippingRecipient];
  v9 = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self fulfillmentCreationDate];
  v10 = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self fulfillmentUpdateDate];
  v16 = [v15 initWithFormat:@"BMWalletPaymentsCommerceTrackedOrderShippingFulfillment with status: %@, trackingNumber: %@, carrierName: %@, shippingMethod: %@, shippingDate: %@, shippingTime: %@, estimatedDeliveryStartDate: %@, estimatedDeliveryStartTime: %@, estimatedDeliveryEndDate: %@, estimatedDeliveryEndTime: %@, deliveryDate: %@, deliveryTime: %@, shippingRecipient: %@, fulfillmentCreationDate: %@, fulfillmentUpdateDate: %@", v14, v13, v20, v19, v18, v17, v3, v4, v5, v6, v12, v7, v8, v9, v10];

  return v16;
}

- (BMWalletPaymentsCommerceTrackedOrderShippingFulfillment)initWithStatus:(int)a3 trackingNumber:(id)a4 carrierName:(id)a5 shippingMethod:(id)a6 shippingDate:(id)a7 shippingTime:(id)a8 estimatedDeliveryStartDate:(id)a9 estimatedDeliveryStartTime:(id)a10 estimatedDeliveryEndDate:(id)a11 estimatedDeliveryEndTime:(id)a12 deliveryDate:(id)a13 deliveryTime:(id)a14 shippingRecipient:(id)a15 fulfillmentCreationDate:(id)a16 fulfillmentUpdateDate:(id)a17
{
  v43 = a4;
  v42 = a5;
  v30 = a6;
  v41 = a6;
  v31 = a7;
  v40 = a7;
  v39 = a8;
  v38 = a9;
  v37 = a10;
  v36 = a11;
  v35 = a12;
  v34 = a13;
  v33 = a14;
  v21 = a15;
  v22 = a16;
  v23 = a17;
  v44.receiver = self;
  v44.super_class = BMWalletPaymentsCommerceTrackedOrderShippingFulfillment;
  v24 = [(BMEventBase *)&v44 init];
  if (v24)
  {
    v24->_dataVersion = [objc_opt_class() latestDataVersion];
    v24->_status = a3;
    objc_storeStrong(&v24->_trackingNumber, a4);
    objc_storeStrong(&v24->_carrierName, a5);
    objc_storeStrong(&v24->_shippingMethod, v30);
    objc_storeStrong(&v24->_shippingDate, v31);
    objc_storeStrong(&v24->_shippingTime, a8);
    objc_storeStrong(&v24->_estimatedDeliveryStartDate, a9);
    objc_storeStrong(&v24->_estimatedDeliveryStartTime, a10);
    objc_storeStrong(&v24->_estimatedDeliveryEndDate, a11);
    objc_storeStrong(&v24->_estimatedDeliveryEndTime, a12);
    objc_storeStrong(&v24->_deliveryDate, a13);
    objc_storeStrong(&v24->_deliveryTime, a14);
    objc_storeStrong(&v24->_shippingRecipient, a15);
    if (v22)
    {
      v24->_hasRaw_fulfillmentCreationDate = 1;
      [v22 timeIntervalSinceReferenceDate];
    }

    else
    {
      v24->_hasRaw_fulfillmentCreationDate = 0;
      v25 = -1.0;
    }

    v24->_raw_fulfillmentCreationDate = v25;
    if (v23)
    {
      v24->_hasRaw_fulfillmentUpdateDate = 1;
      [v23 timeIntervalSinceReferenceDate];
    }

    else
    {
      v24->_hasRaw_fulfillmentUpdateDate = 0;
      v26 = -1.0;
    }

    v24->_raw_fulfillmentUpdateDate = v26;
  }

  return v24;
}

+ (id)protoFields
{
  v20[15] = *MEMORY[0x1E69E9840];
  v19 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"status" number:1 type:4 subMessageClass:0];
  v20[0] = v19;
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"trackingNumber" number:2 type:13 subMessageClass:0];
  v20[1] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"carrierName" number:3 type:13 subMessageClass:0];
  v20[2] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shippingMethod" number:4 type:13 subMessageClass:0];
  v20[3] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shippingDate" number:5 type:13 subMessageClass:0];
  v20[4] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shippingTime" number:6 type:13 subMessageClass:0];
  v20[5] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"estimatedDeliveryStartDate" number:7 type:13 subMessageClass:0];
  v20[6] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"estimatedDeliveryStartTime" number:8 type:13 subMessageClass:0];
  v20[7] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"estimatedDeliveryEndDate" number:9 type:13 subMessageClass:0];
  v20[8] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"estimatedDeliveryEndTime" number:10 type:13 subMessageClass:0];
  v20[9] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deliveryDate" number:11 type:13 subMessageClass:0];
  v20[10] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deliveryTime" number:12 type:13 subMessageClass:0];
  v20[11] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shippingRecipient" number:13 type:14 subMessageClass:objc_opt_class()];
  v20[12] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"fulfillmentCreationDate" number:14 type:0 subMessageClass:0];
  v20[13] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"fulfillmentUpdateDate" number:15 type:0 subMessageClass:0];
  v20[14] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:15];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)columns
{
  v20[15] = *MEMORY[0x1E69E9840];
  v19 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"status" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:4 convertedType:0];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"trackingNumber" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"carrierName" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"shippingMethod" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"shippingDate" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"shippingTime" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"estimatedDeliveryStartDate" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"estimatedDeliveryStartTime" dataType:2 requestOnly:0 fieldNumber:8 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"estimatedDeliveryEndDate" dataType:2 requestOnly:0 fieldNumber:9 protoDataType:13 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"estimatedDeliveryEndTime" dataType:2 requestOnly:0 fieldNumber:10 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"deliveryDate" dataType:2 requestOnly:0 fieldNumber:11 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"deliveryTime" dataType:2 requestOnly:0 fieldNumber:12 protoDataType:13 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"shippingRecipient_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_115_93061];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"fulfillmentCreationDate" dataType:3 requestOnly:0 fieldNumber:14 protoDataType:0 convertedType:1];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"fulfillmentUpdateDate" dataType:3 requestOnly:0 fieldNumber:15 protoDataType:0 convertedType:1];
  v20[0] = v19;
  v20[1] = v18;
  v20[2] = v17;
  v20[3] = v16;
  v20[4] = v15;
  v20[5] = v2;
  v20[6] = v3;
  v20[7] = v4;
  v20[8] = v5;
  v20[9] = v14;
  v20[10] = v6;
  v20[11] = v7;
  v20[12] = v13;
  v20[13] = v8;
  v20[14] = v9;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:15];

  v10 = *MEMORY[0x1E69E9840];

  return v12;
}

id __66__BMWalletPaymentsCommerceTrackedOrderShippingFulfillment_columns__block_invoke(uint64_t a1, void *a2)
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

    v8 = [[BMWalletPaymentsCommerceTrackedOrderShippingFulfillment alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[12] = 0;
    }
  }

  return v4;
}

@end