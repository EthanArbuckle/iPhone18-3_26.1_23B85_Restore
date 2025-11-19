@interface BMWalletPaymentsCommerceOrderEmail
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMWalletPaymentsCommerceOrderEmail)initWithEmailMetadata:(id)a3 emailType:(int)a4 orderNumber:(id)a5 orderDate:(id)a6 merchant:(id)a7 customer:(id)a8 shippingRecipient:(id)a9 shippingInformation:(id)a10 paymentInformation:(id)a11 spotlightUniqueIdentifier:(id)a12 spotlightDomainIdentifier:(id)a13 orderContentType:(int)a14;
- (BMWalletPaymentsCommerceOrderEmail)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMWalletPaymentsCommerceOrderEmail

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMWalletPaymentsCommerceOrderEmail *)self emailMetadata];
    v7 = [v5 emailMetadata];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMWalletPaymentsCommerceOrderEmail *)self emailMetadata];
      v10 = [v5 emailMetadata];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_42;
      }
    }

    v13 = [(BMWalletPaymentsCommerceOrderEmail *)self emailType];
    if (v13 == [v5 emailType])
    {
      v14 = [(BMWalletPaymentsCommerceOrderEmail *)self orderNumber];
      v15 = [v5 orderNumber];
      v16 = v15;
      if (v14 == v15)
      {
      }

      else
      {
        v17 = [(BMWalletPaymentsCommerceOrderEmail *)self orderNumber];
        v18 = [v5 orderNumber];
        v19 = [v17 isEqual:v18];

        if (!v19)
        {
          goto LABEL_42;
        }
      }

      v20 = [(BMWalletPaymentsCommerceOrderEmail *)self orderDate];
      v21 = [v5 orderDate];
      v22 = v21;
      if (v20 == v21)
      {
      }

      else
      {
        v23 = [(BMWalletPaymentsCommerceOrderEmail *)self orderDate];
        v24 = [v5 orderDate];
        v25 = [v23 isEqual:v24];

        if (!v25)
        {
          goto LABEL_42;
        }
      }

      v26 = [(BMWalletPaymentsCommerceOrderEmail *)self merchant];
      v27 = [v5 merchant];
      v28 = v27;
      if (v26 == v27)
      {
      }

      else
      {
        v29 = [(BMWalletPaymentsCommerceOrderEmail *)self merchant];
        v30 = [v5 merchant];
        v31 = [v29 isEqual:v30];

        if (!v31)
        {
          goto LABEL_42;
        }
      }

      v32 = [(BMWalletPaymentsCommerceOrderEmail *)self customer];
      v33 = [v5 customer];
      v34 = v33;
      if (v32 == v33)
      {
      }

      else
      {
        v35 = [(BMWalletPaymentsCommerceOrderEmail *)self customer];
        v36 = [v5 customer];
        v37 = [v35 isEqual:v36];

        if (!v37)
        {
          goto LABEL_42;
        }
      }

      v38 = [(BMWalletPaymentsCommerceOrderEmail *)self shippingRecipient];
      v39 = [v5 shippingRecipient];
      v40 = v39;
      if (v38 == v39)
      {
      }

      else
      {
        v41 = [(BMWalletPaymentsCommerceOrderEmail *)self shippingRecipient];
        v42 = [v5 shippingRecipient];
        v43 = [v41 isEqual:v42];

        if (!v43)
        {
          goto LABEL_42;
        }
      }

      v44 = [(BMWalletPaymentsCommerceOrderEmail *)self shippingInformation];
      v45 = [v5 shippingInformation];
      v46 = v45;
      if (v44 == v45)
      {
      }

      else
      {
        v47 = [(BMWalletPaymentsCommerceOrderEmail *)self shippingInformation];
        v48 = [v5 shippingInformation];
        v49 = [v47 isEqual:v48];

        if (!v49)
        {
          goto LABEL_42;
        }
      }

      v50 = [(BMWalletPaymentsCommerceOrderEmail *)self paymentInformation];
      v51 = [v5 paymentInformation];
      v52 = v51;
      if (v50 == v51)
      {
      }

      else
      {
        v53 = [(BMWalletPaymentsCommerceOrderEmail *)self paymentInformation];
        v54 = [v5 paymentInformation];
        v55 = [v53 isEqual:v54];

        if (!v55)
        {
          goto LABEL_42;
        }
      }

      v56 = [(BMWalletPaymentsCommerceOrderEmail *)self spotlightUniqueIdentifier];
      v57 = [v5 spotlightUniqueIdentifier];
      v58 = v57;
      if (v56 == v57)
      {
      }

      else
      {
        v59 = [(BMWalletPaymentsCommerceOrderEmail *)self spotlightUniqueIdentifier];
        v60 = [v5 spotlightUniqueIdentifier];
        v61 = [v59 isEqual:v60];

        if (!v61)
        {
          goto LABEL_42;
        }
      }

      v62 = [(BMWalletPaymentsCommerceOrderEmail *)self spotlightDomainIdentifier];
      v63 = [v5 spotlightDomainIdentifier];
      v64 = v63;
      if (v62 == v63)
      {
      }

      else
      {
        v65 = [(BMWalletPaymentsCommerceOrderEmail *)self spotlightDomainIdentifier];
        v66 = [v5 spotlightDomainIdentifier];
        v67 = [v65 isEqual:v66];

        if (!v67)
        {
          goto LABEL_42;
        }
      }

      v69 = [(BMWalletPaymentsCommerceOrderEmail *)self orderContentType];
      v12 = v69 == [v5 orderContentType];
      goto LABEL_43;
    }

