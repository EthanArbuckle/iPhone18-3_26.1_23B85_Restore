@interface BMWalletPaymentsCommerceOrderEmailEmailMetadata
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMWalletPaymentsCommerceOrderEmailEmailMetadata)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMWalletPaymentsCommerceOrderEmailEmailMetadata)initWithMessageID:(id)a3 dateSent:(id)a4 subject:(id)a5 senderDomain:(id)a6 deeplinkURL:(id)a7 fromEmailAddress:(id)a8 fromDisplayName:(id)a9 toEmailAddress:(id)a10 toDisplayName:(id)a11 replyToEmailAddress:(id)a12 replyToDisplayName:(id)a13;
- (BOOL)isEqual:(id)a3;
- (NSDate)dateSent;
- (NSString)description;
- (NSURL)deeplinkURL;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMWalletPaymentsCommerceOrderEmailEmailMetadata

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self messageID];
    v7 = [v5 messageID];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self messageID];
      v10 = [v5 messageID];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_41;
      }
    }

    v13 = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self dateSent];
    v14 = [v5 dateSent];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self dateSent];
      v17 = [v5 dateSent];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_41;
      }
    }

    v19 = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self subject];
    v20 = [v5 subject];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self subject];
      v23 = [v5 subject];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_41;
      }
    }

    v25 = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self senderDomain];
    v26 = [v5 senderDomain];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self senderDomain];
      v29 = [v5 senderDomain];
      v30 = [v28 isEqual:v29];

      if (!v30)
      {
        goto LABEL_41;
      }
    }

    v31 = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self deeplinkURL];
    v32 = [v5 deeplinkURL];
    v33 = v32;
    if (v31 == v32)
    {
    }

    else
    {
      v34 = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self deeplinkURL];
      v35 = [v5 deeplinkURL];
      v36 = [v34 isEqual:v35];

      if (!v36)
      {
        goto LABEL_41;
      }
    }

    v37 = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self fromEmailAddress];
    v38 = [v5 fromEmailAddress];
    v39 = v38;
    if (v37 == v38)
    {
    }

    else
    {
      v40 = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self fromEmailAddress];
      v41 = [v5 fromEmailAddress];
      v42 = [v40 isEqual:v41];

      if (!v42)
      {
        goto LABEL_41;
      }
    }

    v43 = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self fromDisplayName];
    v44 = [v5 fromDisplayName];
    v45 = v44;
    if (v43 == v44)
    {
    }

    else
    {
      v46 = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self fromDisplayName];
      v47 = [v5 fromDisplayName];
      v48 = [v46 isEqual:v47];

      if (!v48)
      {
        goto LABEL_41;
      }
    }

    v49 = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self toEmailAddress];
    v50 = [v5 toEmailAddress];
    v51 = v50;
    if (v49 == v50)
    {
    }

    else
    {
      v52 = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self toEmailAddress];
      v53 = [v5 toEmailAddress];
      v54 = [v52 isEqual:v53];

      if (!v54)
      {
        goto LABEL_41;
      }
    }

    v55 = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self toDisplayName];
    v56 = [v5 toDisplayName];
    v57 = v56;
    if (v55 == v56)
    {
    }

    else
    {
      v58 = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self toDisplayName];
      v59 = [v5 toDisplayName];
      v60 = [v58 isEqual:v59];

      if (!v60)
      {
        goto LABEL_41;
      }
    }

    v61 = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self replyToEmailAddress];
    v62 = [v5 replyToEmailAddress];
    v63 = v62;
    if (v61 == v62)
    {
    }

    else
    {
      v64 = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self replyToEmailAddress];
      v65 = [v5 replyToEmailAddress];
      v66 = [v64 isEqual:v65];

      if (!v66)
      {
LABEL_41:
        v12 = 0;
LABEL_42:

        goto LABEL_43;
      }
    }

    v68 = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self replyToDisplayName];
    v69 = [v5 replyToDisplayName];
    if (v68 == v69)
    {
      v12 = 1;
    }

    else
    {
      v70 = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self replyToDisplayName];
      v71 = [v5 replyToDisplayName];
      v12 = [v70 isEqual:v71];
    }

    goto LABEL_42;
  }

  v12 = 0;
