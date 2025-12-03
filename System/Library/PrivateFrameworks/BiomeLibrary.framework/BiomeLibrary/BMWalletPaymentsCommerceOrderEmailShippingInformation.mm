@interface BMWalletPaymentsCommerceOrderEmailShippingInformation
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMWalletPaymentsCommerceOrderEmailShippingInformation)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMWalletPaymentsCommerceOrderEmailShippingInformation)initWithStatus:(int)status trackingNumber:(id)number carrierName:(id)name shippingMethod:(id)method shippingDate:(id)date shippingTime:(id)time estimatedDeliveryStartDate:(id)startDate estimatedDeliveryStartTime:(id)self0 estimatedDeliveryEndDate:(id)self1 estimatedDeliveryEndTime:(id)self2 deliveryDate:(id)self3 deliveryTime:(id)self4;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMWalletPaymentsCommerceOrderEmailShippingInformation

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    status = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self status];
    if (status == [v5 status])
    {
      trackingNumber = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self trackingNumber];
      trackingNumber2 = [v5 trackingNumber];
      v9 = trackingNumber2;
      if (trackingNumber == trackingNumber2)
      {
      }

      else
      {
        trackingNumber3 = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self trackingNumber];
        trackingNumber4 = [v5 trackingNumber];
        v12 = [trackingNumber3 isEqual:trackingNumber4];

        if (!v12)
        {
          goto LABEL_42;
        }
      }

      carrierName = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self carrierName];
      carrierName2 = [v5 carrierName];
      v16 = carrierName2;
      if (carrierName == carrierName2)
      {
      }

      else
      {
        carrierName3 = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self carrierName];
        carrierName4 = [v5 carrierName];
        v19 = [carrierName3 isEqual:carrierName4];

        if (!v19)
        {
          goto LABEL_42;
        }
      }

      shippingMethod = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self shippingMethod];
      shippingMethod2 = [v5 shippingMethod];
      v22 = shippingMethod2;
      if (shippingMethod == shippingMethod2)
      {
      }

      else
      {
        shippingMethod3 = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self shippingMethod];
        shippingMethod4 = [v5 shippingMethod];
        v25 = [shippingMethod3 isEqual:shippingMethod4];

        if (!v25)
        {
          goto LABEL_42;
        }
      }

      shippingDate = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self shippingDate];
      shippingDate2 = [v5 shippingDate];
      v28 = shippingDate2;
      if (shippingDate == shippingDate2)
      {
      }

      else
      {
        shippingDate3 = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self shippingDate];
        shippingDate4 = [v5 shippingDate];
        v31 = [shippingDate3 isEqual:shippingDate4];

        if (!v31)
        {
          goto LABEL_42;
        }
      }

      shippingTime = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self shippingTime];
      shippingTime2 = [v5 shippingTime];
      v34 = shippingTime2;
      if (shippingTime == shippingTime2)
      {
      }

      else
      {
        shippingTime3 = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self shippingTime];
        shippingTime4 = [v5 shippingTime];
        v37 = [shippingTime3 isEqual:shippingTime4];

        if (!v37)
        {
          goto LABEL_42;
        }
      }

      estimatedDeliveryStartDate = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self estimatedDeliveryStartDate];
      estimatedDeliveryStartDate2 = [v5 estimatedDeliveryStartDate];
      v40 = estimatedDeliveryStartDate2;
      if (estimatedDeliveryStartDate == estimatedDeliveryStartDate2)
      {
      }

      else
      {
        estimatedDeliveryStartDate3 = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self estimatedDeliveryStartDate];
        estimatedDeliveryStartDate4 = [v5 estimatedDeliveryStartDate];
        v43 = [estimatedDeliveryStartDate3 isEqual:estimatedDeliveryStartDate4];

        if (!v43)
        {
          goto LABEL_42;
        }
      }

      estimatedDeliveryStartTime = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self estimatedDeliveryStartTime];
      estimatedDeliveryStartTime2 = [v5 estimatedDeliveryStartTime];
      v46 = estimatedDeliveryStartTime2;
      if (estimatedDeliveryStartTime == estimatedDeliveryStartTime2)
      {
      }

      else
      {
        estimatedDeliveryStartTime3 = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self estimatedDeliveryStartTime];
        estimatedDeliveryStartTime4 = [v5 estimatedDeliveryStartTime];
        v49 = [estimatedDeliveryStartTime3 isEqual:estimatedDeliveryStartTime4];

        if (!v49)
        {
          goto LABEL_42;
        }
      }

      estimatedDeliveryEndDate = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self estimatedDeliveryEndDate];
      estimatedDeliveryEndDate2 = [v5 estimatedDeliveryEndDate];
      v52 = estimatedDeliveryEndDate2;
      if (estimatedDeliveryEndDate == estimatedDeliveryEndDate2)
      {
      }

      else
      {
        estimatedDeliveryEndDate3 = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self estimatedDeliveryEndDate];
        estimatedDeliveryEndDate4 = [v5 estimatedDeliveryEndDate];
        v55 = [estimatedDeliveryEndDate3 isEqual:estimatedDeliveryEndDate4];

        if (!v55)
        {
          goto LABEL_42;
        }
      }

      estimatedDeliveryEndTime = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self estimatedDeliveryEndTime];
      estimatedDeliveryEndTime2 = [v5 estimatedDeliveryEndTime];
      v58 = estimatedDeliveryEndTime2;
      if (estimatedDeliveryEndTime == estimatedDeliveryEndTime2)
      {
      }

      else
      {
        estimatedDeliveryEndTime3 = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self estimatedDeliveryEndTime];
        estimatedDeliveryEndTime4 = [v5 estimatedDeliveryEndTime];
        v61 = [estimatedDeliveryEndTime3 isEqual:estimatedDeliveryEndTime4];

        if (!v61)
        {
          goto LABEL_42;
        }
      }

      deliveryDate = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self deliveryDate];
      deliveryDate2 = [v5 deliveryDate];
      v64 = deliveryDate2;
      if (deliveryDate == deliveryDate2)
      {
      }

      else
      {
        deliveryDate3 = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self deliveryDate];
        deliveryDate4 = [v5 deliveryDate];
        v67 = [deliveryDate3 isEqual:deliveryDate4];

        if (!v67)
        {
          goto LABEL_42;
        }
      }

      deliveryTime = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self deliveryTime];
      deliveryTime2 = [v5 deliveryTime];
      if (deliveryTime == deliveryTime2)
      {
        v13 = 1;
      }

      else
      {
        deliveryTime3 = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self deliveryTime];
        deliveryTime4 = [v5 deliveryTime];
        v13 = [deliveryTime3 isEqual:deliveryTime4];
      }

      goto LABEL_43;
    }