LABEL_42:
    v12 = 0;
LABEL_43:

    goto LABEL_44;
  }

  v12 = 0;
LABEL_44:

  return v12;
}

- (id)jsonDictionary
{
  v48[12] = *MEMORY[0x1E69E9840];
  v3 = [(BMWalletPaymentsCommerceOrderEmail *)self emailMetadata];
  v4 = [v3 jsonDictionary];

  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMWalletPaymentsCommerceOrderEmail emailType](self, "emailType")}];
  v6 = [(BMWalletPaymentsCommerceOrderEmail *)self orderNumber];
  v7 = [(BMWalletPaymentsCommerceOrderEmail *)self orderDate];
  v8 = [(BMWalletPaymentsCommerceOrderEmail *)self merchant];
  v9 = [v8 jsonDictionary];

  v10 = [(BMWalletPaymentsCommerceOrderEmail *)self customer];
  v46 = [v10 jsonDictionary];

  v11 = [(BMWalletPaymentsCommerceOrderEmail *)self shippingRecipient];
  v45 = [v11 jsonDictionary];

  v12 = [(BMWalletPaymentsCommerceOrderEmail *)self shippingInformation];
  v44 = [v12 jsonDictionary];

  v13 = [(BMWalletPaymentsCommerceOrderEmail *)self paymentInformation];
  v43 = [v13 jsonDictionary];

  v14 = [(BMWalletPaymentsCommerceOrderEmail *)self spotlightUniqueIdentifier];
  v15 = [(BMWalletPaymentsCommerceOrderEmail *)self spotlightDomainIdentifier];
  v16 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMWalletPaymentsCommerceOrderEmail orderContentType](self, "orderContentType")}];
  v47[0] = @"emailMetadata";
  v17 = v4;
  if (!v4)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v37 = v17;
  v48[0] = v17;
  v47[1] = @"emailType";
  v18 = v5;
  if (!v5)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v36 = v18;
  v48[1] = v18;
  v47[2] = @"orderNumber";
  v19 = v6;
  if (!v6)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v35 = v19;
  v48[2] = v19;
  v47[3] = @"orderDate";
  v20 = v7;
  if (!v7)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v42 = v4;
  v34 = v20;
  v48[3] = v20;
  v47[4] = @"merchant";
  v21 = v9;
  if (!v9)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v41 = v5;
  v33 = v21;
  v48[4] = v21;
  v47[5] = @"customer";
  v22 = v46;
  if (!v46)
  {
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  v40 = v6;
  v48[5] = v22;
  v47[6] = @"shippingRecipient";
  v23 = v45;
  if (!v45)
  {
    v23 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = v22;
  v39 = v7;
  v48[6] = v23;
  v47[7] = @"shippingInformation";
  v24 = v44;
  if (!v44)
  {
    v24 = [MEMORY[0x1E695DFB0] null];
  }

  v25 = v9;
  v48[7] = v24;
  v47[8] = @"paymentInformation";
  v26 = v43;
  if (!v43)
  {
    v26 = [MEMORY[0x1E695DFB0] null];
  }

  v48[8] = v26;
  v47[9] = @"spotlightUniqueIdentifier";
  v27 = v14;
  if (!v14)
  {
    v27 = [MEMORY[0x1E695DFB0] null];
  }

  v48[9] = v27;
  v47[10] = @"spotlightDomainIdentifier";
  v28 = v15;
  if (!v15)
  {
    v28 = [MEMORY[0x1E695DFB0] null];
  }

  v48[10] = v28;
  v47[11] = @"orderContentType";
  v29 = v16;
  if (!v16)
  {
    v29 = [MEMORY[0x1E695DFB0] null];
  }

  v48[11] = v29;
  v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:12];
  if (v16)
  {
    if (v15)
    {
      goto LABEL_27;
    }

LABEL_46:

    if (v14)
    {
      goto LABEL_28;
    }

    goto LABEL_47;
  }

  if (!v15)
  {
    goto LABEL_46;
  }

LABEL_27:
  if (v14)
  {
    goto LABEL_28;
  }

LABEL_47:

LABEL_28:
  if (!v43)
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

  if (!v25)
  {
  }

  if (v39)
  {
    if (v40)
    {
      goto LABEL_40;
    }
  }

  else
  {

    if (v40)
    {
LABEL_40:
      if (v41)
      {
        goto LABEL_41;
      }

LABEL_50:

      if (v42)
      {
        goto LABEL_42;
      }

      goto LABEL_51;
    }
  }

  if (!v41)
  {
    goto LABEL_50;
  }

LABEL_41:
  if (v42)
  {
    goto LABEL_42;
  }

LABEL_51:

LABEL_42:
  v30 = *MEMORY[0x1E69E9840];

  return v38;
}