LABEL_43:

  return v12;
}

- (NSURL)deeplinkURL
{
  raw_deeplinkURL = self->_raw_deeplinkURL;
  if (raw_deeplinkURL)
  {
    v4 = [MEMORY[0x1E698F280] convertValue:raw_deeplinkURL toType:4];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)dateSent
{
  if (self->_hasRaw_dateSent)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_dateSent];
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
  v42[11] = *MEMORY[0x1E69E9840];
  v3 = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self messageID];
  v4 = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self dateSent];
  if (v4)
  {
    v5 = MEMORY[0x1E696AD98];
    v6 = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self dateSent];
    [v6 timeIntervalSinceReferenceDate];
    v7 = [v5 numberWithDouble:?];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self subject];
  v9 = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self senderDomain];
  v10 = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self deeplinkURL];
  v11 = [v10 absoluteString];

  v40 = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self fromEmailAddress];
  v39 = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self fromDisplayName];
  v38 = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self toEmailAddress];
  v12 = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self toDisplayName];
  v13 = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self replyToEmailAddress];
  v14 = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self replyToDisplayName];
  v41[0] = @"messageID";
  v15 = v3;
  if (!v3)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = v15;
  v42[0] = v15;
  v41[1] = @"dateSent";
  v16 = v7;
  if (!v7)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = v16;
  v42[1] = v16;
  v41[2] = @"subject";
  v17 = v8;
  if (!v8)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v30 = v17;
  v42[2] = v17;
  v41[3] = @"senderDomain";
  v18 = v9;
  if (!v9)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v37 = v3;
  v29 = v18;
  v42[3] = v18;
  v41[4] = @"deeplinkURL";
  v19 = v11;
  if (!v11)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v36 = v7;
  v28 = v19;
  v42[4] = v19;
  v41[5] = @"fromEmailAddress";
  v20 = v40;
  if (!v40)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v35 = v8;
  v42[5] = v20;
  v41[6] = @"fromDisplayName";
  v21 = v39;
  if (!v39)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v34 = v9;
  v42[6] = v21;
  v41[7] = @"toEmailAddress";
  v22 = v38;
  if (!v38)
  {
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  v42[7] = v22;
  v41[8] = @"toDisplayName";
  v23 = v12;
  if (!v12)
  {
    v23 = [MEMORY[0x1E695DFB0] null];
  }

  v42[8] = v23;
  v41[9] = @"replyToEmailAddress";
  v24 = v13;
  if (!v13)
  {
    v24 = [MEMORY[0x1E695DFB0] null];
  }

  v42[9] = v24;
  v41[10] = @"replyToDisplayName";
  v25 = v14;
  if (!v14)
  {
    v25 = [MEMORY[0x1E695DFB0] null];
  }

  v42[10] = v25;
  v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:11];
  if (v14)
  {
    if (v13)
    {
      goto LABEL_28;
    }

LABEL_45:

    if (v12)
    {
      goto LABEL_29;
    }

    goto LABEL_46;
  }

  if (!v13)
  {
    goto LABEL_45;
  }

LABEL_28:
  if (v12)
  {
    goto LABEL_29;
  }

LABEL_46:

LABEL_29:
  if (!v38)
  {
  }

  if (!v39)
  {
  }

  if (!v40)
  {
  }

  if (!v11)
  {
  }

  if (v34)
  {
    if (v35)
    {
      goto LABEL_39;
    }
  }

  else
  {

    if (v35)
    {
LABEL_39:
      if (v36)
      {
        goto LABEL_40;
      }

LABEL_49:

      if (v37)
      {
        goto LABEL_41;
      }

      goto LABEL_50;
    }
  }

  if (!v36)
  {
    goto LABEL_49;
  }

LABEL_40:
  if (v37)
  {
    goto LABEL_41;
  }

LABEL_50:

LABEL_41:
  v26 = *MEMORY[0x1E69E9840];

  return v33;
}

