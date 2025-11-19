@interface BMWalletPaymentsCommerceTransaction
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMWalletPaymentsCommerceTransaction)initWithAmount:(id)a3 transactionDate:(id)a4 transactionID:(id)a5 currencyCode:(id)a6 transactionDescription:(id)a7 timeZone:(id)a8 account:(id)a9 merchant:(id)a10 transactionSource:(int)a11 accountType:(int)a12 transactionStatus:(int)a13 transactionType:(int)a14;
- (BMWalletPaymentsCommerceTransaction)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSDate)transactionDate;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMWalletPaymentsCommerceTransaction

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMWalletPaymentsCommerceTransaction *)self amount];
    v7 = [v5 amount];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMWalletPaymentsCommerceTransaction *)self amount];
      v10 = [v5 amount];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_39;
      }
    }

    v13 = [(BMWalletPaymentsCommerceTransaction *)self transactionDate];
    v14 = [v5 transactionDate];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMWalletPaymentsCommerceTransaction *)self transactionDate];
      v17 = [v5 transactionDate];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_39;
      }
    }

    v19 = [(BMWalletPaymentsCommerceTransaction *)self transactionID];
    v20 = [v5 transactionID];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMWalletPaymentsCommerceTransaction *)self transactionID];
      v23 = [v5 transactionID];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_39;
      }
    }

    v25 = [(BMWalletPaymentsCommerceTransaction *)self currencyCode];
    v26 = [v5 currencyCode];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(BMWalletPaymentsCommerceTransaction *)self currencyCode];
      v29 = [v5 currencyCode];
      v30 = [v28 isEqual:v29];

      if (!v30)
      {
        goto LABEL_39;
      }
    }

    v31 = [(BMWalletPaymentsCommerceTransaction *)self transactionDescription];
    v32 = [v5 transactionDescription];
    v33 = v32;
    if (v31 == v32)
    {
    }

    else
    {
      v34 = [(BMWalletPaymentsCommerceTransaction *)self transactionDescription];
      v35 = [v5 transactionDescription];
      v36 = [v34 isEqual:v35];

      if (!v36)
      {
        goto LABEL_39;
      }
    }

    v37 = [(BMWalletPaymentsCommerceTransaction *)self timeZone];
    v38 = [v5 timeZone];
    v39 = v38;
    if (v37 == v38)
    {
    }

    else
    {
      v40 = [(BMWalletPaymentsCommerceTransaction *)self timeZone];
      v41 = [v5 timeZone];
      v42 = [v40 isEqual:v41];

      if (!v42)
      {
        goto LABEL_39;
      }
    }

    v43 = [(BMWalletPaymentsCommerceTransaction *)self account];
    v44 = [v5 account];
    v45 = v44;
    if (v43 == v44)
    {
    }

    else
    {
      v46 = [(BMWalletPaymentsCommerceTransaction *)self account];
      v47 = [v5 account];
      v48 = [v46 isEqual:v47];

      if (!v48)
      {
        goto LABEL_39;
      }
    }

    v49 = [(BMWalletPaymentsCommerceTransaction *)self merchant];
    v50 = [v5 merchant];
    v51 = v50;
    if (v49 == v50)
    {
    }

    else
    {
      v52 = [(BMWalletPaymentsCommerceTransaction *)self merchant];
      v53 = [v5 merchant];
      v54 = [v52 isEqual:v53];

      if (!v54)
      {
        goto LABEL_39;
      }
    }

    v55 = [(BMWalletPaymentsCommerceTransaction *)self transactionSource];
    if (v55 == [v5 transactionSource])
    {
      v56 = [(BMWalletPaymentsCommerceTransaction *)self accountType];
      if (v56 == [v5 accountType])
      {
        v57 = [(BMWalletPaymentsCommerceTransaction *)self transactionStatus];
        if (v57 == [v5 transactionStatus])
        {
          v58 = [(BMWalletPaymentsCommerceTransaction *)self transactionType];
          v12 = v58 == [v5 transactionType];
LABEL_40:

          goto LABEL_41;
        }
      }
    }

LABEL_39:
    v12 = 0;
    goto LABEL_40;
  }

  v12 = 0;
LABEL_41:

  return v12;
}