- (BMWalletPaymentsCommerceOrderEmail)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v166[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v136 = [v6 objectForKeyedSubscript:@"emailMetadata"];
  if (!v136 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v136;
    v142 = 0;
    v7 = [[BMWalletPaymentsCommerceOrderEmailEmailMetadata alloc] initWithJSONDictionary:v9 error:&v142];
    v10 = v142;
    if (v10)
    {
      if (a4)
      {
        v10 = v10;
        *a4 = v10;
      }

      v11 = 0;
      goto LABEL_144;
    }

LABEL_4:
    v8 = [v6 objectForKeyedSubscript:@"emailType"];
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = v8;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v9 = 0;
            v11 = 0;
LABEL_143:

            goto LABEL_144;
          }

          v61 = objc_alloc(MEMORY[0x1E696ABC0]);
          v62 = *MEMORY[0x1E698F240];
          v163 = *MEMORY[0x1E696A578];
          v63 = v6;
          v64 = self;
          v65 = a4;
          a4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"emailType"];
          v164 = a4;
          v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v164 forKeys:&v163 count:1];
          v66 = [v61 initWithDomain:v62 code:2 userInfo:v20];
          v9 = 0;
          v11 = 0;
          *v65 = v66;
          self = v64;
          v6 = v63;
          goto LABEL_142;
        }

        v12 = [MEMORY[0x1E696AD98] numberWithInt:BMWalletPaymentsCommerceOrderEmailEmailTypeFromString(v8)];
      }

      v135 = v12;
    }

    else
    {
      v135 = 0;
    }

    v20 = [v6 objectForKeyedSubscript:@"orderNumber"];
    v134 = v7;
    if (!v20 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v21 = 0;
LABEL_22:
      v22 = [v6 objectForKeyedSubscript:@"orderDate"];
      v131 = a4;
      v132 = v21;
      if (v22 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v35 = 0;
            v11 = 0;
LABEL_140:
            v9 = v135;
            a4 = v132;
            goto LABEL_141;
          }

          v44 = objc_alloc(MEMORY[0x1E696ABC0]);
          v45 = v6;
          v46 = self;
          v47 = *MEMORY[0x1E698F240];
          v159 = *MEMORY[0x1E696A578];
          v33 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"orderDate"];
          v160 = v33;
          v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v160 forKeys:&v159 count:1];
          v49 = v47;
          self = v46;
          v6 = v45;
          v50 = [v44 initWithDomain:v49 code:2 userInfo:v48];
          v35 = 0;
          v11 = 0;
          *v131 = v50;
          v36 = v48;
          goto LABEL_138;
        }

        v128 = v22;
      }

      else
      {
        v128 = 0;
      }

      v23 = [v6 objectForKeyedSubscript:@"merchant"];
      v129 = self;
      if (v23 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!v131)
          {
            v11 = 0;
            v35 = v128;
LABEL_139:

            goto LABEL_140;
          }

          v127 = objc_alloc(MEMORY[0x1E696ABC0]);
          v55 = *MEMORY[0x1E698F240];
          v157 = *MEMORY[0x1E696A578];
          v56 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"merchant"];
          v158 = v56;
          v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v158 forKeys:&v157 count:1];
          *v131 = [v127 initWithDomain:v55 code:2 userInfo:v57];
          v36 = v56;

          v11 = 0;
          v33 = v23;
          v35 = v128;
LABEL_138:

          v23 = v33;
          goto LABEL_139;
        }

        v33 = v23;
        v141 = 0;
        v126 = [[BMWalletPaymentsCommerceOrderEmailMerchant alloc] initWithJSONDictionary:v33 error:&v141];
        v34 = v141;
        if (v34)
        {
          if (v131)
          {
            v34 = v34;
            *v131 = v34;
          }

          v11 = 0;
          v35 = v128;
          v36 = v126;
          goto LABEL_138;
        }
      }

      else
      {
        v126 = 0;
      }

      v24 = [v6 objectForKeyedSubscript:@"customer"];
      v125 = v24;
      if (v24 && (v25 = v24, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!v131)
          {
            v11 = 0;
            v35 = v128;
            v36 = v126;
LABEL_137:

            v33 = v23;
            goto LABEL_138;
          }

          v124 = objc_alloc(MEMORY[0x1E696ABC0]);
          v67 = *MEMORY[0x1E698F240];
          v155 = *MEMORY[0x1E696A578];
          v68 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"customer"];
          v156 = v68;
          v69 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v156 forKeys:&v155 count:1];
          v70 = v124;
          v123 = v69;
          v11 = 0;
          *v131 = [v70 initWithDomain:v67 code:2 userInfo:?];
          v35 = v128;
          v36 = v126;