- (BMWalletPaymentsCommerceOrderEmailEmailMetadata)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v149[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"messageID"];
  v125 = self;
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"dateSent"];
    v124 = v8;
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = MEMORY[0x1E695DF00];
        v11 = v9;
        v12 = [v10 alloc];
        [v11 doubleValue];
        v14 = v13;

        self = v125;
        v15 = [v12 initWithTimeIntervalSinceReferenceDate:v14];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v22 = objc_alloc_init(MEMORY[0x1E696AC80]);
          v122 = [v22 dateFromString:v9];

          goto LABEL_16;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v19 = 0;
            goto LABEL_101;
          }

          v94 = objc_alloc(MEMORY[0x1E696ABC0]);
          v123 = a4;
          v95 = *MEMORY[0x1E698F240];
          v146 = *MEMORY[0x1E696A578];
          v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"dateSent"];
          v147 = v26;
          v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v147 forKeys:&v146 count:1];
          v96 = v94;
          self = v125;
          v97 = [v96 initWithDomain:v95 code:2 userInfo:v23];
          v19 = 0;
          a4 = 0;
          *v123 = v97;
          goto LABEL_100;
        }

        v15 = v9;
      }

      v122 = v15;
    }

    else
    {
      v122 = 0;
    }

LABEL_16:
    v23 = [v6 objectForKeyedSubscript:@"subject"];
    if (v23 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v26 = 0;
          v19 = v122;
LABEL_100:

          v8 = v124;
          goto LABEL_101;
        }

        v40 = objc_alloc(MEMORY[0x1E696ABC0]);
        v41 = a4;
        v42 = *MEMORY[0x1E698F240];
        v144 = *MEMORY[0x1E696A578];
        v121 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"subject"];
        v145 = v121;
        v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v145 forKeys:&v144 count:1];
        v44 = v40;
        self = v125;
        v45 = [v44 initWithDomain:v42 code:2 userInfo:v43];
        a4 = 0;
        *v41 = v45;
        v26 = 0;
        v19 = v122;
        goto LABEL_99;
      }

      v24 = v9;
      v25 = v23;
      v26 = v23;
    }

    else
    {
      v24 = v9;
      v25 = v23;
      v26 = 0;
    }

    v27 = [v6 objectForKeyedSubscript:@"senderDomain"];
    v119 = v7;
    v120 = v27;
    if (!v27 || (v28 = v27, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v121 = 0;
LABEL_22:
      v29 = [v6 objectForKeyedSubscript:@"deeplinkURL"];
      v23 = v25;
      if (!v29)
      {
        v114 = 0;
        v9 = v24;
        goto LABEL_33;
      }

      objc_opt_class();
      v9 = v24;
      if (objc_opt_isKindOfClass())
      {
        v114 = 0;
LABEL_33:
        self = v125;
        v33 = [v6 objectForKeyedSubscript:@"fromEmailAddress"];
        v109 = v29;
        v111 = v33;
        if (v33 && (v34 = v33, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!a4)
            {
              v113 = 0;
              v19 = v122;
              v43 = v120;
              goto LABEL_68;
            }

            v64 = objc_alloc(MEMORY[0x1E696ABC0]);
            v65 = v26;
            v66 = a4;
            v67 = *MEMORY[0x1E698F240];
            v136 = *MEMORY[0x1E696A578];
            v112 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"fromEmailAddress"];
            v137 = v112;
            v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v137 forKeys:&v136 count:1];
            v68 = v64;
            self = v125;
            v69 = [v68 initWithDomain:v67 code:2 userInfo:v59];
            v113 = 0;
            a4 = 0;
            *v66 = v69;
            v26 = v65;
            v29 = v109;
            v19 = v122;
            v43 = v120;
LABEL_67:

LABEL_68:
            v53 = v114;
LABEL_97:

LABEL_98:
            v7 = v119;
            goto LABEL_99;
          }

          v105 = v23;
          v35 = v9;
          v113 = v34;
        }

        else
        {
          v105 = v23;
          v35 = v9;
          v113 = 0;
        }

        v36 = [v6 objectForKeyedSubscript:@"fromDisplayName"];
        if (v36 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!a4)
            {
              v112 = 0;
              v19 = v122;
              v43 = v120;
              v59 = v36;
              v9 = v35;
              v23 = v105;
              goto LABEL_67;
            }

            v70 = objc_alloc(MEMORY[0x1E696ABC0]);
            v71 = v26;
            v72 = a4;
            v73 = *MEMORY[0x1E698F240];
            v134 = *MEMORY[0x1E696A578];
            v74 = objc_alloc(MEMORY[0x1E696AEC0]);
            v101 = objc_opt_class();
            v75 = v74;
            v59 = v36;
            v110 = [v75 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v101, @"fromDisplayName"];
            v135 = v110;
            v76 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v135 forKeys:&v134 count:1];
            v77 = v70;
            self = v125;
            v104 = v76;
            v78 = [v77 initWithDomain:v73 code:2 userInfo:?];
            v112 = 0;
            a4 = 0;
            *v72 = v78;
            v26 = v71;
            v29 = v109;
            v19 = v122;
            v43 = v120;
            v9 = v35;
            v23 = v105;
            goto LABEL_66;
          }

          v37 = a4;
          v103 = v36;
          v112 = v36;
        }

        else
        {
          v37 = a4;
          v103 = v36;
          v112 = 0;
        }

        v38 = [v6 objectForKeyedSubscript:@"toEmailAddress"];
        v9 = v35;
        v115 = v26;
        v104 = v38;
        if (v38)
        {
          v39 = v38;
          objc_opt_class();
          v23 = v105;
          if (objc_opt_isKindOfClass())
          {
            v110 = 0;
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (!v37)
              {
                v110 = 0;
                a4 = 0;
                v19 = v122;
                v43 = v120;
                v59 = v103;
                v29 = v109;
                goto LABEL_66;
              }

              v79 = objc_alloc(MEMORY[0x1E696ABC0]);
              v80 = *MEMORY[0x1E698F240];
              v132 = *MEMORY[0x1E696A578];
              v108 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"toEmailAddress"];
              v133 = v108;
              v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v133 forKeys:&v132 count:1];
              v81 = [v79 initWithDomain:v80 code:2 userInfo:v54];
              v110 = 0;
              a4 = 0;
              *v37 = v81;
              goto LABEL_112;
            }

            v110 = v39;
          }
        }

        else
        {
          v110 = 0;
          v23 = v105;
        }

        v54 = [v6 objectForKeyedSubscript:@"toDisplayName"];
        if (!v54 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v108 = 0;
          goto LABEL_56;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v108 = v54;
LABEL_56:
          v55 = [v6 objectForKeyedSubscript:@"replyToEmailAddress"];
          if (!v55 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            a4 = v37;
            v56 = 0;
            goto LABEL_59;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            a4 = v37;
            v56 = v55;
LABEL_59:
            v57 = [v6 objectForKeyedSubscript:@"replyToDisplayName"];
            if (v57 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (a4)
                {
                  v107 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v102 = *MEMORY[0x1E698F240];
                  v126 = *MEMORY[0x1E696A578];
                  v98 = a4;
                  v99 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"replyToDisplayName"];
                  v127 = v99;
                  v100 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v127 forKeys:&v126 count:1];
                  *v98 = [v107 initWithDomain:v102 code:2 userInfo:v100];

                  v58 = 0;
                  a4 = 0;
                }

                else
                {
                  v58 = 0;
                }

                goto LABEL_63;
              }

              v58 = v57;
            }

            else
            {
              v58 = 0;
            }

            a4 = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)v125 initWithMessageID:v124 dateSent:v122 subject:v115 senderDomain:v121 deeplinkURL:v114 fromEmailAddress:v113 fromDisplayName:v112 toEmailAddress:v110 toDisplayName:v108 replyToEmailAddress:v56 replyToDisplayName:v58];
            v125 = a4;
