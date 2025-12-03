@interface BMWalletPaymentsCommerceTrackedOrderShippingFulfillment
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMWalletPaymentsCommerceTrackedOrderShippingFulfillment)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMWalletPaymentsCommerceTrackedOrderShippingFulfillment)initWithStatus:(int)status trackingNumber:(id)number carrierName:(id)name shippingMethod:(id)method shippingDate:(id)date shippingTime:(id)time estimatedDeliveryStartDate:(id)startDate estimatedDeliveryStartTime:(id)self0 estimatedDeliveryEndDate:(id)self1 estimatedDeliveryEndTime:(id)self2 deliveryDate:(id)self3 deliveryTime:(id)self4 shippingRecipient:(id)self5 fulfillmentCreationDate:(id)self6 fulfillmentUpdateDate:(id)self7;
- (BOOL)isEqual:(id)equal;
- (NSDate)fulfillmentCreationDate;
- (NSDate)fulfillmentUpdateDate;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMWalletPaymentsCommerceTrackedOrderShippingFulfillment

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    status = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self status];
    if (status == [v5 status])
    {
      trackingNumber = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self trackingNumber];
      trackingNumber2 = [v5 trackingNumber];
      v9 = trackingNumber2;
      if (trackingNumber == trackingNumber2)
      {
      }

      else
      {
        trackingNumber3 = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self trackingNumber];
        trackingNumber4 = [v5 trackingNumber];
        v12 = [trackingNumber3 isEqual:trackingNumber4];

        if (!v12)
        {
          goto LABEL_54;
        }
      }

      carrierName = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self carrierName];
      carrierName2 = [v5 carrierName];
      v16 = carrierName2;
      if (carrierName == carrierName2)
      {
      }

      else
      {
        carrierName3 = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self carrierName];
        carrierName4 = [v5 carrierName];
        v19 = [carrierName3 isEqual:carrierName4];

        if (!v19)
        {
          goto LABEL_54;
        }
      }

      shippingMethod = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self shippingMethod];
      shippingMethod2 = [v5 shippingMethod];
      v22 = shippingMethod2;
      if (shippingMethod == shippingMethod2)
      {
      }

      else
      {
        shippingMethod3 = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self shippingMethod];
        shippingMethod4 = [v5 shippingMethod];
        v25 = [shippingMethod3 isEqual:shippingMethod4];

        if (!v25)
        {
          goto LABEL_54;
        }
      }

      shippingDate = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self shippingDate];
      shippingDate2 = [v5 shippingDate];
      v28 = shippingDate2;
      if (shippingDate == shippingDate2)
      {
      }

      else
      {
        shippingDate3 = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self shippingDate];
        shippingDate4 = [v5 shippingDate];
        v31 = [shippingDate3 isEqual:shippingDate4];

        if (!v31)
        {
          goto LABEL_54;
        }
      }

      shippingTime = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self shippingTime];
      shippingTime2 = [v5 shippingTime];
      v34 = shippingTime2;
      if (shippingTime == shippingTime2)
      {
      }

      else
      {
        shippingTime3 = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self shippingTime];
        shippingTime4 = [v5 shippingTime];
        v37 = [shippingTime3 isEqual:shippingTime4];

        if (!v37)
        {
          goto LABEL_54;
        }
      }

      estimatedDeliveryStartDate = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self estimatedDeliveryStartDate];
      estimatedDeliveryStartDate2 = [v5 estimatedDeliveryStartDate];
      v40 = estimatedDeliveryStartDate2;
      if (estimatedDeliveryStartDate == estimatedDeliveryStartDate2)
      {
      }

      else
      {
        estimatedDeliveryStartDate3 = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self estimatedDeliveryStartDate];
        estimatedDeliveryStartDate4 = [v5 estimatedDeliveryStartDate];
        v43 = [estimatedDeliveryStartDate3 isEqual:estimatedDeliveryStartDate4];

        if (!v43)
        {
          goto LABEL_54;
        }
      }

      estimatedDeliveryStartTime = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self estimatedDeliveryStartTime];
      estimatedDeliveryStartTime2 = [v5 estimatedDeliveryStartTime];
      v46 = estimatedDeliveryStartTime2;
      if (estimatedDeliveryStartTime == estimatedDeliveryStartTime2)
      {
      }

      else
      {
        estimatedDeliveryStartTime3 = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self estimatedDeliveryStartTime];
        estimatedDeliveryStartTime4 = [v5 estimatedDeliveryStartTime];
        v49 = [estimatedDeliveryStartTime3 isEqual:estimatedDeliveryStartTime4];

        if (!v49)
        {
          goto LABEL_54;
        }
      }

      estimatedDeliveryEndDate = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self estimatedDeliveryEndDate];
      estimatedDeliveryEndDate2 = [v5 estimatedDeliveryEndDate];
      v52 = estimatedDeliveryEndDate2;
      if (estimatedDeliveryEndDate == estimatedDeliveryEndDate2)
      {
      }

      else
      {
        estimatedDeliveryEndDate3 = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self estimatedDeliveryEndDate];
        estimatedDeliveryEndDate4 = [v5 estimatedDeliveryEndDate];
        v55 = [estimatedDeliveryEndDate3 isEqual:estimatedDeliveryEndDate4];

        if (!v55)
        {
          goto LABEL_54;
        }
      }

      estimatedDeliveryEndTime = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self estimatedDeliveryEndTime];
      estimatedDeliveryEndTime2 = [v5 estimatedDeliveryEndTime];
      v58 = estimatedDeliveryEndTime2;
      if (estimatedDeliveryEndTime == estimatedDeliveryEndTime2)
      {
      }

      else
      {
        estimatedDeliveryEndTime3 = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self estimatedDeliveryEndTime];
        estimatedDeliveryEndTime4 = [v5 estimatedDeliveryEndTime];
        v61 = [estimatedDeliveryEndTime3 isEqual:estimatedDeliveryEndTime4];

        if (!v61)
        {
          goto LABEL_54;
        }
      }

      deliveryDate = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self deliveryDate];
      deliveryDate2 = [v5 deliveryDate];
      v64 = deliveryDate2;
      if (deliveryDate == deliveryDate2)
      {
      }

      else
      {
        deliveryDate3 = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self deliveryDate];
        deliveryDate4 = [v5 deliveryDate];
        v67 = [deliveryDate3 isEqual:deliveryDate4];

        if (!v67)
        {
          goto LABEL_54;
        }
      }

      deliveryTime = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self deliveryTime];
      deliveryTime2 = [v5 deliveryTime];
      v70 = deliveryTime2;
      if (deliveryTime == deliveryTime2)
      {
      }

      else
      {
        deliveryTime3 = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self deliveryTime];
        deliveryTime4 = [v5 deliveryTime];
        v73 = [deliveryTime3 isEqual:deliveryTime4];

        if (!v73)
        {
          goto LABEL_54;
        }
      }

      shippingRecipient = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self shippingRecipient];
      shippingRecipient2 = [v5 shippingRecipient];
      v76 = shippingRecipient2;
      if (shippingRecipient == shippingRecipient2)
      {
      }

      else
      {
        shippingRecipient3 = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self shippingRecipient];
        shippingRecipient4 = [v5 shippingRecipient];
        v79 = [shippingRecipient3 isEqual:shippingRecipient4];

        if (!v79)
        {
          goto LABEL_54;
        }
      }

      fulfillmentCreationDate = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self fulfillmentCreationDate];
      fulfillmentCreationDate2 = [v5 fulfillmentCreationDate];
      v82 = fulfillmentCreationDate2;
      if (fulfillmentCreationDate == fulfillmentCreationDate2)
      {
      }

      else
      {
        fulfillmentCreationDate3 = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self fulfillmentCreationDate];
        fulfillmentCreationDate4 = [v5 fulfillmentCreationDate];
        v85 = [fulfillmentCreationDate3 isEqual:fulfillmentCreationDate4];

        if (!v85)
        {
          goto LABEL_54;
        }
      }

      fulfillmentUpdateDate = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self fulfillmentUpdateDate];
      fulfillmentUpdateDate2 = [v5 fulfillmentUpdateDate];
      if (fulfillmentUpdateDate == fulfillmentUpdateDate2)
      {
        v13 = 1;
      }

      else
      {
        fulfillmentUpdateDate3 = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self fulfillmentUpdateDate];
        fulfillmentUpdateDate4 = [v5 fulfillmentUpdateDate];
        v13 = [fulfillmentUpdateDate3 isEqual:fulfillmentUpdateDate4];
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
  trackingNumber = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self trackingNumber];
  carrierName = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self carrierName];
  shippingMethod = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self shippingMethod];
  shippingDate = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self shippingDate];
  shippingTime = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self shippingTime];
  estimatedDeliveryStartDate = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self estimatedDeliveryStartDate];
  estimatedDeliveryStartTime = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self estimatedDeliveryStartTime];
  estimatedDeliveryEndDate = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self estimatedDeliveryEndDate];
  estimatedDeliveryEndTime = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self estimatedDeliveryEndTime];
  deliveryDate = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self deliveryDate];
  deliveryTime = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self deliveryTime];
  shippingRecipient = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self shippingRecipient];
  jsonDictionary = [shippingRecipient jsonDictionary];

  fulfillmentCreationDate = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self fulfillmentCreationDate];
  if (fulfillmentCreationDate)
  {
    v9 = MEMORY[0x1E696AD98];
    fulfillmentCreationDate2 = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self fulfillmentCreationDate];
    [fulfillmentCreationDate2 timeIntervalSinceReferenceDate];
    v44 = [v9 numberWithDouble:?];
  }

  else
  {
    v44 = 0;
  }

  fulfillmentUpdateDate = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self fulfillmentUpdateDate];
  if (fulfillmentUpdateDate)
  {
    v12 = MEMORY[0x1E696AD98];
    fulfillmentUpdateDate2 = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self fulfillmentUpdateDate];
    [fulfillmentUpdateDate2 timeIntervalSinceReferenceDate];
    v14 = [v12 numberWithDouble:?];
  }

  else
  {
    v14 = 0;
  }

  v54[0] = @"status";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v39 = null;
  v55[0] = null;
  v54[1] = @"trackingNumber";
  null2 = trackingNumber;
  if (!trackingNumber)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v38 = null2;
  v55[1] = null2;
  v54[2] = @"carrierName";
  null3 = carrierName;
  if (!carrierName)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v37 = null3;
  v55[2] = null3;
  v54[3] = @"shippingMethod";
  null4 = shippingMethod;
  if (!shippingMethod)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v36 = null4;
  v55[3] = null4;
  v54[4] = @"shippingDate";
  null5 = shippingDate;
  if (!shippingDate)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v43 = v3;
  v55[4] = null5;
  v54[5] = @"shippingTime";
  null6 = shippingTime;
  if (!shippingTime)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v42 = carrierName;
  v55[5] = null6;
  v54[6] = @"estimatedDeliveryStartDate";
  null7 = estimatedDeliveryStartDate;
  if (!estimatedDeliveryStartDate)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v41 = shippingMethod;
  v55[6] = null7;
  v54[7] = @"estimatedDeliveryStartTime";
  null8 = estimatedDeliveryStartTime;
  if (!estimatedDeliveryStartTime)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v35 = null5;
  v55[7] = null8;
  v54[8] = @"estimatedDeliveryEndDate";
  null9 = estimatedDeliveryEndDate;
  if (!estimatedDeliveryEndDate)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v34 = null6;
  v55[8] = null9;
  v54[9] = @"estimatedDeliveryEndTime";
  null10 = estimatedDeliveryEndTime;
  if (!estimatedDeliveryEndTime)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v25 = trackingNumber;
  v55[9] = null10;
  v54[10] = @"deliveryDate";
  null11 = deliveryDate;
  if (!deliveryDate)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v33 = null7;
  v55[10] = null11;
  v54[11] = @"deliveryTime";
  null12 = deliveryTime;
  if (!deliveryTime)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v55[11] = null12;
  v54[12] = @"shippingRecipient";
  null13 = jsonDictionary;
  if (!jsonDictionary)
  {
    null13 = [MEMORY[0x1E695DFB0] null];
  }

  v55[12] = null13;
  v54[13] = @"fulfillmentCreationDate";
  null14 = v44;
  if (!v44)
  {
    null14 = [MEMORY[0x1E695DFB0] null];
  }

  v55[13] = null14;
  v54[14] = @"fulfillmentUpdateDate";
  null15 = v14;
  if (!v14)
  {
    null15 = [MEMORY[0x1E695DFB0] null];
  }

  v55[14] = null15;
  v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:v54 count:15];
  if (!v14)
  {
  }

  if (!v44)
  {
  }

  if (!jsonDictionary)
  {
  }

  if (!deliveryTime)
  {
  }

  if (!deliveryDate)
  {
  }

  if (!estimatedDeliveryEndTime)
  {
  }

  if (!estimatedDeliveryEndDate)
  {
  }

  if (!estimatedDeliveryStartTime)
  {
  }

  if (!estimatedDeliveryStartDate)
  {
  }

  if (!shippingTime)
  {
  }

  if (shippingDate)
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

