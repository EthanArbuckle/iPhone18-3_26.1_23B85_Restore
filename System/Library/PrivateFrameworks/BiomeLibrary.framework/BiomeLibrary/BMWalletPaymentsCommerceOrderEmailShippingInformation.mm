@interface BMWalletPaymentsCommerceOrderEmailShippingInformation
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMWalletPaymentsCommerceOrderEmailShippingInformation)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMWalletPaymentsCommerceOrderEmailShippingInformation)initWithStatus:(int)a3 trackingNumber:(id)a4 carrierName:(id)a5 shippingMethod:(id)a6 shippingDate:(id)a7 shippingTime:(id)a8 estimatedDeliveryStartDate:(id)a9 estimatedDeliveryStartTime:(id)a10 estimatedDeliveryEndDate:(id)a11 estimatedDeliveryEndTime:(id)a12 deliveryDate:(id)a13 deliveryTime:(id)a14;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMWalletPaymentsCommerceOrderEmailShippingInformation

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self status];
    if (v6 == [v5 status])
    {
      v7 = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self trackingNumber];
      v8 = [v5 trackingNumber];
      v9 = v8;
      if (v7 == v8)
      {
      }

      else
      {
        v10 = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self trackingNumber];
        v11 = [v5 trackingNumber];
        v12 = [v10 isEqual:v11];

        if (!v12)
        {
          goto LABEL_42;
        }
      }

      v14 = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self carrierName];
      v15 = [v5 carrierName];
      v16 = v15;
      if (v14 == v15)
      {
      }

      else
      {
        v17 = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self carrierName];
        v18 = [v5 carrierName];
        v19 = [v17 isEqual:v18];

        if (!v19)
        {
          goto LABEL_42;
        }
      }

      v20 = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self shippingMethod];
      v21 = [v5 shippingMethod];
      v22 = v21;
      if (v20 == v21)
      {
      }

      else
      {
        v23 = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self shippingMethod];
        v24 = [v5 shippingMethod];
        v25 = [v23 isEqual:v24];

        if (!v25)
        {
          goto LABEL_42;
        }
      }

      v26 = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self shippingDate];
      v27 = [v5 shippingDate];
      v28 = v27;
      if (v26 == v27)
      {
      }

      else
      {
        v29 = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self shippingDate];
        v30 = [v5 shippingDate];
        v31 = [v29 isEqual:v30];

        if (!v31)
        {
          goto LABEL_42;
        }
      }

      v32 = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self shippingTime];
      v33 = [v5 shippingTime];
      v34 = v33;
      if (v32 == v33)
      {
      }

      else
      {
        v35 = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self shippingTime];
        v36 = [v5 shippingTime];
        v37 = [v35 isEqual:v36];

        if (!v37)
        {
          goto LABEL_42;
        }
      }

      v38 = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self estimatedDeliveryStartDate];
      v39 = [v5 estimatedDeliveryStartDate];
      v40 = v39;
      if (v38 == v39)
      {
      }

      else
      {
        v41 = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self estimatedDeliveryStartDate];
        v42 = [v5 estimatedDeliveryStartDate];
        v43 = [v41 isEqual:v42];

        if (!v43)
        {
          goto LABEL_42;
        }
      }

      v44 = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self estimatedDeliveryStartTime];
      v45 = [v5 estimatedDeliveryStartTime];
      v46 = v45;
      if (v44 == v45)
      {
      }

      else
      {
        v47 = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self estimatedDeliveryStartTime];
        v48 = [v5 estimatedDeliveryStartTime];
        v49 = [v47 isEqual:v48];

        if (!v49)
        {
          goto LABEL_42;
        }
      }

      v50 = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self estimatedDeliveryEndDate];
      v51 = [v5 estimatedDeliveryEndDate];
      v52 = v51;
      if (v50 == v51)
      {
      }

      else
      {
        v53 = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self estimatedDeliveryEndDate];
        v54 = [v5 estimatedDeliveryEndDate];
        v55 = [v53 isEqual:v54];

        if (!v55)
        {
          goto LABEL_42;
        }
      }

      v56 = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self estimatedDeliveryEndTime];
      v57 = [v5 estimatedDeliveryEndTime];
      v58 = v57;
      if (v56 == v57)
      {
      }

      else
      {
        v59 = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self estimatedDeliveryEndTime];
        v60 = [v5 estimatedDeliveryEndTime];
        v61 = [v59 isEqual:v60];

        if (!v61)
        {
          goto LABEL_42;
        }
      }

      v62 = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self deliveryDate];
      v63 = [v5 deliveryDate];
      v64 = v63;
      if (v62 == v63)
      {
      }

      else
      {
        v65 = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self deliveryDate];
        v66 = [v5 deliveryDate];
        v67 = [v65 isEqual:v66];

        if (!v67)
        {
          goto LABEL_42;
        }
      }

      v69 = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self deliveryTime];
      v70 = [v5 deliveryTime];
      if (v69 == v70)
      {
        v13 = 1;
      }

      else
      {
        v71 = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self deliveryTime];
        v72 = [v5 deliveryTime];
        v13 = [v71 isEqual:v72];
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
  v4 = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self trackingNumber];
  v5 = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self carrierName];
  v6 = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self shippingMethod];
  v7 = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self shippingDate];
  v8 = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self shippingTime];
  v9 = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self estimatedDeliveryStartDate];
  v41 = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self estimatedDeliveryStartTime];
  v40 = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self estimatedDeliveryEndDate];
  v39 = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self estimatedDeliveryEndTime];
  v38 = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self deliveryDate];
  v10 = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self deliveryTime];
  v42[0] = @"status";
  v11 = v3;
  if (!v3)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = v11;
  v43[0] = v11;
  v42[1] = @"trackingNumber";
  v12 = v4;
  if (!v4)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = v12;
  v43[1] = v12;
  v42[2] = @"carrierName";
  v13 = v5;
  if (!v5)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v30 = v13;
  v43[2] = v13;
  v42[3] = @"shippingMethod";
  v14 = v6;
  if (!v6)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v29 = v14;
  v43[3] = v14;
  v42[4] = @"shippingDate";
  v15 = v7;
  if (!v7)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v36 = v6;
  v37 = v5;
  v28 = v15;
  v43[4] = v15;
  v42[5] = @"shippingTime";
  v16 = v8;
  if (!v8)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v35 = v7;
  v27 = v16;
  v43[5] = v16;
  v42[6] = @"estimatedDeliveryStartDate";
  v17 = v9;
  if (!v9)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v34 = v8;
  v43[6] = v17;
  v42[7] = @"estimatedDeliveryStartTime";
  v18 = v41;
  if (!v41)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v19 = v4;
  v43[7] = v18;
  v42[8] = @"estimatedDeliveryEndDate";
  v20 = v40;
  if (!v40)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = v3;
  v43[8] = v20;
  v42[9] = @"estimatedDeliveryEndTime";
  v22 = v39;
  if (!v39)
  {
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  v43[9] = v22;
  v42[10] = @"deliveryDate";
  v23 = v38;
  if (!v38)
  {
    v23 = [MEMORY[0x1E695DFB0] null];
  }

  v43[10] = v23;
  v42[11] = @"deliveryTime";
  v24 = v10;
  if (!v10)
  {
    v24 = [MEMORY[0x1E695DFB0] null];
  }

  v43[11] = v24;
  v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:12];
  if (!v10)
  {
  }

  if (!v38)
  {
  }

  if (!v39)
  {
  }

  if (!v40)
  {
  }

  if (!v41)
  {
  }

  if (!v9)
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