LABEL_63:
            v29 = v109;

            v19 = v122;
LABEL_64:

LABEL_65:
            self = v125;
            v26 = v115;
            v43 = v120;
            v59 = v103;
LABEL_66:

            goto LABEL_67;
          }

          if (v37)
          {
            v106 = objc_alloc(MEMORY[0x1E696ABC0]);
            v85 = *MEMORY[0x1E698F240];
            v128 = *MEMORY[0x1E696A578];
            v58 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"replyToEmailAddress"];
            v129 = v58;
            v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v129 forKeys:&v128 count:1];
            v86 = [v106 initWithDomain:v85 code:2 userInfo:v57];
            v56 = 0;
            a4 = 0;
            *v37 = v86;
            goto LABEL_63;
          }

          v56 = 0;
          a4 = 0;
LABEL_114:
          v19 = v122;
          v29 = v109;
          goto LABEL_64;
        }

        if (v37)
        {
          v82 = objc_alloc(MEMORY[0x1E696ABC0]);
          v83 = *MEMORY[0x1E698F240];
          v130 = *MEMORY[0x1E696A578];
          v56 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"toDisplayName"];
          v131 = v56;
          v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v131 forKeys:&v130 count:1];
          v84 = [v82 initWithDomain:v83 code:2 userInfo:v55];
          v108 = 0;
          a4 = 0;
          *v37 = v84;
          goto LABEL_114;
        }

        v108 = 0;
        a4 = 0;