- (NSDate)transactionDate
{
  if (self->_hasRaw_transactionDate)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_transactionDate];
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
  v44[12] = *MEMORY[0x1E69E9840];
  v3 = [(BMWalletPaymentsCommerceTransaction *)self amount];
  v4 = [(BMWalletPaymentsCommerceTransaction *)self transactionDate];
  if (v4)
  {
    v5 = MEMORY[0x1E696AD98];
    v6 = [(BMWalletPaymentsCommerceTransaction *)self transactionDate];
    [v6 timeIntervalSinceReferenceDate];
    v7 = [v5 numberWithDouble:?];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(BMWalletPaymentsCommerceTransaction *)self transactionID];
  v9 = [(BMWalletPaymentsCommerceTransaction *)self currencyCode];
  v42 = [(BMWalletPaymentsCommerceTransaction *)self transactionDescription];
  v41 = [(BMWalletPaymentsCommerceTransaction *)self timeZone];
  v10 = [(BMWalletPaymentsCommerceTransaction *)self account];
  v40 = [v10 jsonDictionary];

  v11 = [(BMWalletPaymentsCommerceTransaction *)self merchant];
  v39 = [v11 jsonDictionary];

  v38 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMWalletPaymentsCommerceTransaction transactionSource](self, "transactionSource")}];
  v37 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMWalletPaymentsCommerceTransaction accountType](self, "accountType")}];
  v12 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMWalletPaymentsCommerceTransaction transactionStatus](self, "transactionStatus")}];
  v13 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMWalletPaymentsCommerceTransaction transactionType](self, "transactionType")}];
  v43[0] = @"amount";
  v14 = v3;
  if (!v3)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = v14;
  v44[0] = v14;
  v43[1] = @"transactionDate";
  v15 = v7;
  if (!v7)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = v15;
  v44[1] = v15;
  v43[2] = @"transactionID";
  v16 = v8;
  if (!v8)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v30 = v16;
  v44[2] = v16;
  v43[3] = @"currencyCode";
  v17 = v9;
  if (!v9)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v29 = v17;
  v44[3] = v17;
  v43[4] = @"transactionDescription";
  v18 = v42;
  if (!v42)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v36 = v3;
  v44[4] = v18;
  v43[5] = @"timeZone";
  v19 = v41;
  if (!v41)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v35 = v7;
  v44[5] = v19;
  v43[6] = @"account";
  v20 = v40;
  if (!v40)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v34 = v8;
  v44[6] = v20;
  v43[7] = @"merchant";
  v21 = v39;
  if (!v39)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v44[7] = v21;
  v43[8] = @"transactionSource";
  v22 = v38;
  if (!v38)
  {
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = v18;
  v44[8] = v22;
  v43[9] = @"accountType";
  v23 = v37;
  if (!v37)
  {
    v23 = [MEMORY[0x1E695DFB0] null];
  }

  v44[9] = v23;
  v43[10] = @"transactionStatus";
  v24 = v12;
  if (!v12)
  {
    v24 = [MEMORY[0x1E695DFB0] null];
  }

  v44[10] = v24;
  v43[11] = @"transactionType";
  v25 = v13;
  if (!v13)
  {
    v25 = [MEMORY[0x1E695DFB0] null];
  }

  v44[11] = v25;
  v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:12];
  if (v13)
  {
    if (v12)
    {
      goto LABEL_30;
    }
  }

  else
  {

    if (v12)
    {
      goto LABEL_30;
    }
  }

LABEL_30:
  if (!v37)
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

  if (v42)
  {
    if (v9)
    {
      goto LABEL_42;
    }
  }

  else
  {

    if (v9)
    {
LABEL_42:
      if (v34)
      {
        goto LABEL_43;
      }

      goto LABEL_52;
    }
  }

  if (v34)
  {
LABEL_43:
    if (v35)
    {
      goto LABEL_44;
    }

LABEL_53:

    if (v36)
    {
      goto LABEL_45;
    }

    goto LABEL_54;
  }

LABEL_52:

  if (!v35)
  {
    goto LABEL_53;
  }

LABEL_44:
  if (v36)
  {
    goto LABEL_45;
  }

LABEL_54:

LABEL_45:
  v26 = *MEMORY[0x1E69E9840];

  return v33;
}

- (BMWalletPaymentsCommerceTransaction)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v177[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"amount"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v150 = 0;
LABEL_4:
    v151 = [v6 objectForKeyedSubscript:@"transactionDate"];
    if (v151 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = MEMORY[0x1E695DF00];
        v10 = a4;
        v11 = v151;
        v12 = [v9 alloc];
        [v11 doubleValue];
        v14 = v13;

        a4 = v10;
        v15 = [v12 initWithTimeIntervalSinceReferenceDate:v14];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = objc_alloc_init(MEMORY[0x1E696AC80]);
          v8 = [v20 dateFromString:v151];

          goto LABEL_16;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v8 = 0;
            v19 = 0;
            goto LABEL_124;
          }

          v80 = a4;
          v81 = objc_alloc(MEMORY[0x1E696ABC0]);
          v82 = *MEMORY[0x1E698F240];
          v174 = *MEMORY[0x1E696A578];
          v37 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"transactionDate"];
          v175 = v37;
          v83 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v175 forKeys:&v174 count:1];
          v84 = v82;
          v21 = v83;
          v8 = 0;
          v19 = 0;
          *v80 = [v81 initWithDomain:v84 code:2 userInfo:v83];
          goto LABEL_123;
        }

        v15 = v151;
      }

      v8 = v15;
    }

    else
    {
      v8 = 0;
    }

