@interface BMWalletPaymentsCommerceTrackedOrder
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMWalletPaymentsCommerceTrackedOrder)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMWalletPaymentsCommerceTrackedOrder)initWithOrderNumber:(id)number orderDate:(id)date merchant:(id)merchant shippingFulfillments:(id)fulfillments customer:(id)customer payment:(id)payment isTrackedInWallet:(id)wallet orderUpdateDate:(id)self0 trackedOrderIdentifier:(id)self1 orderStatus:(int)self2 earliestEmailDateSent:(id)self3 orderStatusUpdateDate:(id)self4;
- (BOOL)isEqual:(id)equal;
- (NSDate)earliestEmailDateSent;
- (NSDate)orderStatusUpdateDate;
- (NSDate)orderUpdateDate;
- (NSString)description;
- (id)_shippingFulfillmentsJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMWalletPaymentsCommerceTrackedOrder

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    orderNumber = [(BMWalletPaymentsCommerceTrackedOrder *)self orderNumber];
    orderNumber2 = [v5 orderNumber];
    v8 = orderNumber2;
    if (orderNumber == orderNumber2)
    {
    }

    else
    {
      orderNumber3 = [(BMWalletPaymentsCommerceTrackedOrder *)self orderNumber];
      orderNumber4 = [v5 orderNumber];
      v11 = [orderNumber3 isEqual:orderNumber4];

      if (!v11)
      {
        goto LABEL_43;
      }
    }

    orderDate = [(BMWalletPaymentsCommerceTrackedOrder *)self orderDate];
    orderDate2 = [v5 orderDate];
    v15 = orderDate2;
    if (orderDate == orderDate2)
    {
    }

    else
    {
      orderDate3 = [(BMWalletPaymentsCommerceTrackedOrder *)self orderDate];
      orderDate4 = [v5 orderDate];
      v18 = [orderDate3 isEqual:orderDate4];

      if (!v18)
      {
        goto LABEL_43;
      }
    }

    merchant = [(BMWalletPaymentsCommerceTrackedOrder *)self merchant];
    merchant2 = [v5 merchant];
    v21 = merchant2;
    if (merchant == merchant2)
    {
    }

    else
    {
      merchant3 = [(BMWalletPaymentsCommerceTrackedOrder *)self merchant];
      merchant4 = [v5 merchant];
      v24 = [merchant3 isEqual:merchant4];

      if (!v24)
      {
        goto LABEL_43;
      }
    }

    shippingFulfillments = [(BMWalletPaymentsCommerceTrackedOrder *)self shippingFulfillments];
    shippingFulfillments2 = [v5 shippingFulfillments];
    v27 = shippingFulfillments2;
    if (shippingFulfillments == shippingFulfillments2)
    {
    }

    else
    {
      shippingFulfillments3 = [(BMWalletPaymentsCommerceTrackedOrder *)self shippingFulfillments];
      shippingFulfillments4 = [v5 shippingFulfillments];
      v30 = [shippingFulfillments3 isEqual:shippingFulfillments4];

      if (!v30)
      {
        goto LABEL_43;
      }
    }

    customer = [(BMWalletPaymentsCommerceTrackedOrder *)self customer];
    customer2 = [v5 customer];
    v33 = customer2;
    if (customer == customer2)
    {
    }

    else
    {
      customer3 = [(BMWalletPaymentsCommerceTrackedOrder *)self customer];
      customer4 = [v5 customer];
      v36 = [customer3 isEqual:customer4];

      if (!v36)
      {
        goto LABEL_43;
      }
    }

    payment = [(BMWalletPaymentsCommerceTrackedOrder *)self payment];
    payment2 = [v5 payment];
    v39 = payment2;
    if (payment == payment2)
    {
    }

    else
    {
      payment3 = [(BMWalletPaymentsCommerceTrackedOrder *)self payment];
      payment4 = [v5 payment];
      v42 = [payment3 isEqual:payment4];

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

      isTrackedInWallet = [(BMWalletPaymentsCommerceTrackedOrder *)self isTrackedInWallet];
      if (isTrackedInWallet != [v5 isTrackedInWallet])
      {
        goto LABEL_43;
      }
    }

    orderUpdateDate = [(BMWalletPaymentsCommerceTrackedOrder *)self orderUpdateDate];
    orderUpdateDate2 = [v5 orderUpdateDate];
    v46 = orderUpdateDate2;
    if (orderUpdateDate == orderUpdateDate2)
    {
    }

    else
    {
      orderUpdateDate3 = [(BMWalletPaymentsCommerceTrackedOrder *)self orderUpdateDate];
      orderUpdateDate4 = [v5 orderUpdateDate];
      v49 = [orderUpdateDate3 isEqual:orderUpdateDate4];

      if (!v49)
      {
        goto LABEL_43;
      }
    }

    trackedOrderIdentifier = [(BMWalletPaymentsCommerceTrackedOrder *)self trackedOrderIdentifier];
    trackedOrderIdentifier2 = [v5 trackedOrderIdentifier];
    v52 = trackedOrderIdentifier2;
    if (trackedOrderIdentifier == trackedOrderIdentifier2)
    {
    }

    else
    {
      trackedOrderIdentifier3 = [(BMWalletPaymentsCommerceTrackedOrder *)self trackedOrderIdentifier];
      trackedOrderIdentifier4 = [v5 trackedOrderIdentifier];
      v55 = [trackedOrderIdentifier3 isEqual:trackedOrderIdentifier4];

      if (!v55)
      {
        goto LABEL_43;
      }
    }

    orderStatus = [(BMWalletPaymentsCommerceTrackedOrder *)self orderStatus];
    if (orderStatus == [v5 orderStatus])
    {
      earliestEmailDateSent = [(BMWalletPaymentsCommerceTrackedOrder *)self earliestEmailDateSent];
      earliestEmailDateSent2 = [v5 earliestEmailDateSent];
      v59 = earliestEmailDateSent2;
      if (earliestEmailDateSent == earliestEmailDateSent2)
      {
      }

      else
      {
        earliestEmailDateSent3 = [(BMWalletPaymentsCommerceTrackedOrder *)self earliestEmailDateSent];
        earliestEmailDateSent4 = [v5 earliestEmailDateSent];
        v62 = [earliestEmailDateSent3 isEqual:earliestEmailDateSent4];

        if (!v62)
        {
          goto LABEL_43;
        }
      }

      orderStatusUpdateDate = [(BMWalletPaymentsCommerceTrackedOrder *)self orderStatusUpdateDate];
      orderStatusUpdateDate2 = [v5 orderStatusUpdateDate];
      if (orderStatusUpdateDate == orderStatusUpdateDate2)
      {
        v12 = 1;
      }

      else
      {
        orderStatusUpdateDate3 = [(BMWalletPaymentsCommerceTrackedOrder *)self orderStatusUpdateDate];
        orderStatusUpdateDate4 = [v5 orderStatusUpdateDate];
        v12 = [orderStatusUpdateDate3 isEqual:orderStatusUpdateDate4];
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
  orderNumber = [(BMWalletPaymentsCommerceTrackedOrder *)self orderNumber];
  orderDate = [(BMWalletPaymentsCommerceTrackedOrder *)self orderDate];
  merchant = [(BMWalletPaymentsCommerceTrackedOrder *)self merchant];
  jsonDictionary = [merchant jsonDictionary];

  _shippingFulfillmentsJSONArray = [(BMWalletPaymentsCommerceTrackedOrder *)self _shippingFulfillmentsJSONArray];
  customer = [(BMWalletPaymentsCommerceTrackedOrder *)self customer];
  jsonDictionary2 = [customer jsonDictionary];

  payment = [(BMWalletPaymentsCommerceTrackedOrder *)self payment];
  jsonDictionary3 = [payment jsonDictionary];

  if ([(BMWalletPaymentsCommerceTrackedOrder *)self hasIsTrackedInWallet])
  {
    v48 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMWalletPaymentsCommerceTrackedOrder isTrackedInWallet](self, "isTrackedInWallet")}];
  }

  else
  {
    v48 = 0;
  }

  orderUpdateDate = [(BMWalletPaymentsCommerceTrackedOrder *)self orderUpdateDate];
  if (orderUpdateDate)
  {
    v11 = MEMORY[0x1E696AD98];
    orderUpdateDate2 = [(BMWalletPaymentsCommerceTrackedOrder *)self orderUpdateDate];
    [orderUpdateDate2 timeIntervalSinceReferenceDate];
    v47 = [v11 numberWithDouble:?];
  }

  else
  {
    v47 = 0;
  }

  trackedOrderIdentifier = [(BMWalletPaymentsCommerceTrackedOrder *)self trackedOrderIdentifier];
  v45 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMWalletPaymentsCommerceTrackedOrder orderStatus](self, "orderStatus")}];
  earliestEmailDateSent = [(BMWalletPaymentsCommerceTrackedOrder *)self earliestEmailDateSent];
  if (earliestEmailDateSent)
  {
    v14 = MEMORY[0x1E696AD98];
    earliestEmailDateSent2 = [(BMWalletPaymentsCommerceTrackedOrder *)self earliestEmailDateSent];
    [earliestEmailDateSent2 timeIntervalSinceReferenceDate];
    v44 = [v14 numberWithDouble:?];
  }

  else
  {
    v44 = 0;
  }

  orderStatusUpdateDate = [(BMWalletPaymentsCommerceTrackedOrder *)self orderStatusUpdateDate];
  if (orderStatusUpdateDate)
  {
    v17 = MEMORY[0x1E696AD98];
    orderStatusUpdateDate2 = [(BMWalletPaymentsCommerceTrackedOrder *)self orderStatusUpdateDate];
    [orderStatusUpdateDate2 timeIntervalSinceReferenceDate];
    v19 = [v17 numberWithDouble:?];
  }

  else
  {
    v19 = 0;
  }

  v51[0] = @"orderNumber";
  null = orderNumber;
  if (!orderNumber)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v40 = null;
  v52[0] = null;
  v51[1] = @"orderDate";
  null2 = orderDate;
  if (!orderDate)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v39 = null2;
  v52[1] = null2;
  v51[2] = @"merchant";
  null3 = jsonDictionary;
  if (!jsonDictionary)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v38 = null3;
  v52[2] = null3;
  v51[3] = @"shippingFulfillments";
  null4 = _shippingFulfillmentsJSONArray;
  if (!_shippingFulfillmentsJSONArray)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v37 = null4;
  v52[3] = null4;
  v51[4] = @"customer";
  null5 = jsonDictionary2;
  if (!jsonDictionary2)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v43 = orderNumber;
  v52[4] = null5;
  v51[5] = @"payment";
  null6 = jsonDictionary3;
  if (!jsonDictionary3)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v42 = orderDate;
  v52[5] = null6;
  v51[6] = @"isTrackedInWallet";
  null7 = v48;
  if (!v48)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v41 = jsonDictionary;
  v52[6] = null7;
  v51[7] = @"orderUpdateDate";
  null8 = v47;
  if (!v47)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = _shippingFulfillmentsJSONArray;
  v52[7] = null8;
  v51[8] = @"trackedOrderIdentifier";
  null9 = trackedOrderIdentifier;
  if (!trackedOrderIdentifier)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v36 = null5;
  v52[8] = null9;
  v51[9] = @"orderStatus";
  null10 = v45;
  if (!v45)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v52[9] = null10;
  v51[10] = @"earliestEmailDateSent";
  null11 = v44;
  if (!v44)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v52[10] = null11;
  v51[11] = @"orderStatusUpdateDate";
  null12 = v19;
  if (!v19)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v52[11] = null12;
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

  if (!trackedOrderIdentifier)
  {
  }

  if (!v47)
  {
  }

  if (!v48)
  {
  }

  if (!jsonDictionary3)
  {
  }

  if (jsonDictionary2)
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
  shippingFulfillments = [(BMWalletPaymentsCommerceTrackedOrder *)self shippingFulfillments];
  v5 = [shippingFulfillments countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(shippingFulfillments);
        }

        jsonDictionary = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [shippingFulfillments countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMWalletPaymentsCommerceTrackedOrder)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v213[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"orderNumber"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v22 = objc_alloc(MEMORY[0x1E696ABC0]);
        v23 = *MEMORY[0x1E698F240];
        v212 = *MEMORY[0x1E696A578];
        v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"orderNumber"];
        v213[0] = v10;
        v170 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v213 forKeys:&v212 count:1];
        v7 = 0;
        v20 = 0;
        *error = [v22 initWithDomain:v23 code:2 userInfo:?];
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

  v8 = [dictionaryCopy objectForKeyedSubscript:@"orderDate"];
  v170 = v8;
  if (v8 && (v9 = v8, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v24 = objc_alloc(MEMORY[0x1E696ABC0]);
        v25 = *MEMORY[0x1E698F240];
        v210 = *MEMORY[0x1E696A578];
        v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"orderDate"];
        v211 = v18;
        v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v211 forKeys:&v210 count:1];
        v10 = 0;
        v20 = 0;
        *error = [v24 initWithDomain:v25 code:2 userInfo:v21];
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

  v11 = [dictionaryCopy objectForKeyedSubscript:@"merchant"];
  v169 = v10;
  if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v26 = v11;
      if (error)
      {
        v175 = objc_alloc(MEMORY[0x1E696ABC0]);
        v27 = *MEMORY[0x1E698F240];
        v208 = *MEMORY[0x1E696A578];
        v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"merchant"];
        v209 = v21;
        v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v209 forKeys:&v208 count:1];
        *error = [v175 initWithDomain:v27 code:2 userInfo:v28];

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
      if (error)
      {
        v19 = v19;
        *error = v19;
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

  v12 = [dictionaryCopy objectForKeyedSubscript:@"shippingFulfillments"];
  null = [MEMORY[0x1E695DFB0] null];
  v14 = [v12 isEqual:null];

  v166 = v11;
  if (v14)
  {
    v15 = v12;
    errorCopy3 = error;
    v160 = dictionaryCopy;
    v161 = v7;
  }

  else
  {
    if (v12)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v47 = objc_alloc(MEMORY[0x1E696ABC0]);
          v48 = *MEMORY[0x1E698F240];
          v206 = *MEMORY[0x1E696A578];
          v176 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"shippingFulfillments"];
          v207 = v176;
          v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v207 forKeys:&v206 count:1];
          v20 = 0;
          *error = [v47 initWithDomain:v48 code:2 userInfo:v38];
          goto LABEL_58;
        }

        v20 = 0;
        v21 = v168;
        goto LABEL_100;
      }

      v17 = v12;
      errorCopy3 = error;
      v160 = dictionaryCopy;
      v161 = v7;
      goto LABEL_32;
    }

    errorCopy3 = error;
    v160 = dictionaryCopy;
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
        if (errorCopy3)
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
          *errorCopy3 = [v40 initWithDomain:v41 code:2 userInfo:v45];
          v12 = obj;
          v38 = obj;
          dictionaryCopy = v160;
          v7 = v161;
          goto LABEL_50;
        }