LABEL_112:
        v19 = v122;
        v29 = v109;
        goto LABEL_65;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v30 = v29;
        v31 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v30];
        if (v31)
        {
          v32 = v31;

          v114 = v32;
          goto LABEL_33;
        }

        v29 = v30;
        v19 = v122;
        if (a4)
        {
          v87 = objc_alloc(MEMORY[0x1E696ABC0]);
          v118 = v26;
          v88 = a4;
          v89 = *MEMORY[0x1E698F240];
          v140 = *MEMORY[0x1E696A578];
          v90 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"-initWithString: for %@ returned nil", @"deeplinkURL"];
          v141 = v90;
          v91 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v141 forKeys:&v140 count:1];
          *v88 = [v87 initWithDomain:v89 code:2 userInfo:v91];
          v26 = v118;

          a4 = 0;
        }

        v53 = v29;
      }

      else
      {
        if (!a4)
        {
          v19 = v122;
          v43 = v120;
          self = v125;
          goto LABEL_98;
        }

        v60 = objc_alloc(MEMORY[0x1E696ABC0]);
        v117 = v26;
        v61 = a4;
        v62 = *MEMORY[0x1E698F240];
        v138 = *MEMORY[0x1E696A578];
        v53 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"deeplinkURL"];
        v139 = v53;
        v63 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v139 forKeys:&v138 count:1];
        *v61 = [v60 initWithDomain:v62 code:2 userInfo:v63];
        v26 = v117;

        a4 = 0;
        v19 = v122;
      }

      v43 = v120;
LABEL_96:
      self = v125;
      goto LABEL_97;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v121 = v28;
      goto LABEL_22;
    }

    if (a4)
    {
      v46 = objc_alloc(MEMORY[0x1E696ABC0]);
      v116 = v26;
      v47 = a4;
      v48 = *MEMORY[0x1E698F240];
      v142 = *MEMORY[0x1E696A578];
      v43 = v120;
      v49 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"senderDomain"];
      v143 = v49;
      v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v143 forKeys:&v142 count:1];
      v51 = v46;
      v29 = v49;
      v52 = [v51 initWithDomain:v48 code:2 userInfo:v50];
      v121 = 0;
      a4 = 0;
      *v47 = v52;
      v53 = v50;
      v26 = v116;
      v19 = v122;
      v23 = v25;
      v9 = v24;
      goto LABEL_96;
    }

    v121 = 0;
    v19 = v122;
    v43 = v120;
    v23 = v25;
    v9 = v24;
    self = v125;
LABEL_99:

    goto LABEL_100;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    goto LABEL_4;
  }

  if (a4)
  {
    v16 = objc_alloc(MEMORY[0x1E696ABC0]);
    v17 = a4;
    v18 = *MEMORY[0x1E698F240];
    v148 = *MEMORY[0x1E696A578];
    v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"messageID"];
    v149[0] = v19;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v149 forKeys:&v148 count:1];
    v20 = v16;
    self = v125;
    v21 = [v20 initWithDomain:v18 code:2 userInfo:v9];
    v8 = 0;
    a4 = 0;
    *v17 = v21;
LABEL_101:

    goto LABEL_102;
  }

  v8 = 0;