LABEL_16:
    v21 = [v6 objectForKeyedSubscript:@"transactionID"];
    v149 = self;
    if (v21 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v37 = 0;
          v19 = 0;
LABEL_123:

          goto LABEL_124;
        }

        v38 = a4;
        v39 = objc_alloc(MEMORY[0x1E696ABC0]);
        v40 = v21;
        v41 = *MEMORY[0x1E698F240];
        v172 = *MEMORY[0x1E696A578];
        v148 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"transactionID"];
        v173 = v148;
        v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v173 forKeys:&v172 count:1];
        v43 = v41;
        v21 = v40;
        v37 = 0;
        v19 = 0;
        *v38 = [v39 initWithDomain:v43 code:2 userInfo:v42];
        goto LABEL_122;
      }

      v22 = v8;
      v147 = v21;
    }

    else
    {
      v22 = v8;
      v147 = 0;
    }

    v23 = [v6 objectForKeyedSubscript:@"currencyCode"];
    v146 = v23;
    if (!v23 || (v24 = v23, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v148 = 0;
      goto LABEL_22;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v148 = v24;
LABEL_22:
      v25 = [v6 objectForKeyedSubscript:@"transactionDescription"];
      v145 = v25;
      if (!v25 || (v26 = v25, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v143 = 0;
LABEL_25:
        [v6 objectForKeyedSubscript:@"timeZone"];
        v27 = v8 = v22;
        if (v27 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!a4)
            {
              v144 = 0;
              v19 = 0;
              v42 = v146;
              v37 = v147;
LABEL_119:
              a4 = v143;
              goto LABEL_120;
            }

            v65 = a4;
            v139 = v21;
            v66 = objc_alloc(MEMORY[0x1E696ABC0]);
            v67 = *MEMORY[0x1E698F240];
            v166 = *MEMORY[0x1E696A578];
            v35 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"timeZone"];
            v167 = v35;
            v68 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v167 forKeys:&v166 count:1];
            v69 = v66;
            v21 = v139;
            v141 = v68;
            v144 = 0;
            v19 = 0;
            *v65 = [v69 initWithDomain:v67 code:2 userInfo:?];
            v37 = v147;
            goto LABEL_63;
          }

          v144 = v27;
        }

        else
        {
          v144 = 0;
        }

        v28 = [v6 objectForKeyedSubscript:@"account"];
        v140 = v27;
        v136 = v28;
        if (!v28 || (v29 = v28, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v141 = 0;
LABEL_31:
          v30 = [v6 objectForKeyedSubscript:@"merchant"];
          v131 = v30;
          if (v30 && (v31 = v30, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (!a4)
              {
                v19 = 0;
                v42 = v146;
                v37 = v147;
                goto LABEL_116;
              }

              v75 = a4;
              v76 = objc_alloc(MEMORY[0x1E696ABC0]);
              v134 = *MEMORY[0x1E698F240];
              v162 = *MEMORY[0x1E696A578];
              v135 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"merchant"];
              v163 = v135;
              v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v163 forKeys:&v162 count:1];
              v19 = 0;
              *v75 = [v76 initWithDomain:v134 code:2 userInfo:v57];
              v42 = v146;
              v37 = v147;
LABEL_115:

LABEL_116:
              v35 = v136;
              goto LABEL_117;
            }

            v54 = v31;
            v55 = [BMWalletPaymentsCommerceTransactionMerchant alloc];
            v152 = 0;
            v135 = [(BMWalletPaymentsCommerceTransactionMerchant *)v55 initWithJSONDictionary:v54 error:&v152];
            v56 = v152;
            if (v56)
            {
              v133 = v54;
              if (a4)
              {
                v56 = v56;
                *a4 = v56;
              }

              v19 = 0;
              v42 = v146;
              v37 = v147;
              v57 = v133;
              goto LABEL_115;
            }
          }

          else
          {
            v135 = 0;
          }

          v32 = [v6 objectForKeyedSubscript:@"transactionSource"];
          v137 = v21;
          v128 = v32;
          if (v32 && (v33 = v32, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            v70 = a4;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v132 = v33;
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (!a4)
                {
                  v57 = 0;
                  v19 = 0;
                  v27 = v140;
                  v42 = v146;
                  v37 = v147;
                  goto LABEL_114;
                }

                v109 = objc_alloc(MEMORY[0x1E696ABC0]);
                v110 = *MEMORY[0x1E698F240];
                v160 = *MEMORY[0x1E696A578];
                v130 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"transactionSource"];
                v161 = v130;
                v127 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v161 forKeys:&v160 count:1];
                v111 = [v109 initWithDomain:v110 code:2 userInfo:?];
                v57 = 0;
                v19 = 0;
                *v70 = v111;
                v27 = v140;
                v42 = v146;
                v37 = v147;