- (BMWalletPaymentsCommerceTrackedOrderShippingFulfillment)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v212[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v181 = [dictionaryCopy objectForKeyedSubscript:@"status"];
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
    v8 = [dictionaryCopy objectForKeyedSubscript:@"trackingNumber"];
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
      v9 = [dictionaryCopy objectForKeyedSubscript:@"carrierName"];
      if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        errorCopy2 = error;
        v176 = 0;
        goto LABEL_15;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        errorCopy2 = error;
        v176 = v9;
LABEL_15:
        v180 = [dictionaryCopy objectForKeyedSubscript:@"shippingMethod"];
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
          v177 = [dictionaryCopy objectForKeyedSubscript:@"shippingDate"];
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
            v10 = [dictionaryCopy objectForKeyedSubscript:@"shippingTime"];
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
              v11 = [dictionaryCopy objectForKeyedSubscript:@"estimatedDeliveryStartDate"];
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
                v13 = [dictionaryCopy objectForKeyedSubscript:@"estimatedDeliveryStartTime"];
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
                  v15 = [dictionaryCopy objectForKeyedSubscript:@"estimatedDeliveryEndDate"];
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
                    v17 = [dictionaryCopy objectForKeyedSubscript:@"estimatedDeliveryEndTime"];
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
                      v19 = [dictionaryCopy objectForKeyedSubscript:@"deliveryDate"];
                      v156 = v19;
                      if (!v19 || (v20 = v19, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                      {
                        v165 = 0;
LABEL_39:
                        v21 = [dictionaryCopy objectForKeyedSubscript:@"deliveryTime"];
                        selfCopy = self;
                        v158 = v8;
                        v154 = v9;
                        v155 = v21;
                        if (!v21)
                        {
LABEL_79:
                          v73 = [dictionaryCopy objectForKeyedSubscript:@"shippingRecipient"];
                          v157 = v21;
                          if (v73 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                          {
                            objc_opt_class();
                            if ((objc_opt_isKindOfClass() & 1) == 0)
                            {
                              if (!errorCopy2)
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
                              *errorCopy2 = [v122 initWithDomain:v123 code:2 userInfo:v124];

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
                              if (errorCopy2)
                              {
                                v88 = v88;
                                *errorCopy2 = v88;
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

                          v75 = [dictionaryCopy objectForKeyedSubscript:@"fulfillmentCreationDate"];
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
                                if (!errorCopy2)
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
                                *errorCopy2 = [v140 initWithDomain:v141 code:2 userInfo:?];
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
                          v126 = [dictionaryCopy objectForKeyedSubscript:@"fulfillmentUpdateDate"];
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
                            v27 = -[BMWalletPaymentsCommerceTrackedOrderShippingFulfillment initWithStatus:trackingNumber:carrierName:shippingMethod:shippingDate:shippingTime:estimatedDeliveryStartDate:estimatedDeliveryStartTime:estimatedDeliveryEndDate:estimatedDeliveryEndTime:deliveryDate:deliveryTime:shippingRecipient:fulfillmentCreationDate:fulfillmentUpdateDate:](selfCopy, "initWithStatus:trackingNumber:carrierName:shippingMethod:shippingDate:shippingTime:estimatedDeliveryStartDate:estimatedDeliveryStartTime:estimatedDeliveryEndDate:estimatedDeliveryEndTime:deliveryDate:deliveryTime:shippingRecipient:fulfillmentCreationDate:fulfillmentUpdateDate:", [v179 intValue], v178, v176, v175, v173, v171, v167, v170, v169, v147, v165, v157, v148, v77, v126);
                            selfCopy = v27;
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

                          if (errorCopy2)
                          {
                            v142 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v143 = *MEMORY[0x1E698F240];
                            v183 = *MEMORY[0x1E696A578];
                            v144 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"fulfillmentUpdateDate"];
                            v184 = v144;
                            v145 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v184 forKeys:&v183 count:1];
                            *errorCopy2 = [v142 initWithDomain:v143 code:2 userInfo:v145];
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

                        if (errorCopy2)
                        {
                          v120 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v121 = *MEMORY[0x1E698F240];
                          v189 = *MEMORY[0x1E696A578];
                          v87 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"deliveryTime"];
                          v190 = v87;
                          v153 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v190 forKeys:&v189 count:1];
                          v157 = 0;
                          v27 = 0;
                          *errorCopy2 = [v120 initWithDomain:v121 code:2 userInfo:?];
                          v46 = v173;
LABEL_127:
                          v50 = v171;
                          v61 = v167;
LABEL_128:

                          v73 = v87;
                          v9 = v154;
                          v8 = v158;
LABEL_129:

                          self = selfCopy;
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

                      if (errorCopy2)
                      {
                        selfCopy2 = self;
                        v113 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v114 = v8;
                        v115 = v9;
                        v116 = *MEMORY[0x1E698F240];
                        v191 = *MEMORY[0x1E696A578];
                        v157 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"deliveryDate"];
                        v192 = v157;
                        v117 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v192 forKeys:&v191 count:1];
                        v118 = v113;
                        self = selfCopy2;
                        v119 = v116;
                        v9 = v115;
                        v8 = v114;
                        v155 = v117;
                        v165 = 0;
                        v27 = 0;
                        *errorCopy2 = [v118 initWithDomain:v119 code:2 userInfo:?];
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

                    if (errorCopy2)
                    {
                      selfCopy3 = self;
                      v98 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v99 = v8;
                      v100 = v9;
                      v101 = *MEMORY[0x1E698F240];
                      v193 = *MEMORY[0x1E696A578];
                      v165 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"estimatedDeliveryEndTime"];
                      v194 = v165;
                      v102 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v194 forKeys:&v193 count:1];
                      v103 = v98;
                      self = selfCopy3;
                      v104 = v101;
                      v9 = v100;
                      v8 = v99;
                      v156 = v102;
                      v166 = 0;
                      v27 = 0;
                      *errorCopy2 = [v103 initWithDomain:v104 code:2 userInfo:?];
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

                  if (errorCopy2)
                  {
                    selfCopy4 = self;
                    v90 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v91 = v8;
                    v92 = v9;
                    v93 = *MEMORY[0x1E698F240];
                    v195 = *MEMORY[0x1E696A578];
                    v166 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"estimatedDeliveryEndDate"];
                    v196 = v166;
                    v94 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v196 forKeys:&v195 count:1];
                    v95 = v90;
                    self = selfCopy4;
                    v96 = v93;
                    v9 = v92;
                    v8 = v91;
                    v161 = v94;
                    v169 = 0;
                    v27 = 0;
                    *errorCopy2 = [v95 initWithDomain:v96 code:2 userInfo:?];
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

                if (errorCopy2)
                {
                  selfCopy5 = self;
                  v80 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v81 = v8;
                  v82 = v9;
                  v83 = *MEMORY[0x1E698F240];
                  v197 = *MEMORY[0x1E696A578];
                  v169 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"estimatedDeliveryStartTime"];
                  v198 = v169;
                  v84 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v198 forKeys:&v197 count:1];
                  v85 = v80;
                  self = selfCopy5;
                  v86 = v83;
                  v9 = v82;
                  v8 = v81;
                  v164 = v84;
                  v170 = 0;
                  v27 = 0;
                  *errorCopy2 = [v85 initWithDomain:v86 code:2 userInfo:?];
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

              if (errorCopy2)
              {
                selfCopy6 = self;
                v66 = objc_alloc(MEMORY[0x1E696ABC0]);
                v67 = v8;
                v68 = v9;
                v69 = *MEMORY[0x1E698F240];
                v199 = *MEMORY[0x1E696A578];
                v170 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"estimatedDeliveryStartDate"];
                v200 = v170;
                v70 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v200 forKeys:&v199 count:1];
                v71 = v66;
                self = selfCopy6;
                v72 = v69;
                v9 = v68;
                v8 = v67;
                v168 = v70;
                v61 = 0;
                v27 = 0;
                *errorCopy2 = [v71 initWithDomain:v72 code:2 userInfo:?];
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

            if (errorCopy2)
            {
              selfCopy7 = self;
              v58 = objc_alloc(MEMORY[0x1E696ABC0]);
              v160 = v8;
              v59 = v9;
              v60 = *MEMORY[0x1E698F240];
              v201 = *MEMORY[0x1E696A578];
              v61 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"shippingTime"];
              v202 = v61;
              v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v202 forKeys:&v201 count:1];
              v63 = v58;
              self = selfCopy7;
              v64 = v60;
              v9 = v59;
              v8 = v160;
              v172 = v62;
              v50 = 0;
              v27 = 0;
              *errorCopy2 = [v63 initWithDomain:v64 code:2 userInfo:?];
              v46 = v173;
              goto LABEL_135;
            }

            v50 = 0;
            v27 = 0;
            v46 = v173;