LABEL_136:

          goto LABEL_137;
        }

        v37 = v25;
        v140 = 0;
        v38 = [[BMWalletPaymentsCommerceOrderEmailCustomer alloc] initWithJSONDictionary:v37 error:&v140];
        v39 = v140;
        v122 = v38;
        if (v39)
        {
          v123 = v37;
          v35 = v128;
          if (v131)
          {
            v39 = v39;
            *v131 = v39;
          }

          v11 = 0;
          v36 = v126;
LABEL_121:
          v68 = v122;
          goto LABEL_136;
        }
      }

      else
      {
        v122 = 0;
      }

      v26 = [v6 objectForKeyedSubscript:@"shippingRecipient"];
      v123 = v26;
      if (!v26 || (v27 = v26, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v120 = 0;
LABEL_34:
        v28 = [v6 objectForKeyedSubscript:@"shippingInformation"];
        v118 = v28;
        if (!v28 || (v29 = v28, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v117 = 0;
LABEL_37:
          v30 = [v6 objectForKeyedSubscript:@"paymentInformation"];
          v115 = v30;
          if (!v30 || (v31 = v30, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v114 = 0;
            goto LABEL_40;
          }

          v51 = v22;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v71 = v31;
            v137 = 0;
            v72 = [[BMWalletPaymentsCommerceOrderEmailPaymentInformation alloc] initWithJSONDictionary:v71 error:&v137];
            v73 = v137;
            v114 = v72;
            if (!v73)
            {

              self = v129;
LABEL_40:
              v32 = [v6 objectForKeyedSubscript:@"spotlightUniqueIdentifier"];
              v110 = v32;
              if (v32)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v32 = 0;
                }

                else
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    if (!v131)
                    {
                      v111 = 0;
                      v11 = 0;
                      v36 = v126;
                      v35 = v128;
                      v68 = v122;
                      goto LABEL_105;
                    }

                    v130 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v91 = v6;
                    v92 = self;
                    v93 = *MEMORY[0x1E698F240];
                    v147 = *MEMORY[0x1E696A578];
                    v112 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"spotlightUniqueIdentifier"];
                    v148 = v112;
                    v94 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v148 forKeys:&v147 count:1];
                    v95 = v93;
                    self = v92;
                    v6 = v91;
                    v109 = v94;
                    v111 = 0;
                    v11 = 0;
                    *v131 = [v130 initWithDomain:v95 code:2 userInfo:?];
                    goto LABEL_151;
                  }

                  v32 = v32;
                }
              }

              v77 = [v6 objectForKeyedSubscript:@"spotlightDomainIdentifier"];
              v121 = v6;
              v111 = v32;
              v109 = v77;
              if (!v77 || (v78 = v77, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v107 = v20;
                v79 = v32;
                v112 = 0;
                goto LABEL_92;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v107 = v20;
                v79 = v32;
                v112 = v78;
                self = v129;
LABEL_92:
                v80 = [v6 objectForKeyedSubscript:@"orderContentType"];
                v108 = v80;
                if (v80)
                {
                  v81 = v80;
                  v82 = self;
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v83 = v81;
                    }

                    else
                    {
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        if (v131)
                        {
                          v101 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v102 = *MEMORY[0x1E698F240];
                          v143 = *MEMORY[0x1E696A578];
                          v103 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"orderContentType"];
                          v144 = v103;
                          v104 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v144 forKeys:&v143 count:1];
                          *v131 = [v101 initWithDomain:v102 code:2 userInfo:v104];
                        }

                        v83 = 0;
                        v11 = 0;
                        v35 = v128;
                        v89 = v129;
                        v36 = v126;
                        v68 = v122;
                        goto LABEL_102;
                      }

                      v83 = [MEMORY[0x1E696AD98] numberWithInt:BMWalletPaymentsCommerceOrderEmailOrderContentTypeFromString(v81)];
                      v82 = v129;
                    }

LABEL_101:
                    v35 = v128;
                    v87 = [v135 intValue];
                    LODWORD(v106) = [v83 intValue];
                    v88 = v82;
                    v36 = v126;
                    v68 = v122;
                    v11 = [(BMWalletPaymentsCommerceOrderEmail *)v88 initWithEmailMetadata:v134 emailType:v87 orderNumber:v132 orderDate:v128 merchant:v126 customer:v122 shippingRecipient:v120 shippingInformation:v117 paymentInformation:v114 spotlightUniqueIdentifier:v79 spotlightDomainIdentifier:v112 orderContentType:v106];
                    v89 = v11;