- (BMWalletPaymentsCommerceOrderEmailShippingInformation)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v137[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"status"];
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
    v9 = [v6 objectForKeyedSubscript:@"trackingNumber"];
    v110 = a4;
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
      v10 = [v6 objectForKeyedSubscript:@"carrierName"];
      v111 = self;
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
        v12 = [v6 objectForKeyedSubscript:@"shippingMethod"];
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
          v14 = [v6 objectForKeyedSubscript:@"shippingDate"];
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
            [v6 objectForKeyedSubscript:@"shippingTime"];
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
              v16 = [v6 objectForKeyedSubscript:@"estimatedDeliveryStartDate"];
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
                    if (!v110)
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
                    *v110 = [v67 initWithDomain:v65 code:2 userInfo:?];
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

              v25 = [v6 objectForKeyedSubscript:@"estimatedDeliveryStartTime"];
              v97 = v16;
              v99 = v25;
              if (v25 && (v26 = v25, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  if (!v110)
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
                  *v110 = [v71 initWithDomain:v70 code:2 userInfo:v95];
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

              [v6 objectForKeyedSubscript:@"estimatedDeliveryEndDate"];
              v27 = v7 = v17;
              if (v27 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  if (!v110)
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
                  *v110 = [v76 initWithDomain:v77 code:2 userInfo:v75];
                  v42 = v102;
                  goto LABEL_102;
                }

                v98 = v27;
              }

              else
              {
                v98 = 0;
              }

              v28 = [v6 objectForKeyedSubscript:@"estimatedDeliveryEndTime"];
              v92 = v10;
              v93 = v28;
              if (v28 && (v29 = v28, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v94 = v15;
                  if (!v110)
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
                  *v110 = v81;
                  goto LABEL_117;
                }

                v30 = v29;
              }

              else
              {
                v30 = 0;
              }

              v31 = [v6 objectForKeyedSubscript:@"deliveryDate"];
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
                v33 = [v6 objectForKeyedSubscript:@"deliveryTime"];
                if (!v33 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v34 = 0;
LABEL_57:
                  v24 = -[BMWalletPaymentsCommerceOrderEmailShippingInformation initWithStatus:trackingNumber:carrierName:shippingMethod:shippingDate:shippingTime:estimatedDeliveryStartDate:estimatedDeliveryStartTime:estimatedDeliveryEndDate:estimatedDeliveryEndTime:deliveryDate:deliveryTime:](v111, "initWithStatus:trackingNumber:carrierName:shippingMethod:shippingDate:shippingTime:estimatedDeliveryStartDate:estimatedDeliveryStartTime:estimatedDeliveryEndDate:estimatedDeliveryEndTime:deliveryDate:deliveryTime:", [v113 intValue], v112, v106, v108, v104, v103, v97, v100, v98, v30, v32, v34);
                  v111 = v24;
LABEL_99:

LABEL_100:
                  v10 = v92;
                  v12 = v109;
                  v42 = v102;
                  v16 = v97;
LABEL_101:
                  v78 = v93;
LABEL_102:

                  self = v111;
                  goto LABEL_103;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v34 = v33;
                  goto LABEL_57;
                }

                v94 = v15;
                if (v110)
                {
                  v91 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v89 = *MEMORY[0x1E698F240];
                  v114 = *MEMORY[0x1E696A578];
                  v84 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"deliveryTime"];
                  v115 = v84;
                  v85 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v115 forKeys:&v114 count:1];
                  *v110 = [v91 initWithDomain:v89 code:2 userInfo:v85];
                }

                v34 = 0;
                v24 = 0;