LABEL_42:
    v13 = 0;
LABEL_43:

    goto LABEL_44;
  }

  v13 = 0;
LABEL_44:

  return v13;
}

- (id)jsonDictionary
{
  v43[12] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMWalletPaymentsCommerceOrderEmailShippingInformation status](self, "status")}];
  trackingNumber = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self trackingNumber];
  carrierName = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self carrierName];
  shippingMethod = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self shippingMethod];
  shippingDate = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self shippingDate];
  shippingTime = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self shippingTime];
  estimatedDeliveryStartDate = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self estimatedDeliveryStartDate];
  estimatedDeliveryStartTime = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self estimatedDeliveryStartTime];
  estimatedDeliveryEndDate = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self estimatedDeliveryEndDate];
  estimatedDeliveryEndTime = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self estimatedDeliveryEndTime];
  deliveryDate = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self deliveryDate];
  deliveryTime = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self deliveryTime];
  v42[0] = @"status";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v32 = null;
  v43[0] = null;
  v42[1] = @"trackingNumber";
  null2 = trackingNumber;
  if (!trackingNumber)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = null2;
  v43[1] = null2;
  v42[2] = @"carrierName";
  null3 = carrierName;
  if (!carrierName)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v30 = null3;
  v43[2] = null3;
  v42[3] = @"shippingMethod";
  null4 = shippingMethod;
  if (!shippingMethod)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v29 = null4;
  v43[3] = null4;
  v42[4] = @"shippingDate";
  null5 = shippingDate;
  if (!shippingDate)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v36 = shippingMethod;
  v37 = carrierName;
  v28 = null5;
  v43[4] = null5;
  v42[5] = @"shippingTime";
  null6 = shippingTime;
  if (!shippingTime)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v35 = shippingDate;
  v27 = null6;
  v43[5] = null6;
  v42[6] = @"estimatedDeliveryStartDate";
  null7 = estimatedDeliveryStartDate;
  if (!estimatedDeliveryStartDate)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v34 = shippingTime;
  v43[6] = null7;
  v42[7] = @"estimatedDeliveryStartTime";
  null8 = estimatedDeliveryStartTime;
  if (!estimatedDeliveryStartTime)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v19 = trackingNumber;
  v43[7] = null8;
  v42[8] = @"estimatedDeliveryEndDate";
  null9 = estimatedDeliveryEndDate;
  if (!estimatedDeliveryEndDate)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = v3;
  v43[8] = null9;
  v42[9] = @"estimatedDeliveryEndTime";
  null10 = estimatedDeliveryEndTime;
  if (!estimatedDeliveryEndTime)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v43[9] = null10;
  v42[10] = @"deliveryDate";
  null11 = deliveryDate;
  if (!deliveryDate)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v43[10] = null11;
  v42[11] = @"deliveryTime";
  null12 = deliveryTime;
  if (!deliveryTime)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v43[11] = null12;
  v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:12];
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

  if (!v34)
  {
  }

  if (v35)
  {
    if (v36)
    {
      goto LABEL_41;
    }
  }

  else
  {

    if (v36)
    {
LABEL_41:
      if (v37)
      {
        goto LABEL_42;
      }

      goto LABEL_49;
    }
  }

  if (v37)
  {
LABEL_42:
    if (v19)
    {
      goto LABEL_43;
    }

LABEL_50:

    if (v21)
    {
      goto LABEL_44;
    }

    goto LABEL_51;
  }