LABEL_102:

  v92 = *MEMORY[0x1E69E9840];
  return a4;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_messageID)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_hasRaw_dateSent)
  {
    raw_dateSent = self->_raw_dateSent;
    PBDataWriterWriteDoubleField();
    v4 = v6;
  }

  if (self->_subject)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_senderDomain)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_raw_deeplinkURL)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_fromEmailAddress)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_fromDisplayName)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_toEmailAddress)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_toDisplayName)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_replyToEmailAddress)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_replyToDisplayName)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = BMWalletPaymentsCommerceOrderEmailEmailMetadata;
  v5 = [(BMEventBase *)&v25 init];
  if (!v5)
  {
    goto LABEL_54;
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
        LOBYTE(v26) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v26 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (LOBYTE(v26) & 0x7F) << v7;
        if ((LOBYTE(v26) & 0x80) == 0)
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
      if ((v14 >> 3) <= 5)
      {
        if (v15 <= 2)
        {
          if (v15 == 1)
          {
            v16 = PBReaderReadString();
            v17 = 48;
            goto LABEL_45;
          }

          if (v15 == 2)
          {
            v5->_hasRaw_dateSent = 1;
            v26 = 0.0;
            v18 = [v4 position] + 8;
            if (v18 >= [v4 position] && (v19 = objc_msgSend(v4, "position") + 8, v19 <= objc_msgSend(v4, "length")))
            {
              v22 = [v4 data];
              [v22 getBytes:&v26 range:{objc_msgSend(v4, "position"), 8}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
            }

            else
            {
              [v4 _setError];
            }

            v5->_raw_dateSent = v26;
            goto LABEL_46;
          }
        }

        else
        {
          switch(v15)
          {
            case 3:
              v16 = PBReaderReadString();
              v17 = 56;
              goto LABEL_45;
            case 4:
              v16 = PBReaderReadString();
              v17 = 64;
              goto LABEL_45;
            case 5:
              v16 = PBReaderReadString();
              v17 = 32;
              goto LABEL_45;
          }
        }
      }

      else if (v15 > 8)
      {
        switch(v15)
        {
          case 9:
            v16 = PBReaderReadString();
            v17 = 96;
            goto LABEL_45;
          case 0xA:
            v16 = PBReaderReadString();
            v17 = 104;
            goto LABEL_45;
          case 0xB:
            v16 = PBReaderReadString();
            v17 = 112;
            goto LABEL_45;
        }
      }

      else
      {
        switch(v15)
        {
          case 6:
            v16 = PBReaderReadString();
            v17 = 72;
            goto LABEL_45;
          case 7:
            v16 = PBReaderReadString();
            v17 = 80;
            goto LABEL_45;
          case 8:
            v16 = PBReaderReadString();
            v17 = 88;
LABEL_45:
            v20 = *(&v5->super.super.isa + v17);
            *(&v5->super.super.isa + v17) = v16;

            goto LABEL_46;
        }
      }

      if (!PBReaderSkipValueWithTag())
      {
        goto LABEL_53;
      }

LABEL_46:
      v21 = [v4 position];
    }

    while (v21 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_53:
    v23 = 0;
  }

  else
  {
LABEL_54:
    v23 = v5;
  }

  return v23;
}

- (NSString)description
{
  v14 = objc_alloc(MEMORY[0x1E696AEC0]);
  v16 = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self messageID];
  v3 = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self dateSent];
  v4 = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self subject];
  v5 = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self senderDomain];
  v6 = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self deeplinkURL];
  v7 = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self fromEmailAddress];
  v8 = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self fromDisplayName];
  v9 = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self toEmailAddress];
  v10 = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self toDisplayName];
  v11 = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self replyToEmailAddress];
  v12 = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self replyToDisplayName];
  v15 = [v14 initWithFormat:@"BMWalletPaymentsCommerceOrderEmailEmailMetadata with messageID: %@, dateSent: %@, subject: %@, senderDomain: %@, deeplinkURL: %@, fromEmailAddress: %@, fromDisplayName: %@, toEmailAddress: %@, toDisplayName: %@, replyToEmailAddress: %@, replyToDisplayName: %@", v16, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12];

  return v15;
}