LABEL_113:

LABEL_114:
                goto LABEL_115;
              }

              v132 = [MEMORY[0x1E696AD98] numberWithInt:BMWalletPaymentsCommerceTransactionTransactionSourceFromString(v33)];
            }

            v27 = v140;
          }

          else
          {
            v132 = 0;
          }

          v77 = [v6 objectForKeyedSubscript:@"accountType"];
          v127 = v77;
          if (v77 && (v78 = v77, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            v79 = a4;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v130 = v78;
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (!a4)
                {
                  v130 = 0;
                  v19 = 0;
                  v27 = v140;
                  v42 = v146;
                  v37 = v147;
                  goto LABEL_112;
                }

                v112 = objc_alloc(MEMORY[0x1E696ABC0]);
                v113 = *MEMORY[0x1E698F240];
                v158 = *MEMORY[0x1E696A578];
                v129 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"accountType"];
                v159 = v129;
                v114 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v159 forKeys:&v158 count:1];
                v115 = v112;
                v106 = v114;
                v130 = 0;
                v19 = 0;
                *v79 = [v115 initWithDomain:v113 code:2 userInfo:v114];
                v27 = v140;
                v42 = v146;
                v37 = v147;
LABEL_111:

LABEL_112:
                v57 = v132;
                goto LABEL_113;
              }

              v130 = [MEMORY[0x1E696AD98] numberWithInt:BMWalletPaymentsCommerceTransactionAccountTypeFromString(v78)];
            }

            v27 = v140;
          }

          else
          {
            v130 = 0;
          }

          v85 = [v6 objectForKeyedSubscript:@"transactionStatus"];
          v126 = v85;
          if (v85 && (v86 = v85, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            v87 = a4;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v88 = v86;
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (!a4)
                {
                  v129 = 0;
                  v19 = 0;
                  v42 = v146;
                  v37 = v147;
                  v27 = v140;
                  goto LABEL_110;
                }

                v116 = objc_alloc(MEMORY[0x1E696ABC0]);
                v117 = *MEMORY[0x1E698F240];
                v156 = *MEMORY[0x1E696A578];
                v97 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"transactionStatus"];
                v157 = v97;
                v125 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v157 forKeys:&v156 count:1];
                v118 = [v116 initWithDomain:v117 code:2 userInfo:?];
                v129 = 0;
                v19 = 0;
                *v87 = v118;
                v37 = v147;
                goto LABEL_108;
              }

              v88 = [MEMORY[0x1E696AD98] numberWithInt:BMWalletPaymentsCommerceTransactionTransactionStatusFromString(v86)];
            }

            v129 = v88;
            v27 = v140;
          }

          else
          {
            v129 = 0;
          }

          v89 = [v6 objectForKeyedSubscript:@"transactionType"];
          v125 = v89;
          if (v89 && (v90 = v89, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            v98 = a4;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v99 = v7;
              v93 = v148;
              v92 = v149;
              v94 = v8;
              v95 = v150;
              v96 = v99;
              v100 = v90;
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (a4)
                {
                  v119 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v120 = *MEMORY[0x1E698F240];
                  v154 = *MEMORY[0x1E696A578];
                  v121 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"transactionType"];
                  v155 = v121;
                  v122 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v155 forKeys:&v154 count:1];
                  *v98 = [v119 initWithDomain:v120 code:2 userInfo:v122];
                }

                v97 = 0;
                v19 = 0;
                v37 = v147;
                goto LABEL_109;
              }

              v101 = v7;
              v93 = v148;
              v92 = v149;
              v94 = v8;
              v95 = v150;
              v96 = v101;
              v100 = [MEMORY[0x1E696AD98] numberWithInt:BMWalletPaymentsCommerceTransactionTransactionTypeFromString(v90)];
            }

            v97 = v100;
          }

          else
          {
            v91 = v7;
            v93 = v148;
            v92 = v149;
            v94 = v8;
            v95 = v150;
            v96 = v91;
            v97 = 0;
          }

          v102 = [v132 intValue];
          v103 = [v130 intValue];
          v104 = [v129 intValue];
          v124 = __PAIR64__([v97 intValue], v104);
          v150 = v95;
          v105 = v95;
          v8 = v94;
          v37 = v147;
          v148 = v93;
          v19 = [(BMWalletPaymentsCommerceTransaction *)v92 initWithAmount:v105 transactionDate:v94 transactionID:v147 currencyCode:v93 transactionDescription:v143 timeZone:v144 account:v141 merchant:v135 transactionSource:__PAIR64__(v103 accountType:v102) transactionStatus:v124 transactionType:?];
          v149 = v19;
          v7 = v96;
          v21 = v137;