LABEL_49:

  if (!v19)
  {
    goto LABEL_50;
  }

LABEL_43:
  if (v21)
  {
    goto LABEL_44;
  }

LABEL_51:

LABEL_44:
  v25 = *MEMORY[0x1E69E9840];

  return v33;
}

- (BMWalletPaymentsCommerceOrderEmailShippingInformation)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v137[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"status"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v113 = 0;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
LABEL_8:
    v113 = v8;
LABEL_9:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"trackingNumber"];
    errorCopy = error;
    if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v112 = 0;
      goto LABEL_12;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v112 = v9;
LABEL_12:
      v10 = [dictionaryCopy objectForKeyedSubscript:@"carrierName"];
      selfCopy = self;
      v107 = v9;
      if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v11 = 0;
        goto LABEL_15;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
LABEL_15:
        v12 = [dictionaryCopy objectForKeyedSubscript:@"shippingMethod"];
        v109 = v12;
        v106 = v11;
        if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v13 = v7;
          v108 = 0;
          goto LABEL_18;
        }

        v13 = v7;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v108 = v12;
LABEL_18:
          v14 = [dictionaryCopy objectForKeyedSubscript:@"shippingDate"];
          if (!v14 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v102 = v14;
            v104 = 0;
            goto LABEL_21;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v102 = v14;
            v104 = v14;
LABEL_21:
            [dictionaryCopy objectForKeyedSubscript:@"shippingTime"];
            v15 = v7 = v13;
            if (!v15 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v103 = 0;
              goto LABEL_24;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v103 = v15;
LABEL_24:
              v16 = [dictionaryCopy objectForKeyedSubscript:@"estimatedDeliveryStartDate"];
              v101 = v16;
              if (v16)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v17 = v7;
                  v16 = 0;
                }

                else
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    if (!errorCopy)
                    {
                      v16 = 0;
                      v24 = 0;
                      v42 = v102;
                      goto LABEL_105;
                    }

                    v63 = v10;
                    v64 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v65 = *MEMORY[0x1E698F240];
                    v124 = *MEMORY[0x1E696A578];
                    v100 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"estimatedDeliveryStartDate"];
                    v125 = v100;
                    v66 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v125 forKeys:&v124 count:1];
                    v67 = v64;
                    v10 = v63;
                    v99 = v66;
                    v16 = 0;
                    v24 = 0;
                    *errorCopy = [v67 initWithDomain:v65 code:2 userInfo:?];
                    v42 = v102;
                    goto LABEL_104;
                  }

                  v17 = v7;
                  v16 = v16;
                }
              }

              else
              {
                v17 = v7;
              }

              v25 = [dictionaryCopy objectForKeyedSubscript:@"estimatedDeliveryStartTime"];
              v97 = v16;
              v99 = v25;
              if (v25 && (v26 = v25, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  if (!errorCopy)
                  {
                    v100 = 0;
                    v24 = 0;
                    v42 = v102;
                    v7 = v17;
                    goto LABEL_104;
                  }

                  v68 = v10;
                  v69 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v70 = *MEMORY[0x1E698F240];
                  v122 = *MEMORY[0x1E696A578];
                  v98 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"estimatedDeliveryStartTime"];
                  v123 = v98;
                  v95 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v123 forKeys:&v122 count:1];
                  v71 = v69;
                  v10 = v68;
                  v16 = v97;
                  v100 = 0;
                  v24 = 0;
                  *errorCopy = [v71 initWithDomain:v70 code:2 userInfo:v95];
                  v42 = v102;
                  v7 = v17;
                  v27 = v95;