LABEL_136:

            goto LABEL_137;
          }

          v46 = errorCopy2;
          if (errorCopy2)
          {
            selfCopy8 = self;
            v47 = objc_alloc(MEMORY[0x1E696ABC0]);
            v159 = v8;
            v48 = v9;
            v49 = *MEMORY[0x1E698F240];
            v203 = *MEMORY[0x1E696A578];
            v50 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"shippingDate"];
            v204 = v50;
            v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v204 forKeys:&v203 count:1];
            v51 = v47;
            self = selfCopy8;
            v52 = v49;
            v9 = v48;
            v8 = v159;
            v27 = 0;
            *errorCopy2 = [v51 initWithDomain:v52 code:2 userInfo:v10];
            v46 = 0;
            goto LABEL_136;
          }

          v27 = 0;
LABEL_137:

          goto LABEL_138;
        }

        if (errorCopy2)
        {
          selfCopy9 = self;
          v38 = objc_alloc(MEMORY[0x1E696ABC0]);
          v39 = v8;
          v40 = v9;
          v41 = *MEMORY[0x1E698F240];
          v205 = *MEMORY[0x1E696A578];
          v42 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"shippingMethod"];
          v206 = v42;
          v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v206 forKeys:&v205 count:1];
          v44 = v38;
          self = selfCopy9;
          v45 = v41;
          v9 = v40;
          v8 = v39;
          v177 = v43;
          v175 = 0;
          v27 = 0;
          *errorCopy2 = [v44 initWithDomain:v45 code:2 userInfo:v43];
          v46 = v42;
          goto LABEL_137;
        }

        v175 = 0;
        v27 = 0;