LABEL_98:
                v15 = v94;
                goto LABEL_99;
              }

              v94 = v15;
              if (v110)
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
                *v110 = v83;
                goto LABEL_98;
              }

              v32 = 0;
              v24 = 0;
LABEL_117:
              v15 = v94;
              goto LABEL_100;
            }

            if (v110)
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
              self = v111;
              v101 = v60;
              v103 = 0;
              v24 = 0;
              *v110 = [v61 initWithDomain:v62 code:2 userInfo:?];
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

          if (v110)
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
            *v110 = v51;
            v7 = v13;
            v15 = v49;
            self = v111;
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

        if (v110)
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
          self = v111;
          v108 = 0;
          v24 = 0;
          *v110 = [v43 initWithDomain:v44 code:2 userInfo:v42];
          goto LABEL_90;
        }

        v108 = 0;
        v24 = 0;
LABEL_108:

        v9 = v107;
        goto LABEL_109;
      }

      if (a4)
      {
        v35 = objc_alloc(MEMORY[0x1E696ABC0]);
        v36 = *MEMORY[0x1E698F240];
        v132 = *MEMORY[0x1E696A578];
        v108 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"carrierName"];
        v133 = v108;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v133 forKeys:&v132 count:1];
        v37 = v36;
        self = v111;
        v38 = [v35 initWithDomain:v37 code:2 userInfo:v12];
        v11 = 0;
        v24 = 0;
        *v110 = v38;
        goto LABEL_108;
      }

      v11 = 0;
      v24 = 0;
