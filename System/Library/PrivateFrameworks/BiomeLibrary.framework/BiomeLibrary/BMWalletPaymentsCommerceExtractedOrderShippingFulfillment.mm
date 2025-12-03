@interface BMWalletPaymentsCommerceExtractedOrderShippingFulfillment
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMWalletPaymentsCommerceExtractedOrderShippingFulfillment)initWithFulfillmentIdentifier:(id)identifier status:(int)status trackingNumber:(id)number carrierName:(id)name carrierIdentifier:(id)carrierIdentifier shippingMethod:(id)method shippingDate:(id)date shippingTime:(id)self0 estimatedDeliveryStartDate:(id)self1 estimatedDeliveryStartTime:(id)self2 estimatedDeliveryEndDate:(id)self3 estimatedDeliveryEndTime:(id)self4 deliveryDate:(id)self5 deliveryTime:(id)self6 shippingRecipient:(id)self7 fulfillmentCreationDate:(id)self8 shippingEmails:(id)self9;
- (BMWalletPaymentsCommerceExtractedOrderShippingFulfillment)initWithJSONDictionary:(id)dictionary error:(id *)p_isa;
- (BOOL)isEqual:(id)equal;
- (NSDate)fulfillmentCreationDate;
- (NSString)description;
- (id)_shippingEmailsJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMWalletPaymentsCommerceExtractedOrderShippingFulfillment

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    fulfillmentIdentifier = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self fulfillmentIdentifier];
    fulfillmentIdentifier2 = [v5 fulfillmentIdentifier];
    v8 = fulfillmentIdentifier2;
    if (fulfillmentIdentifier == fulfillmentIdentifier2)
    {
    }

    else
    {
      fulfillmentIdentifier3 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self fulfillmentIdentifier];
      fulfillmentIdentifier4 = [v5 fulfillmentIdentifier];
      v11 = [fulfillmentIdentifier3 isEqual:fulfillmentIdentifier4];

      if (!v11)
      {
        goto LABEL_62;
      }
    }

    status = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self status];
    if (status == [v5 status])
    {
      trackingNumber = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self trackingNumber];
      trackingNumber2 = [v5 trackingNumber];
      v16 = trackingNumber2;
      if (trackingNumber == trackingNumber2)
      {
      }

      else
      {
        trackingNumber3 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self trackingNumber];
        trackingNumber4 = [v5 trackingNumber];
        v19 = [trackingNumber3 isEqual:trackingNumber4];

        if (!v19)
        {
          goto LABEL_62;
        }
      }

      carrierName = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self carrierName];
      carrierName2 = [v5 carrierName];
      v22 = carrierName2;
      if (carrierName == carrierName2)
      {
      }

      else
      {
        carrierName3 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self carrierName];
        carrierName4 = [v5 carrierName];
        v25 = [carrierName3 isEqual:carrierName4];

        if (!v25)
        {
          goto LABEL_62;
        }
      }

      carrierIdentifier = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self carrierIdentifier];
      carrierIdentifier2 = [v5 carrierIdentifier];
      v28 = carrierIdentifier2;
      if (carrierIdentifier == carrierIdentifier2)
      {
      }

      else
      {
        carrierIdentifier3 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self carrierIdentifier];
        carrierIdentifier4 = [v5 carrierIdentifier];
        v31 = [carrierIdentifier3 isEqual:carrierIdentifier4];

        if (!v31)
        {
          goto LABEL_62;
        }
      }

      shippingMethod = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self shippingMethod];
      shippingMethod2 = [v5 shippingMethod];
      v34 = shippingMethod2;
      if (shippingMethod == shippingMethod2)
      {
      }

      else
      {
        shippingMethod3 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self shippingMethod];
        shippingMethod4 = [v5 shippingMethod];
        v37 = [shippingMethod3 isEqual:shippingMethod4];

        if (!v37)
        {
          goto LABEL_62;
        }
      }

      shippingDate = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self shippingDate];
      shippingDate2 = [v5 shippingDate];
      v40 = shippingDate2;
      if (shippingDate == shippingDate2)
      {
      }

      else
      {
        shippingDate3 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self shippingDate];
        shippingDate4 = [v5 shippingDate];
        v43 = [shippingDate3 isEqual:shippingDate4];

        if (!v43)
        {
          goto LABEL_62;
        }
      }

      shippingTime = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self shippingTime];
      shippingTime2 = [v5 shippingTime];
      v46 = shippingTime2;
      if (shippingTime == shippingTime2)
      {
      }

      else
      {
        shippingTime3 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self shippingTime];
        shippingTime4 = [v5 shippingTime];
        v49 = [shippingTime3 isEqual:shippingTime4];

        if (!v49)
        {
          goto LABEL_62;
        }
      }

      estimatedDeliveryStartDate = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self estimatedDeliveryStartDate];
      estimatedDeliveryStartDate2 = [v5 estimatedDeliveryStartDate];
      v52 = estimatedDeliveryStartDate2;
      if (estimatedDeliveryStartDate == estimatedDeliveryStartDate2)
      {
      }

      else
      {
        estimatedDeliveryStartDate3 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self estimatedDeliveryStartDate];
        estimatedDeliveryStartDate4 = [v5 estimatedDeliveryStartDate];
        v55 = [estimatedDeliveryStartDate3 isEqual:estimatedDeliveryStartDate4];

        if (!v55)
        {
          goto LABEL_62;
        }
      }

      estimatedDeliveryStartTime = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self estimatedDeliveryStartTime];
      estimatedDeliveryStartTime2 = [v5 estimatedDeliveryStartTime];
      v58 = estimatedDeliveryStartTime2;
      if (estimatedDeliveryStartTime == estimatedDeliveryStartTime2)
      {
      }

      else
      {
        estimatedDeliveryStartTime3 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self estimatedDeliveryStartTime];
        estimatedDeliveryStartTime4 = [v5 estimatedDeliveryStartTime];
        v61 = [estimatedDeliveryStartTime3 isEqual:estimatedDeliveryStartTime4];

        if (!v61)
        {
          goto LABEL_62;
        }
      }

      estimatedDeliveryEndDate = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self estimatedDeliveryEndDate];
      estimatedDeliveryEndDate2 = [v5 estimatedDeliveryEndDate];
      v64 = estimatedDeliveryEndDate2;
      if (estimatedDeliveryEndDate == estimatedDeliveryEndDate2)
      {
      }

      else
      {
        estimatedDeliveryEndDate3 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self estimatedDeliveryEndDate];
        estimatedDeliveryEndDate4 = [v5 estimatedDeliveryEndDate];
        v67 = [estimatedDeliveryEndDate3 isEqual:estimatedDeliveryEndDate4];

        if (!v67)
        {
          goto LABEL_62;
        }
      }

      estimatedDeliveryEndTime = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self estimatedDeliveryEndTime];
      estimatedDeliveryEndTime2 = [v5 estimatedDeliveryEndTime];
      v70 = estimatedDeliveryEndTime2;
      if (estimatedDeliveryEndTime == estimatedDeliveryEndTime2)
      {
      }

      else
      {
        estimatedDeliveryEndTime3 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self estimatedDeliveryEndTime];
        estimatedDeliveryEndTime4 = [v5 estimatedDeliveryEndTime];
        v73 = [estimatedDeliveryEndTime3 isEqual:estimatedDeliveryEndTime4];

        if (!v73)
        {
          goto LABEL_62;
        }
      }

      deliveryDate = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self deliveryDate];
      deliveryDate2 = [v5 deliveryDate];
      v76 = deliveryDate2;
      if (deliveryDate == deliveryDate2)
      {
      }

      else
      {
        deliveryDate3 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self deliveryDate];
        deliveryDate4 = [v5 deliveryDate];
        v79 = [deliveryDate3 isEqual:deliveryDate4];

        if (!v79)
        {
          goto LABEL_62;
        }
      }

      deliveryTime = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self deliveryTime];
      deliveryTime2 = [v5 deliveryTime];
      v82 = deliveryTime2;
      if (deliveryTime == deliveryTime2)
      {
      }

      else
      {
        deliveryTime3 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self deliveryTime];
        deliveryTime4 = [v5 deliveryTime];
        v85 = [deliveryTime3 isEqual:deliveryTime4];

        if (!v85)
        {
          goto LABEL_62;
        }
      }

      shippingRecipient = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self shippingRecipient];
      shippingRecipient2 = [v5 shippingRecipient];
      v88 = shippingRecipient2;
      if (shippingRecipient == shippingRecipient2)
      {
      }

      else
      {
        shippingRecipient3 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self shippingRecipient];
        shippingRecipient4 = [v5 shippingRecipient];
        v91 = [shippingRecipient3 isEqual:shippingRecipient4];

        if (!v91)
        {
          goto LABEL_62;
        }
      }

      fulfillmentCreationDate = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self fulfillmentCreationDate];
      fulfillmentCreationDate2 = [v5 fulfillmentCreationDate];
      v94 = fulfillmentCreationDate2;
      if (fulfillmentCreationDate == fulfillmentCreationDate2)
      {
      }

      else
      {
        fulfillmentCreationDate3 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self fulfillmentCreationDate];
        fulfillmentCreationDate4 = [v5 fulfillmentCreationDate];
        v97 = [fulfillmentCreationDate3 isEqual:fulfillmentCreationDate4];

        if (!v97)
        {
          goto LABEL_62;
        }
      }

      shippingEmails = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self shippingEmails];
      shippingEmails2 = [v5 shippingEmails];
      if (shippingEmails == shippingEmails2)
      {
        v12 = 1;
      }

      else
      {
        shippingEmails3 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self shippingEmails];
        shippingEmails4 = [v5 shippingEmails];
        v12 = [shippingEmails3 isEqual:shippingEmails4];
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
  fulfillmentIdentifier = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self fulfillmentIdentifier];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMWalletPaymentsCommerceExtractedOrderShippingFulfillment status](self, "status")}];
  trackingNumber = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self trackingNumber];
  carrierName = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self carrierName];
  carrierIdentifier = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self carrierIdentifier];
  shippingMethod = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self shippingMethod];
  shippingDate = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self shippingDate];
  shippingTime = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self shippingTime];
  estimatedDeliveryStartDate = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self estimatedDeliveryStartDate];
  estimatedDeliveryStartTime = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self estimatedDeliveryStartTime];
  estimatedDeliveryEndDate = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self estimatedDeliveryEndDate];
  estimatedDeliveryEndTime = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self estimatedDeliveryEndTime];
  deliveryDate = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self deliveryDate];
  deliveryTime = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self deliveryTime];
  shippingRecipient = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self shippingRecipient];
  jsonDictionary = [shippingRecipient jsonDictionary];

  fulfillmentCreationDate = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self fulfillmentCreationDate];
  if (fulfillmentCreationDate)
  {
    v10 = MEMORY[0x1E696AD98];
    fulfillmentCreationDate2 = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self fulfillmentCreationDate];
    [fulfillmentCreationDate2 timeIntervalSinceReferenceDate];
    v49 = [v10 numberWithDouble:?];
  }

  else
  {
    v49 = 0;
  }

  _shippingEmailsJSONArray = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self _shippingEmailsJSONArray];
  v60[0] = @"fulfillmentIdentifier";
  null = fulfillmentIdentifier;
  if (!fulfillmentIdentifier)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v43 = null;
  v61[0] = null;
  v60[1] = @"status";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v42 = null2;
  v61[1] = null2;
  v60[2] = @"trackingNumber";
  null3 = trackingNumber;
  if (!trackingNumber)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v41 = null3;
  v61[2] = null3;
  v60[3] = @"carrierName";
  null4 = carrierName;
  if (!carrierName)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v40 = null4;
  v61[3] = null4;
  v60[4] = @"carrierIdentifier";
  null5 = carrierIdentifier;
  if (!carrierIdentifier)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v39 = null5;
  v61[4] = null5;
  v60[5] = @"shippingMethod";
  null6 = shippingMethod;
  if (!shippingMethod)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v61[5] = null6;
  v60[6] = @"shippingDate";
  null7 = shippingDate;
  if (!shippingDate)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v61[6] = null7;
  v60[7] = @"shippingTime";
  null8 = shippingTime;
  if (!shippingTime)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v61[7] = null8;
  v60[8] = @"estimatedDeliveryStartDate";
  null9 = estimatedDeliveryStartDate;
  if (!estimatedDeliveryStartDate)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v48 = carrierName;
  v61[8] = null9;
  v60[9] = @"estimatedDeliveryStartTime";
  null10 = estimatedDeliveryStartTime;
  if (!estimatedDeliveryStartTime)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v46 = null9;
  v61[9] = null10;
  v60[10] = @"estimatedDeliveryEndDate";
  null11 = estimatedDeliveryEndDate;
  if (!estimatedDeliveryEndDate)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v34 = null11;
  v61[10] = null11;
  v60[11] = @"estimatedDeliveryEndTime";
  null12 = estimatedDeliveryEndTime;
  if (!estimatedDeliveryEndTime)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v36 = null8;
  v37 = null7;
  v47 = fulfillmentIdentifier;
  v61[11] = null12;
  v60[12] = @"deliveryDate";
  null13 = deliveryDate;
  if (!deliveryDate)
  {
    null13 = [MEMORY[0x1E695DFB0] null];
  }

  v38 = null6;
  v45 = carrierIdentifier;
  v61[12] = null13;
  v60[13] = @"deliveryTime";
  null14 = deliveryTime;
  if (!deliveryTime)
  {
    null14 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = v4;
  v61[13] = null14;
  v60[14] = @"shippingRecipient";
  null15 = jsonDictionary;
  if (!jsonDictionary)
  {
    null15 = [MEMORY[0x1E695DFB0] null];
  }

  v29 = null10;
  v61[14] = null15;
  v60[15] = @"fulfillmentCreationDate";
  null16 = v49;
  if (!v49)
  {
    null16 = [MEMORY[0x1E695DFB0] null];
  }

  v61[15] = null16;
  v60[16] = @"shippingEmails";
  null17 = _shippingEmailsJSONArray;
  if (!_shippingEmailsJSONArray)
  {
    null17 = [MEMORY[0x1E695DFB0] null];
  }

  v61[16] = null17;
  v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:v60 count:{17, v34}];
  if (!_shippingEmailsJSONArray)
  {
  }

  if (!v49)
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

  if (!shippingDate)
  {
  }

  if (shippingMethod)
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
    if (trackingNumber)
    {
      goto LABEL_64;
    }

    goto LABEL_72;
  }