LABEL_102:
                    v20 = v107;
LABEL_103:

                    self = v89;
                    v6 = v121;
LABEL_104:

LABEL_105:
LABEL_113:

LABEL_134:
                    goto LABEL_135;
                  }
                }

                else
                {
                  v82 = self;
                }

                v83 = 0;
                goto LABEL_101;
              }

              if (v131)
              {
                v96 = objc_alloc(MEMORY[0x1E696ABC0]);
                v97 = *MEMORY[0x1E698F240];
                v145 = *MEMORY[0x1E696A578];
                v83 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"spotlightDomainIdentifier"];
                v146 = v83;
                v108 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v146 forKeys:&v145 count:1];
                v98 = [v96 initWithDomain:v97 code:2 userInfo:?];
                v112 = 0;
                v11 = 0;
                *v131 = v98;
                v35 = v128;
                v89 = v129;
                v36 = v126;
                v68 = v122;
                goto LABEL_103;
              }

              v112 = 0;
              v11 = 0;
              self = v129;
LABEL_151:
              v36 = v126;
              v35 = v128;
              v68 = v122;
              goto LABEL_104;
            }

            v111 = v71;
            if (v131)
            {
              v73 = v73;
              *v131 = v73;
            }

            v11 = 0;
            v36 = v126;
            v35 = v128;
            self = v129;
LABEL_112:
            v68 = v122;
            goto LABEL_113;
          }

          if (v131)
          {
            v113 = objc_alloc(MEMORY[0x1E696ABC0]);
            v90 = *MEMORY[0x1E698F240];
            v149 = *MEMORY[0x1E696A578];
            v114 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"paymentInformation"];
            v150 = v114;
            v111 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v150 forKeys:&v149 count:1];
            v11 = 0;
            *v131 = [v113 initWithDomain:v90 code:2 userInfo:?];
            v35 = v128;
            self = v129;
            v36 = v126;
            goto LABEL_112;
          }

          v11 = 0;
          goto LABEL_132;
        }

        v51 = v22;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v58 = v29;
          v138 = 0;
          v59 = [[BMWalletPaymentsCommerceOrderEmailShippingInformation alloc] initWithJSONDictionary:v58 error:&v138];
          v60 = v138;
          v117 = v59;
          if (v60)
          {
            v115 = v58;
            v35 = v128;
            if (v131)
            {
              v60 = v60;
              *v131 = v60;
            }

            v11 = 0;
            v36 = v126;
            self = v129;
            goto LABEL_133;
          }

          self = v129;
          goto LABEL_37;
        }

        if (v131)
        {
          v116 = objc_alloc(MEMORY[0x1E696ABC0]);
          v84 = *MEMORY[0x1E698F240];
          v151 = *MEMORY[0x1E696A578];
          v117 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"shippingInformation"];
          v152 = v117;
          v85 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v152 forKeys:&v151 count:1];
          v86 = v116;
          v115 = v85;
          v11 = 0;
          *v131 = [v86 initWithDomain:v84 code:2 userInfo:?];
LABEL_132:
          v35 = v128;
          v22 = v51;
          self = v129;
          v36 = v126;
LABEL_133:
          v68 = v122;
          goto LABEL_134;
        }

        v11 = 0;
        goto LABEL_128;
      }

      v51 = v22;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v52 = v27;
        v139 = 0;
        v53 = [[BMWalletPaymentsCommerceOrderEmailShippingRecipient alloc] initWithJSONDictionary:v52 error:&v139];
        v54 = v139;
        v120 = v53;
        if (v54)
        {
          v118 = v52;
          if (v131)
          {
            v54 = v54;
            *v131 = v54;
          }

          v11 = 0;
          v36 = v126;
          v35 = v128;
          self = v129;
          goto LABEL_129;
        }

        self = v129;
        goto LABEL_34;
      }

      if (v131)
      {
        v119 = objc_alloc(MEMORY[0x1E696ABC0]);
        v74 = *MEMORY[0x1E698F240];
        v153 = *MEMORY[0x1E696A578];
        v120 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"shippingRecipient"];
        v154 = v120;
        v75 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v154 forKeys:&v153 count:1];
        v76 = v119;
        v118 = v75;
        v11 = 0;
        *v131 = [v76 initWithDomain:v74 code:2 userInfo:?];
LABEL_128:
        v35 = v128;
        v22 = v51;
        self = v129;
        v36 = v126;
LABEL_129:
        v68 = v122;