LABEL_103:

LABEL_104:
                  goto LABEL_105;
                }

                v100 = v26;
              }

              else
              {
                v100 = 0;
              }

              [dictionaryCopy objectForKeyedSubscript:@"estimatedDeliveryEndDate"];
              v27 = v7 = v17;
              if (v27 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  if (!errorCopy)
                  {
                    v98 = 0;
                    v24 = 0;
                    v42 = v102;
                    goto LABEL_103;
                  }

                  v72 = v10;
                  v73 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v74 = *MEMORY[0x1E698F240];
                  v120 = *MEMORY[0x1E696A578];
                  v96 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"estimatedDeliveryEndDate"];
                  v121 = v96;
                  v75 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v121 forKeys:&v120 count:1];
                  v76 = v73;
                  v10 = v72;
                  v16 = v97;
                  v77 = v74;
                  v78 = v75;
                  v98 = 0;
                  v24 = 0;
                  *errorCopy = [v76 initWithDomain:v77 code:2 userInfo:v75];
                  v42 = v102;
                  goto LABEL_102;
                }

                v98 = v27;
              }

              else
              {
                v98 = 0;
              }

              v28 = [dictionaryCopy objectForKeyedSubscript:@"estimatedDeliveryEndTime"];
              v92 = v10;
              v93 = v28;
              if (v28 && (v29 = v28, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v94 = v15;
                  if (!errorCopy)
                  {
                    v96 = 0;
                    v24 = 0;
                    v42 = v102;
                    goto LABEL_101;
                  }

                  v79 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v80 = *MEMORY[0x1E698F240];
                  v118 = *MEMORY[0x1E696A578];
                  v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"estimatedDeliveryEndTime"];
                  v119 = v32;
                  v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v119 forKeys:&v118 count:1];
                  v81 = [v79 initWithDomain:v80 code:2 userInfo:v31];
                  v96 = 0;
                  v24 = 0;
                  *errorCopy = v81;
                  goto LABEL_117;
                }

                v30 = v29;
              }

              else
              {
                v30 = 0;
              }

              v31 = [dictionaryCopy objectForKeyedSubscript:@"deliveryDate"];
              v96 = v30;
              if (!v31 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v32 = 0;
                goto LABEL_54;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v32 = v31;
LABEL_54:
                v33 = [dictionaryCopy objectForKeyedSubscript:@"deliveryTime"];
                if (!v33 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v34 = 0;
LABEL_57:
                  v24 = -[BMWalletPaymentsCommerceOrderEmailShippingInformation initWithStatus:trackingNumber:carrierName:shippingMethod:shippingDate:shippingTime:estimatedDeliveryStartDate:estimatedDeliveryStartTime:estimatedDeliveryEndDate:estimatedDeliveryEndTime:deliveryDate:deliveryTime:](selfCopy, "initWithStatus:trackingNumber:carrierName:shippingMethod:shippingDate:shippingTime:estimatedDeliveryStartDate:estimatedDeliveryStartTime:estimatedDeliveryEndDate:estimatedDeliveryEndTime:deliveryDate:deliveryTime:", [v113 intValue], v112, v106, v108, v104, v103, v97, v100, v98, v30, v32, v34);
                  selfCopy = v24;
LABEL_99:

LABEL_100:
                  v10 = v92;
                  v12 = v109;
                  v42 = v102;
                  v16 = v97;
LABEL_101:
                  v78 = v93;
LABEL_102:

                  self = selfCopy;
                  goto LABEL_103;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v34 = v33;
                  goto LABEL_57;
                }

                v94 = v15;
                if (errorCopy)
                {
                  v91 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v89 = *MEMORY[0x1E698F240];
                  v114 = *MEMORY[0x1E696A578];
                  v84 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"deliveryTime"];
                  v115 = v84;
                  v85 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v115 forKeys:&v114 count:1];
                  *errorCopy = [v91 initWithDomain:v89 code:2 userInfo:v85];
                }

                v34 = 0;
                v24 = 0;