LABEL_56:
        v20 = 0;
        v12 = obj;
        v38 = obj;
        dictionaryCopy = v160;
        v7 = v161;
        goto LABEL_57;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (errorCopy3)
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
        if (errorCopy3)
        {
          v46 = v37;
          *errorCopy3 = v45;
        }

        v20 = 0;
        v12 = obj;
        v38 = obj;
        dictionaryCopy = v160;
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

  dictionaryCopy = v160;
  v38 = [v160 objectForKeyedSubscript:@"customer"];
  if (!v38)
  {
    v34 = 0;
    v7 = v161;
    v39 = errorCopy3;
    goto LABEL_60;
  }

  objc_opt_class();
  v7 = v161;
  v39 = errorCopy3;
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
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v23 = *MEMORY[0x1E69E9840];
  toCopy = to;
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
    [(BMWalletPaymentsCommerceTrackedOrderMerchant *)self->_merchant writeTo:toCopy];
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
        [v10 writeTo:{toCopy, v17}];
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
    [(BMWalletPaymentsCommerceTrackedOrderCustomer *)self->_customer writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_payment)
  {
    v21 = 0;
    PBDataWriterPlaceMark();
    [(BMWalletPaymentsCommerceTrackedOrderPayment *)self->_payment writeTo:toCopy];
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

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v56.receiver = self;
  v56.super_class = BMWalletPaymentsCommerceTrackedOrder;
  v5 = [(BMEventBase *)&v56 init];
  if (!v5)
  {
    goto LABEL_95;
  }

  v6 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_93;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v57) = 0;
        v11 = [fromCopy position] + 1;
        if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v57 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
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

      v15 = [fromCopy hasError] ? 0 : v10;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v15 & 7) == 4)
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
              v37 = [fromCopy position] + 8;
              if (v37 >= [fromCopy position] && (v38 = objc_msgSend(fromCopy, "position") + 8, v38 <= objc_msgSend(fromCopy, "length")))
              {
                data2 = [fromCopy data];
                [data2 getBytes:&v57 range:{objc_msgSend(fromCopy, "position"), 8}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
              }

              else
              {
                [fromCopy _setError];
              }

              v46 = v57;
              v47 = 56;
              goto LABEL_91;
            case 0xB:
              v5->_hasRaw_earliestEmailDateSent = 1;
              v57 = 0;
              v43 = [fromCopy position] + 8;
              if (v43 >= [fromCopy position] && (v44 = objc_msgSend(fromCopy, "position") + 8, v44 <= objc_msgSend(fromCopy, "length")))
              {
                data3 = [fromCopy data];
                [data3 getBytes:&v57 range:{objc_msgSend(fromCopy, "position"), 8}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
              }

              else
              {
                [fromCopy _setError];
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
                v24 = [fromCopy position] + 1;
                if (v24 >= [fromCopy position] && (v25 = objc_msgSend(fromCopy, "position") + 1, v25 <= objc_msgSend(fromCopy, "length")))
                {
                  data4 = [fromCopy data];
                  [data4 getBytes:&v57 range:{objc_msgSend(fromCopy, "position"), 1}];

                  [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
                }

                else
                {
                  [fromCopy _setError];
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

              if (([fromCopy hasError] & 1) != 0 || v23 > 4)
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
                v31 = [fromCopy position] + 1;
                if (v31 >= [fromCopy position] && (v32 = objc_msgSend(fromCopy, "position") + 1, v32 <= objc_msgSend(fromCopy, "length")))
                {
                  data5 = [fromCopy data];
                  [data5 getBytes:&v57 range:{objc_msgSend(fromCopy, "position"), 1}];

                  [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
                }

                else
                {
                  [fromCopy _setError];
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

              v34 = (v30 != 0) & ~[fromCopy hasError];
LABEL_84:
              v5->_isTrackedInWallet = v34;
              goto LABEL_92;
            case 8:
              v5->_hasRaw_orderUpdateDate = 1;
              v57 = 0;
              v40 = [fromCopy position] + 8;
              if (v40 >= [fromCopy position] && (v41 = objc_msgSend(fromCopy, "position") + 8, v41 <= objc_msgSend(fromCopy, "length")))
              {
                data6 = [fromCopy data];
                [data6 getBytes:&v57 range:{objc_msgSend(fromCopy, "position"), 8}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
              }

              else
              {
                [fromCopy _setError];
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

          v17 = [[BMWalletPaymentsCommerceTrackedOrderCustomer alloc] initByReadFrom:fromCopy];
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

          v17 = [[BMWalletPaymentsCommerceTrackedOrderPayment alloc] initByReadFrom:fromCopy];
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
      if (!PBReaderPlaceMark() || (v35 = [[BMWalletPaymentsCommerceTrackedOrderShippingFulfillment alloc] initByReadFrom:fromCopy]) == 0)
      {
LABEL_97:

        goto LABEL_94;
      }

      v36 = v35;
      [v6 addObject:v35];
      PBReaderRecallMark();

LABEL_92:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
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

        v17 = [[BMWalletPaymentsCommerceTrackedOrderMerchant alloc] initByReadFrom:fromCopy];
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

  hasError = [fromCopy hasError];
  if (hasError)
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
  orderNumber = [(BMWalletPaymentsCommerceTrackedOrder *)self orderNumber];
  orderDate = [(BMWalletPaymentsCommerceTrackedOrder *)self orderDate];
  merchant = [(BMWalletPaymentsCommerceTrackedOrder *)self merchant];
  shippingFulfillments = [(BMWalletPaymentsCommerceTrackedOrder *)self shippingFulfillments];
  customer = [(BMWalletPaymentsCommerceTrackedOrder *)self customer];
  payment = [(BMWalletPaymentsCommerceTrackedOrder *)self payment];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMWalletPaymentsCommerceTrackedOrder isTrackedInWallet](self, "isTrackedInWallet")}];
  orderUpdateDate = [(BMWalletPaymentsCommerceTrackedOrder *)self orderUpdateDate];
  trackedOrderIdentifier = [(BMWalletPaymentsCommerceTrackedOrder *)self trackedOrderIdentifier];
  v10 = BMWalletPaymentsCommerceTrackedOrderOrderStatusAsString([(BMWalletPaymentsCommerceTrackedOrder *)self orderStatus]);
  earliestEmailDateSent = [(BMWalletPaymentsCommerceTrackedOrder *)self earliestEmailDateSent];
  orderStatusUpdateDate = [(BMWalletPaymentsCommerceTrackedOrder *)self orderStatusUpdateDate];
  v15 = [v14 initWithFormat:@"BMWalletPaymentsCommerceTrackedOrder with orderNumber: %@, orderDate: %@, merchant: %@, shippingFulfillments: %@, customer: %@, payment: %@, isTrackedInWallet: %@, orderUpdateDate: %@, trackedOrderIdentifier: %@, orderStatus: %@, earliestEmailDateSent: %@, orderStatusUpdateDate: %@", orderNumber, orderDate, merchant, shippingFulfillments, customer, payment, v7, orderUpdateDate, trackedOrderIdentifier, v10, earliestEmailDateSent, orderStatusUpdateDate];

  return v15;
}

- (BMWalletPaymentsCommerceTrackedOrder)initWithOrderNumber:(id)number orderDate:(id)date merchant:(id)merchant shippingFulfillments:(id)fulfillments customer:(id)customer payment:(id)payment isTrackedInWallet:(id)wallet orderUpdateDate:(id)self0 trackedOrderIdentifier:(id)self1 orderStatus:(int)self2 earliestEmailDateSent:(id)self3 orderStatusUpdateDate:(id)self4
{
  numberCopy = number;
  dateCopy = date;
  dateCopy2 = date;
  merchantCopy = merchant;
  fulfillmentsCopy = fulfillments;
  customerCopy = customer;
  paymentCopy = payment;
  walletCopy = wallet;
  updateDateCopy = updateDate;
  identifierCopy = identifier;
  sentCopy = sent;
  statusUpdateDateCopy = statusUpdateDate;
  v38.receiver = self;
  v38.super_class = BMWalletPaymentsCommerceTrackedOrder;
  v23 = [(BMEventBase *)&v38 init];
  if (v23)
  {
    v23->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v23->_orderNumber, number);
    objc_storeStrong(&v23->_orderDate, dateCopy);
    objc_storeStrong(&v23->_merchant, merchant);
    objc_storeStrong(&v23->_shippingFulfillments, fulfillments);
    objc_storeStrong(&v23->_customer, customer);
    objc_storeStrong(&v23->_payment, payment);
    if (walletCopy)
    {
      v23->_hasIsTrackedInWallet = 1;
      v23->_isTrackedInWallet = [walletCopy BOOLValue];
    }

    else
    {
      v23->_hasIsTrackedInWallet = 0;
      v23->_isTrackedInWallet = 0;
    }

    if (updateDateCopy)
    {
      v23->_hasRaw_orderUpdateDate = 1;
      [updateDateCopy timeIntervalSinceReferenceDate];
    }

    else
    {
      v23->_hasRaw_orderUpdateDate = 0;
      v24 = -1.0;
    }

    v23->_raw_orderUpdateDate = v24;
    objc_storeStrong(&v23->_trackedOrderIdentifier, identifier);
    v23->_orderStatus = status;
    if (sentCopy)
    {
      v23->_hasRaw_earliestEmailDateSent = 1;
      [sentCopy timeIntervalSinceReferenceDate];
    }

    else
    {
      v23->_hasRaw_earliestEmailDateSent = 0;
      v25 = -1.0;
    }

    v23->_raw_earliestEmailDateSent = v25;
    if (statusUpdateDateCopy)
    {
      v23->_hasRaw_orderStatusUpdateDate = 1;
      [statusUpdateDateCopy timeIntervalSinceReferenceDate];
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