LABEL_135:

        goto LABEL_136;
      }

      v11 = 0;
      v35 = v128;
      self = v129;
      v36 = v126;
      goto LABEL_121;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = v20;
      goto LABEL_22;
    }

    if (a4)
    {
      v40 = a4;
      v133 = objc_alloc(MEMORY[0x1E696ABC0]);
      v41 = *MEMORY[0x1E698F240];
      v161 = *MEMORY[0x1E696A578];
      v42 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"orderNumber"];
      v162 = v42;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v162 forKeys:&v161 count:1];
      v43 = [v133 initWithDomain:v41 code:2 userInfo:v22];
      a4 = 0;
      v11 = 0;
      *v40 = v43;
      v35 = v42;
      v9 = v135;
LABEL_141:

      v7 = v134;
      goto LABEL_142;
    }

    v11 = 0;
    v9 = v135;
LABEL_142:

    goto LABEL_143;
  }

  if (a4)
  {
    v13 = objc_alloc(MEMORY[0x1E696ABC0]);
    v14 = *MEMORY[0x1E698F240];
    v165 = *MEMORY[0x1E696A578];
    v15 = v6;
    v16 = self;
    v17 = objc_alloc(MEMORY[0x1E696AEC0]);
    v105 = objc_opt_class();
    v18 = v17;
    self = v16;
    v6 = v15;
    v7 = [v18 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v105, @"emailMetadata"];
    v166[0] = v7;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v166 forKeys:&v165 count:1];
    v19 = [v13 initWithDomain:v14 code:2 userInfo:v9];
    v11 = 0;
    *a4 = v19;
LABEL_144:

    goto LABEL_145;
  }

  v11 = 0;
LABEL_145:

  v99 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMWalletPaymentsCommerceOrderEmail *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (self->_emailMetadata)
  {
    PBDataWriterPlaceMark();
    [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self->_emailMetadata writeTo:v4];
    PBDataWriterRecallMark();
  }

  emailType = self->_emailType;
  PBDataWriterWriteUint32Field();
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
    PBDataWriterPlaceMark();
    [(BMWalletPaymentsCommerceOrderEmailMerchant *)self->_merchant writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_customer)
  {
    PBDataWriterPlaceMark();
    [(BMWalletPaymentsCommerceOrderEmailCustomer *)self->_customer writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_shippingRecipient)
  {
    PBDataWriterPlaceMark();
    [(BMWalletPaymentsCommerceOrderEmailShippingRecipient *)self->_shippingRecipient writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_shippingInformation)
  {
    PBDataWriterPlaceMark();
    [(BMWalletPaymentsCommerceOrderEmailShippingInformation *)self->_shippingInformation writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_paymentInformation)
  {
    PBDataWriterPlaceMark();
    [(BMWalletPaymentsCommerceOrderEmailPaymentInformation *)self->_paymentInformation writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_spotlightUniqueIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_spotlightDomainIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  orderContentType = self->_orderContentType;
  PBDataWriterWriteUint32Field();
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v38.receiver = self;
  v38.super_class = BMWalletPaymentsCommerceOrderEmail;
  v5 = [(BMEventBase *)&v38 init];
  if (!v5)
  {
    goto LABEL_89;
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
        LOBYTE(v39) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v39 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v39 & 0x7F) << v7;
        if ((v39 & 0x80) == 0)
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
              v17 = 96;
              break;
            case 0xB:
              v16 = PBReaderReadString();
              v17 = 104;
              break;
            case 0xC:
              v20 = 0;
              v21 = 0;
              v22 = 0;
              while (1)
              {
                LOBYTE(v39) = 0;
                v23 = [v4 position] + 1;
                if (v23 >= [v4 position] && (v24 = objc_msgSend(v4, "position") + 1, v24 <= objc_msgSend(v4, "length")))
                {
                  v25 = [v4 data];
                  [v25 getBytes:&v39 range:{objc_msgSend(v4, "position"), 1}];

                  [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
                }

                else
                {
                  [v4 _setError];
                }

                v22 |= (v39 & 0x7F) << v20;
                if ((v39 & 0x80) == 0)
                {
                  break;
                }

                v20 += 7;
                v26 = v21++ > 8;
                if (v26)
                {
                  goto LABEL_79;
                }
              }

              if (([v4 hasError] & 1) != 0 || v22 > 2)
              {
LABEL_79:
                LODWORD(v22) = 0;
              }

              v34 = 24;
              goto LABEL_85;
            default:
LABEL_75:
              if ((PBReaderSkipValueWithTag() & 1) == 0)
              {
                goto LABEL_88;
              }

              goto LABEL_86;
          }

          goto LABEL_74;
        }

        switch(v15)
        {
          case 7:
            v39 = 0;
            v40 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_88;
            }

            v18 = [[BMWalletPaymentsCommerceOrderEmailShippingRecipient alloc] initByReadFrom:v4];
            if (!v18)
            {
              goto LABEL_88;
            }

            v19 = 72;
            break;
          case 8:
            v39 = 0;
            v40 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_88;
            }

            v18 = [[BMWalletPaymentsCommerceOrderEmailShippingInformation alloc] initByReadFrom:v4];
            if (!v18)
            {
              goto LABEL_88;
            }

            v19 = 80;
            break;
          case 9:
            v39 = 0;
            v40 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_88;
            }

            v18 = [[BMWalletPaymentsCommerceOrderEmailPaymentInformation alloc] initByReadFrom:v4];
            if (!v18)
            {
              goto LABEL_88;
            }

            v19 = 88;
            break;
          default:
            goto LABEL_75;
        }
      }

      else if (v15 > 3)
      {
        switch(v15)
        {
          case 4:
            v16 = PBReaderReadString();
            v17 = 48;
LABEL_74:
            v33 = *(&v5->super.super.isa + v17);
            *(&v5->super.super.isa + v17) = v16;

            goto LABEL_86;
          case 5:
            v39 = 0;
            v40 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_88;
            }

            v18 = [[BMWalletPaymentsCommerceOrderEmailMerchant alloc] initByReadFrom:v4];
            if (!v18)
            {
              goto LABEL_88;
            }

            v19 = 56;
            break;
          case 6:
            v39 = 0;
            v40 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_88;
            }

            v18 = [[BMWalletPaymentsCommerceOrderEmailCustomer alloc] initByReadFrom:v4];
            if (!v18)
            {
              goto LABEL_88;
            }

            v19 = 64;
            break;
          default:
            goto LABEL_75;
        }
      }

      else
      {
        if (v15 != 1)
        {
          if (v15 == 2)
          {
            v27 = 0;
            v28 = 0;
            v22 = 0;
            while (1)
            {
              LOBYTE(v39) = 0;
              v29 = [v4 position] + 1;
              if (v29 >= [v4 position] && (v30 = objc_msgSend(v4, "position") + 1, v30 <= objc_msgSend(v4, "length")))
              {
                v31 = [v4 data];
                [v31 getBytes:&v39 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v22 |= (v39 & 0x7F) << v27;
              if ((v39 & 0x80) == 0)
              {
                break;
              }

              v27 += 7;
              v26 = v28++ > 8;
              if (v26)
              {
                goto LABEL_83;
              }
            }

            if (([v4 hasError] & 1) != 0 || v22 > 8)
            {
LABEL_83:
              LODWORD(v22) = 0;
            }

            v34 = 20;
LABEL_85:
            *(&v5->super.super.isa + v34) = v22;
            goto LABEL_86;
          }

          if (v15 != 3)
          {
            goto LABEL_75;
          }

          v16 = PBReaderReadString();
          v17 = 40;
          goto LABEL_74;
        }

        v39 = 0;
        v40 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_88;
        }

        v18 = [[BMWalletPaymentsCommerceOrderEmailEmailMetadata alloc] initByReadFrom:v4];
        if (!v18)
        {
          goto LABEL_88;
        }

        v19 = 32;
      }

      v32 = *(&v5->super.super.isa + v19);
      *(&v5->super.super.isa + v19) = v18;

      PBReaderRecallMark();
LABEL_86:
      v35 = [v4 position];
    }

    while (v35 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_88:
    v36 = 0;
  }

  else
  {
LABEL_89:
    v36 = v5;
  }

  return v36;
}