LABEL_98:
                v15 = v94;
                goto LABEL_99;
              }

              v94 = v15;
              if (errorCopy)
              {
                v90 = objc_alloc(MEMORY[0x1E696ABC0]);
                v82 = *MEMORY[0x1E698F240];
                v116 = *MEMORY[0x1E696A578];
                v34 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"deliveryDate"];
                v117 = v34;
                v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v117 forKeys:&v116 count:1];
                v83 = [v90 initWithDomain:v82 code:2 userInfo:v33];
                v32 = 0;
                v24 = 0;
                *errorCopy = v83;
                goto LABEL_98;
              }

              v32 = 0;
              v24 = 0;
LABEL_117:
              v15 = v94;
              goto LABEL_100;
            }

            if (errorCopy)
            {
              v56 = v10;
              v57 = objc_alloc(MEMORY[0x1E696ABC0]);
              v58 = *MEMORY[0x1E698F240];
              v126 = *MEMORY[0x1E696A578];
              v59 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"shippingTime"];
              v127 = v59;
              v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v127 forKeys:&v126 count:1];
              v61 = v57;
              v10 = v56;
              v16 = v59;
              v62 = v58;
              self = selfCopy;
              v101 = v60;
              v103 = 0;
              v24 = 0;
              *errorCopy = [v61 initWithDomain:v62 code:2 userInfo:?];
              v42 = v102;
LABEL_105:

              v11 = v106;
              goto LABEL_106;
            }

            v103 = 0;
            v24 = 0;
            v42 = v102;
LABEL_106:

            goto LABEL_107;
          }

          if (errorCopy)
          {
            v45 = v10;
            v46 = objc_alloc(MEMORY[0x1E696ABC0]);
            v105 = *MEMORY[0x1E698F240];
            v128 = *MEMORY[0x1E696A578];
            v47 = objc_alloc(MEMORY[0x1E696AEC0]);
            v88 = objc_opt_class();
            v48 = v47;
            v42 = v14;
            v103 = [v48 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v88, @"shippingDate"];
            v129 = v103;
            v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v129 forKeys:&v128 count:1];
            v50 = v46;
            v10 = v45;
            v11 = v106;
            v51 = [v50 initWithDomain:v105 code:2 userInfo:v49];
            v104 = 0;
            v24 = 0;
            *errorCopy = v51;
            v7 = v13;
            v15 = v49;
            self = selfCopy;
            goto LABEL_106;
          }

          v104 = 0;
          v24 = 0;
          v42 = v14;
LABEL_90:
          v7 = v13;
LABEL_107:

          goto LABEL_108;
        }

        if (errorCopy)
        {
          v39 = v10;
          v40 = objc_alloc(MEMORY[0x1E696ABC0]);
          v41 = *MEMORY[0x1E698F240];
          v130 = *MEMORY[0x1E696A578];
          v104 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"shippingMethod"];
          v131 = v104;
          v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v131 forKeys:&v130 count:1];
          v43 = v40;
          v10 = v39;
          v11 = v106;
          v44 = v41;
          self = selfCopy;
          v108 = 0;
          v24 = 0;
          *errorCopy = [v43 initWithDomain:v44 code:2 userInfo:v42];
          goto LABEL_90;
        }

        v108 = 0;
        v24 = 0;