LABEL_138:

        goto LABEL_139;
      }

      if (error)
      {
        v28 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy3 = error;
        selfCopy10 = self;
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
        self = selfCopy10;
        v180 = v35;
        v176 = 0;
        v27 = 0;
        *errorCopy3 = [v28 initWithDomain:v36 code:2 userInfo:v35];
        goto LABEL_138;
      }

      v176 = 0;
      v27 = 0;
LABEL_139:

      goto LABEL_140;
    }

    if (error)
    {
      v22 = objc_alloc(MEMORY[0x1E696ABC0]);
      selfCopy11 = self;
      v24 = *MEMORY[0x1E698F240];
      v209 = *MEMORY[0x1E696A578];
      v176 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"trackingNumber"];
      v210 = v176;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v210 forKeys:&v209 count:1];
      v26 = v24;
      self = selfCopy11;
      v9 = v25;
      v178 = 0;
      v27 = 0;
      *error = [v22 initWithDomain:v26 code:2 userInfo:v25];
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

  if (error)
  {
    v53 = objc_alloc(MEMORY[0x1E696ABC0]);
    selfCopy12 = self;
    v55 = *MEMORY[0x1E698F240];
    v211 = *MEMORY[0x1E696A578];
    v178 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"status"];
    v212[0] = v178;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v212 forKeys:&v211 count:1];
    v56 = v55;
    self = selfCopy12;
    v179 = 0;
    v27 = 0;
    *error = [v53 initWithDomain:v56 code:2 userInfo:v8];
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
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
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
    [(BMWalletPaymentsCommerceTrackedOrderShippingRecipient *)self->_shippingRecipient writeTo:toCopy];
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

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v38.receiver = self;
  v38.super_class = BMWalletPaymentsCommerceTrackedOrderShippingFulfillment;
  v5 = [(BMEventBase *)&v38 init];
  if (!v5)
  {
    goto LABEL_64;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    do
    {
      if ([fromCopy hasError])
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v39[0]) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:v39 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
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

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
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

          v26 = [[BMWalletPaymentsCommerceTrackedOrderShippingRecipient alloc] initByReadFrom:fromCopy];
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
          v28 = [fromCopy position] + 8;
          if (v28 >= [fromCopy position] && (v29 = objc_msgSend(fromCopy, "position") + 8, v29 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:v39 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
          }

          v33 = v39[0];
          v34 = 24;
          goto LABEL_61;
        case 0xFu:
          v5->_hasRaw_fulfillmentUpdateDate = 1;
          v39[0] = 0;
          v22 = [fromCopy position] + 8;
          if (v22 >= [fromCopy position] && (v23 = objc_msgSend(fromCopy, "position") + 8, v23 <= objc_msgSend(fromCopy, "length")))
          {
            data3 = [fromCopy data];
            [data3 getBytes:v39 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
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
        v18 = [fromCopy position] + 1;
        if (v18 >= [fromCopy position] && (v19 = objc_msgSend(fromCopy, "position") + 1, v19 <= objc_msgSend(fromCopy, "length")))
        {
          data4 = [fromCopy data];
          [data4 getBytes:v39 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
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

      if (([fromCopy hasError] & 1) != 0 || v17 > 9)
      {
LABEL_55:
        LODWORD(v17) = 0;
      }

      v5->_status = v17;
LABEL_51:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
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
  trackingNumber = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self trackingNumber];
  carrierName = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self carrierName];
  shippingMethod = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self shippingMethod];
  shippingDate = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self shippingDate];
  shippingTime = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self shippingTime];
  estimatedDeliveryStartDate = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self estimatedDeliveryStartDate];
  estimatedDeliveryStartTime = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self estimatedDeliveryStartTime];
  estimatedDeliveryEndDate = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self estimatedDeliveryEndDate];
  estimatedDeliveryEndTime = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self estimatedDeliveryEndTime];
  deliveryDate = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self deliveryDate];
  deliveryTime = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self deliveryTime];
  shippingRecipient = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self shippingRecipient];
  fulfillmentCreationDate = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self fulfillmentCreationDate];
  fulfillmentUpdateDate = [(BMWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self fulfillmentUpdateDate];
  v16 = [v15 initWithFormat:@"BMWalletPaymentsCommerceTrackedOrderShippingFulfillment with status: %@, trackingNumber: %@, carrierName: %@, shippingMethod: %@, shippingDate: %@, shippingTime: %@, estimatedDeliveryStartDate: %@, estimatedDeliveryStartTime: %@, estimatedDeliveryEndDate: %@, estimatedDeliveryEndTime: %@, deliveryDate: %@, deliveryTime: %@, shippingRecipient: %@, fulfillmentCreationDate: %@, fulfillmentUpdateDate: %@", v14, trackingNumber, carrierName, shippingMethod, shippingDate, shippingTime, estimatedDeliveryStartDate, estimatedDeliveryStartTime, estimatedDeliveryEndDate, estimatedDeliveryEndTime, deliveryDate, deliveryTime, shippingRecipient, fulfillmentCreationDate, fulfillmentUpdateDate];

  return v16;
}