LABEL_108:
          v27 = v140;
LABEL_109:

          v42 = v146;
LABEL_110:
          v106 = v126;
          goto LABEL_111;
        }

        v138 = v21;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (a4)
          {
            v71 = a4;
            v72 = objc_alloc(MEMORY[0x1E696ABC0]);
            v73 = *MEMORY[0x1E698F240];
            v164 = *MEMORY[0x1E696A578];
            v142 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"account"];
            v165 = v142;
            v74 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v165 forKeys:&v164 count:1];
            *v71 = [v72 initWithDomain:v73 code:2 userInfo:v74];

            v19 = 0;
            v35 = v136;
            v21 = v138;
            v42 = v146;
            v37 = v147;
          }

          else
          {
            v19 = 0;
            v35 = v136;
            v42 = v146;
            v37 = v147;
          }

          goto LABEL_118;
        }

        v34 = a4;
        v35 = v29;
        v153 = 0;
        v141 = [[BMWalletPaymentsCommerceTransactionAccount alloc] initWithJSONDictionary:v35 error:&v153];
        v36 = v153;
        if (!v36)
        {

          a4 = v34;
          goto LABEL_31;
        }

        v37 = v147;
        if (v34)
        {
          v36 = v36;
          *v34 = v36;
        }

        v19 = 0;
LABEL_63:
        v42 = v146;
LABEL_117:

LABEL_118:
        goto LABEL_119;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v143 = v26;
        goto LABEL_25;
      }

      if (a4)
      {
        v58 = a4;
        v59 = objc_alloc(MEMORY[0x1E696ABC0]);
        v60 = v21;
        v61 = *MEMORY[0x1E698F240];
        v168 = *MEMORY[0x1E696A578];
        v144 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"transactionDescription"];
        v169 = v144;
        v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v169 forKeys:&v168 count:1];
        v63 = v61;
        v21 = v60;
        v64 = [v59 initWithDomain:v63 code:2 userInfo:v62];
        a4 = 0;
        v19 = 0;
        *v58 = v64;
        v42 = v146;
        v37 = v147;
        v8 = v22;
        v27 = v62;
LABEL_120:

        goto LABEL_121;
      }

      v19 = 0;
      v42 = v146;
      v37 = v147;
LABEL_84:
      v8 = v22;
LABEL_121:

      goto LABEL_122;
    }

    if (a4)
    {
      v44 = a4;
      v45 = objc_alloc(MEMORY[0x1E696ABC0]);
      v46 = v21;
      v47 = *MEMORY[0x1E698F240];
      v170 = *MEMORY[0x1E696A578];
      v48 = objc_alloc(MEMORY[0x1E696AEC0]);
      v123 = objc_opt_class();
      v49 = v48;
      v42 = v146;
      v50 = [v49 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v123, @"currencyCode"];
      v171 = v50;
      v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v171 forKeys:&v170 count:1];
      v52 = v45;
      a4 = v50;
      v53 = v47;
      v21 = v46;
      v145 = v51;
      v148 = 0;
      v19 = 0;
      *v44 = [v52 initWithDomain:v53 code:2 userInfo:?];
      v37 = v147;
      goto LABEL_84;
    }

    v148 = 0;
    v19 = 0;
    v42 = v146;
    v37 = v147;
    v8 = v22;
LABEL_122:
    self = v149;

    goto LABEL_123;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v150 = v7;
    goto LABEL_4;
  }

  if (a4)
  {
    v16 = a4;
    v17 = objc_alloc(MEMORY[0x1E696ABC0]);
    v18 = *MEMORY[0x1E698F240];
    v176 = *MEMORY[0x1E696A578];
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"amount"];
    v177[0] = v8;
    v151 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v177 forKeys:&v176 count:1];
    v150 = 0;
    v19 = 0;
    *v16 = [v17 initWithDomain:v18 code:2 userInfo:?];