LABEL_108:

        v9 = v107;
        goto LABEL_109;
      }

      if (error)
      {
        v35 = objc_alloc(MEMORY[0x1E696ABC0]);
        v36 = *MEMORY[0x1E698F240];
        v132 = *MEMORY[0x1E696A578];
        v108 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"carrierName"];
        v133 = v108;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v133 forKeys:&v132 count:1];
        v37 = v36;
        self = selfCopy;
        v38 = [v35 initWithDomain:v37 code:2 userInfo:v12];
        v11 = 0;
        v24 = 0;
        *errorCopy = v38;
        goto LABEL_108;
      }

      v11 = 0;
      v24 = 0;
LABEL_109:

      goto LABEL_110;
    }

    if (error)
    {
      v18 = objc_alloc(MEMORY[0x1E696ABC0]);
      selfCopy2 = self;
      v20 = *MEMORY[0x1E698F240];
      v134 = *MEMORY[0x1E696A578];
      v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"trackingNumber"];
      v135 = v11;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v135 forKeys:&v134 count:1];
      v22 = v18;
      v10 = v21;
      v23 = v20;
      self = selfCopy2;
      v112 = 0;
      v24 = 0;
      *error = [v22 initWithDomain:v23 code:2 userInfo:v21];
      goto LABEL_109;
    }

    v112 = 0;
    v24 = 0;
LABEL_110:

    goto LABEL_111;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:BMWalletPaymentsCommerceOrderEmailShippingInformationStatusFromString(v7)];
    goto LABEL_8;
  }

  if (error)
  {
    v52 = objc_alloc(MEMORY[0x1E696ABC0]);
    selfCopy3 = self;
    v54 = *MEMORY[0x1E698F240];
    v136 = *MEMORY[0x1E696A578];
    v112 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"status"];
    v137[0] = v112;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v137 forKeys:&v136 count:1];
    v55 = v54;
    self = selfCopy3;
    v113 = 0;
    v24 = 0;
    *error = [v52 initWithDomain:v55 code:2 userInfo:v9];
    goto LABEL_110;
  }

  v113 = 0;
  v24 = 0;