- (BMWalletPaymentsCommerceTrackedOrderShippingFulfillment)initWithStatus:(int)status trackingNumber:(id)number carrierName:(id)name shippingMethod:(id)method shippingDate:(id)date shippingTime:(id)time estimatedDeliveryStartDate:(id)startDate estimatedDeliveryStartTime:(id)self0 estimatedDeliveryEndDate:(id)self1 estimatedDeliveryEndTime:(id)self2 deliveryDate:(id)self3 deliveryTime:(id)self4 shippingRecipient:(id)self5 fulfillmentCreationDate:(id)self6 fulfillmentUpdateDate:(id)self7
{
  numberCopy = number;
  nameCopy = name;
  methodCopy = method;
  methodCopy2 = method;
  dateCopy = date;
  dateCopy2 = date;
  timeCopy = time;
  startDateCopy = startDate;
  startTimeCopy = startTime;
  endDateCopy = endDate;
  endTimeCopy = endTime;
  deliveryDateCopy = deliveryDate;
  deliveryTimeCopy = deliveryTime;
  recipientCopy = recipient;
  creationDateCopy = creationDate;
  updateDateCopy = updateDate;
  v44.receiver = self;
  v44.super_class = BMWalletPaymentsCommerceTrackedOrderShippingFulfillment;
  v24 = [(BMEventBase *)&v44 init];
  if (v24)
  {
    v24->_dataVersion = [objc_opt_class() latestDataVersion];
    v24->_status = status;
    objc_storeStrong(&v24->_trackingNumber, number);
    objc_storeStrong(&v24->_carrierName, name);
    objc_storeStrong(&v24->_shippingMethod, methodCopy);
    objc_storeStrong(&v24->_shippingDate, dateCopy);
    objc_storeStrong(&v24->_shippingTime, time);
    objc_storeStrong(&v24->_estimatedDeliveryStartDate, startDate);
    objc_storeStrong(&v24->_estimatedDeliveryStartTime, startTime);
    objc_storeStrong(&v24->_estimatedDeliveryEndDate, endDate);
    objc_storeStrong(&v24->_estimatedDeliveryEndTime, endTime);
    objc_storeStrong(&v24->_deliveryDate, deliveryDate);
    objc_storeStrong(&v24->_deliveryTime, deliveryTime);
    objc_storeStrong(&v24->_shippingRecipient, recipient);
    if (creationDateCopy)
    {
      v24->_hasRaw_fulfillmentCreationDate = 1;
      [creationDateCopy timeIntervalSinceReferenceDate];
    }

    else
    {
      v24->_hasRaw_fulfillmentCreationDate = 0;
      v25 = -1.0;
    }

    v24->_raw_fulfillmentCreationDate = v25;
    if (updateDateCopy)
    {
      v24->_hasRaw_fulfillmentUpdateDate = 1;
      [updateDateCopy timeIntervalSinceReferenceDate];
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