LABEL_71:

  if (trackingNumber)
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
  shippingEmails = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self shippingEmails];
  v5 = [shippingEmails countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(shippingEmails);
        }

        jsonDictionary = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [shippingEmails countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMWalletPaymentsCommerceExtractedOrderShippingFulfillment)initWithJSONDictionary:(id)dictionary error:(id *)p_isa
{
  v232[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"fulfillmentIdentifier"];
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
    v8 = [dictionaryCopy objectForKeyedSubscript:@"status"];
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
      v10 = [dictionaryCopy objectForKeyedSubscript:@"trackingNumber"];
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
        v12 = [dictionaryCopy objectForKeyedSubscript:@"carrierName"];
        v182 = v12;
        if (!v12 || (v13 = v12, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v14 = v7;
          v15 = v187;
          selfCopy2 = self;
          v178 = 0;
          goto LABEL_13;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v7;
          v15 = v187;
          selfCopy2 = self;
          v178 = v13;
LABEL_13:
          v17 = [dictionaryCopy objectForKeyedSubscript:@"carrierIdentifier"];
          v180 = v17;
          v187 = v15;
          if (!v17 || (v18 = v17, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v179 = 0;
LABEL_16:
            v19 = [dictionaryCopy objectForKeyedSubscript:@"shippingMethod"];
            v177 = v19;
            if (!v19)
            {
              v176 = 0;
              self = selfCopy2;
              goto LABEL_34;
            }

            v20 = v19;
            objc_opt_class();
            self = selfCopy2;
            if (objc_opt_isKindOfClass())
            {
              v176 = 0;
LABEL_34:
              v30 = [dictionaryCopy objectForKeyedSubscript:@"shippingDate"];
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
                v32 = [dictionaryCopy objectForKeyedSubscript:@"shippingTime"];
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
                  v33 = [dictionaryCopy objectForKeyedSubscript:@"estimatedDeliveryStartDate"];
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
                    v35 = [dictionaryCopy objectForKeyedSubscript:@"estimatedDeliveryStartTime"];
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
                      v37 = [dictionaryCopy objectForKeyedSubscript:@"estimatedDeliveryEndDate"];
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
                        v39 = [dictionaryCopy objectForKeyedSubscript:@"estimatedDeliveryEndTime"];
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
                          v41 = [dictionaryCopy objectForKeyedSubscript:@"deliveryDate"];
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
                            v43 = [dictionaryCopy objectForKeyedSubscript:@"deliveryTime"];
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
                              v44 = [dictionaryCopy objectForKeyedSubscript:@"shippingRecipient"];
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
                                v45 = [dictionaryCopy objectForKeyedSubscript:@"fulfillmentCreationDate"];
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
                                v113 = [dictionaryCopy objectForKeyedSubscript:@"shippingEmails"];
                                null = [MEMORY[0x1E695DFB0] null];
                                v115 = [v113 isEqual:null];

                                selfCopy3 = self;
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
                                      self = selfCopy3;
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

                                      self = selfCopy3;
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
                                      self = -[BMWalletPaymentsCommerceExtractedOrderShippingFulfillment initWithFulfillmentIdentifier:status:trackingNumber:carrierName:carrierIdentifier:shippingMethod:shippingDate:shippingTime:estimatedDeliveryStartDate:estimatedDeliveryStartTime:estimatedDeliveryEndDate:estimatedDeliveryEndTime:deliveryDate:deliveryTime:shippingRecipient:fulfillmentCreationDate:shippingEmails:](selfCopy3, "initWithFulfillmentIdentifier:status:trackingNumber:carrierName:carrierIdentifier:shippingMethod:shippingDate:shippingTime:estimatedDeliveryStartDate:estimatedDeliveryStartTime:estimatedDeliveryEndDate:estimatedDeliveryEndTime:deliveryDate:deliveryTime:shippingRecipient:fulfillmentCreationDate:shippingEmails:", v187, [v183 intValue], v181, v178, v179, v176, v174, v173, v171, v166, v161, v159, v157, v155, v154, v153, v164);
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

                                  self = selfCopy3;
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
                                  self = selfCopy3;
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

                            selfCopy4 = self;
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
                              self = selfCopy4;
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
                          selfCopy9 = self;
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
                            self = selfCopy9;
                            v32 = v163;
                            goto LABEL_166;
                          }

                          v157 = 0;
                          p_isa = 0;
LABEL_187:
                          v27 = v183;
                          v52 = v181;
                          v50 = v178;
                          self = selfCopy9;
                          v32 = v163;
                          goto LABEL_167;
                        }

                        v163 = v32;
                        selfCopy9 = self;
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
                        self = selfCopy9;
                        v32 = v163;
                        goto LABEL_168;
                      }

                      v163 = v32;
                      selfCopy9 = self;
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
                      self = selfCopy9;
                      v32 = v163;
                      goto LABEL_169;
                    }

                    v163 = v32;
                    selfCopy9 = self;
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
                    self = selfCopy9;
                    v32 = v163;
LABEL_170:

                    goto LABEL_171;
                  }

                  v163 = v32;
                  selfCopy9 = self;
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

                selfCopy11 = self;
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
                  self = selfCopy11;
                  goto LABEL_171;
                }

                v173 = 0;
                p_isa = 0;