- (NSString)description
{
  v14 = objc_alloc(MEMORY[0x1E696AEC0]);
  v17 = [(BMWalletPaymentsCommerceOrderEmail *)self emailMetadata];
  v16 = BMWalletPaymentsCommerceOrderEmailEmailTypeAsString([(BMWalletPaymentsCommerceOrderEmail *)self emailType]);
  v3 = [(BMWalletPaymentsCommerceOrderEmail *)self orderNumber];
  v4 = [(BMWalletPaymentsCommerceOrderEmail *)self orderDate];
  v5 = [(BMWalletPaymentsCommerceOrderEmail *)self merchant];
  v6 = [(BMWalletPaymentsCommerceOrderEmail *)self customer];
  v7 = [(BMWalletPaymentsCommerceOrderEmail *)self shippingRecipient];
  v8 = [(BMWalletPaymentsCommerceOrderEmail *)self shippingInformation];
  v9 = [(BMWalletPaymentsCommerceOrderEmail *)self paymentInformation];
  v10 = [(BMWalletPaymentsCommerceOrderEmail *)self spotlightUniqueIdentifier];
  v11 = [(BMWalletPaymentsCommerceOrderEmail *)self spotlightDomainIdentifier];
  v12 = BMWalletPaymentsCommerceOrderEmailOrderContentTypeAsString([(BMWalletPaymentsCommerceOrderEmail *)self orderContentType]);
  v15 = [v14 initWithFormat:@"BMWalletPaymentsCommerceOrderEmail with emailMetadata: %@, emailType: %@, orderNumber: %@, orderDate: %@, merchant: %@, customer: %@, shippingRecipient: %@, shippingInformation: %@, paymentInformation: %@, spotlightUniqueIdentifier: %@, spotlightDomainIdentifier: %@, orderContentType: %@", v17, v16, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12];

  return v15;
}