LABEL_111:

  v86 = *MEMORY[0x1E69E9840];
  return v24;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  status = self->_status;
  v7 = toCopy;
  PBDataWriterWriteUint32Field();
  if (self->_trackingNumber)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_carrierName)
  {
    PBDataWriterWriteStringField();
  }

  v6 = v7;
  if (self->_shippingMethod)
  {
    PBDataWriterWriteStringField();
    v6 = v7;
  }

  if (self->_shippingDate)
  {
    PBDataWriterWriteStringField();
    v6 = v7;
  }

  if (self->_shippingTime)
  {
    PBDataWriterWriteStringField();
    v6 = v7;
  }

  if (self->_estimatedDeliveryStartDate)
  {
    PBDataWriterWriteStringField();
    v6 = v7;
  }

  if (self->_estimatedDeliveryStartTime)
  {
    PBDataWriterWriteStringField();
    v6 = v7;
  }

  if (self->_estimatedDeliveryEndDate)
  {
    PBDataWriterWriteStringField();
    v6 = v7;
  }

  if (self->_estimatedDeliveryEndTime)
  {
    PBDataWriterWriteStringField();
    v6 = v7;
  }

  if (self->_deliveryDate)
  {
    PBDataWriterWriteStringField();
    v6 = v7;
  }

  if (self->_deliveryTime)
  {
    PBDataWriterWriteStringField();
    v6 = v7;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v29.receiver = self;
  v29.super_class = BMWalletPaymentsCommerceOrderEmailShippingInformation;
  v5 = [(BMEventBase *)&v29 init];
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
        v30 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v30 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v30 & 0x7F) << v7;
        if ((v30 & 0x80) == 0)
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

      v15 = v14 >> 3;
      if ((v14 >> 3) > 6)
      {
        if (v15 > 9)
        {
          switch(v15)
          {
            case 0xA:
              v16 = PBReaderReadString();
              v17 = 88;
              goto LABEL_53;
            case 0xB:
              v16 = PBReaderReadString();
              v17 = 96;
              goto LABEL_53;
            case 0xC:
              v16 = PBReaderReadString();
              v17 = 104;
              goto LABEL_53;
          }
        }

        else
        {
          switch(v15)
          {
            case 7:
              v16 = PBReaderReadString();
              v17 = 64;
              goto LABEL_53;
            case 8:
              v16 = PBReaderReadString();
              v17 = 72;
              goto LABEL_53;
            case 9:
              v16 = PBReaderReadString();
              v17 = 80;
              goto LABEL_53;
          }
        }
      }

      else if (v15 > 3)
      {
        switch(v15)
        {
          case 4:
            v16 = PBReaderReadString();
            v17 = 40;
            goto LABEL_53;
          case 5:
            v16 = PBReaderReadString();
            v17 = 48;
            goto LABEL_53;
          case 6:
            v16 = PBReaderReadString();
            v17 = 56;
            goto LABEL_53;
        }
      }

      else
      {
        switch(v15)
        {
          case 1:
            v18 = 0;
            v19 = 0;
            v20 = 0;
            while (1)
            {
              v30 = 0;
              v21 = [fromCopy position] + 1;
              if (v21 >= [fromCopy position] && (v22 = objc_msgSend(fromCopy, "position") + 1, v22 <= objc_msgSend(fromCopy, "length")))
              {
                data2 = [fromCopy data];
                [data2 getBytes:&v30 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v20 |= (v30 & 0x7F) << v18;
              if ((v30 & 0x80) == 0)
              {
                break;
              }

              v18 += 7;
              if (v19++ > 8)
              {
                goto LABEL_60;
              }
            }

            if (([fromCopy hasError] & 1) != 0 || v20 > 9)
            {
LABEL_60:
              LODWORD(v20) = 0;
            }

            v5->_status = v20;
            goto LABEL_54;
          case 2:
            v16 = PBReaderReadString();
            v17 = 24;
            goto LABEL_53;
          case 3:
            v16 = PBReaderReadString();
            v17 = 32;
LABEL_53:
            v25 = *(&v5->super.super.isa + v17);
            *(&v5->super.super.isa + v17) = v16;

            goto LABEL_54;
        }
      }

      if (!PBReaderSkipValueWithTag())
      {
        goto LABEL_63;
      }

LABEL_54:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_63:
    v27 = 0;
  }

  else
  {
LABEL_64:
    v27 = v5;
  }

  return v27;
}

- (NSString)description
{
  v14 = objc_alloc(MEMORY[0x1E696AEC0]);
  v17 = BMWalletPaymentsCommerceOrderEmailShippingInformationStatusAsString([(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self status]);
  trackingNumber = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self trackingNumber];
  carrierName = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self carrierName];
  shippingMethod = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self shippingMethod];
  shippingDate = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self shippingDate];
  shippingTime = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self shippingTime];
  estimatedDeliveryStartDate = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self estimatedDeliveryStartDate];
  estimatedDeliveryStartTime = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self estimatedDeliveryStartTime];
  estimatedDeliveryEndDate = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self estimatedDeliveryEndDate];
  estimatedDeliveryEndTime = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self estimatedDeliveryEndTime];
  deliveryDate = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self deliveryDate];
  deliveryTime = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self deliveryTime];
  v15 = [v14 initWithFormat:@"BMWalletPaymentsCommerceOrderEmailShippingInformation with status: %@, trackingNumber: %@, carrierName: %@, shippingMethod: %@, shippingDate: %@, shippingTime: %@, estimatedDeliveryStartDate: %@, estimatedDeliveryStartTime: %@, estimatedDeliveryEndDate: %@, estimatedDeliveryEndTime: %@, deliveryDate: %@, deliveryTime: %@", v17, trackingNumber, carrierName, shippingMethod, shippingDate, shippingTime, estimatedDeliveryStartDate, estimatedDeliveryStartTime, estimatedDeliveryEndDate, estimatedDeliveryEndTime, deliveryDate, deliveryTime];

  return v15;
}