LABEL_109:

      goto LABEL_110;
    }

    if (a4)
    {
      v18 = objc_alloc(MEMORY[0x1E696ABC0]);
      v19 = self;
      v20 = *MEMORY[0x1E698F240];
      v134 = *MEMORY[0x1E696A578];
      v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"trackingNumber"];
      v135 = v11;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v135 forKeys:&v134 count:1];
      v22 = v18;
      v10 = v21;
      v23 = v20;
      self = v19;
      v112 = 0;
      v24 = 0;
      *a4 = [v22 initWithDomain:v23 code:2 userInfo:v21];
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

  if (a4)
  {
    v52 = objc_alloc(MEMORY[0x1E696ABC0]);
    v53 = self;
    v54 = *MEMORY[0x1E698F240];
    v136 = *MEMORY[0x1E696A578];
    v112 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"status"];
    v137[0] = v112;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v137 forKeys:&v136 count:1];
    v55 = v54;
    self = v53;
    v113 = 0;
    v24 = 0;
    *a4 = [v52 initWithDomain:v55 code:2 userInfo:v9];
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
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  status = self->_status;
  v7 = v4;
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

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = BMWalletPaymentsCommerceOrderEmailShippingInformation;
  v5 = [(BMEventBase *)&v29 init];
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
        v30 = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v30 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
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

      v14 = [v4 hasError] ? 0 : v9;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v14 & 7) == 4)
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
              v21 = [v4 position] + 1;
              if (v21 >= [v4 position] && (v22 = objc_msgSend(v4, "position") + 1, v22 <= objc_msgSend(v4, "length")))
              {
                v23 = [v4 data];
                [v23 getBytes:&v30 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
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

            if (([v4 hasError] & 1) != 0 || v20 > 9)
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
      v26 = [v4 position];
    }

    while (v26 < [v4 length]);
  }

  if ([v4 hasError])
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
  v16 = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self trackingNumber];
  v3 = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self carrierName];
  v4 = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self shippingMethod];
  v5 = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self shippingDate];
  v6 = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self shippingTime];
  v7 = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self estimatedDeliveryStartDate];
  v8 = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self estimatedDeliveryStartTime];
  v9 = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self estimatedDeliveryEndDate];
  v10 = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self estimatedDeliveryEndTime];
  v11 = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self deliveryDate];
  v12 = [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self deliveryTime];
  v15 = [v14 initWithFormat:@"BMWalletPaymentsCommerceOrderEmailShippingInformation with status: %@, trackingNumber: %@, carrierName: %@, shippingMethod: %@, shippingDate: %@, shippingTime: %@, estimatedDeliveryStartDate: %@, estimatedDeliveryStartTime: %@, estimatedDeliveryEndDate: %@, estimatedDeliveryEndTime: %@, deliveryDate: %@, deliveryTime: %@", v17, v16, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12];

  return v15;
}

- (BMWalletPaymentsCommerceOrderEmailShippingInformation)initWithStatus:(int)a3 trackingNumber:(id)a4 carrierName:(id)a5 shippingMethod:(id)a6 shippingDate:(id)a7 shippingTime:(id)a8 estimatedDeliveryStartDate:(id)a9 estimatedDeliveryStartTime:(id)a10 estimatedDeliveryEndDate:(id)a11 estimatedDeliveryEndTime:(id)a12 deliveryDate:(id)a13 deliveryTime:(id)a14
{
  v34 = a4;
  v26 = a5;
  v33 = a5;
  v32 = a6;
  v31 = a7;
  v30 = a8;
  v29 = a9;
  v28 = a10;
  v18 = a11;
  v19 = a12;
  v20 = a13;
  v21 = a14;
  v35.receiver = self;
  v35.super_class = BMWalletPaymentsCommerceOrderEmailShippingInformation;
  v22 = [(BMEventBase *)&v35 init];
  if (v22)
  {
    v22->_dataVersion = [objc_opt_class() latestDataVersion];
    v22->_status = a3;
    objc_storeStrong(&v22->_trackingNumber, a4);
    objc_storeStrong(&v22->_carrierName, v26);
    objc_storeStrong(&v22->_shippingMethod, a6);
    objc_storeStrong(&v22->_shippingDate, a7);
    objc_storeStrong(&v22->_shippingTime, a8);
    objc_storeStrong(&v22->_estimatedDeliveryStartDate, a9);
    objc_storeStrong(&v22->_estimatedDeliveryStartTime, a10);
    objc_storeStrong(&v22->_estimatedDeliveryEndDate, a11);
    objc_storeStrong(&v22->_estimatedDeliveryEndTime, a12);
    objc_storeStrong(&v22->_deliveryDate, a13);
    objc_storeStrong(&v22->_deliveryTime, a14);
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