LABEL_124:
                v27 = v183;
                v52 = v181;
                v50 = v178;
                self = selfCopy11;
LABEL_172:

                goto LABEL_173;
              }

              selfCopy11 = self;
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
              self = selfCopy11;
LABEL_173:

              goto LABEL_174;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v176 = v20;
              goto LABEL_34;
            }

            selfCopy11 = selfCopy2;
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
            self = selfCopy2;
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
            self = selfCopy2;
            v7 = v14;
            goto LABEL_174;
          }

          v179 = 0;
          v27 = v183;
          v52 = v181;
          v50 = v178;
          self = selfCopy2;
          v7 = v14;
LABEL_175:

          goto LABEL_176;
        }

        selfCopy12 = self;
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
          self = selfCopy12;
          goto LABEL_175;
        }

        v50 = 0;
        p_isa = 0;
        v27 = v183;
        v52 = v181;
LABEL_176:

        goto LABEL_177;
      }

      selfCopy13 = self;
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
        self = selfCopy13;
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
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v20 = *MEMORY[0x1E69E9840];
  toCopy = to;
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
    [(BMWalletPaymentsCommerceTrackedOrderShippingRecipient *)self->_shippingRecipient writeTo:toCopy];
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
        [v12 writeTo:{toCopy, v14}];
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

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v39.receiver = self;
  v39.super_class = BMWalletPaymentsCommerceExtractedOrderShippingFulfillment;
  v5 = [(BMEventBase *)&v39 init];
  if (!v5)
  {
    goto LABEL_63;
  }

  v6 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    do
    {
      if ([fromCopy hasError])
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v40) = 0;
        v11 = [fromCopy position] + 1;
        if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v40 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
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

      v15 = [fromCopy hasError] ? 0 : v10;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v15 & 7) == 4)
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

          v20 = [[BMWalletPaymentsCommerceTrackedOrderShippingRecipient alloc] initByReadFrom:fromCopy];
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
          v22 = [fromCopy position] + 8;
          if (v22 >= [fromCopy position] && (v23 = objc_msgSend(fromCopy, "position") + 8, v23 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v40 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
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

          v18 = [[BMWalletPaymentsCommerceExtractedOrderExtractedEmail alloc] initByReadFrom:fromCopy];
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
        v27 = [fromCopy position] + 1;
        if (v27 >= [fromCopy position] && (v28 = objc_msgSend(fromCopy, "position") + 1, v28 <= objc_msgSend(fromCopy, "length")))
        {
          data3 = [fromCopy data];
          [data3 getBytes:&v40 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
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

      if (([fromCopy hasError] & 1) != 0 || v26 > 9)
      {
LABEL_57:
        LODWORD(v26) = 0;
      }

      v5->_status = v26;
LABEL_53:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  v34 = [v6 copy];
  shippingEmails = v5->_shippingEmails;
  v5->_shippingEmails = v34;

  hasError = [fromCopy hasError];
  if (hasError)
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
  fulfillmentIdentifier = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self fulfillmentIdentifier];
  v22 = BMWalletPaymentsCommerceTrackedOrderShippingFulfillmentStatusAsString([(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self status]);
  trackingNumber = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self trackingNumber];
  carrierName = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self carrierName];
  carrierIdentifier = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self carrierIdentifier];
  shippingMethod = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self shippingMethod];
  shippingDate = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self shippingDate];
  shippingTime = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self shippingTime];
  estimatedDeliveryStartDate = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self estimatedDeliveryStartDate];
  estimatedDeliveryStartTime = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self estimatedDeliveryStartTime];
  estimatedDeliveryEndDate = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self estimatedDeliveryEndDate];
  estimatedDeliveryEndTime = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self estimatedDeliveryEndTime];
  deliveryDate = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self deliveryDate];
  deliveryTime = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self deliveryTime];
  shippingRecipient = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self shippingRecipient];
  fulfillmentCreationDate = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self fulfillmentCreationDate];
  shippingEmails = [(BMWalletPaymentsCommerceExtractedOrderShippingFulfillment *)self shippingEmails];
  v17 = [v16 initWithFormat:@"BMWalletPaymentsCommerceExtractedOrderShippingFulfillment with fulfillmentIdentifier: %@, status: %@, trackingNumber: %@, carrierName: %@, carrierIdentifier: %@, shippingMethod: %@, shippingDate: %@, shippingTime: %@, estimatedDeliveryStartDate: %@, estimatedDeliveryStartTime: %@, estimatedDeliveryEndDate: %@, estimatedDeliveryEndTime: %@, deliveryDate: %@, deliveryTime: %@, shippingRecipient: %@, fulfillmentCreationDate: %@, shippingEmails: %@", fulfillmentIdentifier, v22, trackingNumber, carrierName, carrierIdentifier, shippingMethod, shippingDate, shippingTime, estimatedDeliveryStartDate, estimatedDeliveryStartTime, estimatedDeliveryEndDate, estimatedDeliveryEndTime, deliveryDate, deliveryTime, shippingRecipient, fulfillmentCreationDate, shippingEmails];

  return v17;
}