- (BMWalletPaymentsCommerceOrderEmailShippingInformation)initWithStatus:(int)status trackingNumber:(id)number carrierName:(id)name shippingMethod:(id)method shippingDate:(id)date shippingTime:(id)time estimatedDeliveryStartDate:(id)startDate estimatedDeliveryStartTime:(id)self0 estimatedDeliveryEndDate:(id)self1 estimatedDeliveryEndTime:(id)self2 deliveryDate:(id)self3 deliveryTime:(id)self4
{
  numberCopy = number;
  nameCopy = name;
  nameCopy2 = name;
  methodCopy = method;
  dateCopy = date;
  timeCopy = time;
  startDateCopy = startDate;
  startTimeCopy = startTime;
  endDateCopy = endDate;
  endTimeCopy = endTime;
  deliveryDateCopy = deliveryDate;
  deliveryTimeCopy = deliveryTime;
  v35.receiver = self;
  v35.super_class = BMWalletPaymentsCommerceOrderEmailShippingInformation;
  v22 = [(BMEventBase *)&v35 init];
  if (v22)
  {
    v22->_dataVersion = [objc_opt_class() latestDataVersion];
    v22->_status = status;
    objc_storeStrong(&v22->_trackingNumber, number);
    objc_storeStrong(&v22->_carrierName, nameCopy);
    objc_storeStrong(&v22->_shippingMethod, method);
    objc_storeStrong(&v22->_shippingDate, date);
    objc_storeStrong(&v22->_shippingTime, time);
    objc_storeStrong(&v22->_estimatedDeliveryStartDate, startDate);
    objc_storeStrong(&v22->_estimatedDeliveryStartTime, startTime);
    objc_storeStrong(&v22->_estimatedDeliveryEndDate, endDate);
    objc_storeStrong(&v22->_estimatedDeliveryEndTime, endTime);
    objc_storeStrong(&v22->_deliveryDate, deliveryDate);
    objc_storeStrong(&v22->_deliveryTime, deliveryTime);
  }

  return v22;
}

+ (id)protoFields
{
  v17[12] = *MEMORY[0x1E69E9840];
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"status" number:1 type:4 subMessageClass:0];
  v17[0] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"trackingNumber" number:2 type:13 subMessageClass:0];
  v17[1] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"carrierName" number:3 type:13 subMessageClass:0];
  v17[2] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shippingMethod" number:4 type:13 subMessageClass:0];
  v17[3] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shippingDate" number:5 type:13 subMessageClass:0];
  v17[4] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shippingTime" number:6 type:13 subMessageClass:0];
  v17[5] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"estimatedDeliveryStartDate" number:7 type:13 subMessageClass:0];
  v17[6] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"estimatedDeliveryStartTime" number:8 type:13 subMessageClass:0];
  v17[7] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"estimatedDeliveryEndDate" number:9 type:13 subMessageClass:0];
  v17[8] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"estimatedDeliveryEndTime" number:10 type:13 subMessageClass:0];
  v17[9] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deliveryDate" number:11 type:13 subMessageClass:0];
  v17[10] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deliveryTime" number:12 type:13 subMessageClass:0];
  v17[11] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:12];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)columns
{
  v17[12] = *MEMORY[0x1E69E9840];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"status" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:4 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"trackingNumber" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"carrierName" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"shippingMethod" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"shippingDate" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"shippingTime" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"estimatedDeliveryStartDate" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"estimatedDeliveryStartTime" dataType:2 requestOnly:0 fieldNumber:8 protoDataType:13 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"estimatedDeliveryEndDate" dataType:2 requestOnly:0 fieldNumber:9 protoDataType:13 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"estimatedDeliveryEndTime" dataType:2 requestOnly:0 fieldNumber:10 protoDataType:13 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"deliveryDate" dataType:2 requestOnly:0 fieldNumber:11 protoDataType:13 convertedType:0];
  v10 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"deliveryTime" dataType:2 requestOnly:0 fieldNumber:12 protoDataType:13 convertedType:0];
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

    v8 = [[BMWalletPaymentsCommerceOrderEmailShippingInformation alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end