LABEL_124:

    goto LABEL_125;
  }

  v150 = 0;
  v19 = 0;
LABEL_125:

  v107 = *MEMORY[0x1E69E9840];
  return v19;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMWalletPaymentsCommerceTransaction *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (self->_amount)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasRaw_transactionDate)
  {
    raw_transactionDate = self->_raw_transactionDate;
    PBDataWriterWriteDoubleField();
  }

  if (self->_transactionID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_currencyCode)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_transactionDescription)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_timeZone)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_account)
  {
    PBDataWriterPlaceMark();
    [(BMWalletPaymentsCommerceTransactionAccount *)self->_account writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_merchant)
  {
    PBDataWriterPlaceMark();
    [(BMWalletPaymentsCommerceTransactionMerchant *)self->_merchant writeTo:v4];
    PBDataWriterRecallMark();
  }

  transactionSource = self->_transactionSource;
  PBDataWriterWriteUint32Field();
  accountType = self->_accountType;
  PBDataWriterWriteUint32Field();
  transactionStatus = self->_transactionStatus;
  PBDataWriterWriteUint32Field();
  transactionType = self->_transactionType;
  PBDataWriterWriteUint32Field();
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v51.receiver = self;
  v51.super_class = BMWalletPaymentsCommerceTransaction;
  v5 = [(BMEventBase *)&v51 init];
  if (!v5)
  {
    goto LABEL_110;
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
        LOBYTE(v52) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v52 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (LOBYTE(v52) & 0x7F) << v7;
        if ((LOBYTE(v52) & 0x80) == 0)
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
              v32 = 0;
              v33 = 0;
              v20 = 0;
              while (1)
              {
                LOBYTE(v52) = 0;
                v34 = [v4 position] + 1;
                if (v34 >= [v4 position] && (v35 = objc_msgSend(v4, "position") + 1, v35 <= objc_msgSend(v4, "length")))
                {
                  v36 = [v4 data];
                  [v36 getBytes:&v52 range:{objc_msgSend(v4, "position"), 1}];

                  [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
                }

                else
                {
                  [v4 _setError];
                }

                v20 |= (LOBYTE(v52) & 0x7F) << v32;
                if ((LOBYTE(v52) & 0x80) == 0)
                {
                  break;
                }

                v32 += 7;
                v24 = v33++ > 8;
                if (v24)
                {
                  goto LABEL_97;
                }
              }

              if (([v4 hasError] & 1) != 0 || v20 > 2)
              {
LABEL_97:
                LODWORD(v20) = 0;
              }

              v46 = 40;
              break;
            case 0xB:
              v41 = 0;
              v42 = 0;
              v20 = 0;
              while (1)
              {
                LOBYTE(v52) = 0;
                v43 = [v4 position] + 1;
                if (v43 >= [v4 position] && (v44 = objc_msgSend(v4, "position") + 1, v44 <= objc_msgSend(v4, "length")))
                {
                  v45 = [v4 data];
                  [v45 getBytes:&v52 range:{objc_msgSend(v4, "position"), 1}];

                  [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
                }

                else
                {
                  [v4 _setError];
                }

                v20 |= (LOBYTE(v52) & 0x7F) << v41;
                if ((LOBYTE(v52) & 0x80) == 0)
                {
                  break;
                }

                v41 += 7;
                v24 = v42++ > 8;
                if (v24)
                {
                  goto LABEL_101;
                }
              }

              if (([v4 hasError] & 1) != 0 || v20 > 2)
              {
LABEL_101:
                LODWORD(v20) = 0;
              }

              v46 = 44;
              break;
            case 0xC:
              v25 = 0;
              v26 = 0;
              v20 = 0;
              while (1)
              {
                LOBYTE(v52) = 0;
                v27 = [v4 position] + 1;
                if (v27 >= [v4 position] && (v28 = objc_msgSend(v4, "position") + 1, v28 <= objc_msgSend(v4, "length")))
                {
                  v29 = [v4 data];
                  [v29 getBytes:&v52 range:{objc_msgSend(v4, "position"), 1}];

                  [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
                }

                else
                {
                  [v4 _setError];
                }

                v20 |= (LOBYTE(v52) & 0x7F) << v25;
                if ((LOBYTE(v52) & 0x80) == 0)
                {
                  break;
                }

                v25 += 7;
                v24 = v26++ > 8;
                if (v24)
                {
                  goto LABEL_93;
                }
              }

              if (([v4 hasError] & 1) != 0 || v20 > 2)
              {
LABEL_93:
                LODWORD(v20) = 0;
              }

              v46 = 48;
              break;
            default:
LABEL_85:
              if ((PBReaderSkipValueWithTag() & 1) == 0)
              {
                goto LABEL_109;
              }

              goto LABEL_104;
          }

          goto LABEL_103;
        }

        switch(v15)
        {
          case 7:
            v52 = 0.0;
            v53 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_109;
            }

            v30 = [[BMWalletPaymentsCommerceTransactionAccount alloc] initByReadFrom:v4];
            if (!v30)
            {
              goto LABEL_109;
            }

            v31 = 96;
            break;
          case 8:
            v52 = 0.0;
            v53 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_109;
            }

            v30 = [[BMWalletPaymentsCommerceTransactionMerchant alloc] initByReadFrom:v4];
            if (!v30)
            {
              goto LABEL_109;
            }

            v31 = 104;
            break;
          case 9:
            v18 = 0;
            v19 = 0;
            v20 = 0;
            while (1)
            {
              LOBYTE(v52) = 0;
              v21 = [v4 position] + 1;
              if (v21 >= [v4 position] && (v22 = objc_msgSend(v4, "position") + 1, v22 <= objc_msgSend(v4, "length")))
              {
                v23 = [v4 data];
                [v23 getBytes:&v52 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v20 |= (LOBYTE(v52) & 0x7F) << v18;
              if ((LOBYTE(v52) & 0x80) == 0)
              {
                break;
              }

              v18 += 7;
              v24 = v19++ > 8;
              if (v24)
              {
                goto LABEL_89;
              }
            }

            if (([v4 hasError] & 1) != 0 || v20 > 3)
            {
LABEL_89:
              LODWORD(v20) = 0;
            }

            v46 = 36;
LABEL_103:
            *(&v5->super.super.isa + v46) = v20;
            goto LABEL_104;
          default:
            goto LABEL_85;
        }

        v39 = *(&v5->super.super.isa + v31);
        *(&v5->super.super.isa + v31) = v30;

        PBReaderRecallMark();
      }

      else
      {
        if (v15 > 3)
        {
          switch(v15)
          {
            case 4:
              v16 = PBReaderReadString();
              v17 = 72;
              break;
            case 5:
              v16 = PBReaderReadString();
              v17 = 80;
              break;
            case 6:
              v16 = PBReaderReadString();
              v17 = 88;
              break;
            default:
              goto LABEL_85;
          }
        }

        else
        {
          switch(v15)
          {
            case 1:
              v16 = PBReaderReadString();
              v17 = 56;
              break;
            case 2:
              v5->_hasRaw_transactionDate = 1;
              v52 = 0.0;
              v37 = [v4 position] + 8;
              if (v37 >= [v4 position] && (v38 = objc_msgSend(v4, "position") + 8, v38 <= objc_msgSend(v4, "length")))
              {
                v48 = [v4 data];
                [v48 getBytes:&v52 range:{objc_msgSend(v4, "position"), 8}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
              }

              else
              {
                [v4 _setError];
              }

              v5->_raw_transactionDate = v52;
              goto LABEL_104;
            case 3:
              v16 = PBReaderReadString();
              v17 = 64;
              break;
            default:
              goto LABEL_85;
          }
        }

        v40 = *(&v5->super.super.isa + v17);
        *(&v5->super.super.isa + v17) = v16;
      }

LABEL_104:
      v47 = [v4 position];
    }

    while (v47 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_109:
    v49 = 0;
  }

  else
  {
LABEL_110:
    v49 = v5;
  }

  return v49;
}

- (NSString)description
{
  v14 = objc_alloc(MEMORY[0x1E696AEC0]);
  v17 = [(BMWalletPaymentsCommerceTransaction *)self amount];
  v16 = [(BMWalletPaymentsCommerceTransaction *)self transactionDate];
  v3 = [(BMWalletPaymentsCommerceTransaction *)self transactionID];
  v4 = [(BMWalletPaymentsCommerceTransaction *)self currencyCode];
  v5 = [(BMWalletPaymentsCommerceTransaction *)self transactionDescription];
  v6 = [(BMWalletPaymentsCommerceTransaction *)self timeZone];
  v7 = [(BMWalletPaymentsCommerceTransaction *)self account];
  v8 = [(BMWalletPaymentsCommerceTransaction *)self merchant];
  v9 = BMWalletPaymentsCommerceTransactionTransactionSourceAsString([(BMWalletPaymentsCommerceTransaction *)self transactionSource]);
  v10 = BMWalletPaymentsCommerceTransactionAccountTypeAsString([(BMWalletPaymentsCommerceTransaction *)self accountType]);
  v11 = BMWalletPaymentsCommerceTransactionTransactionStatusAsString([(BMWalletPaymentsCommerceTransaction *)self transactionStatus]);
  v12 = BMWalletPaymentsCommerceTransactionTransactionTypeAsString([(BMWalletPaymentsCommerceTransaction *)self transactionType]);
  v15 = [v14 initWithFormat:@"BMWalletPaymentsCommerceTransaction with amount: %@, transactionDate: %@, transactionID: %@, currencyCode: %@, transactionDescription: %@, timeZone: %@, account: %@, merchant: %@, transactionSource: %@, accountType: %@, transactionStatus: %@, transactionType: %@", v17, v16, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12];

  return v15;
}

- (BMWalletPaymentsCommerceTransaction)initWithAmount:(id)a3 transactionDate:(id)a4 transactionID:(id)a5 currencyCode:(id)a6 transactionDescription:(id)a7 timeZone:(id)a8 account:(id)a9 merchant:(id)a10 transactionSource:(int)a11 accountType:(int)a12 transactionStatus:(int)a13 transactionType:(int)a14
{
  v31 = a3;
  v21 = a4;
  v30 = a5;
  v29 = a6;
  v28 = a7;
  v27 = a8;
  v26 = a9;
  v25 = a10;
  v32.receiver = self;
  v32.super_class = BMWalletPaymentsCommerceTransaction;
  v22 = [(BMEventBase *)&v32 init];
  if (v22)
  {
    v22->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v22->_amount, a3);
    if (v21)
    {
      v22->_hasRaw_transactionDate = 1;
      [v21 timeIntervalSinceReferenceDate];
    }

    else
    {
      v22->_hasRaw_transactionDate = 0;
      v23 = -1.0;
    }

    v22->_raw_transactionDate = v23;
    objc_storeStrong(&v22->_transactionID, a5);
    objc_storeStrong(&v22->_currencyCode, a6);
    objc_storeStrong(&v22->_transactionDescription, a7);
    objc_storeStrong(&v22->_timeZone, a8);
    objc_storeStrong(&v22->_account, a9);
    objc_storeStrong(&v22->_merchant, a10);
    v22->_transactionSource = a11;
    v22->_accountType = a12;
    v22->_transactionStatus = a13;
    v22->_transactionType = a14;
  }

  return v22;
}