- (BMWalletPaymentsCommerceExtractedOrderShippingFulfillment)initWithFulfillmentIdentifier:(id)identifier status:(int)status trackingNumber:(id)number carrierName:(id)name carrierIdentifier:(id)carrierIdentifier shippingMethod:(id)method shippingDate:(id)date shippingTime:(id)self0 estimatedDeliveryStartDate:(id)self1 estimatedDeliveryStartTime:(id)self2 estimatedDeliveryEndDate:(id)self3 estimatedDeliveryEndTime:(id)self4 deliveryDate:(id)self5 deliveryTime:(id)self6 shippingRecipient:(id)self7 fulfillmentCreationDate:(id)self8 shippingEmails:(id)self9
{
  identifierCopy = identifier;
  numberCopy = number;
  numberCopy2 = number;
  nameCopy = name;
  carrierIdentifierCopy = carrierIdentifier;
  methodCopy = method;
  methodCopy2 = method;
  dateCopy = date;
  timeCopy = time;
  startDateCopy = startDate;
  startTimeCopy = startTime;
  endDateCopy = endDate;
  endTimeCopy = endTime;
  deliveryDateCopy = deliveryDate;
  deliveryTimeCopy = deliveryTime;
  recipientCopy = recipient;
  creationDateCopy = creationDate;
  emailsCopy = emails;
  v47.receiver = self;
  v47.super_class = BMWalletPaymentsCommerceExtractedOrderShippingFulfillment;
  v28 = [(BMEventBase *)&v47 init];
  if (v28)
  {
    v28->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v28->_fulfillmentIdentifier, identifier);
    v28->_status = status;
    objc_storeStrong(&v28->_trackingNumber, numberCopy);
    objc_storeStrong(&v28->_carrierName, name);
    objc_storeStrong(&v28->_carrierIdentifier, carrierIdentifier);
    objc_storeStrong(&v28->_shippingMethod, methodCopy);
    objc_storeStrong(&v28->_shippingDate, date);
    objc_storeStrong(&v28->_shippingTime, time);
    objc_storeStrong(&v28->_estimatedDeliveryStartDate, startDate);
    objc_storeStrong(&v28->_estimatedDeliveryStartTime, startTime);
    objc_storeStrong(&v28->_estimatedDeliveryEndDate, endDate);
    objc_storeStrong(&v28->_estimatedDeliveryEndTime, endTime);
    objc_storeStrong(&v28->_deliveryDate, deliveryDate);
    objc_storeStrong(&v28->_deliveryTime, deliveryTime);
    objc_storeStrong(&v28->_shippingRecipient, recipient);
    if (creationDateCopy)
    {
      v28->_hasRaw_fulfillmentCreationDate = 1;
      [creationDateCopy timeIntervalSinceReferenceDate];
    }

    else
    {
      v28->_hasRaw_fulfillmentCreationDate = 0;
      v29 = -1.0;
    }

    v28->_raw_fulfillmentCreationDate = v29;
    objc_storeStrong(&v28->_shippingEmails, emails);
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