- (BMWalletPaymentsCommerceOrderEmail)initWithEmailMetadata:(id)a3 emailType:(int)a4 orderNumber:(id)a5 orderDate:(id)a6 merchant:(id)a7 customer:(id)a8 shippingRecipient:(id)a9 shippingInformation:(id)a10 paymentInformation:(id)a11 spotlightUniqueIdentifier:(id)a12 spotlightDomainIdentifier:(id)a13 orderContentType:(int)a14
{
  v33 = a3;
  v32 = a5;
  v31 = a6;
  v27 = a7;
  v30 = a7;
  v29 = a8;
  v28 = a9;
  v19 = a10;
  v20 = a11;
  v21 = a12;
  v22 = a13;
  v34.receiver = self;
  v34.super_class = BMWalletPaymentsCommerceOrderEmail;
  v23 = [(BMEventBase *)&v34 init];
  if (v23)
  {
    v23->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v23->_emailMetadata, a3);
    v23->_emailType = a4;
    objc_storeStrong(&v23->_orderNumber, a5);
    objc_storeStrong(&v23->_orderDate, a6);
    objc_storeStrong(&v23->_merchant, v27);
    objc_storeStrong(&v23->_customer, a8);
    objc_storeStrong(&v23->_shippingRecipient, a9);
    objc_storeStrong(&v23->_shippingInformation, a10);
    objc_storeStrong(&v23->_paymentInformation, a11);
    objc_storeStrong(&v23->_spotlightUniqueIdentifier, a12);
    objc_storeStrong(&v23->_spotlightDomainIdentifier, a13);
    v23->_orderContentType = a14;
  }

  return v23;
}

+ (id)protoFields
{
  v17[12] = *MEMORY[0x1E69E9840];
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"emailMetadata" number:1 type:14 subMessageClass:objc_opt_class()];
  v17[0] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"emailType" number:2 type:4 subMessageClass:0];
  v17[1] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"orderNumber" number:3 type:13 subMessageClass:0];
  v17[2] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"orderDate" number:4 type:13 subMessageClass:0];
  v17[3] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"merchant" number:5 type:14 subMessageClass:objc_opt_class()];
  v17[4] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"customer" number:6 type:14 subMessageClass:objc_opt_class()];
  v17[5] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shippingRecipient" number:7 type:14 subMessageClass:objc_opt_class()];
  v17[6] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shippingInformation" number:8 type:14 subMessageClass:objc_opt_class()];
  v17[7] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"paymentInformation" number:9 type:14 subMessageClass:objc_opt_class()];
  v17[8] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"spotlightUniqueIdentifier" number:10 type:13 subMessageClass:0];
  v17[9] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"spotlightDomainIdentifier" number:11 type:13 subMessageClass:0];
  v17[10] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"orderContentType" number:12 type:4 subMessageClass:0];
  v17[11] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:12];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)columns
{
  v17[12] = *MEMORY[0x1E69E9840];
  v16 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"emailMetadata_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_719_92622];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"emailType" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"orderNumber" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"orderDate" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"merchant_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_721_92623];
  v5 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"customer_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_723];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"shippingRecipient_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_725_92624];
  v14 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"shippingInformation_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_727];
  v7 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"paymentInformation_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_729];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"spotlightUniqueIdentifier" dataType:2 requestOnly:0 fieldNumber:10 protoDataType:13 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"spotlightDomainIdentifier" dataType:2 requestOnly:0 fieldNumber:11 protoDataType:13 convertedType:0];
  v10 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"orderContentType" dataType:0 requestOnly:0 fieldNumber:12 protoDataType:4 convertedType:0];
  v17[0] = v16;
  v17[1] = v15;
  v17[2] = v2;
  v17[3] = v3;
  v17[4] = v4;
  v17[5] = v5;
  v17[6] = v6;
  v17[7] = v14;
  v17[8] = v7;
  v17[9] = v8;
  v17[10] = v9;
  v17[11] = v10;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:12];

  v11 = *MEMORY[0x1E69E9840];

  return v13;
}

id __45__BMWalletPaymentsCommerceOrderEmail_columns__block_invoke_6(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 paymentInformation];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __45__BMWalletPaymentsCommerceOrderEmail_columns__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 shippingInformation];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __45__BMWalletPaymentsCommerceOrderEmail_columns__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 shippingRecipient];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __45__BMWalletPaymentsCommerceOrderEmail_columns__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 customer];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __45__BMWalletPaymentsCommerceOrderEmail_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 merchant];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __45__BMWalletPaymentsCommerceOrderEmail_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 emailMetadata];
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

    v8 = [[BMWalletPaymentsCommerceOrderEmail alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end