+ (id)protoFields
{
  v17[12] = *MEMORY[0x1E69E9840];
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"amount" number:1 type:13 subMessageClass:0];
  v17[0] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"transactionDate" number:2 type:0 subMessageClass:0];
  v17[1] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"transactionID" number:3 type:13 subMessageClass:0];
  v17[2] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"currencyCode" number:4 type:13 subMessageClass:0];
  v17[3] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"transactionDescription" number:5 type:13 subMessageClass:0];
  v17[4] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"timeZone" number:6 type:13 subMessageClass:0];
  v17[5] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"account" number:7 type:14 subMessageClass:objc_opt_class()];
  v17[6] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"merchant" number:8 type:14 subMessageClass:objc_opt_class()];
  v17[7] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"transactionSource" number:9 type:4 subMessageClass:0];
  v17[8] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"accountType" number:10 type:4 subMessageClass:0];
  v17[9] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"transactionStatus" number:11 type:4 subMessageClass:0];
  v17[10] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"transactionType" number:12 type:4 subMessageClass:0];
  v17[11] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:12];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)columns
{
  v17[12] = *MEMORY[0x1E69E9840];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"amount" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"transactionDate" dataType:3 requestOnly:0 fieldNumber:2 protoDataType:0 convertedType:1];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"transactionID" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"currencyCode" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"transactionDescription" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"timeZone" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"account_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_285];
  v7 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"merchant_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_287];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"transactionSource" dataType:0 requestOnly:0 fieldNumber:9 protoDataType:4 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"accountType" dataType:0 requestOnly:0 fieldNumber:10 protoDataType:4 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"transactionStatus" dataType:0 requestOnly:0 fieldNumber:11 protoDataType:4 convertedType:0];
  v10 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"transactionType" dataType:0 requestOnly:0 fieldNumber:12 protoDataType:4 convertedType:0];
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

id __46__BMWalletPaymentsCommerceTransaction_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 merchant];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __46__BMWalletPaymentsCommerceTransaction_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 account];
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

    v8 = [[BMWalletPaymentsCommerceTransaction alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[8] = 0;
    }
  }

  return v4;
}

@end