- (BMWalletPaymentsCommerceOrderEmailEmailMetadata)initWithMessageID:(id)a3 dateSent:(id)a4 subject:(id)a5 senderDomain:(id)a6 deeplinkURL:(id)a7 fromEmailAddress:(id)a8 fromDisplayName:(id)a9 toEmailAddress:(id)a10 toDisplayName:(id)a11 replyToEmailAddress:(id)a12 replyToDisplayName:(id)a13
{
  v37 = a3;
  v18 = a4;
  v30 = a5;
  v36 = a5;
  v31 = a6;
  v35 = a6;
  v19 = a7;
  v34 = a8;
  v33 = a9;
  v20 = a10;
  v21 = a11;
  v22 = a12;
  v23 = a13;
  v38.receiver = self;
  v38.super_class = BMWalletPaymentsCommerceOrderEmailEmailMetadata;
  v24 = [(BMEventBase *)&v38 init];
  if (v24)
  {
    v24->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v24->_messageID, a3);
    if (v18)
    {
      v24->_hasRaw_dateSent = 1;
      [v18 timeIntervalSinceReferenceDate];
    }

    else
    {
      v24->_hasRaw_dateSent = 0;
      v25 = -1.0;
    }

    v24->_raw_dateSent = v25;
    objc_storeStrong(&v24->_subject, v30);
    objc_storeStrong(&v24->_senderDomain, v31);
    if (v19)
    {
      v26 = [v19 absoluteString];
    }

    else
    {
      v26 = 0;
    }

    raw_deeplinkURL = v24->_raw_deeplinkURL;
    v24->_raw_deeplinkURL = v26;

    objc_storeStrong(&v24->_fromEmailAddress, a8);
    objc_storeStrong(&v24->_fromDisplayName, a9);
    objc_storeStrong(&v24->_toEmailAddress, a10);
    objc_storeStrong(&v24->_toDisplayName, a11);
    objc_storeStrong(&v24->_replyToEmailAddress, a12);
    objc_storeStrong(&v24->_replyToDisplayName, a13);
  }

  return v24;
}

+ (id)protoFields
{
  v16[11] = *MEMORY[0x1E69E9840];
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"messageID" number:1 type:13 subMessageClass:0];
  v16[0] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"dateSent" number:2 type:0 subMessageClass:0];
  v16[1] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"subject" number:3 type:13 subMessageClass:0];
  v16[2] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"senderDomain" number:4 type:13 subMessageClass:0];
  v16[3] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deeplinkURL" number:5 type:13 subMessageClass:0];
  v16[4] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"fromEmailAddress" number:6 type:13 subMessageClass:0];
  v16[5] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"fromDisplayName" number:7 type:13 subMessageClass:0];
  v16[6] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"toEmailAddress" number:8 type:13 subMessageClass:0];
  v16[7] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"toDisplayName" number:9 type:13 subMessageClass:0];
  v16[8] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"replyToEmailAddress" number:10 type:13 subMessageClass:0];
  v16[9] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"replyToDisplayName" number:11 type:13 subMessageClass:0];
  v16[10] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:11];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)columns
{
  v16[11] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"messageID" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"dateSent" dataType:3 requestOnly:0 fieldNumber:2 protoDataType:0 convertedType:1];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"subject" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"senderDomain" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"deeplinkURL" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:4];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"fromEmailAddress" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"fromDisplayName" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"toEmailAddress" dataType:2 requestOnly:0 fieldNumber:8 protoDataType:13 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"toDisplayName" dataType:2 requestOnly:0 fieldNumber:9 protoDataType:13 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"replyToEmailAddress" dataType:2 requestOnly:0 fieldNumber:10 protoDataType:13 convertedType:0];
  v10 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"replyToDisplayName" dataType:2 requestOnly:0 fieldNumber:11 protoDataType:13 convertedType:0];
  v16[0] = v2;
  v16[1] = v3;
  v16[2] = v4;
  v16[3] = v5;
  v16[4] = v6;
  v16[5] = v14;
  v16[6] = v7;
  v16[7] = v8;
  v16[8] = v15;
  v16[9] = v9;
  v16[10] = v10;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:11];

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

    v8 = [[BMWalletPaymentsCommerceOrderEmailEmailMetadata alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[10] = 0;
    }
  }

  return v4;
}

@end